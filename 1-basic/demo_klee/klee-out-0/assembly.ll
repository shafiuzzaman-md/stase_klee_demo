; ModuleID = 'uaf_demo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.session = type { %struct.avatar*, i8*, i8*, i32, i32, i32, %struct.start_loc* }
%struct.avatar = type { i8*, i8*, i8*, [16 x i8] }
%struct.start_loc = type { i8*, [8 x i8] }
%struct.item = type { i64, [16 x i8], %struct.item*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"access_code\00", align 1
@g_session = dso_local global %struct.session zeroinitializer, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [33 x i8] c"Enter item name (max 15 chars): \00", align 1
@stdin = dso_local global i8* null, align 8, !dbg !73
@.str.1.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Enter item number: \00", align 1
@.str.3.5 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"[ERROR] Invalid number.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"[SYSTEM] Item added.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"[ERROR] Failed to add item.\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Enter item number to remove: \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Invalid number.\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"[SYSTEM] Item removed.\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"[ERROR] Item not found.\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"[ERROR] Error removing item.\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"[SYSTEM] Inventory is empty.\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"=== Current Inventory ===\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Name: %-15s | ID: %ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"[ERROR] Start Location already set - clear it first\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Enter Start Location Name: \00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"[ERROR] You didn't enter anything\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"[ERROR] Memory allocation failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"[ERROR] No start_loc to clear\0A\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"[ACCESS DENIED] Incorrect access code for Black Sun member\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"[ACCESS GRANTED] Black Sun member verified\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"[SYSTEM] Welcome User - %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"[SYSTEM] Avatar '%s' loaded successfully\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"[SYSTEM] No avatar currently set\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"\0A[SYSTEM] Removing avatar '%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"[RENDER] No avatar loaded\0A\00", align 1
@.str.29 = private unnamed_addr constant [137 x i8] c"\E2\95\94\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\97\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"\E2\95\91     METAVERSE AVATAR (Standard)           \E2\95\91\0A\00", align 1
@.str.31 = private unnamed_addr constant [137 x i8] c"\E2\95\A0\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\A3\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"\E2\95\91 Username: \00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"%*s\E2\95\91\0A\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [137 x i8] c"\E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"\E2\95\91 \00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c" \E2\95\91 \0A\00", align 1
@.str.42 = private unnamed_addr constant [161 x i8] c"\E2\95\94\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\97\0A\00", align 1
@.str.43 = private unnamed_addr constant [59 x i8] c"\E2\95\91     METAVERSE AVATAR (Black Sun)                  \E2\95\91\0A\00", align 1
@.str.44 = private unnamed_addr constant [161 x i8] c"\E2\95\A0\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\A3\0A\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"\E2\95\91 LEET USER (can read hex):                         \E2\95\91\0A\00", align 1
@.str.46 = private unnamed_addr constant [59 x i8] c"\E2\95\91 Here's where you're headed:                       \E2\95\91\0A\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"\E2\95\91   Port: %-41s \E2\95\91\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"\E2\95\91   Coordinates -> X=0x%08X Y=0x%08X        \E2\95\91\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"\E2\95\91   Name: %-41s \E2\95\91\0A\00", align 1
@.str.50 = private unnamed_addr constant [50 x i8] c"\E2\95\91 NULL                                     \E2\95\91\0A\00", align 1
@.str.51 = private unnamed_addr constant [161 x i8] c"\E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\0A\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"\1B[2J\1B[H\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.54 = private unnamed_addr constant [179 x i8] c"\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\0A\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"MENU:\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"  1. Set Avatar\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"  2. Clear Avatar\0A\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"  3. Set Start Location\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"  4. Clear Start Location\0A\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"  5. Add Item to Inventory\0A\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"  6. Remove Item from Inventory\0A\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"  7. Show Inventory\0A\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"  8. Clear Inventory\0A\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"  9. Test Render\0A\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"  0. Exit\0A\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"Choice: \00", align 1
@render_functions = dso_local global void ()** null, align 8, !dbg !43
@.str.67 = private unnamed_addr constant [52 x i8] c"   METALOGIN v0.7.3 - Avatar Authentication System\0A\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"   Black Sun Terminal #4471\0A\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"   *Legacy system - use at own risk*\0A\00", align 1
@.str.70 = private unnamed_addr constant [41 x i8] c"[BOOT] Initializing MetaLogin system...\0A\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"SESSION-4471\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"[ERROR] system out of resources\00", align 1
@.str.73 = private unnamed_addr constant [38 x i8] c"[LIBRARIAN] Maybe this will help(%p)\0A\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"juanita_m\00", align 1
@.str.1.75 = private unnamed_addr constant [8 x i8] c"da5id_m\00", align 1
@.str.2.76 = private unnamed_addr constant [9 x i8] c"vitaly_c\00", align 1
@.str.3.77 = private unnamed_addr constant [7 x i8] c"hiro_p\00", align 1
@black_sun_member_usernames = dso_local global [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.75, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.77, i32 0, i32 0)], align 16, !dbg !79
@.str.4.80 = private unnamed_addr constant [7 x i8] c"Innana\00", align 1
@.str.5.81 = private unnamed_addr constant [10 x i8] c"LA_castle\00", align 1
@.str.6.82 = private unnamed_addr constant [11 x i8] c"egg_whites\00", align 1
@.str.7.83 = private unnamed_addr constant [12 x i8] c"lb_of_Bacon\00", align 1
@black_sun_member_access_codes = dso_local global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7.83, i32 0, i32 0)], align 16, !dbg !84

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !106 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca [16 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @init_system(), !dbg !110
  call void @llvm.dbg.declare(metadata [16 x i8]* %2, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata [16 x i8]* %3, metadata !113, metadata !DIExpression()), !dbg !114
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0, !dbg !115
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 16, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !116
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !117
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !118
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 15, !dbg !119
  store i8 0, i8* %6, align 1, !dbg !120
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 15, !dbg !121
  store i8 0, i8* %7, align 1, !dbg !122
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0, !dbg !123
  %9 = load i8, i8* %8, align 16, !dbg !123
  %10 = zext i8 %9 to i32, !dbg !124
  %11 = icmp ne i32 %10, 0, !dbg !125
  %12 = zext i1 %11 to i32, !dbg !125
  %13 = sext i32 %12 to i64, !dbg !124
  call void @klee_assume(i64 noundef %13), !dbg !126
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0, !dbg !127
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !128
  call void @set_avatar(i8* noundef %14, i8* noundef %15), !dbg !129
  call void @clear_avatar(), !dbg !130
  %16 = load %struct.avatar*, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !131
  %17 = icmp ne %struct.avatar* %16, null, !dbg !133
  br i1 %17, label %18, label %21, !dbg !134

18:                                               ; preds = %0
  %19 = load %struct.avatar*, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !135
  %20 = bitcast %struct.avatar* %19 to i8*, !dbg !137
  call void @klee_check_memory_access(i8* noundef %20, i64 noundef 40), !dbg !138
  br label %21, !dbg !139

21:                                               ; preds = %18, %0
  call void @render_hex(), !dbg !140
  ret i32 0, !dbg !141
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare void @klee_check_memory_access(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @printf(i8* noundef %0, ...) #0 !dbg !142 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !145, metadata !DIExpression()), !dbg !146
  %3 = load i8*, i8** %2, align 8, !dbg !147
  ret i32 0, !dbg !148
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puts(i8* noundef %0) #0 !dbg !149 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !152, metadata !DIExpression()), !dbg !153
  %3 = load i8*, i8** %2, align 8, !dbg !154
  ret i32 0, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putchar(i32 noundef %0) #0 !dbg !156 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !159, metadata !DIExpression()), !dbg !160
  %3 = load i32, i32* %2, align 4, !dbg !161
  %4 = load i32, i32* %2, align 4, !dbg !162
  ret i32 %4, !dbg !163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getchar() #0 !dbg !164 {
  ret i32 -1, !dbg !165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fgets(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !166 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !169, metadata !DIExpression()), !dbg !170
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !171, metadata !DIExpression()), !dbg !172
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !173, metadata !DIExpression()), !dbg !174
  %7 = load i8*, i8** %4, align 8, !dbg !175
  %8 = load i32, i32* %5, align 4, !dbg !176
  %9 = load i8*, i8** %6, align 8, !dbg !177
  ret i8* null, !dbg !178
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__isoc99_scanf(i8* noundef %0, ...) #0 !dbg !179 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !180, metadata !DIExpression()), !dbg !181
  %3 = load i8*, i8** %2, align 8, !dbg !182
  ret i32 0, !dbg !183
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @strlen(i8* noundef nonnull %0) #3 !dbg !184 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !188, metadata !DIExpression()), !dbg !189
  %5 = load i8*, i8** %3, align 8, !dbg !190
  %6 = icmp ne i8* %5, null, !dbg !190
  br i1 %6, label %8, label %7, !dbg !192

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !193
  br label %20, !dbg !193

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !194, metadata !DIExpression()), !dbg !197
  store i64 0, i64* %4, align 8, !dbg !197
  br label %9, !dbg !198

9:                                                ; preds = %15, %8
  %10 = load i8*, i8** %3, align 8, !dbg !199
  %11 = load i64, i64* %4, align 8, !dbg !200
  %12 = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !199
  %13 = load i8, i8* %12, align 1, !dbg !199
  %14 = icmp ne i8 %13, 0, !dbg !198
  br i1 %14, label %15, label %18, !dbg !198

15:                                               ; preds = %9
  %16 = load i64, i64* %4, align 8, !dbg !201
  %17 = add i64 %16, 1, !dbg !201
  store i64 %17, i64* %4, align 8, !dbg !201
  br label %9, !dbg !198, !llvm.loop !202

18:                                               ; preds = %9
  %19 = load i64, i64* %4, align 8, !dbg !204
  store i64 %19, i64* %2, align 8, !dbg !205
  br label %20, !dbg !205

20:                                               ; preds = %18, %7
  %21 = load i64, i64* %2, align 8, !dbg !206
  ret i64 %21, !dbg !206
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @strnlen(i8* noundef nonnull %0, i64 noundef %1) #3 !dbg !207 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !210, metadata !DIExpression()), !dbg !211
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !212, metadata !DIExpression()), !dbg !213
  %7 = load i8*, i8** %4, align 8, !dbg !214
  %8 = icmp ne i8* %7, null, !dbg !214
  br i1 %8, label %10, label %9, !dbg !216

9:                                                ; preds = %2
  store i64 0, i64* %3, align 8, !dbg !217
  br label %30, !dbg !217

10:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %6, metadata !218, metadata !DIExpression()), !dbg !219
  store i64 0, i64* %6, align 8, !dbg !219
  br label %11, !dbg !220

11:                                               ; preds = %25, %10
  %12 = load i64, i64* %6, align 8, !dbg !221
  %13 = load i64, i64* %5, align 8, !dbg !224
  %14 = icmp ult i64 %12, %13, !dbg !225
  br i1 %14, label %15, label %22, !dbg !226

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8, !dbg !227
  %17 = load i64, i64* %6, align 8, !dbg !228
  %18 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !227
  %19 = load i8, i8* %18, align 1, !dbg !227
  %20 = sext i8 %19 to i32, !dbg !227
  %21 = icmp ne i32 %20, 0, !dbg !226
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi i1 [ false, %11 ], [ %21, %15 ], !dbg !229
  br i1 %23, label %24, label %28, !dbg !230

24:                                               ; preds = %22
  br label %25, !dbg !231

25:                                               ; preds = %24
  %26 = load i64, i64* %6, align 8, !dbg !233
  %27 = add i64 %26, 1, !dbg !233
  store i64 %27, i64* %6, align 8, !dbg !233
  br label %11, !dbg !234, !llvm.loop !235

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8, !dbg !237
  store i64 %29, i64* %3, align 8, !dbg !238
  br label %30, !dbg !238

30:                                               ; preds = %28, %9
  %31 = load i64, i64* %3, align 8, !dbg !239
  ret i64 %31, !dbg !239
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @strcspn(i8* noundef nonnull %0, i8* noundef nonnull %1) #3 !dbg !240 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !243, metadata !DIExpression()), !dbg !244
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !245, metadata !DIExpression()), !dbg !246
  %8 = load i8*, i8** %4, align 8, !dbg !247
  %9 = icmp ne i8* %8, null, !dbg !247
  br i1 %9, label %10, label %13, !dbg !249

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8, !dbg !250
  %12 = icmp ne i8* %11, null, !dbg !250
  br i1 %12, label %14, label %13, !dbg !251

13:                                               ; preds = %10, %2
  store i64 0, i64* %3, align 8, !dbg !252
  br label %53, !dbg !252

14:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i64* %6, metadata !253, metadata !DIExpression()), !dbg !255
  store i64 0, i64* %6, align 8, !dbg !255
  br label %15, !dbg !256

15:                                               ; preds = %47, %14
  %16 = load i8*, i8** %4, align 8, !dbg !257
  %17 = load i64, i64* %6, align 8, !dbg !259
  %18 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !257
  %19 = load i8, i8* %18, align 1, !dbg !257
  %20 = icmp ne i8 %19, 0, !dbg !260
  br i1 %20, label %21, label %50, !dbg !260

21:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata i64* %7, metadata !261, metadata !DIExpression()), !dbg !264
  store i64 0, i64* %7, align 8, !dbg !264
  br label %22, !dbg !265

22:                                               ; preds = %43, %21
  %23 = load i8*, i8** %5, align 8, !dbg !266
  %24 = load i64, i64* %7, align 8, !dbg !268
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !266
  %26 = load i8, i8* %25, align 1, !dbg !266
  %27 = icmp ne i8 %26, 0, !dbg !269
  br i1 %27, label %28, label %46, !dbg !269

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8, !dbg !270
  %30 = load i64, i64* %6, align 8, !dbg !273
  %31 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !270
  %32 = load i8, i8* %31, align 1, !dbg !270
  %33 = sext i8 %32 to i32, !dbg !270
  %34 = load i8*, i8** %5, align 8, !dbg !274
  %35 = load i64, i64* %7, align 8, !dbg !275
  %36 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !274
  %37 = load i8, i8* %36, align 1, !dbg !274
  %38 = sext i8 %37 to i32, !dbg !274
  %39 = icmp eq i32 %33, %38, !dbg !276
  br i1 %39, label %40, label %42, !dbg !277

40:                                               ; preds = %28
  %41 = load i64, i64* %6, align 8, !dbg !278
  store i64 %41, i64* %3, align 8, !dbg !279
  br label %53, !dbg !279

42:                                               ; preds = %28
  br label %43, !dbg !280

43:                                               ; preds = %42
  %44 = load i64, i64* %7, align 8, !dbg !281
  %45 = add i64 %44, 1, !dbg !281
  store i64 %45, i64* %7, align 8, !dbg !281
  br label %22, !dbg !282, !llvm.loop !283

46:                                               ; preds = %22
  br label %47, !dbg !285

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8, !dbg !286
  %49 = add i64 %48, 1, !dbg !286
  store i64 %49, i64* %6, align 8, !dbg !286
  br label %15, !dbg !287, !llvm.loop !288

50:                                               ; preds = %15
  %51 = load i8*, i8** %4, align 8, !dbg !290
  %52 = call i64 @strlen(i8* noundef %51) #11, !dbg !291
  store i64 %52, i64* %3, align 8, !dbg !292
  br label %53, !dbg !292

53:                                               ; preds = %50, %40, %13
  %54 = load i64, i64* %3, align 8, !dbg !293
  ret i64 %54, !dbg !293
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i32 @strcmp(i8* noundef nonnull %0, i8* noundef nonnull %1) #3 !dbg !294 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !297, metadata !DIExpression()), !dbg !298
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !299, metadata !DIExpression()), !dbg !300
  %6 = load i8*, i8** %4, align 8, !dbg !301
  %7 = load i8*, i8** %5, align 8, !dbg !303
  %8 = icmp eq i8* %6, %7, !dbg !304
  br i1 %8, label %9, label %10, !dbg !305

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !306
  br label %47, !dbg !306

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !307
  %12 = icmp ne i8* %11, null, !dbg !307
  br i1 %12, label %14, label %13, !dbg !309

13:                                               ; preds = %10
  store i32 -1, i32* %3, align 4, !dbg !310
  br label %47, !dbg !310

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8, !dbg !311
  %16 = icmp ne i8* %15, null, !dbg !311
  br i1 %16, label %18, label %17, !dbg !313

17:                                               ; preds = %14
  store i32 1, i32* %3, align 4, !dbg !314
  br label %47, !dbg !314

18:                                               ; preds = %14
  br label %19, !dbg !315

19:                                               ; preds = %34, %18
  %20 = load i8*, i8** %4, align 8, !dbg !316
  %21 = load i8, i8* %20, align 1, !dbg !317
  %22 = sext i8 %21 to i32, !dbg !317
  %23 = icmp ne i32 %22, 0, !dbg !317
  br i1 %23, label %24, label %32, !dbg !318

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8, !dbg !319
  %26 = load i8, i8* %25, align 1, !dbg !320
  %27 = sext i8 %26 to i32, !dbg !320
  %28 = load i8*, i8** %5, align 8, !dbg !321
  %29 = load i8, i8* %28, align 1, !dbg !322
  %30 = sext i8 %29 to i32, !dbg !322
  %31 = icmp eq i32 %27, %30, !dbg !323
  br label %32

32:                                               ; preds = %24, %19
  %33 = phi i1 [ false, %19 ], [ %31, %24 ], !dbg !324
  br i1 %33, label %34, label %39, !dbg !315

34:                                               ; preds = %32
  %35 = load i8*, i8** %4, align 8, !dbg !325
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !325
  store i8* %36, i8** %4, align 8, !dbg !325
  %37 = load i8*, i8** %5, align 8, !dbg !327
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !327
  store i8* %38, i8** %5, align 8, !dbg !327
  br label %19, !dbg !315, !llvm.loop !328

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8, !dbg !330
  %41 = load i8, i8* %40, align 1, !dbg !331
  %42 = zext i8 %41 to i32, !dbg !332
  %43 = load i8*, i8** %5, align 8, !dbg !333
  %44 = load i8, i8* %43, align 1, !dbg !334
  %45 = zext i8 %44 to i32, !dbg !335
  %46 = sub nsw i32 %42, %45, !dbg !336
  store i32 %46, i32* %3, align 4, !dbg !337
  br label %47, !dbg !337

47:                                               ; preds = %39, %17, %13, %9
  %48 = load i32, i32* %3, align 4, !dbg !338
  ret i32 %48, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strncpy(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %2) #0 !dbg !339 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !342, metadata !DIExpression()), !dbg !343
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !344, metadata !DIExpression()), !dbg !345
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !346, metadata !DIExpression()), !dbg !347
  %9 = load i8*, i8** %5, align 8, !dbg !348
  %10 = icmp ne i8* %9, null, !dbg !348
  br i1 %10, label %11, label %14, !dbg !350

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8, !dbg !351
  %13 = icmp ne i8* %12, null, !dbg !351
  br i1 %13, label %16, label %14, !dbg !352

14:                                               ; preds = %11, %3
  %15 = load i8*, i8** %5, align 8, !dbg !353
  store i8* %15, i8** %4, align 8, !dbg !354
  br label %55, !dbg !354

16:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %8, metadata !355, metadata !DIExpression()), !dbg !356
  store i64 0, i64* %8, align 8, !dbg !356
  br label %17, !dbg !357

17:                                               ; preds = %38, %16
  %18 = load i64, i64* %8, align 8, !dbg !358
  %19 = load i64, i64* %7, align 8, !dbg !361
  %20 = icmp ult i64 %18, %19, !dbg !362
  br i1 %20, label %21, label %28, !dbg !363

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8, !dbg !364
  %23 = load i64, i64* %8, align 8, !dbg !365
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !364
  %25 = load i8, i8* %24, align 1, !dbg !364
  %26 = sext i8 %25 to i32, !dbg !364
  %27 = icmp ne i32 %26, 0, !dbg !363
  br label %28

28:                                               ; preds = %21, %17
  %29 = phi i1 [ false, %17 ], [ %27, %21 ], !dbg !366
  br i1 %29, label %30, label %41, !dbg !367

30:                                               ; preds = %28
  %31 = load i8*, i8** %6, align 8, !dbg !368
  %32 = load i64, i64* %8, align 8, !dbg !369
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !368
  %34 = load i8, i8* %33, align 1, !dbg !368
  %35 = load i8*, i8** %5, align 8, !dbg !370
  %36 = load i64, i64* %8, align 8, !dbg !371
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !370
  store i8 %34, i8* %37, align 1, !dbg !372
  br label %38, !dbg !370

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8, !dbg !373
  %40 = add i64 %39, 1, !dbg !373
  store i64 %40, i64* %8, align 8, !dbg !373
  br label %17, !dbg !374, !llvm.loop !375

41:                                               ; preds = %28
  br label %42, !dbg !377

42:                                               ; preds = %50, %41
  %43 = load i64, i64* %8, align 8, !dbg !378
  %44 = load i64, i64* %7, align 8, !dbg !381
  %45 = icmp ult i64 %43, %44, !dbg !382
  br i1 %45, label %46, label %53, !dbg !383

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8, !dbg !384
  %48 = load i64, i64* %8, align 8, !dbg !385
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !384
  store i8 0, i8* %49, align 1, !dbg !386
  br label %50, !dbg !384

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8, !dbg !387
  %52 = add i64 %51, 1, !dbg !387
  store i64 %52, i64* %8, align 8, !dbg !387
  br label %42, !dbg !388, !llvm.loop !389

53:                                               ; preds = %42
  %54 = load i8*, i8** %5, align 8, !dbg !391
  store i8* %54, i8** %4, align 8, !dbg !392
  br label %55, !dbg !392

55:                                               ; preds = %53, %14
  %56 = load i8*, i8** %4, align 8, !dbg !393
  ret i8* %56, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @strdup(i8* noundef nonnull %0) #0 !dbg !394 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !397, metadata !DIExpression()), !dbg !398
  %7 = load i8*, i8** %3, align 8, !dbg !399
  %8 = icmp ne i8* %7, null, !dbg !399
  br i1 %8, label %10, label %9, !dbg !401

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !402
  br label %37, !dbg !402

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !403, metadata !DIExpression()), !dbg !404
  %11 = load i8*, i8** %3, align 8, !dbg !405
  %12 = call i64 @strlen(i8* noundef %11) #11, !dbg !406
  %13 = add i64 %12, 1, !dbg !407
  store i64 %13, i64* %4, align 8, !dbg !404
  call void @llvm.dbg.declare(metadata i8** %5, metadata !408, metadata !DIExpression()), !dbg !409
  %14 = load i64, i64* %4, align 8, !dbg !410
  %15 = call noalias i8* @malloc(i64 noundef %14) #12, !dbg !411
  store i8* %15, i8** %5, align 8, !dbg !409
  %16 = load i8*, i8** %5, align 8, !dbg !412
  %17 = icmp ne i8* %16, null, !dbg !412
  br i1 %17, label %19, label %18, !dbg !414

18:                                               ; preds = %10
  store i8* null, i8** %2, align 8, !dbg !415
  br label %37, !dbg !415

19:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i64* %6, metadata !416, metadata !DIExpression()), !dbg !418
  store i64 0, i64* %6, align 8, !dbg !418
  br label %20, !dbg !419

20:                                               ; preds = %32, %19
  %21 = load i64, i64* %6, align 8, !dbg !420
  %22 = load i64, i64* %4, align 8, !dbg !422
  %23 = icmp ult i64 %21, %22, !dbg !423
  br i1 %23, label %24, label %35, !dbg !424

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8, !dbg !425
  %26 = load i64, i64* %6, align 8, !dbg !426
  %27 = getelementptr inbounds i8, i8* %25, i64 %26, !dbg !425
  %28 = load i8, i8* %27, align 1, !dbg !425
  %29 = load i8*, i8** %5, align 8, !dbg !427
  %30 = load i64, i64* %6, align 8, !dbg !428
  %31 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !427
  store i8 %28, i8* %31, align 1, !dbg !429
  br label %32, !dbg !427

32:                                               ; preds = %24
  %33 = load i64, i64* %6, align 8, !dbg !430
  %34 = add i64 %33, 1, !dbg !430
  store i64 %34, i64* %6, align 8, !dbg !430
  br label %20, !dbg !431, !llvm.loop !432

35:                                               ; preds = %20
  %36 = load i8*, i8** %5, align 8, !dbg !434
  store i8* %36, i8** %2, align 8, !dbg !435
  br label %37, !dbg !435

37:                                               ; preds = %35, %18, %9
  %38 = load i8*, i8** %2, align 8, !dbg !436
  ret i8* %38, !dbg !436
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtol(i8* noundef nonnull %0, i8** noundef %1, i32 noundef %2) #0 !dbg !437 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !441, metadata !DIExpression()), !dbg !442
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !443, metadata !DIExpression()), !dbg !444
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !445, metadata !DIExpression()), !dbg !446
  %10 = load i32, i32* %7, align 4, !dbg !447
  %11 = load i8*, i8** %5, align 8, !dbg !448
  %12 = icmp ne i8* %11, null, !dbg !448
  br i1 %12, label %20, label %13, !dbg !450

13:                                               ; preds = %3
  %14 = load i8**, i8*** %6, align 8, !dbg !451
  %15 = icmp ne i8** %14, null, !dbg !451
  br i1 %15, label %16, label %19, !dbg !454

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8, !dbg !455
  %18 = load i8**, i8*** %6, align 8, !dbg !456
  store i8* %17, i8** %18, align 8, !dbg !457
  br label %19, !dbg !458

19:                                               ; preds = %16, %13
  store i64 0, i64* %4, align 8, !dbg !459
  br label %53, !dbg !459

20:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %8, metadata !460, metadata !DIExpression()), !dbg !461
  store i64 0, i64* %8, align 8, !dbg !461
  call void @llvm.dbg.declare(metadata i8** %9, metadata !462, metadata !DIExpression()), !dbg !463
  %21 = load i8*, i8** %5, align 8, !dbg !464
  store i8* %21, i8** %9, align 8, !dbg !463
  br label %22, !dbg !465

22:                                               ; preds = %34, %20
  %23 = load i8*, i8** %9, align 8, !dbg !466
  %24 = load i8, i8* %23, align 1, !dbg !467
  %25 = sext i8 %24 to i32, !dbg !467
  %26 = icmp sge i32 %25, 48, !dbg !468
  br i1 %26, label %27, label %32, !dbg !469

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8, !dbg !470
  %29 = load i8, i8* %28, align 1, !dbg !471
  %30 = sext i8 %29 to i32, !dbg !471
  %31 = icmp sle i32 %30, 57, !dbg !472
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ false, %22 ], [ %31, %27 ], !dbg !473
  br i1 %33, label %34, label %45, !dbg !465

34:                                               ; preds = %32
  %35 = load i64, i64* %8, align 8, !dbg !474
  %36 = mul nsw i64 %35, 10, !dbg !476
  %37 = load i8*, i8** %9, align 8, !dbg !477
  %38 = load i8, i8* %37, align 1, !dbg !478
  %39 = sext i8 %38 to i32, !dbg !478
  %40 = sub nsw i32 %39, 48, !dbg !479
  %41 = sext i32 %40 to i64, !dbg !480
  %42 = add nsw i64 %36, %41, !dbg !481
  store i64 %42, i64* %8, align 8, !dbg !482
  %43 = load i8*, i8** %9, align 8, !dbg !483
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !483
  store i8* %44, i8** %9, align 8, !dbg !483
  br label %22, !dbg !465, !llvm.loop !484

45:                                               ; preds = %32
  %46 = load i8**, i8*** %6, align 8, !dbg !486
  %47 = icmp ne i8** %46, null, !dbg !486
  br i1 %47, label %48, label %51, !dbg !488

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8, !dbg !489
  %50 = load i8**, i8*** %6, align 8, !dbg !490
  store i8* %49, i8** %50, align 8, !dbg !491
  br label %51, !dbg !492

51:                                               ; preds = %48, %45
  %52 = load i64, i64* %8, align 8, !dbg !493
  store i64 %52, i64* %4, align 8, !dbg !494
  br label %53, !dbg !494

53:                                               ; preds = %51, %19
  %54 = load i64, i64* %4, align 8, !dbg !495
  ret i64 %54, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sin(double noundef %0) #0 !dbg !496 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !499, metadata !DIExpression()), !dbg !500
  %3 = load double, double* %2, align 8, !dbg !501
  ret double 0.000000e+00, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cos(double noundef %0) #0 !dbg !503 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !504, metadata !DIExpression()), !dbg !505
  %3 = load double, double* %2, align 8, !dbg !506
  ret double 0.000000e+00, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @llround(double noundef %0) #0 !dbg !508 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !512, metadata !DIExpression()), !dbg !513
  %3 = load double, double* %2, align 8, !dbg !514
  ret i64 0, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_card() #0 !dbg !516 {
  ret void, !dbg !517
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @exit(i32 noundef %0) #5 !dbg !518 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !521, metadata !DIExpression()), !dbg !522
  %3 = load i32, i32* %2, align 4, !dbg !523
  call void @klee_silent_exit(i32 noundef 0) #13, !dbg !524
  unreachable, !dbg !524
}

; Function Attrs: noreturn
declare void @klee_silent_exit(i32 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @items_add(%struct.item** noundef %0, i8* noundef %1, i64 noundef %2) #0 !dbg !525 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.item**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.item*, align 8
  store %struct.item** %0, %struct.item*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.item*** %5, metadata !528, metadata !DIExpression()), !dbg !529
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !530, metadata !DIExpression()), !dbg !531
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !532, metadata !DIExpression()), !dbg !533
  %9 = load %struct.item**, %struct.item*** %5, align 8, !dbg !534
  %10 = icmp ne %struct.item** %9, null, !dbg !534
  br i1 %10, label %12, label %11, !dbg !536

11:                                               ; preds = %3
  store i32 -22, i32* %4, align 4, !dbg !537
  br label %26, !dbg !537

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.item** %8, metadata !538, metadata !DIExpression()), !dbg !539
  %13 = load i8*, i8** %6, align 8, !dbg !540
  %14 = load i64, i64* %7, align 8, !dbg !541
  %15 = call %struct.item* @item_create(i8* noundef %13, i64 noundef %14), !dbg !542
  store %struct.item* %15, %struct.item** %8, align 8, !dbg !539
  %16 = load %struct.item*, %struct.item** %8, align 8, !dbg !543
  %17 = icmp ne %struct.item* %16, null, !dbg !543
  br i1 %17, label %19, label %18, !dbg !545

18:                                               ; preds = %12
  store i32 -12, i32* %4, align 4, !dbg !546
  br label %26, !dbg !546

19:                                               ; preds = %12
  %20 = load %struct.item**, %struct.item*** %5, align 8, !dbg !547
  %21 = load %struct.item*, %struct.item** %20, align 8, !dbg !548
  %22 = load %struct.item*, %struct.item** %8, align 8, !dbg !549
  %23 = getelementptr inbounds %struct.item, %struct.item* %22, i32 0, i32 2, !dbg !550
  store %struct.item* %21, %struct.item** %23, align 8, !dbg !551
  %24 = load %struct.item*, %struct.item** %8, align 8, !dbg !552
  %25 = load %struct.item**, %struct.item*** %5, align 8, !dbg !553
  store %struct.item* %24, %struct.item** %25, align 8, !dbg !554
  store i32 0, i32* %4, align 4, !dbg !555
  br label %26, !dbg !555

26:                                               ; preds = %19, %18, %11
  %27 = load i32, i32* %4, align 4, !dbg !556
  ret i32 %27, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.item* @item_create(i8* noundef %0, i64 noundef %1) #0 !dbg !557 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.item*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !560, metadata !DIExpression()), !dbg !561
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata %struct.item** %5, metadata !564, metadata !DIExpression()), !dbg !565
  %6 = call noalias i8* @malloc(i64 noundef 40) #12, !dbg !566
  %7 = bitcast i8* %6 to %struct.item*, !dbg !567
  store %struct.item* %7, %struct.item** %5, align 8, !dbg !565
  %8 = load %struct.item*, %struct.item** %5, align 8, !dbg !568
  %9 = icmp ne %struct.item* %8, null, !dbg !568
  br i1 %9, label %12, label %10, !dbg !570

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0)), !dbg !571
  call void @exit(i32 noundef 0) #14, !dbg !573
  unreachable, !dbg !573

12:                                               ; preds = %2
  %13 = load %struct.item*, %struct.item** %5, align 8, !dbg !574
  %14 = getelementptr inbounds %struct.item, %struct.item* %13, i32 0, i32 1, !dbg !575
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0, !dbg !576
  %16 = call i8* @memset(i8* %15, i32 0, i64 16), !dbg !576
  %17 = load %struct.item*, %struct.item** %5, align 8, !dbg !577
  %18 = getelementptr inbounds %struct.item, %struct.item* %17, i32 0, i32 1, !dbg !578
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0, !dbg !577
  %20 = load i8*, i8** %3, align 8, !dbg !579
  %21 = call i8* @strncpy(i8* noundef %19, i8* noundef %20, i64 noundef 15) #12, !dbg !580
  %22 = load i64, i64* %4, align 8, !dbg !581
  %23 = load %struct.item*, %struct.item** %5, align 8, !dbg !582
  %24 = getelementptr inbounds %struct.item, %struct.item* %23, i32 0, i32 0, !dbg !583
  store i64 %22, i64* %24, align 8, !dbg !584
  %25 = load %struct.item*, %struct.item** %5, align 8, !dbg !585
  %26 = getelementptr inbounds %struct.item, %struct.item* %25, i32 0, i32 2, !dbg !586
  store %struct.item* null, %struct.item** %26, align 8, !dbg !587
  %27 = load %struct.item*, %struct.item** %5, align 8, !dbg !588
  ret %struct.item* %27, !dbg !589
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @items_remove_by_obj(%struct.item** noundef %0, i64 noundef %1) #0 !dbg !590 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.item**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.item*, align 8
  %7 = alloca %struct.item*, align 8
  store %struct.item** %0, %struct.item*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.item*** %4, metadata !593, metadata !DIExpression()), !dbg !594
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !595, metadata !DIExpression()), !dbg !596
  %8 = load %struct.item**, %struct.item*** %4, align 8, !dbg !597
  %9 = icmp ne %struct.item** %8, null, !dbg !597
  br i1 %9, label %11, label %10, !dbg !599

10:                                               ; preds = %2
  store i32 -22, i32* %3, align 4, !dbg !600
  br label %45, !dbg !600

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.item** %6, metadata !601, metadata !DIExpression()), !dbg !602
  store %struct.item* null, %struct.item** %6, align 8, !dbg !602
  call void @llvm.dbg.declare(metadata %struct.item** %7, metadata !603, metadata !DIExpression()), !dbg !604
  %12 = load %struct.item**, %struct.item*** %4, align 8, !dbg !605
  %13 = load %struct.item*, %struct.item** %12, align 8, !dbg !606
  store %struct.item* %13, %struct.item** %7, align 8, !dbg !604
  br label %14, !dbg !607

14:                                               ; preds = %39, %11
  %15 = load %struct.item*, %struct.item** %7, align 8, !dbg !608
  %16 = icmp ne %struct.item* %15, null, !dbg !607
  br i1 %16, label %17, label %44, !dbg !607

17:                                               ; preds = %14
  %18 = load %struct.item*, %struct.item** %7, align 8, !dbg !609
  %19 = getelementptr inbounds %struct.item, %struct.item* %18, i32 0, i32 0, !dbg !612
  %20 = load i64, i64* %19, align 8, !dbg !612
  %21 = load i64, i64* %5, align 8, !dbg !613
  %22 = icmp eq i64 %20, %21, !dbg !614
  br i1 %22, label %23, label %39, !dbg !615

23:                                               ; preds = %17
  %24 = load %struct.item*, %struct.item** %6, align 8, !dbg !616
  %25 = icmp ne %struct.item* %24, null, !dbg !616
  br i1 %25, label %26, label %32, !dbg !619

26:                                               ; preds = %23
  %27 = load %struct.item*, %struct.item** %7, align 8, !dbg !620
  %28 = getelementptr inbounds %struct.item, %struct.item* %27, i32 0, i32 2, !dbg !621
  %29 = load %struct.item*, %struct.item** %28, align 8, !dbg !621
  %30 = load %struct.item*, %struct.item** %6, align 8, !dbg !622
  %31 = getelementptr inbounds %struct.item, %struct.item* %30, i32 0, i32 2, !dbg !623
  store %struct.item* %29, %struct.item** %31, align 8, !dbg !624
  br label %37, !dbg !622

32:                                               ; preds = %23
  %33 = load %struct.item*, %struct.item** %7, align 8, !dbg !625
  %34 = getelementptr inbounds %struct.item, %struct.item* %33, i32 0, i32 2, !dbg !626
  %35 = load %struct.item*, %struct.item** %34, align 8, !dbg !626
  %36 = load %struct.item**, %struct.item*** %4, align 8, !dbg !627
  store %struct.item* %35, %struct.item** %36, align 8, !dbg !628
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.item*, %struct.item** %7, align 8, !dbg !629
  call void @item_free(%struct.item* noundef %38), !dbg !630
  store i32 1, i32* %3, align 4, !dbg !631
  br label %45, !dbg !631

39:                                               ; preds = %17
  %40 = load %struct.item*, %struct.item** %7, align 8, !dbg !632
  store %struct.item* %40, %struct.item** %6, align 8, !dbg !633
  %41 = load %struct.item*, %struct.item** %7, align 8, !dbg !634
  %42 = getelementptr inbounds %struct.item, %struct.item* %41, i32 0, i32 2, !dbg !635
  %43 = load %struct.item*, %struct.item** %42, align 8, !dbg !635
  store %struct.item* %43, %struct.item** %7, align 8, !dbg !636
  br label %14, !dbg !607, !llvm.loop !637

44:                                               ; preds = %14
  store i32 0, i32* %3, align 4, !dbg !639
  br label %45, !dbg !639

45:                                               ; preds = %44, %37, %10
  %46 = load i32, i32* %3, align 4, !dbg !640
  ret i32 %46, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @item_free(%struct.item* noundef %0) #0 !dbg !641 {
  %2 = alloca %struct.item*, align 8
  store %struct.item* %0, %struct.item** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.item** %2, metadata !644, metadata !DIExpression()), !dbg !645
  %3 = load %struct.item*, %struct.item** %2, align 8, !dbg !646
  %4 = icmp ne %struct.item* %3, null, !dbg !646
  br i1 %4, label %6, label %5, !dbg !648

5:                                                ; preds = %1
  br label %9, !dbg !649

6:                                                ; preds = %1
  %7 = load %struct.item*, %struct.item** %2, align 8, !dbg !650
  %8 = bitcast %struct.item* %7 to i8*, !dbg !650
  call void @free(i8* noundef %8) #12, !dbg !651
  br label %9, !dbg !652

9:                                                ; preds = %6, %5
  ret void, !dbg !652
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @items_clear_all(%struct.item** noundef %0) #0 !dbg !653 {
  %2 = alloca %struct.item**, align 8
  %3 = alloca %struct.item*, align 8
  %4 = alloca %struct.item*, align 8
  store %struct.item** %0, %struct.item*** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.item*** %2, metadata !656, metadata !DIExpression()), !dbg !657
  %5 = load %struct.item**, %struct.item*** %2, align 8, !dbg !658
  %6 = icmp ne %struct.item** %5, null, !dbg !658
  br i1 %6, label %8, label %7, !dbg !660

7:                                                ; preds = %1
  br label %22, !dbg !661

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.item** %3, metadata !662, metadata !DIExpression()), !dbg !663
  %9 = load %struct.item**, %struct.item*** %2, align 8, !dbg !664
  %10 = load %struct.item*, %struct.item** %9, align 8, !dbg !665
  store %struct.item* %10, %struct.item** %3, align 8, !dbg !663
  br label %11, !dbg !666

11:                                               ; preds = %14, %8
  %12 = load %struct.item*, %struct.item** %3, align 8, !dbg !667
  %13 = icmp ne %struct.item* %12, null, !dbg !666
  br i1 %13, label %14, label %20, !dbg !666

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.item** %4, metadata !668, metadata !DIExpression()), !dbg !670
  %15 = load %struct.item*, %struct.item** %3, align 8, !dbg !671
  %16 = getelementptr inbounds %struct.item, %struct.item* %15, i32 0, i32 2, !dbg !672
  %17 = load %struct.item*, %struct.item** %16, align 8, !dbg !672
  store %struct.item* %17, %struct.item** %4, align 8, !dbg !670
  %18 = load %struct.item*, %struct.item** %3, align 8, !dbg !673
  call void @item_free(%struct.item* noundef %18), !dbg !674
  %19 = load %struct.item*, %struct.item** %4, align 8, !dbg !675
  store %struct.item* %19, %struct.item** %3, align 8, !dbg !676
  br label %11, !dbg !666, !llvm.loop !677

20:                                               ; preds = %11
  %21 = load %struct.item**, %struct.item*** %2, align 8, !dbg !679
  store %struct.item* null, %struct.item** %21, align 8, !dbg !680
  br label %22, !dbg !681

22:                                               ; preds = %20, %7
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inventory_add(i8* noundef %0, i64 noundef %1) #0 !dbg !682 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.item**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !685, metadata !DIExpression()), !dbg !686
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !687, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.declare(metadata %struct.item*** %6, metadata !689, metadata !DIExpression()), !dbg !690
  %7 = call %struct.item** @inventory_headp(), !dbg !691
  store %struct.item** %7, %struct.item*** %6, align 8, !dbg !690
  %8 = load %struct.item**, %struct.item*** %6, align 8, !dbg !692
  %9 = icmp ne %struct.item** %8, null, !dbg !692
  br i1 %9, label %11, label %10, !dbg !694

10:                                               ; preds = %2
  store i32 -22, i32* %3, align 4, !dbg !695
  br label %16, !dbg !695

11:                                               ; preds = %2
  %12 = load %struct.item**, %struct.item*** %6, align 8, !dbg !696
  %13 = load i8*, i8** %4, align 8, !dbg !697
  %14 = load i64, i64* %5, align 8, !dbg !698
  %15 = call i32 @items_add(%struct.item** noundef %12, i8* noundef %13, i64 noundef %14), !dbg !699
  store i32 %15, i32* %3, align 4, !dbg !700
  br label %16, !dbg !700

16:                                               ; preds = %11, %10
  %17 = load i32, i32* %3, align 4, !dbg !701
  ret i32 %17, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.item** @inventory_headp() #0 !dbg !702 {
  %1 = load i32, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 3), align 8, !dbg !705
  %2 = icmp ne i32 %1, 0, !dbg !706
  br i1 %2, label %3, label %7, !dbg !706

3:                                                ; preds = %0
  %4 = load %struct.avatar*, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !707
  %5 = getelementptr inbounds %struct.avatar, %struct.avatar* %4, i32 0, i32 0, !dbg !708
  %6 = bitcast i8** %5 to %struct.item**, !dbg !709
  br label %8, !dbg !706

7:                                                ; preds = %0
  br label %8, !dbg !706

8:                                                ; preds = %7, %3
  %9 = phi %struct.item** [ %6, %3 ], [ bitcast (i8** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 2) to %struct.item**), %7 ], !dbg !706
  ret %struct.item** %9, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inventory_remove_by_obj(i64 noundef %0) #0 !dbg !711 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.item**, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !714, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.declare(metadata %struct.item*** %4, metadata !716, metadata !DIExpression()), !dbg !717
  %5 = call %struct.item** @inventory_headp(), !dbg !718
  store %struct.item** %5, %struct.item*** %4, align 8, !dbg !717
  %6 = load %struct.item**, %struct.item*** %4, align 8, !dbg !719
  %7 = icmp ne %struct.item** %6, null, !dbg !719
  br i1 %7, label %9, label %8, !dbg !721

8:                                                ; preds = %1
  store i32 -22, i32* %2, align 4, !dbg !722
  br label %13, !dbg !722

9:                                                ; preds = %1
  %10 = load %struct.item**, %struct.item*** %4, align 8, !dbg !723
  %11 = load i64, i64* %3, align 8, !dbg !724
  %12 = call i32 @items_remove_by_obj(%struct.item** noundef %10, i64 noundef %11), !dbg !725
  store i32 %12, i32* %2, align 4, !dbg !726
  br label %13, !dbg !726

13:                                               ; preds = %9, %8
  %14 = load i32, i32* %2, align 4, !dbg !727
  ret i32 %14, !dbg !727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_item_from_user() #0 !dbg !728 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !729, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata i64* %2, metadata !731, metadata !DIExpression()), !dbg !732
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0)), !dbg !733
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !734
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** bitcast (i8** @stdin to %struct._IO_FILE**), align 8, !dbg !736
  %6 = call i8* bitcast (i8* (i8*, i32, i8*)* @fgets to i8* (i8*, i32, %struct._IO_FILE*)*)(i8* noundef %4, i32 noundef 16, %struct._IO_FILE* noundef %5), !dbg !737
  %7 = icmp ne i8* %6, null, !dbg !737
  br i1 %7, label %9, label %8, !dbg !738

8:                                                ; preds = %0
  br label %37, !dbg !739

9:                                                ; preds = %0
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !740
  %11 = call i64 @strcspn(i8* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0)) #11, !dbg !741
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 %11, !dbg !742
  store i8 0, i8* %12, align 1, !dbg !743
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)), !dbg !744
  %14 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.5, i64 0, i64 0), i64* noundef %2), !dbg !745
  %15 = icmp ne i32 %14, 1, !dbg !747
  br i1 %15, label %16, label %23, !dbg !748

16:                                               ; preds = %9
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0)), !dbg !749
  br label %18, !dbg !751

18:                                               ; preds = %21, %16
  %19 = call i32 @getchar(), !dbg !752
  %20 = icmp ne i32 %19, 10, !dbg !753
  br i1 %20, label %21, label %22, !dbg !751

21:                                               ; preds = %18
  br label %18, !dbg !751, !llvm.loop !754

22:                                               ; preds = %18
  br label %37, !dbg !756

23:                                               ; preds = %9
  br label %24, !dbg !757

24:                                               ; preds = %27, %23
  %25 = call i32 @getchar(), !dbg !758
  %26 = icmp ne i32 %25, 10, !dbg !759
  br i1 %26, label %27, label %28, !dbg !757

27:                                               ; preds = %24
  br label %24, !dbg !757, !llvm.loop !760

28:                                               ; preds = %24
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !762
  %30 = load i64, i64* %2, align 8, !dbg !764
  %31 = call i32 @inventory_add(i8* noundef %29, i64 noundef %30), !dbg !765
  %32 = icmp eq i32 %31, 0, !dbg !766
  br i1 %32, label %33, label %35, !dbg !767

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)), !dbg !768
  br label %37, !dbg !768

35:                                               ; preds = %28
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0)), !dbg !769
  br label %37

37:                                               ; preds = %8, %22, %35, %33
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_item_from_user() #0 !dbg !771 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !772, metadata !DIExpression()), !dbg !773
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0)), !dbg !774
  %4 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32* noundef %1), !dbg !775
  %5 = icmp ne i32 %4, 1, !dbg !777
  br i1 %5, label %6, label %13, !dbg !778

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0)), !dbg !779
  br label %8, !dbg !781

8:                                                ; preds = %11, %6
  %9 = call i32 @getchar(), !dbg !782
  %10 = icmp ne i32 %9, 10, !dbg !783
  br i1 %10, label %11, label %12, !dbg !781

11:                                               ; preds = %8
  br label %8, !dbg !781, !llvm.loop !784

12:                                               ; preds = %8
  br label %34, !dbg !786

13:                                               ; preds = %0
  br label %14, !dbg !787

14:                                               ; preds = %17, %13
  %15 = call i32 @getchar(), !dbg !788
  %16 = icmp ne i32 %15, 10, !dbg !789
  br i1 %16, label %17, label %18, !dbg !787

17:                                               ; preds = %14
  br label %14, !dbg !787, !llvm.loop !790

18:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i32* %2, metadata !792, metadata !DIExpression()), !dbg !793
  %19 = load i32, i32* %1, align 4, !dbg !794
  %20 = sext i32 %19 to i64, !dbg !794
  %21 = call i32 @inventory_remove_by_obj(i64 noundef %20), !dbg !795
  store i32 %21, i32* %2, align 4, !dbg !793
  %22 = load i32, i32* %2, align 4, !dbg !796
  %23 = icmp sgt i32 %22, 0, !dbg !798
  br i1 %23, label %24, label %26, !dbg !799

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)), !dbg !800
  br label %34, !dbg !800

26:                                               ; preds = %18
  %27 = load i32, i32* %2, align 4, !dbg !801
  %28 = icmp eq i32 %27, 0, !dbg !803
  br i1 %28, label %29, label %31, !dbg !804

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0)), !dbg !805
  br label %33, !dbg !805

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0)), !dbg !806
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %12, %33, %24
  ret void, !dbg !807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inventory_clear_all() #0 !dbg !808 {
  %1 = load %struct.avatar*, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !809
  %2 = icmp ne %struct.avatar* %1, null, !dbg !811
  br i1 %2, label %4, label %3, !dbg !812

3:                                                ; preds = %0
  br label %14, !dbg !813

4:                                                ; preds = %0
  %5 = load %struct.avatar*, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !814
  %6 = getelementptr inbounds %struct.avatar, %struct.avatar* %5, i32 0, i32 0, !dbg !816
  %7 = load i8*, i8** %6, align 8, !dbg !816
  %8 = icmp ne i8* %7, null, !dbg !817
  br i1 %8, label %9, label %14, !dbg !818

9:                                                ; preds = %4
  %10 = load %struct.avatar*, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !819
  %11 = getelementptr inbounds %struct.avatar, %struct.avatar* %10, i32 0, i32 0, !dbg !820
  %12 = load i8*, i8** %11, align 8, !dbg !820
  %13 = bitcast i8* %12 to %struct.item**, !dbg !821
  call void @items_clear_all(%struct.item** noundef %13), !dbg !822
  br label %14, !dbg !822

14:                                               ; preds = %3, %9, %4
  ret void, !dbg !823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_inventory() #0 !dbg !824 {
  %1 = alloca %struct.item*, align 8
  call void @llvm.dbg.declare(metadata %struct.item** %1, metadata !825, metadata !DIExpression()), !dbg !826
  store %struct.item* null, %struct.item** %1, align 8, !dbg !826
  %2 = load i32, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 3), align 8, !dbg !827
  %3 = icmp ne i32 %2, 0, !dbg !829
  br i1 %3, label %4, label %9, !dbg !830

4:                                                ; preds = %0
  %5 = load %struct.avatar*, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !831
  %6 = getelementptr inbounds %struct.avatar, %struct.avatar* %5, i32 0, i32 0, !dbg !832
  %7 = load i8*, i8** %6, align 8, !dbg !832
  %8 = bitcast i8* %7 to %struct.item*, !dbg !833
  store %struct.item* %8, %struct.item** %1, align 8, !dbg !834
  br label %12, !dbg !835

9:                                                ; preds = %0
  %10 = load i8*, i8** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 2), align 8, !dbg !836
  %11 = bitcast i8* %10 to %struct.item*, !dbg !837
  store %struct.item* %11, %struct.item** %1, align 8, !dbg !838
  br label %12

12:                                               ; preds = %9, %4
  %13 = load %struct.item*, %struct.item** %1, align 8, !dbg !839
  %14 = icmp ne %struct.item* %13, null, !dbg !839
  br i1 %14, label %17, label %15, !dbg !841

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0)), !dbg !842
  br label %41, !dbg !844

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)), !dbg !845
  br label %19, !dbg !846

19:                                               ; preds = %32, %17
  %20 = load %struct.item*, %struct.item** %1, align 8, !dbg !847
  %21 = icmp ne %struct.item* %20, null, !dbg !846
  br i1 %21, label %22, label %41, !dbg !846

22:                                               ; preds = %19
  %23 = load %struct.item*, %struct.item** %1, align 8, !dbg !848
  %24 = getelementptr inbounds %struct.item, %struct.item* %23, i32 0, i32 1, !dbg !850
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0, !dbg !848
  %26 = icmp ne i8* %25, null, !dbg !848
  br i1 %26, label %27, label %31, !dbg !848

27:                                               ; preds = %22
  %28 = load %struct.item*, %struct.item** %1, align 8, !dbg !851
  %29 = getelementptr inbounds %struct.item, %struct.item* %28, i32 0, i32 1, !dbg !852
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0, !dbg !851
  br label %32, !dbg !848

31:                                               ; preds = %22
  br label %32, !dbg !848

32:                                               ; preds = %31, %27
  %33 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %31 ], !dbg !848
  %34 = load %struct.item*, %struct.item** %1, align 8, !dbg !853
  %35 = getelementptr inbounds %struct.item, %struct.item* %34, i32 0, i32 0, !dbg !854
  %36 = load i64, i64* %35, align 8, !dbg !854
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* noundef %33, i64 noundef %36), !dbg !855
  %38 = load %struct.item*, %struct.item** %1, align 8, !dbg !856
  %39 = getelementptr inbounds %struct.item, %struct.item* %38, i32 0, i32 2, !dbg !857
  %40 = load %struct.item*, %struct.item** %39, align 8, !dbg !857
  store %struct.item* %40, %struct.item** %1, align 8, !dbg !858
  br label %19, !dbg !846, !llvm.loop !859

41:                                               ; preds = %15, %19
  ret void, !dbg !861
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_start_location() #0 !dbg !862 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !863, metadata !DIExpression()), !dbg !864
  %14 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !865
  %15 = icmp ne %struct.start_loc* %14, null, !dbg !867
  br i1 %15, label %16, label %18, !dbg !868

16:                                               ; preds = %0
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0)), !dbg !869
  br label %103, !dbg !871

18:                                               ; preds = %0
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0)), !dbg !872
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !873
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** bitcast (i8** @stdin to %struct._IO_FILE**), align 8, !dbg !875
  %22 = call i8* bitcast (i8* (i8*, i32, i8*)* @fgets to i8* (i8*, i32, %struct._IO_FILE*)*)(i8* noundef %20, i32 noundef 16, %struct._IO_FILE* noundef %21), !dbg !876
  %23 = icmp ne i8* %22, null, !dbg !876
  br i1 %23, label %24, label %28, !dbg !877

24:                                               ; preds = %18
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !878
  %26 = call i64 @strcspn(i8* noundef %25, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0)) #11, !dbg !880
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 %26, !dbg !881
  store i8 0, i8* %27, align 1, !dbg !882
  br label %28, !dbg !883

28:                                               ; preds = %24, %18
  call void @llvm.dbg.declare(metadata i64* %2, metadata !884, metadata !DIExpression()), !dbg !885
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !886
  %30 = call i64 @strnlen(i8* noundef %29, i64 noundef 15) #11, !dbg !887
  store i64 %30, i64* %2, align 8, !dbg !885
  %31 = load i64, i64* %2, align 8, !dbg !888
  %32 = icmp ne i64 %31, 0, !dbg !888
  br i1 %32, label %35, label %33, !dbg !890

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0)), !dbg !891
  br label %103, !dbg !893

35:                                               ; preds = %28
  %36 = call noalias i8* @malloc(i64 noundef 16) #12, !dbg !894
  %37 = bitcast i8* %36 to %struct.start_loc*, !dbg !894
  store %struct.start_loc* %37, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !895
  %38 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !896
  %39 = icmp ne %struct.start_loc* %38, null, !dbg !898
  br i1 %39, label %42, label %40, !dbg !899

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0)), !dbg !900
  br label %103, !dbg !902

42:                                               ; preds = %35
  %43 = load i64, i64* %2, align 8, !dbg !903
  %44 = add i64 %43, 1, !dbg !904
  %45 = call noalias i8* @malloc(i64 noundef %44) #12, !dbg !905
  %46 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !906
  %47 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %46, i32 0, i32 0, !dbg !907
  store i8* %45, i8** %47, align 8, !dbg !908
  %48 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !909
  %49 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %48, i32 0, i32 0, !dbg !911
  %50 = load i8*, i8** %49, align 8, !dbg !911
  %51 = icmp ne i8* %50, null, !dbg !912
  br i1 %51, label %56, label %52, !dbg !913

52:                                               ; preds = %42
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0)), !dbg !914
  %54 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !916
  %55 = bitcast %struct.start_loc* %54 to i8*, !dbg !917
  call void @free(i8* noundef %55) #12, !dbg !918
  store %struct.start_loc* null, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !919
  br label %103, !dbg !920

56:                                               ; preds = %42
  %57 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !921
  %58 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %57, i32 0, i32 0, !dbg !922
  %59 = load i8*, i8** %58, align 8, !dbg !922
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !923
  %61 = load i64, i64* %2, align 8, !dbg !924
  %62 = add i64 %61, 1, !dbg !925
  %63 = call i8* @memcpy(i8* %59, i8* %60, i64 %62), !dbg !923
  call void @llvm.dbg.declare(metadata i8* %3, metadata !926, metadata !DIExpression()), !dbg !927
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !928
  %65 = call i32 @parse_u8_strict(i8* noundef %64, i8* noundef %3), !dbg !930
  %66 = icmp ne i32 %65, 0, !dbg !930
  br i1 %66, label %67, label %98, !dbg !931

67:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata double* %4, metadata !932, metadata !DIExpression()), !dbg !935
  store double 6.553600e+04, double* %4, align 8, !dbg !935
  call void @llvm.dbg.declare(metadata double* %5, metadata !936, metadata !DIExpression()), !dbg !937
  store double 0x40C45F306DC9C883, double* %5, align 8, !dbg !937
  call void @llvm.dbg.declare(metadata double* %6, metadata !938, metadata !DIExpression()), !dbg !939
  %68 = load i8, i8* %3, align 1, !dbg !940
  %69 = uitofp i8 %68 to double, !dbg !941
  %70 = fdiv double %69, 2.560000e+02, !dbg !942
  %71 = fmul double 0x401921FB54442D18, %70, !dbg !943
  store double %71, double* %6, align 8, !dbg !939
  call void @llvm.dbg.declare(metadata double* %7, metadata !944, metadata !DIExpression()), !dbg !945
  %72 = load double, double* %6, align 8, !dbg !946
  %73 = call double @cos(double noundef %72) #12, !dbg !947
  %74 = fmul double 0x40C45F306DC9C883, %73, !dbg !948
  store double %74, double* %7, align 8, !dbg !945
  call void @llvm.dbg.declare(metadata double* %8, metadata !949, metadata !DIExpression()), !dbg !950
  %75 = load double, double* %6, align 8, !dbg !951
  %76 = call double @sin(double noundef %75) #12, !dbg !952
  %77 = fmul double 0x40C45F306DC9C883, %76, !dbg !953
  store double %77, double* %8, align 8, !dbg !950
  call void @llvm.dbg.declare(metadata double* %9, metadata !954, metadata !DIExpression()), !dbg !955
  store double 6.553600e+04, double* %9, align 8, !dbg !955
  call void @llvm.dbg.declare(metadata i32* %10, metadata !956, metadata !DIExpression()), !dbg !957
  %78 = load double, double* %7, align 8, !dbg !958
  %79 = fmul double %78, 6.553600e+04, !dbg !959
  %80 = call i64 @llround(double noundef %79) #12, !dbg !960
  %81 = trunc i64 %80 to i32, !dbg !961
  store i32 %81, i32* %10, align 4, !dbg !957
  call void @llvm.dbg.declare(metadata i32* %11, metadata !962, metadata !DIExpression()), !dbg !963
  %82 = load double, double* %8, align 8, !dbg !964
  %83 = fmul double %82, 6.553600e+04, !dbg !965
  %84 = call i64 @llround(double noundef %83) #12, !dbg !966
  %85 = trunc i64 %84 to i32, !dbg !967
  store i32 %85, i32* %11, align 4, !dbg !963
  call void @llvm.dbg.declare(metadata i32* %12, metadata !968, metadata !DIExpression()), !dbg !969
  %86 = load i32, i32* %10, align 4, !dbg !970
  %87 = add i32 %86, -2147483648, !dbg !971
  store i32 %87, i32* %12, align 4, !dbg !969
  call void @llvm.dbg.declare(metadata i32* %13, metadata !972, metadata !DIExpression()), !dbg !973
  %88 = load i32, i32* %11, align 4, !dbg !974
  %89 = add i32 %88, -2147483648, !dbg !975
  store i32 %89, i32* %13, align 4, !dbg !973
  %90 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !976
  %91 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %90, i32 0, i32 1, !dbg !977
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %91, i64 0, i64 0, !dbg !978
  %93 = load i32, i32* %12, align 4, !dbg !979
  call void @be_store_u32(i8* noundef %92, i32 noundef %93), !dbg !980
  %94 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !981
  %95 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %94, i32 0, i32 1, !dbg !982
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %95, i64 0, i64 4, !dbg !983
  %97 = load i32, i32* %13, align 4, !dbg !984
  call void @be_store_u32(i8* noundef %96, i32 noundef %97), !dbg !985
  store i32 1, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 5), align 8, !dbg !986
  br label %103, !dbg !987

98:                                               ; preds = %56
  store i32 0, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 5), align 8, !dbg !988
  %99 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !990
  %100 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %99, i32 0, i32 1, !dbg !991
  %101 = getelementptr inbounds [8 x i8], [8 x i8]* %100, i64 0, i64 0, !dbg !992
  %102 = call i8* @memset(i8* %101, i32 0, i64 8), !dbg !992
  br label %103

103:                                              ; preds = %16, %33, %40, %52, %98, %67
  ret void, !dbg !993
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_u8_strict(i8* noundef %0, i8* noundef %1) #0 !dbg !994 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !998, metadata !DIExpression()), !dbg !999
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1000, metadata !DIExpression()), !dbg !1001
  %8 = load i8*, i8** %4, align 8, !dbg !1002
  %9 = icmp ne i8* %8, null, !dbg !1002
  br i1 %9, label %10, label %14, !dbg !1004

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !1005
  %12 = load i8, i8* %11, align 1, !dbg !1006
  %13 = icmp ne i8 %12, 0, !dbg !1006
  br i1 %13, label %15, label %14, !dbg !1007

14:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4, !dbg !1008
  br label %40, !dbg !1008

15:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1009, metadata !DIExpression()), !dbg !1010
  store i8* null, i8** %6, align 8, !dbg !1010
  %16 = call i32* @__errno_location() #15, !dbg !1011
  store i32 0, i32* %16, align 4, !dbg !1012
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1013, metadata !DIExpression()), !dbg !1014
  %17 = load i8*, i8** %4, align 8, !dbg !1015
  %18 = call i64 @strtol(i8* noundef %17, i8** noundef %6, i32 noundef 10) #12, !dbg !1016
  store i64 %18, i64* %7, align 8, !dbg !1014
  %19 = call i32* @__errno_location() #15, !dbg !1017
  %20 = load i32, i32* %19, align 4, !dbg !1017
  %21 = icmp ne i32 %20, 0, !dbg !1019
  br i1 %21, label %22, label %23, !dbg !1020

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4, !dbg !1021
  br label %40, !dbg !1021

23:                                               ; preds = %15
  %24 = load i8*, i8** %6, align 8, !dbg !1022
  %25 = load i8, i8* %24, align 1, !dbg !1024
  %26 = sext i8 %25 to i32, !dbg !1024
  %27 = icmp ne i32 %26, 0, !dbg !1025
  br i1 %27, label %28, label %29, !dbg !1026

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4, !dbg !1027
  br label %40, !dbg !1027

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8, !dbg !1028
  %31 = icmp slt i64 %30, 0, !dbg !1030
  br i1 %31, label %35, label %32, !dbg !1031

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8, !dbg !1032
  %34 = icmp sgt i64 %33, 255, !dbg !1033
  br i1 %34, label %35, label %36, !dbg !1034

35:                                               ; preds = %32, %29
  store i32 0, i32* %3, align 4, !dbg !1035
  br label %40, !dbg !1035

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8, !dbg !1036
  %38 = trunc i64 %37 to i8, !dbg !1037
  %39 = load i8*, i8** %5, align 8, !dbg !1038
  store i8 %38, i8* %39, align 1, !dbg !1039
  store i32 1, i32* %3, align 4, !dbg !1040
  br label %40, !dbg !1040

40:                                               ; preds = %36, %35, %28, %22, %14
  %41 = load i32, i32* %3, align 4, !dbg !1041
  ret i32 %41, !dbg !1041
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_store_u32(i8* noundef %0, i32 noundef %1) #0 !dbg !1042 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1045, metadata !DIExpression()), !dbg !1046
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1047, metadata !DIExpression()), !dbg !1048
  %5 = load i32, i32* %4, align 4, !dbg !1049
  %6 = lshr i32 %5, 24, !dbg !1050
  %7 = and i32 %6, 255, !dbg !1051
  %8 = trunc i32 %7 to i8, !dbg !1052
  %9 = load i8*, i8** %3, align 8, !dbg !1053
  %10 = getelementptr inbounds i8, i8* %9, i64 0, !dbg !1053
  store i8 %8, i8* %10, align 1, !dbg !1054
  %11 = load i32, i32* %4, align 4, !dbg !1055
  %12 = lshr i32 %11, 16, !dbg !1056
  %13 = and i32 %12, 255, !dbg !1057
  %14 = trunc i32 %13 to i8, !dbg !1058
  %15 = load i8*, i8** %3, align 8, !dbg !1059
  %16 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1059
  store i8 %14, i8* %16, align 1, !dbg !1060
  %17 = load i32, i32* %4, align 4, !dbg !1061
  %18 = lshr i32 %17, 8, !dbg !1062
  %19 = and i32 %18, 255, !dbg !1063
  %20 = trunc i32 %19 to i8, !dbg !1064
  %21 = load i8*, i8** %3, align 8, !dbg !1065
  %22 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !1065
  store i8 %20, i8* %22, align 1, !dbg !1066
  %23 = load i32, i32* %4, align 4, !dbg !1067
  %24 = and i32 %23, 255, !dbg !1068
  %25 = trunc i32 %24 to i8, !dbg !1069
  %26 = load i8*, i8** %3, align 8, !dbg !1070
  %27 = getelementptr inbounds i8, i8* %26, i64 3, !dbg !1070
  store i8 %25, i8* %27, align 1, !dbg !1071
  ret void, !dbg !1072
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_start_location() #0 !dbg !1073 {
  %1 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !1074
  %2 = icmp ne %struct.start_loc* %1, null, !dbg !1076
  br i1 %2, label %5, label %3, !dbg !1077

3:                                                ; preds = %0
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0)), !dbg !1078
  br label %8, !dbg !1080

5:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 5), align 8, !dbg !1081
  %6 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !1082
  %7 = bitcast %struct.start_loc* %6 to i8*, !dbg !1083
  call void @free(i8* noundef %7) #12, !dbg !1084
  store %struct.start_loc* null, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !1085
  br label %8, !dbg !1086

8:                                                ; preds = %5, %3
  ret void, !dbg !1086
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_black_sun_member(i8* noundef %0, i8* noundef %1) #0 !dbg !1087 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1088, metadata !DIExpression()), !dbg !1089
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1090, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1092, metadata !DIExpression()), !dbg !1094
  store i32 0, i32* %6, align 4, !dbg !1094
  br label %7, !dbg !1095

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %6, align 4, !dbg !1096
  %9 = icmp slt i32 %8, 4, !dbg !1098
  br i1 %9, label %10, label %32, !dbg !1099

10:                                               ; preds = %7
  %11 = load i8*, i8** %4, align 8, !dbg !1100
  %12 = load i32, i32* %6, align 4, !dbg !1103
  %13 = sext i32 %12 to i64, !dbg !1104
  %14 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([4 x i8*]* @black_sun_member_usernames to [0 x i8*]*), i64 0, i64 %13, !dbg !1104
  %15 = load i8*, i8** %14, align 8, !dbg !1104
  %16 = call i32 @strcmp(i8* noundef %11, i8* noundef %15) #11, !dbg !1105
  %17 = icmp eq i32 %16, 0, !dbg !1106
  br i1 %17, label %18, label %28, !dbg !1107

18:                                               ; preds = %10
  %19 = load i8*, i8** %5, align 8, !dbg !1108
  %20 = load i32, i32* %6, align 4, !dbg !1111
  %21 = sext i32 %20 to i64, !dbg !1112
  %22 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([4 x i8*]* @black_sun_member_access_codes to [0 x i8*]*), i64 0, i64 %21, !dbg !1112
  %23 = load i8*, i8** %22, align 8, !dbg !1112
  %24 = call i32 @strcmp(i8* noundef %19, i8* noundef %23) #11, !dbg !1113
  %25 = icmp eq i32 %24, 0, !dbg !1114
  br i1 %25, label %26, label %27, !dbg !1115

26:                                               ; preds = %18
  store i32 1, i32* %3, align 4, !dbg !1116
  br label %33, !dbg !1116

27:                                               ; preds = %18
  store i32 -1, i32* %3, align 4, !dbg !1118
  br label %33, !dbg !1118

28:                                               ; preds = %10
  br label %29, !dbg !1120

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4, !dbg !1121
  %31 = add nsw i32 %30, 1, !dbg !1121
  store i32 %31, i32* %6, align 4, !dbg !1121
  br label %7, !dbg !1122, !llvm.loop !1123

32:                                               ; preds = %7
  store i32 0, i32* %3, align 4, !dbg !1125
  br label %33, !dbg !1125

33:                                               ; preds = %32, %27, %26
  %34 = load i32, i32* %3, align 4, !dbg !1126
  ret i32 %34, !dbg !1126
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_avatar_and_components(%struct.avatar* noundef %0) #0 !dbg !1127 {
  %2 = alloca %struct.avatar*, align 8
  store %struct.avatar* %0, %struct.avatar** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.avatar** %2, metadata !1130, metadata !DIExpression()), !dbg !1131
  %3 = load %struct.avatar*, %struct.avatar** %2, align 8, !dbg !1132
  %4 = icmp ne %struct.avatar* %3, null, !dbg !1132
  br i1 %4, label %6, label %5, !dbg !1134

5:                                                ; preds = %1
  br label %29, !dbg !1135

6:                                                ; preds = %1
  %7 = load %struct.avatar*, %struct.avatar** %2, align 8, !dbg !1136
  %8 = getelementptr inbounds %struct.avatar, %struct.avatar* %7, i32 0, i32 1, !dbg !1138
  %9 = load i8*, i8** %8, align 8, !dbg !1138
  %10 = icmp ne i8* %9, null, !dbg !1136
  br i1 %10, label %11, label %15, !dbg !1139

11:                                               ; preds = %6
  %12 = load %struct.avatar*, %struct.avatar** %2, align 8, !dbg !1140
  %13 = getelementptr inbounds %struct.avatar, %struct.avatar* %12, i32 0, i32 1, !dbg !1141
  %14 = load i8*, i8** %13, align 8, !dbg !1141
  call void @free(i8* noundef %14) #12, !dbg !1142
  br label %15, !dbg !1142

15:                                               ; preds = %11, %6
  %16 = load %struct.avatar*, %struct.avatar** %2, align 8, !dbg !1143
  %17 = getelementptr inbounds %struct.avatar, %struct.avatar* %16, i32 0, i32 2, !dbg !1145
  %18 = load i8*, i8** %17, align 8, !dbg !1145
  %19 = icmp ne i8* %18, null, !dbg !1143
  br i1 %19, label %20, label %24, !dbg !1146

20:                                               ; preds = %15
  %21 = load %struct.avatar*, %struct.avatar** %2, align 8, !dbg !1147
  %22 = getelementptr inbounds %struct.avatar, %struct.avatar* %21, i32 0, i32 2, !dbg !1148
  %23 = load i8*, i8** %22, align 8, !dbg !1148
  call void @free(i8* noundef %23) #12, !dbg !1149
  br label %24, !dbg !1149

24:                                               ; preds = %20, %15
  call void @inventory_clear_all(), !dbg !1150
  %25 = load %struct.avatar*, %struct.avatar** %2, align 8, !dbg !1151
  %26 = getelementptr inbounds %struct.avatar, %struct.avatar* %25, i32 0, i32 0, !dbg !1152
  store i8* null, i8** %26, align 8, !dbg !1153
  %27 = load %struct.avatar*, %struct.avatar** %2, align 8, !dbg !1154
  %28 = bitcast %struct.avatar* %27 to i8*, !dbg !1154
  call void @free(i8* noundef %28) #12, !dbg !1155
  br label %29, !dbg !1156

29:                                               ; preds = %24, %5
  ret void, !dbg !1156
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_avatar(i8* noundef %0, i8* noundef %1) #0 !dbg !1157 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.avatar*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1160, metadata !DIExpression()), !dbg !1161
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1162, metadata !DIExpression()), !dbg !1163
  %7 = load i32, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 3), align 8, !dbg !1164
  %8 = icmp eq i32 %7, 4919, !dbg !1166
  br i1 %8, label %9, label %10, !dbg !1167

9:                                                ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 4), align 4, !dbg !1168
  call void @clear_avatar(), !dbg !1170
  br label %10, !dbg !1171

10:                                               ; preds = %9, %2
  call void @llvm.dbg.declare(metadata %struct.avatar** %5, metadata !1172, metadata !DIExpression()), !dbg !1173
  %11 = call noalias i8* @malloc(i64 noundef 40) #12, !dbg !1174
  %12 = bitcast i8* %11 to %struct.avatar*, !dbg !1174
  store %struct.avatar* %12, %struct.avatar** %5, align 8, !dbg !1173
  %13 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1175
  %14 = icmp ne %struct.avatar* %13, null, !dbg !1175
  br i1 %14, label %17, label %15, !dbg !1177

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0)), !dbg !1178
  call void @exit(i32 noundef 0) #14, !dbg !1180
  unreachable, !dbg !1180

17:                                               ; preds = %10
  %18 = load i8*, i8** %3, align 8, !dbg !1181
  %19 = icmp ne i8* %18, null, !dbg !1181
  br i1 %19, label %20, label %41, !dbg !1183

20:                                               ; preds = %17
  %21 = call noalias i8* @malloc(i64 noundef 16) #12, !dbg !1184
  %22 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1186
  %23 = getelementptr inbounds %struct.avatar, %struct.avatar* %22, i32 0, i32 2, !dbg !1187
  store i8* %21, i8** %23, align 8, !dbg !1188
  %24 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1189
  %25 = getelementptr inbounds %struct.avatar, %struct.avatar* %24, i32 0, i32 2, !dbg !1191
  %26 = load i8*, i8** %25, align 8, !dbg !1191
  %27 = icmp ne i8* %26, null, !dbg !1189
  br i1 %27, label %31, label %28, !dbg !1192

28:                                               ; preds = %20
  %29 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1193
  call void @free_avatar_and_components(%struct.avatar* noundef %29), !dbg !1195
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0)), !dbg !1196
  call void @exit(i32 noundef 0) #14, !dbg !1197
  unreachable, !dbg !1197

31:                                               ; preds = %20
  %32 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1198
  %33 = getelementptr inbounds %struct.avatar, %struct.avatar* %32, i32 0, i32 2, !dbg !1199
  %34 = load i8*, i8** %33, align 8, !dbg !1199
  %35 = call i8* @memset(i8* %34, i32 0, i64 16), !dbg !1200
  %36 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1201
  %37 = getelementptr inbounds %struct.avatar, %struct.avatar* %36, i32 0, i32 2, !dbg !1202
  %38 = load i8*, i8** %37, align 8, !dbg !1202
  %39 = load i8*, i8** %3, align 8, !dbg !1203
  %40 = call i8* @strncpy(i8* noundef %38, i8* noundef %39, i64 noundef 15) #12, !dbg !1204
  br label %41, !dbg !1205

41:                                               ; preds = %31, %17
  %42 = load i8*, i8** %4, align 8, !dbg !1206
  %43 = icmp ne i8* %42, null, !dbg !1206
  br i1 %43, label %44, label %65, !dbg !1208

44:                                               ; preds = %41
  %45 = call noalias i8* @malloc(i64 noundef 16) #12, !dbg !1209
  %46 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1211
  %47 = getelementptr inbounds %struct.avatar, %struct.avatar* %46, i32 0, i32 1, !dbg !1212
  store i8* %45, i8** %47, align 8, !dbg !1213
  %48 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1214
  %49 = getelementptr inbounds %struct.avatar, %struct.avatar* %48, i32 0, i32 1, !dbg !1216
  %50 = load i8*, i8** %49, align 8, !dbg !1216
  %51 = icmp ne i8* %50, null, !dbg !1214
  br i1 %51, label %55, label %52, !dbg !1217

52:                                               ; preds = %44
  %53 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1218
  call void @free_avatar_and_components(%struct.avatar* noundef %53), !dbg !1220
  %54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0)), !dbg !1221
  call void @exit(i32 noundef 0) #14, !dbg !1222
  unreachable, !dbg !1222

55:                                               ; preds = %44
  %56 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1223
  %57 = getelementptr inbounds %struct.avatar, %struct.avatar* %56, i32 0, i32 1, !dbg !1224
  %58 = load i8*, i8** %57, align 8, !dbg !1224
  %59 = call i8* @memset(i8* %58, i32 0, i64 16), !dbg !1225
  %60 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1226
  %61 = getelementptr inbounds %struct.avatar, %struct.avatar* %60, i32 0, i32 1, !dbg !1227
  %62 = load i8*, i8** %61, align 8, !dbg !1227
  %63 = load i8*, i8** %4, align 8, !dbg !1228
  %64 = call i8* @strncpy(i8* noundef %62, i8* noundef %63, i64 noundef 15) #12, !dbg !1229
  br label %65, !dbg !1230

65:                                               ; preds = %55, %41
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1231, metadata !DIExpression()), !dbg !1232
  %66 = load i8*, i8** %3, align 8, !dbg !1233
  %67 = load i8*, i8** %4, align 8, !dbg !1234
  %68 = call i32 @verify_black_sun_member(i8* noundef %66, i8* noundef %67), !dbg !1235
  store i32 %68, i32* %6, align 4, !dbg !1232
  %69 = load i32, i32* %6, align 4, !dbg !1236
  %70 = icmp eq i32 %69, -1, !dbg !1238
  br i1 %70, label %71, label %74, !dbg !1239

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.22, i64 0, i64 0)), !dbg !1240
  %73 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1242
  call void @free_avatar_and_components(%struct.avatar* noundef %73), !dbg !1243
  br label %97, !dbg !1244

74:                                               ; preds = %65
  %75 = load i32, i32* %6, align 4, !dbg !1245
  %76 = icmp eq i32 %75, 1, !dbg !1247
  br i1 %76, label %77, label %79, !dbg !1248

77:                                               ; preds = %74
  %78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0)), !dbg !1249
  store i32 4919, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 4), align 4, !dbg !1251
  br label %82, !dbg !1252

79:                                               ; preds = %74
  %80 = load i8*, i8** %3, align 8, !dbg !1253
  %81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8* noundef %80), !dbg !1255
  br label %82

82:                                               ; preds = %79, %77
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 2), align 8, !dbg !1256
  %85 = icmp ne i8* %84, null, !dbg !1258
  br i1 %85, label %86, label %90, !dbg !1259

86:                                               ; preds = %83
  %87 = load i8*, i8** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 2), align 8, !dbg !1260
  %88 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1261
  %89 = getelementptr inbounds %struct.avatar, %struct.avatar* %88, i32 0, i32 0, !dbg !1262
  store i8* %87, i8** %89, align 8, !dbg !1263
  br label %93, !dbg !1261

90:                                               ; preds = %83
  %91 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1264
  %92 = getelementptr inbounds %struct.avatar, %struct.avatar* %91, i32 0, i32 0, !dbg !1265
  store i8* null, i8** %92, align 8, !dbg !1266
  br label %93

93:                                               ; preds = %90, %86
  %94 = load %struct.avatar*, %struct.avatar** %5, align 8, !dbg !1267
  store %struct.avatar* %94, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !1268
  store i32 4919, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 3), align 8, !dbg !1269
  %95 = load i8*, i8** %3, align 8, !dbg !1270
  %96 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), i8* noundef %95), !dbg !1271
  br label %97, !dbg !1272

97:                                               ; preds = %93, %71
  ret void, !dbg !1272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_avatar() #0 !dbg !1273 {
  %1 = alloca %struct.avatar*, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 3), align 8, !dbg !1274
  %3 = icmp eq i32 %2, 0, !dbg !1276
  br i1 %3, label %4, label %6, !dbg !1277

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)), !dbg !1278
  br label %18, !dbg !1280

6:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.avatar** %1, metadata !1281, metadata !DIExpression()), !dbg !1282
  %7 = load %struct.avatar*, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !1283
  store %struct.avatar* %7, %struct.avatar** %1, align 8, !dbg !1282
  %8 = load %struct.avatar*, %struct.avatar** %1, align 8, !dbg !1284
  %9 = icmp ne %struct.avatar* %8, null, !dbg !1284
  br i1 %9, label %12, label %10, !dbg !1286

10:                                               ; preds = %6
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)), !dbg !1287
  br label %18, !dbg !1289

12:                                               ; preds = %6
  %13 = load %struct.avatar*, %struct.avatar** %1, align 8, !dbg !1290
  %14 = getelementptr inbounds %struct.avatar, %struct.avatar* %13, i32 0, i32 2, !dbg !1291
  %15 = load i8*, i8** %14, align 8, !dbg !1291
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0), i8* noundef %15), !dbg !1292
  %17 = load %struct.avatar*, %struct.avatar** %1, align 8, !dbg !1293
  call void @free_avatar_and_components(%struct.avatar* noundef %17), !dbg !1294
  call void @clear_start_location(), !dbg !1295
  br label %18, !dbg !1296

18:                                               ; preds = %12, %10, %4
  ret void, !dbg !1296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_ascii() #0 !dbg !1297 {
  %1 = alloca %struct.avatar*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata %struct.avatar** %1, metadata !1298, metadata !DIExpression()), !dbg !1299
  %4 = load %struct.avatar*, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !1300
  store %struct.avatar* %4, %struct.avatar** %1, align 8, !dbg !1299
  %5 = load %struct.avatar*, %struct.avatar** %1, align 8, !dbg !1301
  %6 = icmp ne %struct.avatar* %5, null, !dbg !1301
  br i1 %6, label %9, label %7, !dbg !1303

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0)), !dbg !1304
  br label %71, !dbg !1306

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0)), !dbg !1307
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.29, i64 0, i64 0)), !dbg !1308
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0)), !dbg !1309
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.31, i64 0, i64 0)), !dbg !1310
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0)), !dbg !1311
  %15 = load %struct.avatar*, %struct.avatar** %1, align 8, !dbg !1312
  %16 = getelementptr inbounds %struct.avatar, %struct.avatar* %15, i32 0, i32 2, !dbg !1314
  %17 = load i8*, i8** %16, align 8, !dbg !1314
  %18 = icmp ne i8* %17, null, !dbg !1312
  br i1 %18, label %19, label %59, !dbg !1315

19:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1316, metadata !DIExpression()), !dbg !1319
  store i32 0, i32* %2, align 4, !dbg !1319
  br label %20, !dbg !1320

20:                                               ; preds = %55, %19
  %21 = load i32, i32* %2, align 4, !dbg !1321
  %22 = icmp slt i32 %21, 16, !dbg !1323
  br i1 %22, label %23, label %33, !dbg !1324

23:                                               ; preds = %20
  %24 = load %struct.avatar*, %struct.avatar** %1, align 8, !dbg !1325
  %25 = getelementptr inbounds %struct.avatar, %struct.avatar* %24, i32 0, i32 2, !dbg !1326
  %26 = load i8*, i8** %25, align 8, !dbg !1326
  %27 = load i32, i32* %2, align 4, !dbg !1327
  %28 = sext i32 %27 to i64, !dbg !1325
  %29 = getelementptr inbounds i8, i8* %26, i64 %28, !dbg !1325
  %30 = load i8, i8* %29, align 1, !dbg !1325
  %31 = sext i8 %30 to i32, !dbg !1325
  %32 = icmp ne i32 %31, 0, !dbg !1328
  br label %33

33:                                               ; preds = %23, %20
  %34 = phi i1 [ false, %20 ], [ %32, %23 ], !dbg !1329
  br i1 %34, label %35, label %58, !dbg !1330

35:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1331, metadata !DIExpression()), !dbg !1333
  %36 = load %struct.avatar*, %struct.avatar** %1, align 8, !dbg !1334
  %37 = getelementptr inbounds %struct.avatar, %struct.avatar* %36, i32 0, i32 2, !dbg !1335
  %38 = load i8*, i8** %37, align 8, !dbg !1335
  %39 = load i32, i32* %2, align 4, !dbg !1336
  %40 = sext i32 %39 to i64, !dbg !1334
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !1334
  %42 = load i8, i8* %41, align 1, !dbg !1334
  store i8 %42, i8* %3, align 1, !dbg !1333
  %43 = load i8, i8* %3, align 1, !dbg !1337
  %44 = zext i8 %43 to i32, !dbg !1337
  %45 = icmp sge i32 %44, 32, !dbg !1339
  br i1 %45, label %46, label %54, !dbg !1340

46:                                               ; preds = %35
  %47 = load i8, i8* %3, align 1, !dbg !1341
  %48 = zext i8 %47 to i32, !dbg !1341
  %49 = icmp sle i32 %48, 126, !dbg !1342
  br i1 %49, label %50, label %54, !dbg !1343

50:                                               ; preds = %46
  %51 = load i8, i8* %3, align 1, !dbg !1344
  %52 = zext i8 %51 to i32, !dbg !1344
  %53 = call i32 @putchar(i32 noundef %52), !dbg !1346
  br label %54, !dbg !1347

54:                                               ; preds = %50, %46, %35
  br label %55, !dbg !1348

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4, !dbg !1349
  %57 = add nsw i32 %56, 1, !dbg !1349
  store i32 %57, i32* %2, align 4, !dbg !1349
  br label %20, !dbg !1350, !llvm.loop !1351

58:                                               ; preds = %33
  br label %61, !dbg !1353

59:                                               ; preds = %9
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)), !dbg !1354
  br label %61

61:                                               ; preds = %59, %58
  %62 = load %struct.avatar*, %struct.avatar** %1, align 8, !dbg !1356
  %63 = getelementptr inbounds %struct.avatar, %struct.avatar* %62, i32 0, i32 2, !dbg !1357
  %64 = load i8*, i8** %63, align 8, !dbg !1357
  %65 = call i64 @strnlen(i8* noundef %64, i64 noundef 15) #11, !dbg !1358
  %66 = sub i64 32, %65, !dbg !1359
  %67 = trunc i64 %66 to i32, !dbg !1360
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i32 noundef %67, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i64 0, i64 0)), !dbg !1361
  %69 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.36, i64 0, i64 0)), !dbg !1362
  %70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0)), !dbg !1363
  br label %71, !dbg !1364

71:                                               ; preds = %61, %7
  ret void, !dbg !1364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print16_hex(i8* noundef %0) #0 !dbg !1365 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1368, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1370, metadata !DIExpression()), !dbg !1371
  %5 = load i8*, i8** %2, align 8, !dbg !1372
  store i8* %5, i8** %3, align 8, !dbg !1371
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0)), !dbg !1373
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1374, metadata !DIExpression()), !dbg !1376
  store i32 0, i32* %4, align 4, !dbg !1376
  br label %7, !dbg !1377

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %4, align 4, !dbg !1378
  %9 = icmp slt i32 %8, 16, !dbg !1380
  br i1 %9, label %10, label %32, !dbg !1381

10:                                               ; preds = %7
  %11 = load i8*, i8** %3, align 8, !dbg !1382
  %12 = load i32, i32* %4, align 4, !dbg !1384
  %13 = sext i32 %12 to i64, !dbg !1382
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1382
  %15 = load i8, i8* %14, align 1, !dbg !1382
  %16 = zext i8 %15 to i32, !dbg !1382
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i32 noundef %16), !dbg !1385
  %18 = load i32, i32* %4, align 4, !dbg !1386
  %19 = icmp eq i32 %18, 7, !dbg !1388
  br i1 %19, label %20, label %22, !dbg !1389

20:                                               ; preds = %10
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)), !dbg !1390
  br label %28, !dbg !1390

22:                                               ; preds = %10
  %23 = load i32, i32* %4, align 4, !dbg !1391
  %24 = icmp ne i32 %23, 15, !dbg !1393
  br i1 %24, label %25, label %27, !dbg !1394

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1395
  br label %27, !dbg !1395

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %27, %20
  br label %29, !dbg !1396

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4, !dbg !1397
  %31 = add nsw i32 %30, 1, !dbg !1397
  store i32 %31, i32* %4, align 4, !dbg !1397
  br label %7, !dbg !1398, !llvm.loop !1399

32:                                               ; preds = %7
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0)), !dbg !1401
  ret void, !dbg !1402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_hex() #0 !dbg !1403 {
  %1 = alloca %struct.avatar*, align 8
  %2 = alloca %struct.start_loc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.avatar** %1, metadata !1404, metadata !DIExpression()), !dbg !1405
  %5 = load %struct.avatar*, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !1406
  store %struct.avatar* %5, %struct.avatar** %1, align 8, !dbg !1405
  %6 = load %struct.avatar*, %struct.avatar** %1, align 8, !dbg !1407
  %7 = icmp ne %struct.avatar* %6, null, !dbg !1407
  br i1 %7, label %10, label %8, !dbg !1409

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0)), !dbg !1410
  br label %109, !dbg !1412

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0)), !dbg !1413
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([161 x i8], [161 x i8]* @.str.42, i64 0, i64 0)), !dbg !1414
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.43, i64 0, i64 0)), !dbg !1415
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([161 x i8], [161 x i8]* @.str.44, i64 0, i64 0)), !dbg !1416
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i64 0, i64 0)), !dbg !1417
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([161 x i8], [161 x i8]* @.str.44, i64 0, i64 0)), !dbg !1418
  %17 = load %struct.avatar*, %struct.avatar** %1, align 8, !dbg !1419
  %18 = getelementptr inbounds %struct.avatar, %struct.avatar* %17, i32 0, i32 2, !dbg !1421
  %19 = load i8*, i8** %18, align 8, !dbg !1421
  %20 = icmp ne i8* %19, null, !dbg !1419
  br i1 %20, label %21, label %104, !dbg !1422

21:                                               ; preds = %10
  %22 = load %struct.avatar*, %struct.avatar** %1, align 8, !dbg !1423
  %23 = getelementptr inbounds %struct.avatar, %struct.avatar* %22, i32 0, i32 2, !dbg !1425
  %24 = load i8*, i8** %23, align 8, !dbg !1425
  call void @print16_hex(i8* noundef %24), !dbg !1426
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([161 x i8], [161 x i8]* @.str.44, i64 0, i64 0)), !dbg !1427
  %26 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !1428
  %27 = icmp ne %struct.start_loc* %26, null, !dbg !1430
  br i1 %27, label %28, label %103, !dbg !1431

28:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata %struct.start_loc** %2, metadata !1432, metadata !DIExpression()), !dbg !1434
  %29 = load %struct.start_loc*, %struct.start_loc** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 6), align 8, !dbg !1435
  store %struct.start_loc* %29, %struct.start_loc** %2, align 8, !dbg !1434
  %30 = load %struct.start_loc*, %struct.start_loc** %2, align 8, !dbg !1436
  %31 = icmp ne %struct.start_loc* %30, null, !dbg !1436
  br i1 %31, label %32, label %102, !dbg !1438

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.46, i64 0, i64 0)), !dbg !1439
  %34 = load i32, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 5), align 8, !dbg !1441
  %35 = icmp ne i32 %34, 0, !dbg !1443
  br i1 %35, label %36, label %96, !dbg !1444

36:                                               ; preds = %32
  %37 = load %struct.start_loc*, %struct.start_loc** %2, align 8, !dbg !1445
  %38 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %37, i32 0, i32 0, !dbg !1447
  %39 = load i8*, i8** %38, align 8, !dbg !1447
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i64 0, i64 0), i8* noundef %39), !dbg !1448
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1449, metadata !DIExpression()), !dbg !1450
  %41 = load %struct.start_loc*, %struct.start_loc** %2, align 8, !dbg !1451
  %42 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %41, i32 0, i32 1, !dbg !1452
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %42, i64 0, i64 0, !dbg !1451
  %44 = load i8, i8* %43, align 8, !dbg !1451
  %45 = zext i8 %44 to i32, !dbg !1451
  %46 = shl i32 %45, 24, !dbg !1453
  %47 = load %struct.start_loc*, %struct.start_loc** %2, align 8, !dbg !1454
  %48 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %47, i32 0, i32 1, !dbg !1455
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %48, i64 0, i64 1, !dbg !1454
  %50 = load i8, i8* %49, align 1, !dbg !1454
  %51 = zext i8 %50 to i32, !dbg !1454
  %52 = shl i32 %51, 16, !dbg !1456
  %53 = or i32 %46, %52, !dbg !1457
  %54 = load %struct.start_loc*, %struct.start_loc** %2, align 8, !dbg !1458
  %55 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %54, i32 0, i32 1, !dbg !1459
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %55, i64 0, i64 2, !dbg !1458
  %57 = load i8, i8* %56, align 2, !dbg !1458
  %58 = zext i8 %57 to i32, !dbg !1458
  %59 = shl i32 %58, 8, !dbg !1460
  %60 = or i32 %53, %59, !dbg !1461
  %61 = load %struct.start_loc*, %struct.start_loc** %2, align 8, !dbg !1462
  %62 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %61, i32 0, i32 1, !dbg !1463
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %62, i64 0, i64 3, !dbg !1462
  %64 = load i8, i8* %63, align 1, !dbg !1462
  %65 = zext i8 %64 to i32, !dbg !1462
  %66 = or i32 %60, %65, !dbg !1464
  store i32 %66, i32* %3, align 4, !dbg !1450
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1465, metadata !DIExpression()), !dbg !1466
  %67 = load %struct.start_loc*, %struct.start_loc** %2, align 8, !dbg !1467
  %68 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %67, i32 0, i32 1, !dbg !1468
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %68, i64 0, i64 4, !dbg !1467
  %70 = load i8, i8* %69, align 4, !dbg !1467
  %71 = zext i8 %70 to i32, !dbg !1467
  %72 = shl i32 %71, 24, !dbg !1469
  %73 = load %struct.start_loc*, %struct.start_loc** %2, align 8, !dbg !1470
  %74 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %73, i32 0, i32 1, !dbg !1471
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %74, i64 0, i64 5, !dbg !1470
  %76 = load i8, i8* %75, align 1, !dbg !1470
  %77 = zext i8 %76 to i32, !dbg !1470
  %78 = shl i32 %77, 16, !dbg !1472
  %79 = or i32 %72, %78, !dbg !1473
  %80 = load %struct.start_loc*, %struct.start_loc** %2, align 8, !dbg !1474
  %81 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %80, i32 0, i32 1, !dbg !1475
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %81, i64 0, i64 6, !dbg !1474
  %83 = load i8, i8* %82, align 2, !dbg !1474
  %84 = zext i8 %83 to i32, !dbg !1474
  %85 = shl i32 %84, 8, !dbg !1476
  %86 = or i32 %79, %85, !dbg !1477
  %87 = load %struct.start_loc*, %struct.start_loc** %2, align 8, !dbg !1478
  %88 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %87, i32 0, i32 1, !dbg !1479
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %88, i64 0, i64 7, !dbg !1478
  %90 = load i8, i8* %89, align 1, !dbg !1478
  %91 = zext i8 %90 to i32, !dbg !1478
  %92 = or i32 %86, %91, !dbg !1480
  store i32 %92, i32* %4, align 4, !dbg !1466
  %93 = load i32, i32* %3, align 4, !dbg !1481
  %94 = load i32, i32* %4, align 4, !dbg !1482
  %95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 noundef %93, i32 noundef %94), !dbg !1483
  br label %101, !dbg !1484

96:                                               ; preds = %32
  %97 = load %struct.start_loc*, %struct.start_loc** %2, align 8, !dbg !1485
  %98 = getelementptr inbounds %struct.start_loc, %struct.start_loc* %97, i32 0, i32 0, !dbg !1487
  %99 = load i8*, i8** %98, align 8, !dbg !1487
  %100 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0), i8* noundef %99), !dbg !1488
  br label %101

101:                                              ; preds = %96, %36
  br label %102, !dbg !1489

102:                                              ; preds = %101, %28
  br label %103, !dbg !1490

103:                                              ; preds = %102, %21
  br label %106, !dbg !1491

104:                                              ; preds = %10
  %105 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.50, i64 0, i64 0)), !dbg !1492
  br label %106

106:                                              ; preds = %104, %103
  %107 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([161 x i8], [161 x i8]* @.str.51, i64 0, i64 0)), !dbg !1494
  %108 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0)), !dbg !1495
  br label %109, !dbg !1496

109:                                              ; preds = %106, %8
  ret void, !dbg !1496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_screen() #0 !dbg !1497 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0)), !dbg !1498
  ret void, !dbg !1499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wait_enter(i8* noundef %0) #0 !dbg !1500 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1501, metadata !DIExpression()), !dbg !1502
  %3 = load i8*, i8** %2, align 8, !dbg !1503
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i8* noundef %3), !dbg !1504
  br label %5, !dbg !1505

5:                                                ; preds = %8, %1
  %6 = call i32 @getchar(), !dbg !1506
  %7 = icmp ne i32 %6, 10, !dbg !1507
  br i1 %7, label %8, label %9, !dbg !1505

8:                                                ; preds = %5
  br label %5, !dbg !1505, !llvm.loop !1508

9:                                                ; preds = %5
  ret void, !dbg !1510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_menu() #0 !dbg !1511 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0)), !dbg !1512
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([179 x i8], [179 x i8]* @.str.54, i64 0, i64 0)), !dbg !1513
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0)), !dbg !1514
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i64 0, i64 0)), !dbg !1515
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0)), !dbg !1516
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i64 0, i64 0)), !dbg !1517
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0)), !dbg !1518
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i64 0, i64 0)), !dbg !1519
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i64 0, i64 0)), !dbg !1520
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0)), !dbg !1521
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i64 0, i64 0)), !dbg !1522
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i64 0, i64 0)), !dbg !1523
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i64 0, i64 0)), !dbg !1524
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([179 x i8], [179 x i8]* @.str.54, i64 0, i64 0)), !dbg !1525
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i64 0, i64 0)), !dbg !1526
  ret void, !dbg !1527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_render() #0 !dbg !1528 {
  %1 = load i32, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 4), align 4, !dbg !1529
  %2 = icmp ne i32 %1, 0, !dbg !1531
  br i1 %2, label %3, label %7, !dbg !1532

3:                                                ; preds = %0
  %4 = load void ()**, void ()*** @render_functions, align 8, !dbg !1533
  %5 = getelementptr inbounds void ()*, void ()** %4, i64 0, !dbg !1533
  %6 = load void ()*, void ()** %5, align 8, !dbg !1533
  call void %6(), !dbg !1533
  br label %11, !dbg !1535

7:                                                ; preds = %0
  %8 = load void ()**, void ()*** @render_functions, align 8, !dbg !1536
  %9 = getelementptr inbounds void ()*, void ()** %8, i64 1, !dbg !1536
  %10 = load void ()*, void ()** %9, align 8, !dbg !1536
  call void %10(), !dbg !1536
  br label %11

11:                                               ; preds = %7, %3
  ret void, !dbg !1538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_banner() #0 !dbg !1539 {
  call void @clear_screen(), !dbg !1540
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0)), !dbg !1541
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([179 x i8], [179 x i8]* @.str.54, i64 0, i64 0)), !dbg !1542
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.67, i64 0, i64 0)), !dbg !1543
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.68, i64 0, i64 0)), !dbg !1544
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.69, i64 0, i64 0)), !dbg !1545
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([179 x i8], [179 x i8]* @.str.54, i64 0, i64 0)), !dbg !1546
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0)), !dbg !1547
  ret void, !dbg !1548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_system() #0 !dbg !1549 {
  call void @print_banner(), !dbg !1550
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.70, i64 0, i64 0)), !dbg !1551
  store %struct.avatar* null, %struct.avatar** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 0), align 8, !dbg !1552
  %2 = call noalias i8* @strdup(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i64 0, i64 0)) #12, !dbg !1553
  store i8* %2, i8** getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 1), align 8, !dbg !1554
  store i32 0, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 3), align 8, !dbg !1555
  store i32 0, i32* getelementptr inbounds (%struct.session, %struct.session* @g_session, i32 0, i32 4), align 4, !dbg !1556
  %3 = call noalias i8* @calloc(i64 noundef 4, i64 noundef 8) #12, !dbg !1557
  %4 = bitcast i8* %3 to void ()**, !dbg !1557
  store void ()** %4, void ()*** @render_functions, align 8, !dbg !1558
  %5 = load void ()**, void ()*** @render_functions, align 8, !dbg !1559
  %6 = icmp eq void ()** %5, null, !dbg !1561
  br i1 %6, label %7, label %9, !dbg !1562

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)), !dbg !1563
  call void @exit(i32 noundef 137) #14, !dbg !1565
  unreachable, !dbg !1565

9:                                                ; preds = %0
  %10 = load void ()**, void ()*** @render_functions, align 8, !dbg !1566
  %11 = getelementptr inbounds void ()*, void ()** %10, i64 0, !dbg !1566
  store void ()* @test_render, void ()** %11, align 8, !dbg !1567
  %12 = load void ()**, void ()*** @render_functions, align 8, !dbg !1568
  %13 = getelementptr inbounds void ()*, void ()** %12, i64 1, !dbg !1568
  store void ()* @print_card, void ()** %13, align 8, !dbg !1569
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.73, i64 0, i64 0), void ()* noundef @print_card), !dbg !1570
  %15 = load void ()**, void ()*** @render_functions, align 8, !dbg !1571
  %16 = getelementptr inbounds void ()*, void ()** %15, i64 0, !dbg !1571
  store void ()* @render_hex, void ()** %16, align 8, !dbg !1572
  %17 = load void ()**, void ()*** @render_functions, align 8, !dbg !1573
  %18 = getelementptr inbounds void ()*, void ()** %17, i64 1, !dbg !1573
  store void ()* @render_ascii, void ()** %18, align 8, !dbg !1574
  ret void, !dbg !1575
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #10 !dbg !1576 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1582, metadata !DIExpression()), !dbg !1583
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1584, metadata !DIExpression()), !dbg !1585
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1586, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1588, metadata !DIExpression()), !dbg !1589
  %9 = load i8*, i8** %4, align 8, !dbg !1590
  store i8* %9, i8** %7, align 8, !dbg !1589
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1591, metadata !DIExpression()), !dbg !1592
  %10 = load i8*, i8** %5, align 8, !dbg !1593
  store i8* %10, i8** %8, align 8, !dbg !1592
  br label %11, !dbg !1594

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !1595
  %13 = add i64 %12, -1, !dbg !1595
  store i64 %13, i64* %6, align 8, !dbg !1595
  %14 = icmp ugt i64 %12, 0, !dbg !1596
  br i1 %14, label %15, label %21, !dbg !1594

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !1597
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !1597
  store i8* %17, i8** %8, align 8, !dbg !1597
  %18 = load i8, i8* %16, align 1, !dbg !1598
  %19 = load i8*, i8** %7, align 8, !dbg !1599
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !1599
  store i8* %20, i8** %7, align 8, !dbg !1599
  store i8 %18, i8* %19, align 1, !dbg !1600
  br label %11, !dbg !1594, !llvm.loop !1601

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !1602
  ret i8* %22, !dbg !1603
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #10 !dbg !1604 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1608, metadata !DIExpression()), !dbg !1609
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1610, metadata !DIExpression()), !dbg !1611
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1612, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1614, metadata !DIExpression()), !dbg !1615
  %8 = load i8*, i8** %4, align 8, !dbg !1616
  store i8* %8, i8** %7, align 8, !dbg !1615
  br label %9, !dbg !1617

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !1618
  %11 = add i64 %10, -1, !dbg !1618
  store i64 %11, i64* %6, align 8, !dbg !1618
  %12 = icmp ugt i64 %10, 0, !dbg !1619
  br i1 %12, label %13, label %18, !dbg !1617

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !1620
  %15 = trunc i32 %14 to i8, !dbg !1620
  %16 = load i8*, i8** %7, align 8, !dbg !1621
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !1621
  store i8* %17, i8** %7, align 8, !dbg !1621
  store i8 %15, i8* %16, align 1, !dbg !1622
  br label %9, !dbg !1617, !llvm.loop !1623

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !1624
  ret i8* %19, !dbg !1625
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!91, !75, !2, !81, !94, !96}
!llvm.ident = !{!98, !98, !98, !98, !98, !98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_session", scope: !2, file: !3, line: 8, type: !45, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !42, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../metalogin.c", directory: "/home/shafi/harden/stase_klee_demo/1-basic/demo_klee", checksumkind: CSK_MD5, checksum: "e8009e60280ade932294592e81a40dfd")
!4 = !{!5, !6, !7, !12, !11, !16, !19, !24, !39, !40}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !8, line: 26, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "649b383a60bfa3eb90e85840b2b0be20")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !10, line: 41, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !15)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "func_t", file: !3, line: 9, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{null}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "item", file: !26, line: 43, baseType: !27)
!26 = !DIFile(filename: "../metalogin.h", directory: "/home/shafi/harden/stase_klee_demo/1-basic/demo_klee", checksumkind: CSK_MD5, checksum: "e4a2812a6586c9cf5a78fe62003e23ba")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !26, line: 38, size: 320, elements: !28)
!28 = !{!29, !31, !36, !38}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "inventory_obj", scope: !27, file: !26, line: 39, baseType: !30, size: 64)
!30 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "thingname", scope: !27, file: !26, line: 40, baseType: !32, size: 128, offset: 64)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !34)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !{!35}
!35 = !DISubrange(count: 16)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !27, file: !26, line: 41, baseType: !37, size: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "internal_use_only", scope: !27, file: !26, line: 42, baseType: !11, size: 32, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 24, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 38, baseType: !18)
!42 = !{!0, !43}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "render_functions", scope: !2, file: !3, line: 10, type: !19, isLocal: false, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "session", file: !26, line: 53, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "session", file: !26, line: 45, size: 384, elements: !47)
!47 = !{!48, !58, !59, !60, !61, !62, !63}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "current_avatar", scope: !46, file: !26, line: 46, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "avatar", file: !26, line: 31, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avatar", file: !26, line: 26, size: 320, elements: !52)
!52 = !{!53, !54, !56, !57}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "inventory", scope: !51, file: !26, line: 27, baseType: !5, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "access_code", scope: !51, file: !26, line: 28, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !51, file: !26, line: 29, baseType: !55, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "expansion_slot", scope: !51, file: !26, line: 30, baseType: !32, size: 128, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !46, file: !26, line: 47, baseType: !55, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "inventory", scope: !46, file: !26, line: 48, baseType: !5, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !46, file: !26, line: 49, baseType: !11, size: 32, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "is_blacksun_member", scope: !46, file: !26, line: 50, baseType: !11, size: 32, offset: 224)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "is_port", scope: !46, file: !26, line: 51, baseType: !11, size: 32, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "start_loc", scope: !46, file: !26, line: 52, baseType: !64, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "start_loc", file: !26, line: 36, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "start_loc", file: !26, line: 33, size: 128, elements: !67)
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "location_name", scope: !66, file: !26, line: 34, baseType: !55, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "coordinates", scope: !66, file: !26, line: 35, baseType: !70, size: 64, offset: 64)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 8)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "stdin", scope: !75, file: !76, line: 17, type: !5, isLocal: false, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !77, globals: !78, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "stubs_demo.c", directory: "/home/shafi/harden/stase_klee_demo/1-basic/demo_klee", checksumkind: CSK_MD5, checksum: "469330ce767c1d357e5763f572824a03")
!77 = !{!18, !55}
!78 = !{!73}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "black_sun_member_usernames", scope: !81, file: !82, line: 5, type: !86, isLocal: false, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !83, splitDebugInlining: false, nameTableKind: None)
!82 = !DIFile(filename: "../globals.c", directory: "/home/shafi/harden/stase_klee_demo/1-basic/demo_klee", checksumkind: CSK_MD5, checksum: "32a749c13848421994be9ec1c32454bf")
!83 = !{!79, !84}
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "black_sun_member_access_codes", scope: !81, file: !82, line: 12, type: !86, isLocal: false, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !89)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!89 = !{!90}
!90 = !DISubrange(count: 4)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !93, splitDebugInlining: false, nameTableKind: None)
!92 = !DIFile(filename: "driver_uaf_demo.c", directory: "/home/shafi/harden/stase_klee_demo/1-basic/demo_klee", checksumkind: CSK_MD5, checksum: "f2f77d84e9a82fc083bf86808f1a4e09")
!93 = !{!18}
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!98 = !{!"Ubuntu clang version 14.0.6"}
!99 = !{i32 7, !"Dwarf Version", i32 5}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{i32 1, !"wchar_size", i32 4}
!102 = !{i32 7, !"PIC Level", i32 2}
!103 = !{i32 7, !"PIE Level", i32 2}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = distinct !DISubprogram(name: "main", scope: !92, file: !92, line: 43, type: !107, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !91, retainedNodes: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{!11}
!109 = !{}
!110 = !DILocation(line: 44, column: 3, scope: !106)
!111 = !DILocalVariable(name: "username", scope: !106, file: !92, line: 46, type: !32)
!112 = !DILocation(line: 46, column: 8, scope: !106)
!113 = !DILocalVariable(name: "access_code", scope: !106, file: !92, line: 47, type: !32)
!114 = !DILocation(line: 47, column: 8, scope: !106)
!115 = !DILocation(line: 50, column: 22, scope: !106)
!116 = !DILocation(line: 50, column: 3, scope: !106)
!117 = !DILocation(line: 51, column: 22, scope: !106)
!118 = !DILocation(line: 51, column: 3, scope: !106)
!119 = !DILocation(line: 54, column: 3, scope: !106)
!120 = !DILocation(line: 54, column: 34, scope: !106)
!121 = !DILocation(line: 55, column: 3, scope: !106)
!122 = !DILocation(line: 55, column: 40, scope: !106)
!123 = !DILocation(line: 58, column: 30, scope: !106)
!124 = !DILocation(line: 58, column: 15, scope: !106)
!125 = !DILocation(line: 58, column: 42, scope: !106)
!126 = !DILocation(line: 58, column: 3, scope: !106)
!127 = !DILocation(line: 63, column: 14, scope: !106)
!128 = !DILocation(line: 63, column: 24, scope: !106)
!129 = !DILocation(line: 63, column: 3, scope: !106)
!130 = !DILocation(line: 64, column: 3, scope: !106)
!131 = !DILocation(line: 69, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !106, file: !92, line: 69, column: 7)
!133 = !DILocation(line: 69, column: 7, scope: !132)
!134 = !DILocation(line: 69, column: 7, scope: !106)
!135 = !DILocation(line: 70, column: 40, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !92, line: 69, column: 33)
!137 = !DILocation(line: 70, column: 30, scope: !136)
!138 = !DILocation(line: 70, column: 5, scope: !136)
!139 = !DILocation(line: 71, column: 3, scope: !136)
!140 = !DILocation(line: 74, column: 3, scope: !106)
!141 = !DILocation(line: 75, column: 3, scope: !106)
!142 = distinct !DISubprogram(name: "printf", scope: !76, file: !76, line: 12, type: !143, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!143 = !DISubroutineType(types: !144)
!144 = !{!11, !87, null}
!145 = !DILocalVariable(name: "fmt", arg: 1, scope: !142, file: !76, line: 12, type: !87)
!146 = !DILocation(line: 12, column: 24, scope: !142)
!147 = !DILocation(line: 12, column: 42, scope: !142)
!148 = !DILocation(line: 12, column: 47, scope: !142)
!149 = distinct !DISubprogram(name: "puts", scope: !76, file: !76, line: 13, type: !150, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!150 = !DISubroutineType(types: !151)
!151 = !{!11, !87}
!152 = !DILocalVariable(name: "s", arg: 1, scope: !149, file: !76, line: 13, type: !87)
!153 = !DILocation(line: 13, column: 22, scope: !149)
!154 = !DILocation(line: 13, column: 33, scope: !149)
!155 = !DILocation(line: 13, column: 36, scope: !149)
!156 = distinct !DISubprogram(name: "putchar", scope: !76, file: !76, line: 14, type: !157, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!157 = !DISubroutineType(types: !158)
!158 = !{!11, !11}
!159 = !DILocalVariable(name: "c", arg: 1, scope: !156, file: !76, line: 14, type: !11)
!160 = !DILocation(line: 14, column: 17, scope: !156)
!161 = !DILocation(line: 14, column: 28, scope: !156)
!162 = !DILocation(line: 14, column: 38, scope: !156)
!163 = !DILocation(line: 14, column: 31, scope: !156)
!164 = distinct !DISubprogram(name: "getchar", scope: !76, file: !76, line: 20, type: !107, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!165 = !DILocation(line: 20, column: 21, scope: !164)
!166 = distinct !DISubprogram(name: "fgets", scope: !76, file: !76, line: 21, type: !167, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!167 = !DISubroutineType(types: !168)
!168 = !{!55, !55, !11, !5}
!169 = !DILocalVariable(name: "s", arg: 1, scope: !166, file: !76, line: 21, type: !55)
!170 = !DILocation(line: 21, column: 19, scope: !166)
!171 = !DILocalVariable(name: "size", arg: 2, scope: !166, file: !76, line: 21, type: !11)
!172 = !DILocation(line: 21, column: 26, scope: !166)
!173 = !DILocalVariable(name: "stream", arg: 3, scope: !166, file: !76, line: 21, type: !5)
!174 = !DILocation(line: 21, column: 38, scope: !166)
!175 = !DILocation(line: 21, column: 54, scope: !166)
!176 = !DILocation(line: 21, column: 63, scope: !166)
!177 = !DILocation(line: 21, column: 75, scope: !166)
!178 = !DILocation(line: 21, column: 83, scope: !166)
!179 = distinct !DISubprogram(name: "__isoc99_scanf", scope: !76, file: !76, line: 22, type: !143, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!180 = !DILocalVariable(name: "fmt", arg: 1, scope: !179, file: !76, line: 22, type: !87)
!181 = !DILocation(line: 22, column: 32, scope: !179)
!182 = !DILocation(line: 22, column: 50, scope: !179)
!183 = !DILocation(line: 22, column: 55, scope: !179)
!184 = distinct !DISubprogram(name: "strlen", scope: !76, file: !76, line: 25, type: !185, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !87}
!187 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!188 = !DILocalVariable(name: "s", arg: 1, scope: !184, file: !76, line: 25, type: !87)
!189 = !DILocation(line: 25, column: 27, scope: !184)
!190 = !DILocation(line: 26, column: 8, scope: !191)
!191 = distinct !DILexicalBlock(scope: !184, file: !76, line: 26, column: 7)
!192 = !DILocation(line: 26, column: 7, scope: !184)
!193 = !DILocation(line: 26, column: 11, scope: !191)
!194 = !DILocalVariable(name: "n", scope: !184, file: !76, line: 27, type: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !196, line: 46, baseType: !187)
!196 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!197 = !DILocation(line: 27, column: 10, scope: !184)
!198 = !DILocation(line: 28, column: 3, scope: !184)
!199 = !DILocation(line: 28, column: 10, scope: !184)
!200 = !DILocation(line: 28, column: 12, scope: !184)
!201 = !DILocation(line: 28, column: 17, scope: !184)
!202 = distinct !{!202, !198, !201, !203}
!203 = !{!"llvm.loop.mustprogress"}
!204 = !DILocation(line: 29, column: 10, scope: !184)
!205 = !DILocation(line: 29, column: 3, scope: !184)
!206 = !DILocation(line: 30, column: 1, scope: !184)
!207 = distinct !DISubprogram(name: "strnlen", scope: !76, file: !76, line: 32, type: !208, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!208 = !DISubroutineType(types: !209)
!209 = !{!195, !87, !195}
!210 = !DILocalVariable(name: "s", arg: 1, scope: !207, file: !76, line: 32, type: !87)
!211 = !DILocation(line: 32, column: 28, scope: !207)
!212 = !DILocalVariable(name: "maxlen", arg: 2, scope: !207, file: !76, line: 32, type: !195)
!213 = !DILocation(line: 32, column: 38, scope: !207)
!214 = !DILocation(line: 33, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !207, file: !76, line: 33, column: 7)
!216 = !DILocation(line: 33, column: 7, scope: !207)
!217 = !DILocation(line: 33, column: 11, scope: !215)
!218 = !DILocalVariable(name: "i", scope: !207, file: !76, line: 34, type: !195)
!219 = !DILocation(line: 34, column: 10, scope: !207)
!220 = !DILocation(line: 35, column: 3, scope: !207)
!221 = !DILocation(line: 35, column: 10, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !76, line: 35, column: 3)
!223 = distinct !DILexicalBlock(scope: !207, file: !76, line: 35, column: 3)
!224 = !DILocation(line: 35, column: 14, scope: !222)
!225 = !DILocation(line: 35, column: 12, scope: !222)
!226 = !DILocation(line: 35, column: 21, scope: !222)
!227 = !DILocation(line: 35, column: 24, scope: !222)
!228 = !DILocation(line: 35, column: 26, scope: !222)
!229 = !DILocation(line: 0, scope: !222)
!230 = !DILocation(line: 35, column: 3, scope: !223)
!231 = !DILocation(line: 35, column: 36, scope: !232)
!232 = distinct !DILexicalBlock(scope: !222, file: !76, line: 35, column: 35)
!233 = !DILocation(line: 35, column: 31, scope: !222)
!234 = !DILocation(line: 35, column: 3, scope: !222)
!235 = distinct !{!235, !230, !236, !203}
!236 = !DILocation(line: 35, column: 36, scope: !223)
!237 = !DILocation(line: 36, column: 10, scope: !207)
!238 = !DILocation(line: 36, column: 3, scope: !207)
!239 = !DILocation(line: 37, column: 1, scope: !207)
!240 = distinct !DISubprogram(name: "strcspn", scope: !76, file: !76, line: 39, type: !241, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!241 = !DISubroutineType(types: !242)
!242 = !{!187, !87, !87}
!243 = !DILocalVariable(name: "s", arg: 1, scope: !240, file: !76, line: 39, type: !87)
!244 = !DILocation(line: 39, column: 28, scope: !240)
!245 = !DILocalVariable(name: "reject", arg: 2, scope: !240, file: !76, line: 39, type: !87)
!246 = !DILocation(line: 39, column: 43, scope: !240)
!247 = !DILocation(line: 40, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !240, file: !76, line: 40, column: 7)
!249 = !DILocation(line: 40, column: 10, scope: !248)
!250 = !DILocation(line: 40, column: 14, scope: !248)
!251 = !DILocation(line: 40, column: 7, scope: !240)
!252 = !DILocation(line: 40, column: 22, scope: !248)
!253 = !DILocalVariable(name: "i", scope: !254, file: !76, line: 41, type: !195)
!254 = distinct !DILexicalBlock(scope: !240, file: !76, line: 41, column: 3)
!255 = !DILocation(line: 41, column: 15, scope: !254)
!256 = !DILocation(line: 41, column: 8, scope: !254)
!257 = !DILocation(line: 41, column: 22, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !76, line: 41, column: 3)
!259 = !DILocation(line: 41, column: 24, scope: !258)
!260 = !DILocation(line: 41, column: 3, scope: !254)
!261 = !DILocalVariable(name: "j", scope: !262, file: !76, line: 42, type: !195)
!262 = distinct !DILexicalBlock(scope: !263, file: !76, line: 42, column: 5)
!263 = distinct !DILexicalBlock(scope: !258, file: !76, line: 41, column: 33)
!264 = !DILocation(line: 42, column: 17, scope: !262)
!265 = !DILocation(line: 42, column: 10, scope: !262)
!266 = !DILocation(line: 42, column: 24, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !76, line: 42, column: 5)
!268 = !DILocation(line: 42, column: 31, scope: !267)
!269 = !DILocation(line: 42, column: 5, scope: !262)
!270 = !DILocation(line: 43, column: 11, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !76, line: 43, column: 11)
!272 = distinct !DILexicalBlock(scope: !267, file: !76, line: 42, column: 40)
!273 = !DILocation(line: 43, column: 13, scope: !271)
!274 = !DILocation(line: 43, column: 19, scope: !271)
!275 = !DILocation(line: 43, column: 26, scope: !271)
!276 = !DILocation(line: 43, column: 16, scope: !271)
!277 = !DILocation(line: 43, column: 11, scope: !272)
!278 = !DILocation(line: 43, column: 37, scope: !271)
!279 = !DILocation(line: 43, column: 30, scope: !271)
!280 = !DILocation(line: 44, column: 5, scope: !272)
!281 = !DILocation(line: 42, column: 36, scope: !267)
!282 = !DILocation(line: 42, column: 5, scope: !267)
!283 = distinct !{!283, !269, !284, !203}
!284 = !DILocation(line: 44, column: 5, scope: !262)
!285 = !DILocation(line: 45, column: 3, scope: !263)
!286 = !DILocation(line: 41, column: 29, scope: !258)
!287 = !DILocation(line: 41, column: 3, scope: !258)
!288 = distinct !{!288, !260, !289, !203}
!289 = !DILocation(line: 45, column: 3, scope: !254)
!290 = !DILocation(line: 46, column: 17, scope: !240)
!291 = !DILocation(line: 46, column: 10, scope: !240)
!292 = !DILocation(line: 46, column: 3, scope: !240)
!293 = !DILocation(line: 47, column: 1, scope: !240)
!294 = distinct !DISubprogram(name: "strcmp", scope: !76, file: !76, line: 49, type: !295, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!295 = !DISubroutineType(types: !296)
!296 = !{!11, !87, !87}
!297 = !DILocalVariable(name: "a", arg: 1, scope: !294, file: !76, line: 49, type: !87)
!298 = !DILocation(line: 49, column: 24, scope: !294)
!299 = !DILocalVariable(name: "b", arg: 2, scope: !294, file: !76, line: 49, type: !87)
!300 = !DILocation(line: 49, column: 39, scope: !294)
!301 = !DILocation(line: 50, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !294, file: !76, line: 50, column: 7)
!303 = !DILocation(line: 50, column: 12, scope: !302)
!304 = !DILocation(line: 50, column: 9, scope: !302)
!305 = !DILocation(line: 50, column: 7, scope: !294)
!306 = !DILocation(line: 50, column: 15, scope: !302)
!307 = !DILocation(line: 51, column: 8, scope: !308)
!308 = distinct !DILexicalBlock(scope: !294, file: !76, line: 51, column: 7)
!309 = !DILocation(line: 51, column: 7, scope: !294)
!310 = !DILocation(line: 51, column: 11, scope: !308)
!311 = !DILocation(line: 52, column: 8, scope: !312)
!312 = distinct !DILexicalBlock(scope: !294, file: !76, line: 52, column: 7)
!313 = !DILocation(line: 52, column: 7, scope: !294)
!314 = !DILocation(line: 52, column: 11, scope: !312)
!315 = !DILocation(line: 53, column: 3, scope: !294)
!316 = !DILocation(line: 53, column: 11, scope: !294)
!317 = !DILocation(line: 53, column: 10, scope: !294)
!318 = !DILocation(line: 53, column: 13, scope: !294)
!319 = !DILocation(line: 53, column: 18, scope: !294)
!320 = !DILocation(line: 53, column: 17, scope: !294)
!321 = !DILocation(line: 53, column: 24, scope: !294)
!322 = !DILocation(line: 53, column: 23, scope: !294)
!323 = !DILocation(line: 53, column: 20, scope: !294)
!324 = !DILocation(line: 0, scope: !294)
!325 = !DILocation(line: 53, column: 31, scope: !326)
!326 = distinct !DILexicalBlock(scope: !294, file: !76, line: 53, column: 28)
!327 = !DILocation(line: 53, column: 36, scope: !326)
!328 = distinct !{!328, !315, !329, !203}
!329 = !DILocation(line: 53, column: 40, scope: !294)
!330 = !DILocation(line: 54, column: 26, scope: !294)
!331 = !DILocation(line: 54, column: 25, scope: !294)
!332 = !DILocation(line: 54, column: 10, scope: !294)
!333 = !DILocation(line: 54, column: 46, scope: !294)
!334 = !DILocation(line: 54, column: 45, scope: !294)
!335 = !DILocation(line: 54, column: 30, scope: !294)
!336 = !DILocation(line: 54, column: 28, scope: !294)
!337 = !DILocation(line: 54, column: 3, scope: !294)
!338 = !DILocation(line: 55, column: 1, scope: !294)
!339 = distinct !DISubprogram(name: "strncpy", scope: !76, file: !76, line: 57, type: !340, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!340 = !DISubroutineType(types: !341)
!341 = !{!55, !55, !87, !195}
!342 = !DILocalVariable(name: "dst", arg: 1, scope: !339, file: !76, line: 57, type: !55)
!343 = !DILocation(line: 57, column: 21, scope: !339)
!344 = !DILocalVariable(name: "src", arg: 2, scope: !339, file: !76, line: 57, type: !87)
!345 = !DILocation(line: 57, column: 38, scope: !339)
!346 = !DILocalVariable(name: "n", arg: 3, scope: !339, file: !76, line: 57, type: !195)
!347 = !DILocation(line: 57, column: 50, scope: !339)
!348 = !DILocation(line: 58, column: 8, scope: !349)
!349 = distinct !DILexicalBlock(scope: !339, file: !76, line: 58, column: 7)
!350 = !DILocation(line: 58, column: 12, scope: !349)
!351 = !DILocation(line: 58, column: 16, scope: !349)
!352 = !DILocation(line: 58, column: 7, scope: !339)
!353 = !DILocation(line: 58, column: 28, scope: !349)
!354 = !DILocation(line: 58, column: 21, scope: !349)
!355 = !DILocalVariable(name: "i", scope: !339, file: !76, line: 59, type: !195)
!356 = !DILocation(line: 59, column: 10, scope: !339)
!357 = !DILocation(line: 60, column: 3, scope: !339)
!358 = !DILocation(line: 60, column: 10, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !76, line: 60, column: 3)
!360 = distinct !DILexicalBlock(scope: !339, file: !76, line: 60, column: 3)
!361 = !DILocation(line: 60, column: 14, scope: !359)
!362 = !DILocation(line: 60, column: 12, scope: !359)
!363 = !DILocation(line: 60, column: 16, scope: !359)
!364 = !DILocation(line: 60, column: 19, scope: !359)
!365 = !DILocation(line: 60, column: 23, scope: !359)
!366 = !DILocation(line: 0, scope: !359)
!367 = !DILocation(line: 60, column: 3, scope: !360)
!368 = !DILocation(line: 60, column: 41, scope: !359)
!369 = !DILocation(line: 60, column: 45, scope: !359)
!370 = !DILocation(line: 60, column: 32, scope: !359)
!371 = !DILocation(line: 60, column: 36, scope: !359)
!372 = !DILocation(line: 60, column: 39, scope: !359)
!373 = !DILocation(line: 60, column: 28, scope: !359)
!374 = !DILocation(line: 60, column: 3, scope: !359)
!375 = distinct !{!375, !367, !376, !203}
!376 = !DILocation(line: 60, column: 46, scope: !360)
!377 = !DILocation(line: 61, column: 3, scope: !339)
!378 = !DILocation(line: 61, column: 10, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !76, line: 61, column: 3)
!380 = distinct !DILexicalBlock(scope: !339, file: !76, line: 61, column: 3)
!381 = !DILocation(line: 61, column: 14, scope: !379)
!382 = !DILocation(line: 61, column: 12, scope: !379)
!383 = !DILocation(line: 61, column: 3, scope: !380)
!384 = !DILocation(line: 61, column: 22, scope: !379)
!385 = !DILocation(line: 61, column: 26, scope: !379)
!386 = !DILocation(line: 61, column: 29, scope: !379)
!387 = !DILocation(line: 61, column: 18, scope: !379)
!388 = !DILocation(line: 61, column: 3, scope: !379)
!389 = distinct !{!389, !383, !390, !203}
!390 = !DILocation(line: 61, column: 31, scope: !380)
!391 = !DILocation(line: 62, column: 10, scope: !339)
!392 = !DILocation(line: 62, column: 3, scope: !339)
!393 = !DILocation(line: 63, column: 1, scope: !339)
!394 = distinct !DISubprogram(name: "strdup", scope: !76, file: !76, line: 65, type: !395, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!395 = !DISubroutineType(types: !396)
!396 = !{!55, !87}
!397 = !DILocalVariable(name: "s", arg: 1, scope: !394, file: !76, line: 65, type: !87)
!398 = !DILocation(line: 65, column: 26, scope: !394)
!399 = !DILocation(line: 66, column: 8, scope: !400)
!400 = distinct !DILexicalBlock(scope: !394, file: !76, line: 66, column: 7)
!401 = !DILocation(line: 66, column: 7, scope: !394)
!402 = !DILocation(line: 66, column: 11, scope: !400)
!403 = !DILocalVariable(name: "n", scope: !394, file: !76, line: 67, type: !195)
!404 = !DILocation(line: 67, column: 10, scope: !394)
!405 = !DILocation(line: 67, column: 21, scope: !394)
!406 = !DILocation(line: 67, column: 14, scope: !394)
!407 = !DILocation(line: 67, column: 24, scope: !394)
!408 = !DILocalVariable(name: "p", scope: !394, file: !76, line: 68, type: !55)
!409 = !DILocation(line: 68, column: 9, scope: !394)
!410 = !DILocation(line: 68, column: 28, scope: !394)
!411 = !DILocation(line: 68, column: 21, scope: !394)
!412 = !DILocation(line: 69, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !394, file: !76, line: 69, column: 7)
!414 = !DILocation(line: 69, column: 7, scope: !394)
!415 = !DILocation(line: 69, column: 11, scope: !413)
!416 = !DILocalVariable(name: "i", scope: !417, file: !76, line: 70, type: !195)
!417 = distinct !DILexicalBlock(scope: !394, file: !76, line: 70, column: 3)
!418 = !DILocation(line: 70, column: 15, scope: !417)
!419 = !DILocation(line: 70, column: 8, scope: !417)
!420 = !DILocation(line: 70, column: 22, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !76, line: 70, column: 3)
!422 = !DILocation(line: 70, column: 26, scope: !421)
!423 = !DILocation(line: 70, column: 24, scope: !421)
!424 = !DILocation(line: 70, column: 3, scope: !417)
!425 = !DILocation(line: 70, column: 41, scope: !421)
!426 = !DILocation(line: 70, column: 43, scope: !421)
!427 = !DILocation(line: 70, column: 34, scope: !421)
!428 = !DILocation(line: 70, column: 36, scope: !421)
!429 = !DILocation(line: 70, column: 39, scope: !421)
!430 = !DILocation(line: 70, column: 30, scope: !421)
!431 = !DILocation(line: 70, column: 3, scope: !421)
!432 = distinct !{!432, !424, !433, !203}
!433 = !DILocation(line: 70, column: 44, scope: !417)
!434 = !DILocation(line: 71, column: 10, scope: !394)
!435 = !DILocation(line: 71, column: 3, scope: !394)
!436 = !DILocation(line: 72, column: 1, scope: !394)
!437 = distinct !DISubprogram(name: "strtol", scope: !76, file: !76, line: 74, type: !438, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!438 = !DISubroutineType(types: !439)
!439 = !{!30, !87, !440, !11}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!441 = !DILocalVariable(name: "nptr", arg: 1, scope: !437, file: !76, line: 74, type: !87)
!442 = !DILocation(line: 74, column: 25, scope: !437)
!443 = !DILocalVariable(name: "endptr", arg: 2, scope: !437, file: !76, line: 74, type: !440)
!444 = !DILocation(line: 74, column: 38, scope: !437)
!445 = !DILocalVariable(name: "base", arg: 3, scope: !437, file: !76, line: 74, type: !11)
!446 = !DILocation(line: 74, column: 50, scope: !437)
!447 = !DILocation(line: 75, column: 9, scope: !437)
!448 = !DILocation(line: 76, column: 8, scope: !449)
!449 = distinct !DILexicalBlock(scope: !437, file: !76, line: 76, column: 7)
!450 = !DILocation(line: 76, column: 7, scope: !437)
!451 = !DILocation(line: 76, column: 20, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !76, line: 76, column: 20)
!453 = distinct !DILexicalBlock(scope: !449, file: !76, line: 76, column: 14)
!454 = !DILocation(line: 76, column: 20, scope: !453)
!455 = !DILocation(line: 76, column: 45, scope: !452)
!456 = !DILocation(line: 76, column: 29, scope: !452)
!457 = !DILocation(line: 76, column: 36, scope: !452)
!458 = !DILocation(line: 76, column: 28, scope: !452)
!459 = !DILocation(line: 76, column: 51, scope: !453)
!460 = !DILocalVariable(name: "v", scope: !437, file: !76, line: 77, type: !30)
!461 = !DILocation(line: 77, column: 8, scope: !437)
!462 = !DILocalVariable(name: "p", scope: !437, file: !76, line: 78, type: !87)
!463 = !DILocation(line: 78, column: 15, scope: !437)
!464 = !DILocation(line: 78, column: 19, scope: !437)
!465 = !DILocation(line: 79, column: 3, scope: !437)
!466 = !DILocation(line: 79, column: 11, scope: !437)
!467 = !DILocation(line: 79, column: 10, scope: !437)
!468 = !DILocation(line: 79, column: 13, scope: !437)
!469 = !DILocation(line: 79, column: 20, scope: !437)
!470 = !DILocation(line: 79, column: 24, scope: !437)
!471 = !DILocation(line: 79, column: 23, scope: !437)
!472 = !DILocation(line: 79, column: 26, scope: !437)
!473 = !DILocation(line: 0, scope: !437)
!474 = !DILocation(line: 79, column: 40, scope: !475)
!475 = distinct !DILexicalBlock(scope: !437, file: !76, line: 79, column: 34)
!476 = !DILocation(line: 79, column: 42, scope: !475)
!477 = !DILocation(line: 79, column: 51, scope: !475)
!478 = !DILocation(line: 79, column: 50, scope: !475)
!479 = !DILocation(line: 79, column: 53, scope: !475)
!480 = !DILocation(line: 79, column: 49, scope: !475)
!481 = !DILocation(line: 79, column: 47, scope: !475)
!482 = !DILocation(line: 79, column: 38, scope: !475)
!483 = !DILocation(line: 79, column: 62, scope: !475)
!484 = distinct !{!484, !465, !485, !203}
!485 = !DILocation(line: 79, column: 66, scope: !437)
!486 = !DILocation(line: 80, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !437, file: !76, line: 80, column: 7)
!488 = !DILocation(line: 80, column: 7, scope: !437)
!489 = !DILocation(line: 80, column: 32, scope: !487)
!490 = !DILocation(line: 80, column: 16, scope: !487)
!491 = !DILocation(line: 80, column: 23, scope: !487)
!492 = !DILocation(line: 80, column: 15, scope: !487)
!493 = !DILocation(line: 81, column: 10, scope: !437)
!494 = !DILocation(line: 81, column: 3, scope: !437)
!495 = !DILocation(line: 82, column: 1, scope: !437)
!496 = distinct !DISubprogram(name: "sin", scope: !76, file: !76, line: 85, type: !497, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!497 = !DISubroutineType(types: !498)
!498 = !{!6, !6}
!499 = !DILocalVariable(name: "x", arg: 1, scope: !496, file: !76, line: 85, type: !6)
!500 = !DILocation(line: 85, column: 19, scope: !496)
!501 = !DILocation(line: 85, column: 30, scope: !496)
!502 = !DILocation(line: 85, column: 33, scope: !496)
!503 = distinct !DISubprogram(name: "cos", scope: !76, file: !76, line: 86, type: !497, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!504 = !DILocalVariable(name: "x", arg: 1, scope: !503, file: !76, line: 86, type: !6)
!505 = !DILocation(line: 86, column: 19, scope: !503)
!506 = !DILocation(line: 86, column: 30, scope: !503)
!507 = !DILocation(line: 86, column: 33, scope: !503)
!508 = distinct !DISubprogram(name: "llround", scope: !76, file: !76, line: 87, type: !509, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!509 = !DISubroutineType(types: !510)
!510 = !{!511, !6}
!511 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!512 = !DILocalVariable(name: "x", arg: 1, scope: !508, file: !76, line: 87, type: !6)
!513 = !DILocation(line: 87, column: 26, scope: !508)
!514 = !DILocation(line: 87, column: 37, scope: !508)
!515 = !DILocation(line: 87, column: 40, scope: !508)
!516 = distinct !DISubprogram(name: "print_card", scope: !76, file: !76, line: 90, type: !22, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!517 = !DILocation(line: 90, column: 24, scope: !516)
!518 = distinct !DISubprogram(name: "exit", scope: !76, file: !76, line: 93, type: !519, scopeLine: 93, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !109)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !11}
!521 = !DILocalVariable(name: "code", arg: 1, scope: !518, file: !76, line: 93, type: !11)
!522 = !DILocation(line: 93, column: 15, scope: !518)
!523 = !DILocation(line: 94, column: 9, scope: !518)
!524 = !DILocation(line: 96, column: 3, scope: !518)
!525 = distinct !DISubprogram(name: "items_add", scope: !3, file: !3, line: 33, type: !526, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!526 = !DISubroutineType(types: !527)
!527 = !{!11, !39, !87, !30}
!528 = !DILocalVariable(name: "headp", arg: 1, scope: !525, file: !3, line: 33, type: !39)
!529 = !DILocation(line: 33, column: 22, scope: !525)
!530 = !DILocalVariable(name: "name", arg: 2, scope: !525, file: !3, line: 33, type: !87)
!531 = !DILocation(line: 33, column: 41, scope: !525)
!532 = !DILocalVariable(name: "inventory_obj", arg: 3, scope: !525, file: !3, line: 33, type: !30)
!533 = !DILocation(line: 33, column: 52, scope: !525)
!534 = !DILocation(line: 34, column: 10, scope: !535)
!535 = distinct !DILexicalBlock(scope: !525, file: !3, line: 34, column: 9)
!536 = !DILocation(line: 34, column: 9, scope: !525)
!537 = !DILocation(line: 34, column: 17, scope: !535)
!538 = !DILocalVariable(name: "it", scope: !525, file: !3, line: 35, type: !24)
!539 = !DILocation(line: 35, column: 11, scope: !525)
!540 = !DILocation(line: 35, column: 28, scope: !525)
!541 = !DILocation(line: 35, column: 34, scope: !525)
!542 = !DILocation(line: 35, column: 16, scope: !525)
!543 = !DILocation(line: 36, column: 10, scope: !544)
!544 = distinct !DILexicalBlock(scope: !525, file: !3, line: 36, column: 9)
!545 = !DILocation(line: 36, column: 9, scope: !525)
!546 = !DILocation(line: 36, column: 14, scope: !544)
!547 = !DILocation(line: 37, column: 17, scope: !525)
!548 = !DILocation(line: 37, column: 16, scope: !525)
!549 = !DILocation(line: 37, column: 5, scope: !525)
!550 = !DILocation(line: 37, column: 9, scope: !525)
!551 = !DILocation(line: 37, column: 14, scope: !525)
!552 = !DILocation(line: 38, column: 14, scope: !525)
!553 = !DILocation(line: 38, column: 6, scope: !525)
!554 = !DILocation(line: 38, column: 12, scope: !525)
!555 = !DILocation(line: 39, column: 5, scope: !525)
!556 = !DILocation(line: 40, column: 1, scope: !525)
!557 = distinct !DISubprogram(name: "item_create", scope: !3, file: !3, line: 15, type: !558, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!558 = !DISubroutineType(types: !559)
!559 = !{!24, !87, !30}
!560 = !DILocalVariable(name: "name", arg: 1, scope: !557, file: !3, line: 15, type: !87)
!561 = !DILocation(line: 15, column: 38, scope: !557)
!562 = !DILocalVariable(name: "inventory_obj", arg: 2, scope: !557, file: !3, line: 15, type: !30)
!563 = !DILocation(line: 15, column: 49, scope: !557)
!564 = !DILocalVariable(name: "it", scope: !557, file: !3, line: 16, type: !24)
!565 = !DILocation(line: 16, column: 11, scope: !557)
!566 = !DILocation(line: 16, column: 23, scope: !557)
!567 = !DILocation(line: 16, column: 16, scope: !557)
!568 = !DILocation(line: 17, column: 10, scope: !569)
!569 = distinct !DILexicalBlock(scope: !557, file: !3, line: 17, column: 9)
!570 = !DILocation(line: 17, column: 9, scope: !557)
!571 = !DILocation(line: 18, column: 9, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !3, line: 17, column: 14)
!573 = !DILocation(line: 19, column: 9, scope: !572)
!574 = !DILocation(line: 21, column: 12, scope: !557)
!575 = !DILocation(line: 21, column: 16, scope: !557)
!576 = !DILocation(line: 21, column: 5, scope: !557)
!577 = !DILocation(line: 22, column: 13, scope: !557)
!578 = !DILocation(line: 22, column: 17, scope: !557)
!579 = !DILocation(line: 22, column: 28, scope: !557)
!580 = !DILocation(line: 22, column: 5, scope: !557)
!581 = !DILocation(line: 23, column: 25, scope: !557)
!582 = !DILocation(line: 23, column: 5, scope: !557)
!583 = !DILocation(line: 23, column: 9, scope: !557)
!584 = !DILocation(line: 23, column: 23, scope: !557)
!585 = !DILocation(line: 24, column: 5, scope: !557)
!586 = !DILocation(line: 24, column: 9, scope: !557)
!587 = !DILocation(line: 24, column: 14, scope: !557)
!588 = !DILocation(line: 25, column: 12, scope: !557)
!589 = !DILocation(line: 25, column: 5, scope: !557)
!590 = distinct !DISubprogram(name: "items_remove_by_obj", scope: !3, file: !3, line: 42, type: !591, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!591 = !DISubroutineType(types: !592)
!592 = !{!11, !39, !30}
!593 = !DILocalVariable(name: "headp", arg: 1, scope: !590, file: !3, line: 42, type: !39)
!594 = !DILocation(line: 42, column: 32, scope: !590)
!595 = !DILocalVariable(name: "inventory_obj", arg: 2, scope: !590, file: !3, line: 42, type: !30)
!596 = !DILocation(line: 42, column: 44, scope: !590)
!597 = !DILocation(line: 43, column: 10, scope: !598)
!598 = distinct !DILexicalBlock(scope: !590, file: !3, line: 43, column: 9)
!599 = !DILocation(line: 43, column: 9, scope: !590)
!600 = !DILocation(line: 43, column: 17, scope: !598)
!601 = !DILocalVariable(name: "prev", scope: !590, file: !3, line: 44, type: !24)
!602 = !DILocation(line: 44, column: 11, scope: !590)
!603 = !DILocalVariable(name: "cur", scope: !590, file: !3, line: 44, type: !24)
!604 = !DILocation(line: 44, column: 25, scope: !590)
!605 = !DILocation(line: 44, column: 32, scope: !590)
!606 = !DILocation(line: 44, column: 31, scope: !590)
!607 = !DILocation(line: 45, column: 5, scope: !590)
!608 = !DILocation(line: 45, column: 12, scope: !590)
!609 = !DILocation(line: 46, column: 13, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 46, column: 13)
!611 = distinct !DILexicalBlock(scope: !590, file: !3, line: 45, column: 17)
!612 = !DILocation(line: 46, column: 18, scope: !610)
!613 = !DILocation(line: 46, column: 35, scope: !610)
!614 = !DILocation(line: 46, column: 32, scope: !610)
!615 = !DILocation(line: 46, column: 13, scope: !611)
!616 = !DILocation(line: 47, column: 17, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 47, column: 17)
!618 = distinct !DILexicalBlock(scope: !610, file: !3, line: 46, column: 50)
!619 = !DILocation(line: 47, column: 17, scope: !618)
!620 = !DILocation(line: 47, column: 36, scope: !617)
!621 = !DILocation(line: 47, column: 41, scope: !617)
!622 = !DILocation(line: 47, column: 23, scope: !617)
!623 = !DILocation(line: 47, column: 29, scope: !617)
!624 = !DILocation(line: 47, column: 34, scope: !617)
!625 = !DILocation(line: 48, column: 27, scope: !617)
!626 = !DILocation(line: 48, column: 32, scope: !617)
!627 = !DILocation(line: 48, column: 19, scope: !617)
!628 = !DILocation(line: 48, column: 25, scope: !617)
!629 = !DILocation(line: 49, column: 23, scope: !618)
!630 = !DILocation(line: 49, column: 13, scope: !618)
!631 = !DILocation(line: 50, column: 13, scope: !618)
!632 = !DILocation(line: 52, column: 16, scope: !611)
!633 = !DILocation(line: 52, column: 14, scope: !611)
!634 = !DILocation(line: 53, column: 15, scope: !611)
!635 = !DILocation(line: 53, column: 20, scope: !611)
!636 = !DILocation(line: 53, column: 13, scope: !611)
!637 = distinct !{!637, !607, !638, !203}
!638 = !DILocation(line: 54, column: 5, scope: !590)
!639 = !DILocation(line: 55, column: 5, scope: !590)
!640 = !DILocation(line: 56, column: 1, scope: !590)
!641 = distinct !DISubprogram(name: "item_free", scope: !3, file: !3, line: 28, type: !642, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !24}
!644 = !DILocalVariable(name: "it", arg: 1, scope: !641, file: !3, line: 28, type: !24)
!645 = !DILocation(line: 28, column: 29, scope: !641)
!646 = !DILocation(line: 29, column: 10, scope: !647)
!647 = distinct !DILexicalBlock(scope: !641, file: !3, line: 29, column: 9)
!648 = !DILocation(line: 29, column: 9, scope: !641)
!649 = !DILocation(line: 29, column: 14, scope: !647)
!650 = !DILocation(line: 30, column: 10, scope: !641)
!651 = !DILocation(line: 30, column: 5, scope: !641)
!652 = !DILocation(line: 31, column: 1, scope: !641)
!653 = distinct !DISubprogram(name: "items_clear_all", scope: !3, file: !3, line: 58, type: !654, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !39}
!656 = !DILocalVariable(name: "headp", arg: 1, scope: !653, file: !3, line: 58, type: !39)
!657 = !DILocation(line: 58, column: 29, scope: !653)
!658 = !DILocation(line: 59, column: 10, scope: !659)
!659 = distinct !DILexicalBlock(scope: !653, file: !3, line: 59, column: 9)
!660 = !DILocation(line: 59, column: 9, scope: !653)
!661 = !DILocation(line: 59, column: 17, scope: !659)
!662 = !DILocalVariable(name: "cur", scope: !653, file: !3, line: 60, type: !24)
!663 = !DILocation(line: 60, column: 11, scope: !653)
!664 = !DILocation(line: 60, column: 18, scope: !653)
!665 = !DILocation(line: 60, column: 17, scope: !653)
!666 = !DILocation(line: 61, column: 5, scope: !653)
!667 = !DILocation(line: 61, column: 12, scope: !653)
!668 = !DILocalVariable(name: "next", scope: !669, file: !3, line: 62, type: !24)
!669 = distinct !DILexicalBlock(scope: !653, file: !3, line: 61, column: 17)
!670 = !DILocation(line: 62, column: 15, scope: !669)
!671 = !DILocation(line: 62, column: 22, scope: !669)
!672 = !DILocation(line: 62, column: 27, scope: !669)
!673 = !DILocation(line: 63, column: 19, scope: !669)
!674 = !DILocation(line: 63, column: 9, scope: !669)
!675 = !DILocation(line: 64, column: 15, scope: !669)
!676 = !DILocation(line: 64, column: 13, scope: !669)
!677 = distinct !{!677, !666, !678, !203}
!678 = !DILocation(line: 65, column: 5, scope: !653)
!679 = !DILocation(line: 66, column: 6, scope: !653)
!680 = !DILocation(line: 66, column: 12, scope: !653)
!681 = !DILocation(line: 67, column: 1, scope: !653)
!682 = distinct !DISubprogram(name: "inventory_add", scope: !3, file: !3, line: 74, type: !683, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!683 = !DISubroutineType(types: !684)
!684 = !{!11, !87, !30}
!685 = !DILocalVariable(name: "name", arg: 1, scope: !682, file: !3, line: 74, type: !87)
!686 = !DILocation(line: 74, column: 31, scope: !682)
!687 = !DILocalVariable(name: "inventory_obj", arg: 2, scope: !682, file: !3, line: 74, type: !30)
!688 = !DILocation(line: 74, column: 42, scope: !682)
!689 = !DILocalVariable(name: "headp", scope: !682, file: !3, line: 75, type: !39)
!690 = !DILocation(line: 75, column: 12, scope: !682)
!691 = !DILocation(line: 75, column: 20, scope: !682)
!692 = !DILocation(line: 76, column: 10, scope: !693)
!693 = distinct !DILexicalBlock(scope: !682, file: !3, line: 76, column: 9)
!694 = !DILocation(line: 76, column: 9, scope: !682)
!695 = !DILocation(line: 76, column: 17, scope: !693)
!696 = !DILocation(line: 77, column: 22, scope: !682)
!697 = !DILocation(line: 77, column: 29, scope: !682)
!698 = !DILocation(line: 77, column: 35, scope: !682)
!699 = !DILocation(line: 77, column: 12, scope: !682)
!700 = !DILocation(line: 77, column: 5, scope: !682)
!701 = !DILocation(line: 78, column: 1, scope: !682)
!702 = distinct !DISubprogram(name: "inventory_headp", scope: !3, file: !3, line: 70, type: !703, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!703 = !DISubroutineType(types: !704)
!704 = !{!39}
!705 = !DILocation(line: 71, column: 22, scope: !702)
!706 = !DILocation(line: 71, column: 12, scope: !702)
!707 = !DILocation(line: 71, column: 54, scope: !702)
!708 = !DILocation(line: 71, column: 70, scope: !702)
!709 = !DILocation(line: 71, column: 34, scope: !702)
!710 = !DILocation(line: 71, column: 5, scope: !702)
!711 = distinct !DISubprogram(name: "inventory_remove_by_obj", scope: !3, file: !3, line: 80, type: !712, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!712 = !DISubroutineType(types: !713)
!713 = !{!11, !30}
!714 = !DILocalVariable(name: "inventory_obj", arg: 1, scope: !711, file: !3, line: 80, type: !30)
!715 = !DILocation(line: 80, column: 34, scope: !711)
!716 = !DILocalVariable(name: "headp", scope: !711, file: !3, line: 81, type: !39)
!717 = !DILocation(line: 81, column: 12, scope: !711)
!718 = !DILocation(line: 81, column: 20, scope: !711)
!719 = !DILocation(line: 82, column: 10, scope: !720)
!720 = distinct !DILexicalBlock(scope: !711, file: !3, line: 82, column: 9)
!721 = !DILocation(line: 82, column: 9, scope: !711)
!722 = !DILocation(line: 82, column: 17, scope: !720)
!723 = !DILocation(line: 83, column: 32, scope: !711)
!724 = !DILocation(line: 83, column: 39, scope: !711)
!725 = !DILocation(line: 83, column: 12, scope: !711)
!726 = !DILocation(line: 83, column: 5, scope: !711)
!727 = !DILocation(line: 84, column: 1, scope: !711)
!728 = distinct !DISubprogram(name: "add_item_from_user", scope: !3, file: !3, line: 87, type: !22, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!729 = !DILocalVariable(name: "name", scope: !728, file: !3, line: 88, type: !32)
!730 = !DILocation(line: 88, column: 10, scope: !728)
!731 = !DILocalVariable(name: "num", scope: !728, file: !3, line: 89, type: !30)
!732 = !DILocation(line: 89, column: 11, scope: !728)
!733 = !DILocation(line: 91, column: 5, scope: !728)
!734 = !DILocation(line: 92, column: 16, scope: !735)
!735 = distinct !DILexicalBlock(scope: !728, file: !3, line: 92, column: 9)
!736 = !DILocation(line: 92, column: 36, scope: !735)
!737 = !DILocation(line: 92, column: 10, scope: !735)
!738 = !DILocation(line: 92, column: 9, scope: !728)
!739 = !DILocation(line: 93, column: 9, scope: !735)
!740 = !DILocation(line: 94, column: 18, scope: !728)
!741 = !DILocation(line: 94, column: 10, scope: !728)
!742 = !DILocation(line: 94, column: 5, scope: !728)
!743 = !DILocation(line: 94, column: 31, scope: !728)
!744 = !DILocation(line: 96, column: 5, scope: !728)
!745 = !DILocation(line: 97, column: 9, scope: !746)
!746 = distinct !DILexicalBlock(scope: !728, file: !3, line: 97, column: 9)
!747 = !DILocation(line: 97, column: 28, scope: !746)
!748 = !DILocation(line: 97, column: 9, scope: !728)
!749 = !DILocation(line: 98, column: 9, scope: !750)
!750 = distinct !DILexicalBlock(scope: !746, file: !3, line: 97, column: 34)
!751 = !DILocation(line: 99, column: 9, scope: !750)
!752 = !DILocation(line: 99, column: 16, scope: !750)
!753 = !DILocation(line: 99, column: 26, scope: !750)
!754 = distinct !{!754, !751, !755, !203}
!755 = !DILocation(line: 99, column: 34, scope: !750)
!756 = !DILocation(line: 100, column: 9, scope: !750)
!757 = !DILocation(line: 102, column: 5, scope: !728)
!758 = !DILocation(line: 102, column: 12, scope: !728)
!759 = !DILocation(line: 102, column: 22, scope: !728)
!760 = distinct !{!760, !757, !761, !203}
!761 = !DILocation(line: 102, column: 30, scope: !728)
!762 = !DILocation(line: 104, column: 23, scope: !763)
!763 = distinct !DILexicalBlock(scope: !728, file: !3, line: 104, column: 9)
!764 = !DILocation(line: 104, column: 29, scope: !763)
!765 = !DILocation(line: 104, column: 9, scope: !763)
!766 = !DILocation(line: 104, column: 34, scope: !763)
!767 = !DILocation(line: 104, column: 9, scope: !728)
!768 = !DILocation(line: 105, column: 9, scope: !763)
!769 = !DILocation(line: 107, column: 9, scope: !763)
!770 = !DILocation(line: 108, column: 1, scope: !728)
!771 = distinct !DISubprogram(name: "remove_item_from_user", scope: !3, file: !3, line: 110, type: !22, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!772 = !DILocalVariable(name: "num", scope: !771, file: !3, line: 111, type: !11)
!773 = !DILocation(line: 111, column: 9, scope: !771)
!774 = !DILocation(line: 113, column: 5, scope: !771)
!775 = !DILocation(line: 114, column: 9, scope: !776)
!776 = distinct !DILexicalBlock(scope: !771, file: !3, line: 114, column: 9)
!777 = !DILocation(line: 114, column: 27, scope: !776)
!778 = !DILocation(line: 114, column: 9, scope: !771)
!779 = !DILocation(line: 115, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !776, file: !3, line: 114, column: 33)
!781 = !DILocation(line: 116, column: 9, scope: !780)
!782 = !DILocation(line: 116, column: 16, scope: !780)
!783 = !DILocation(line: 116, column: 26, scope: !780)
!784 = distinct !{!784, !781, !785, !203}
!785 = !DILocation(line: 116, column: 34, scope: !780)
!786 = !DILocation(line: 117, column: 9, scope: !780)
!787 = !DILocation(line: 119, column: 5, scope: !771)
!788 = !DILocation(line: 119, column: 12, scope: !771)
!789 = !DILocation(line: 119, column: 22, scope: !771)
!790 = distinct !{!790, !787, !791, !203}
!791 = !DILocation(line: 119, column: 30, scope: !771)
!792 = !DILocalVariable(name: "result", scope: !771, file: !3, line: 121, type: !11)
!793 = !DILocation(line: 121, column: 9, scope: !771)
!794 = !DILocation(line: 121, column: 42, scope: !771)
!795 = !DILocation(line: 121, column: 18, scope: !771)
!796 = !DILocation(line: 122, column: 9, scope: !797)
!797 = distinct !DILexicalBlock(scope: !771, file: !3, line: 122, column: 9)
!798 = !DILocation(line: 122, column: 16, scope: !797)
!799 = !DILocation(line: 122, column: 9, scope: !771)
!800 = !DILocation(line: 123, column: 9, scope: !797)
!801 = !DILocation(line: 124, column: 14, scope: !802)
!802 = distinct !DILexicalBlock(scope: !797, file: !3, line: 124, column: 14)
!803 = !DILocation(line: 124, column: 21, scope: !802)
!804 = !DILocation(line: 124, column: 14, scope: !797)
!805 = !DILocation(line: 125, column: 9, scope: !802)
!806 = !DILocation(line: 127, column: 9, scope: !802)
!807 = !DILocation(line: 128, column: 1, scope: !771)
!808 = distinct !DISubprogram(name: "inventory_clear_all", scope: !3, file: !3, line: 130, type: !22, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!809 = !DILocation(line: 131, column: 20, scope: !810)
!810 = distinct !DILexicalBlock(scope: !808, file: !3, line: 131, column: 9)
!811 = !DILocation(line: 131, column: 10, scope: !810)
!812 = !DILocation(line: 131, column: 9, scope: !808)
!813 = !DILocation(line: 132, column: 9, scope: !810)
!814 = !DILocation(line: 133, column: 19, scope: !815)
!815 = distinct !DILexicalBlock(scope: !808, file: !3, line: 133, column: 9)
!816 = !DILocation(line: 133, column: 35, scope: !815)
!817 = !DILocation(line: 133, column: 9, scope: !815)
!818 = !DILocation(line: 133, column: 9, scope: !808)
!819 = !DILocation(line: 134, column: 35, scope: !815)
!820 = !DILocation(line: 134, column: 51, scope: !815)
!821 = !DILocation(line: 134, column: 25, scope: !815)
!822 = !DILocation(line: 134, column: 9, scope: !815)
!823 = !DILocation(line: 135, column: 1, scope: !808)
!824 = distinct !DISubprogram(name: "view_inventory", scope: !3, file: !3, line: 137, type: !22, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!825 = !DILocalVariable(name: "cur", scope: !824, file: !3, line: 138, type: !24)
!826 = !DILocation(line: 138, column: 11, scope: !824)
!827 = !DILocation(line: 139, column: 19, scope: !828)
!828 = distinct !DILexicalBlock(scope: !824, file: !3, line: 139, column: 9)
!829 = !DILocation(line: 139, column: 9, scope: !828)
!830 = !DILocation(line: 139, column: 9, scope: !824)
!831 = !DILocation(line: 140, column: 25, scope: !828)
!832 = !DILocation(line: 140, column: 41, scope: !828)
!833 = !DILocation(line: 140, column: 15, scope: !828)
!834 = !DILocation(line: 140, column: 13, scope: !828)
!835 = !DILocation(line: 140, column: 9, scope: !828)
!836 = !DILocation(line: 142, column: 25, scope: !828)
!837 = !DILocation(line: 142, column: 15, scope: !828)
!838 = !DILocation(line: 142, column: 13, scope: !828)
!839 = !DILocation(line: 143, column: 10, scope: !840)
!840 = distinct !DILexicalBlock(scope: !824, file: !3, line: 143, column: 9)
!841 = !DILocation(line: 143, column: 9, scope: !824)
!842 = !DILocation(line: 144, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !3, line: 143, column: 15)
!844 = !DILocation(line: 145, column: 9, scope: !843)
!845 = !DILocation(line: 147, column: 5, scope: !824)
!846 = !DILocation(line: 148, column: 5, scope: !824)
!847 = !DILocation(line: 148, column: 12, scope: !824)
!848 = !DILocation(line: 150, column: 16, scope: !849)
!849 = distinct !DILexicalBlock(scope: !824, file: !3, line: 148, column: 17)
!850 = !DILocation(line: 150, column: 21, scope: !849)
!851 = !DILocation(line: 150, column: 33, scope: !849)
!852 = !DILocation(line: 150, column: 38, scope: !849)
!853 = !DILocation(line: 151, column: 16, scope: !849)
!854 = !DILocation(line: 151, column: 21, scope: !849)
!855 = !DILocation(line: 149, column: 9, scope: !849)
!856 = !DILocation(line: 152, column: 15, scope: !849)
!857 = !DILocation(line: 152, column: 20, scope: !849)
!858 = !DILocation(line: 152, column: 13, scope: !849)
!859 = distinct !{!859, !846, !860, !203}
!860 = !DILocation(line: 153, column: 5, scope: !824)
!861 = !DILocation(line: 154, column: 1, scope: !824)
!862 = distinct !DISubprogram(name: "set_start_location", scope: !3, file: !3, line: 178, type: !22, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!863 = !DILocalVariable(name: "user_input", scope: !862, file: !3, line: 179, type: !32)
!864 = !DILocation(line: 179, column: 10, scope: !862)
!865 = !DILocation(line: 180, column: 19, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !3, line: 180, column: 9)
!867 = !DILocation(line: 180, column: 29, scope: !866)
!868 = !DILocation(line: 180, column: 9, scope: !862)
!869 = !DILocation(line: 181, column: 9, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !3, line: 180, column: 38)
!871 = !DILocation(line: 182, column: 9, scope: !870)
!872 = !DILocation(line: 185, column: 5, scope: !862)
!873 = !DILocation(line: 186, column: 15, scope: !874)
!874 = distinct !DILexicalBlock(scope: !862, file: !3, line: 186, column: 9)
!875 = !DILocation(line: 186, column: 47, scope: !874)
!876 = !DILocation(line: 186, column: 9, scope: !874)
!877 = !DILocation(line: 186, column: 9, scope: !862)
!878 = !DILocation(line: 187, column: 28, scope: !879)
!879 = distinct !DILexicalBlock(scope: !874, file: !3, line: 186, column: 55)
!880 = !DILocation(line: 187, column: 20, scope: !879)
!881 = !DILocation(line: 187, column: 9, scope: !879)
!882 = !DILocation(line: 187, column: 47, scope: !879)
!883 = !DILocation(line: 188, column: 5, scope: !879)
!884 = !DILocalVariable(name: "len", scope: !862, file: !3, line: 189, type: !195)
!885 = !DILocation(line: 189, column: 12, scope: !862)
!886 = !DILocation(line: 189, column: 26, scope: !862)
!887 = !DILocation(line: 189, column: 18, scope: !862)
!888 = !DILocation(line: 190, column: 10, scope: !889)
!889 = distinct !DILexicalBlock(scope: !862, file: !3, line: 190, column: 9)
!890 = !DILocation(line: 190, column: 9, scope: !862)
!891 = !DILocation(line: 191, column: 9, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !3, line: 190, column: 14)
!893 = !DILocation(line: 192, column: 9, scope: !892)
!894 = !DILocation(line: 194, column: 27, scope: !862)
!895 = !DILocation(line: 194, column: 25, scope: !862)
!896 = !DILocation(line: 195, column: 20, scope: !897)
!897 = distinct !DILexicalBlock(scope: !862, file: !3, line: 195, column: 9)
!898 = !DILocation(line: 195, column: 10, scope: !897)
!899 = !DILocation(line: 195, column: 9, scope: !862)
!900 = !DILocation(line: 196, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !3, line: 195, column: 31)
!902 = !DILocation(line: 197, column: 9, scope: !901)
!903 = !DILocation(line: 199, column: 49, scope: !862)
!904 = !DILocation(line: 199, column: 53, scope: !862)
!905 = !DILocation(line: 199, column: 42, scope: !862)
!906 = !DILocation(line: 199, column: 15, scope: !862)
!907 = !DILocation(line: 199, column: 26, scope: !862)
!908 = !DILocation(line: 199, column: 40, scope: !862)
!909 = !DILocation(line: 200, column: 20, scope: !910)
!910 = distinct !DILexicalBlock(scope: !862, file: !3, line: 200, column: 9)
!911 = !DILocation(line: 200, column: 31, scope: !910)
!912 = !DILocation(line: 200, column: 10, scope: !910)
!913 = !DILocation(line: 200, column: 9, scope: !862)
!914 = !DILocation(line: 201, column: 9, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !3, line: 200, column: 46)
!916 = !DILocation(line: 202, column: 24, scope: !915)
!917 = !DILocation(line: 202, column: 14, scope: !915)
!918 = !DILocation(line: 202, column: 9, scope: !915)
!919 = !DILocation(line: 203, column: 29, scope: !915)
!920 = !DILocation(line: 204, column: 9, scope: !915)
!921 = !DILocation(line: 206, column: 22, scope: !862)
!922 = !DILocation(line: 206, column: 33, scope: !862)
!923 = !DILocation(line: 206, column: 5, scope: !862)
!924 = !DILocation(line: 206, column: 60, scope: !862)
!925 = !DILocation(line: 206, column: 64, scope: !862)
!926 = !DILocalVariable(name: "port_idx", scope: !862, file: !3, line: 209, type: !40)
!927 = !DILocation(line: 209, column: 13, scope: !862)
!928 = !DILocation(line: 210, column: 25, scope: !929)
!929 = distinct !DILexicalBlock(scope: !862, file: !3, line: 210, column: 9)
!930 = !DILocation(line: 210, column: 9, scope: !929)
!931 = !DILocation(line: 210, column: 9, scope: !862)
!932 = !DILocalVariable(name: "C", scope: !933, file: !3, line: 212, type: !934)
!933 = distinct !DILexicalBlock(scope: !929, file: !3, line: 210, column: 49)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!935 = !DILocation(line: 212, column: 22, scope: !933)
!936 = !DILocalVariable(name: "R", scope: !933, file: !3, line: 213, type: !934)
!937 = !DILocation(line: 213, column: 22, scope: !933)
!938 = !DILocalVariable(name: "theta", scope: !933, file: !3, line: 216, type: !934)
!939 = !DILocation(line: 216, column: 22, scope: !933)
!940 = !DILocation(line: 216, column: 54, scope: !933)
!941 = !DILocation(line: 216, column: 46, scope: !933)
!942 = !DILocation(line: 216, column: 63, scope: !933)
!943 = !DILocation(line: 216, column: 43, scope: !933)
!944 = !DILocalVariable(name: "xd", scope: !933, file: !3, line: 219, type: !934)
!945 = !DILocation(line: 219, column: 22, scope: !933)
!946 = !DILocation(line: 219, column: 35, scope: !933)
!947 = !DILocation(line: 219, column: 31, scope: !933)
!948 = !DILocation(line: 219, column: 29, scope: !933)
!949 = !DILocalVariable(name: "yd", scope: !933, file: !3, line: 220, type: !934)
!950 = !DILocation(line: 220, column: 22, scope: !933)
!951 = !DILocation(line: 220, column: 35, scope: !933)
!952 = !DILocation(line: 220, column: 31, scope: !933)
!953 = !DILocation(line: 220, column: 29, scope: !933)
!954 = !DILocalVariable(name: "SCALE", scope: !933, file: !3, line: 224, type: !934)
!955 = !DILocation(line: 224, column: 22, scope: !933)
!956 = !DILocalVariable(name: "fx", scope: !933, file: !3, line: 225, type: !7)
!957 = !DILocation(line: 225, column: 17, scope: !933)
!958 = !DILocation(line: 225, column: 39, scope: !933)
!959 = !DILocation(line: 225, column: 42, scope: !933)
!960 = !DILocation(line: 225, column: 31, scope: !933)
!961 = !DILocation(line: 225, column: 22, scope: !933)
!962 = !DILocalVariable(name: "fy", scope: !933, file: !3, line: 226, type: !7)
!963 = !DILocation(line: 226, column: 17, scope: !933)
!964 = !DILocation(line: 226, column: 39, scope: !933)
!965 = !DILocation(line: 226, column: 42, scope: !933)
!966 = !DILocation(line: 226, column: 31, scope: !933)
!967 = !DILocation(line: 226, column: 22, scope: !933)
!968 = !DILocalVariable(name: "ux", scope: !933, file: !3, line: 227, type: !12)
!969 = !DILocation(line: 227, column: 18, scope: !933)
!970 = !DILocation(line: 227, column: 44, scope: !933)
!971 = !DILocation(line: 227, column: 47, scope: !933)
!972 = !DILocalVariable(name: "uy", scope: !933, file: !3, line: 228, type: !12)
!973 = !DILocation(line: 228, column: 18, scope: !933)
!974 = !DILocation(line: 228, column: 44, scope: !933)
!975 = !DILocation(line: 228, column: 47, scope: !933)
!976 = !DILocation(line: 230, column: 33, scope: !933)
!977 = !DILocation(line: 230, column: 44, scope: !933)
!978 = !DILocation(line: 230, column: 23, scope: !933)
!979 = !DILocation(line: 230, column: 60, scope: !933)
!980 = !DILocation(line: 230, column: 9, scope: !933)
!981 = !DILocation(line: 231, column: 33, scope: !933)
!982 = !DILocation(line: 231, column: 44, scope: !933)
!983 = !DILocation(line: 231, column: 23, scope: !933)
!984 = !DILocation(line: 231, column: 60, scope: !933)
!985 = !DILocation(line: 231, column: 9, scope: !933)
!986 = !DILocation(line: 232, column: 27, scope: !933)
!987 = !DILocation(line: 233, column: 5, scope: !933)
!988 = !DILocation(line: 234, column: 27, scope: !989)
!989 = distinct !DILexicalBlock(scope: !929, file: !3, line: 233, column: 12)
!990 = !DILocation(line: 235, column: 26, scope: !989)
!991 = !DILocation(line: 235, column: 37, scope: !989)
!992 = !DILocation(line: 235, column: 9, scope: !989)
!993 = !DILocation(line: 237, column: 1, scope: !862)
!994 = distinct !DISubprogram(name: "parse_u8_strict", scope: !3, file: !3, line: 166, type: !995, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!995 = !DISubroutineType(types: !996)
!996 = !{!11, !87, !997}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!998 = !DILocalVariable(name: "s", arg: 1, scope: !994, file: !3, line: 166, type: !87)
!999 = !DILocation(line: 166, column: 40, scope: !994)
!1000 = !DILocalVariable(name: "out_val", arg: 2, scope: !994, file: !3, line: 166, type: !997)
!1001 = !DILocation(line: 166, column: 52, scope: !994)
!1002 = !DILocation(line: 167, column: 10, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !994, file: !3, line: 167, column: 9)
!1004 = !DILocation(line: 167, column: 12, scope: !1003)
!1005 = !DILocation(line: 167, column: 17, scope: !1003)
!1006 = !DILocation(line: 167, column: 16, scope: !1003)
!1007 = !DILocation(line: 167, column: 9, scope: !994)
!1008 = !DILocation(line: 167, column: 20, scope: !1003)
!1009 = !DILocalVariable(name: "end", scope: !994, file: !3, line: 168, type: !55)
!1010 = !DILocation(line: 168, column: 11, scope: !994)
!1011 = !DILocation(line: 169, column: 5, scope: !994)
!1012 = !DILocation(line: 169, column: 11, scope: !994)
!1013 = !DILocalVariable(name: "v", scope: !994, file: !3, line: 170, type: !30)
!1014 = !DILocation(line: 170, column: 10, scope: !994)
!1015 = !DILocation(line: 170, column: 21, scope: !994)
!1016 = !DILocation(line: 170, column: 14, scope: !994)
!1017 = !DILocation(line: 171, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !994, file: !3, line: 171, column: 9)
!1019 = !DILocation(line: 171, column: 15, scope: !1018)
!1020 = !DILocation(line: 171, column: 9, scope: !994)
!1021 = !DILocation(line: 171, column: 21, scope: !1018)
!1022 = !DILocation(line: 172, column: 10, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !994, file: !3, line: 172, column: 9)
!1024 = !DILocation(line: 172, column: 9, scope: !1023)
!1025 = !DILocation(line: 172, column: 14, scope: !1023)
!1026 = !DILocation(line: 172, column: 9, scope: !994)
!1027 = !DILocation(line: 172, column: 23, scope: !1023)
!1028 = !DILocation(line: 173, column: 9, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !994, file: !3, line: 173, column: 9)
!1030 = !DILocation(line: 173, column: 11, scope: !1029)
!1031 = !DILocation(line: 173, column: 15, scope: !1029)
!1032 = !DILocation(line: 173, column: 18, scope: !1029)
!1033 = !DILocation(line: 173, column: 20, scope: !1029)
!1034 = !DILocation(line: 173, column: 9, scope: !994)
!1035 = !DILocation(line: 173, column: 27, scope: !1029)
!1036 = !DILocation(line: 174, column: 25, scope: !994)
!1037 = !DILocation(line: 174, column: 16, scope: !994)
!1038 = !DILocation(line: 174, column: 6, scope: !994)
!1039 = !DILocation(line: 174, column: 14, scope: !994)
!1040 = !DILocation(line: 175, column: 5, scope: !994)
!1041 = !DILocation(line: 176, column: 1, scope: !994)
!1042 = distinct !DISubprogram(name: "be_store_u32", scope: !3, file: !3, line: 159, type: !1043, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !997, !12}
!1045 = !DILocalVariable(name: "out", arg: 1, scope: !1042, file: !3, line: 159, type: !997)
!1046 = !DILocation(line: 159, column: 34, scope: !1042)
!1047 = !DILocalVariable(name: "v", arg: 2, scope: !1042, file: !3, line: 159, type: !12)
!1048 = !DILocation(line: 159, column: 51, scope: !1042)
!1049 = !DILocation(line: 160, column: 25, scope: !1042)
!1050 = !DILocation(line: 160, column: 27, scope: !1042)
!1051 = !DILocation(line: 160, column: 34, scope: !1042)
!1052 = !DILocation(line: 160, column: 14, scope: !1042)
!1053 = !DILocation(line: 160, column: 5, scope: !1042)
!1054 = !DILocation(line: 160, column: 12, scope: !1042)
!1055 = !DILocation(line: 161, column: 25, scope: !1042)
!1056 = !DILocation(line: 161, column: 27, scope: !1042)
!1057 = !DILocation(line: 161, column: 34, scope: !1042)
!1058 = !DILocation(line: 161, column: 14, scope: !1042)
!1059 = !DILocation(line: 161, column: 5, scope: !1042)
!1060 = !DILocation(line: 161, column: 12, scope: !1042)
!1061 = !DILocation(line: 162, column: 25, scope: !1042)
!1062 = !DILocation(line: 162, column: 27, scope: !1042)
!1063 = !DILocation(line: 162, column: 34, scope: !1042)
!1064 = !DILocation(line: 162, column: 14, scope: !1042)
!1065 = !DILocation(line: 162, column: 5, scope: !1042)
!1066 = !DILocation(line: 162, column: 12, scope: !1042)
!1067 = !DILocation(line: 163, column: 25, scope: !1042)
!1068 = !DILocation(line: 163, column: 34, scope: !1042)
!1069 = !DILocation(line: 163, column: 14, scope: !1042)
!1070 = !DILocation(line: 163, column: 5, scope: !1042)
!1071 = !DILocation(line: 163, column: 12, scope: !1042)
!1072 = !DILocation(line: 164, column: 1, scope: !1042)
!1073 = distinct !DISubprogram(name: "clear_start_location", scope: !3, file: !3, line: 239, type: !22, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1074 = !DILocation(line: 240, column: 20, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 240, column: 9)
!1076 = !DILocation(line: 240, column: 10, scope: !1075)
!1077 = !DILocation(line: 240, column: 9, scope: !1073)
!1078 = !DILocation(line: 241, column: 9, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 240, column: 31)
!1080 = !DILocation(line: 242, column: 9, scope: !1079)
!1081 = !DILocation(line: 244, column: 23, scope: !1073)
!1082 = !DILocation(line: 245, column: 20, scope: !1073)
!1083 = !DILocation(line: 245, column: 10, scope: !1073)
!1084 = !DILocation(line: 245, column: 5, scope: !1073)
!1085 = !DILocation(line: 246, column: 25, scope: !1073)
!1086 = !DILocation(line: 247, column: 1, scope: !1073)
!1087 = distinct !DISubprogram(name: "verify_black_sun_member", scope: !3, file: !3, line: 252, type: !295, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1088 = !DILocalVariable(name: "username", arg: 1, scope: !1087, file: !3, line: 252, type: !87)
!1089 = !DILocation(line: 252, column: 41, scope: !1087)
!1090 = !DILocalVariable(name: "access_code", arg: 2, scope: !1087, file: !3, line: 252, type: !87)
!1091 = !DILocation(line: 252, column: 63, scope: !1087)
!1092 = !DILocalVariable(name: "i", scope: !1093, file: !3, line: 253, type: !11)
!1093 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 253, column: 5)
!1094 = !DILocation(line: 253, column: 14, scope: !1093)
!1095 = !DILocation(line: 253, column: 10, scope: !1093)
!1096 = !DILocation(line: 253, column: 21, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 253, column: 5)
!1098 = !DILocation(line: 253, column: 23, scope: !1097)
!1099 = !DILocation(line: 253, column: 5, scope: !1093)
!1100 = !DILocation(line: 254, column: 20, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 254, column: 13)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 253, column: 53)
!1103 = !DILocation(line: 254, column: 57, scope: !1101)
!1104 = !DILocation(line: 254, column: 30, scope: !1101)
!1105 = !DILocation(line: 254, column: 13, scope: !1101)
!1106 = !DILocation(line: 254, column: 61, scope: !1101)
!1107 = !DILocation(line: 254, column: 13, scope: !1102)
!1108 = !DILocation(line: 255, column: 24, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 255, column: 17)
!1110 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 254, column: 67)
!1111 = !DILocation(line: 255, column: 67, scope: !1109)
!1112 = !DILocation(line: 255, column: 37, scope: !1109)
!1113 = !DILocation(line: 255, column: 17, scope: !1109)
!1114 = !DILocation(line: 255, column: 71, scope: !1109)
!1115 = !DILocation(line: 255, column: 17, scope: !1110)
!1116 = !DILocation(line: 256, column: 17, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 255, column: 77)
!1118 = !DILocation(line: 258, column: 17, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 257, column: 20)
!1120 = !DILocation(line: 261, column: 5, scope: !1102)
!1121 = !DILocation(line: 253, column: 49, scope: !1097)
!1122 = !DILocation(line: 253, column: 5, scope: !1097)
!1123 = distinct !{!1123, !1099, !1124, !203}
!1124 = !DILocation(line: 261, column: 5, scope: !1093)
!1125 = !DILocation(line: 263, column: 5, scope: !1087)
!1126 = !DILocation(line: 264, column: 1, scope: !1087)
!1127 = distinct !DISubprogram(name: "free_avatar_and_components", scope: !3, file: !3, line: 266, type: !1128, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !49}
!1130 = !DILocalVariable(name: "av", arg: 1, scope: !1127, file: !3, line: 266, type: !49)
!1131 = !DILocation(line: 266, column: 41, scope: !1127)
!1132 = !DILocation(line: 267, column: 10, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 267, column: 9)
!1134 = !DILocation(line: 267, column: 9, scope: !1127)
!1135 = !DILocation(line: 267, column: 14, scope: !1133)
!1136 = !DILocation(line: 269, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 269, column: 9)
!1138 = !DILocation(line: 269, column: 13, scope: !1137)
!1139 = !DILocation(line: 269, column: 9, scope: !1127)
!1140 = !DILocation(line: 270, column: 14, scope: !1137)
!1141 = !DILocation(line: 270, column: 18, scope: !1137)
!1142 = !DILocation(line: 270, column: 9, scope: !1137)
!1143 = !DILocation(line: 271, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 271, column: 9)
!1145 = !DILocation(line: 271, column: 13, scope: !1144)
!1146 = !DILocation(line: 271, column: 9, scope: !1127)
!1147 = !DILocation(line: 272, column: 14, scope: !1144)
!1148 = !DILocation(line: 272, column: 18, scope: !1144)
!1149 = !DILocation(line: 272, column: 9, scope: !1144)
!1150 = !DILocation(line: 273, column: 5, scope: !1127)
!1151 = !DILocation(line: 274, column: 5, scope: !1127)
!1152 = !DILocation(line: 274, column: 9, scope: !1127)
!1153 = !DILocation(line: 274, column: 19, scope: !1127)
!1154 = !DILocation(line: 275, column: 10, scope: !1127)
!1155 = !DILocation(line: 275, column: 5, scope: !1127)
!1156 = !DILocation(line: 276, column: 1, scope: !1127)
!1157 = distinct !DISubprogram(name: "set_avatar", scope: !3, file: !3, line: 278, type: !1158, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !55, !55}
!1160 = !DILocalVariable(name: "username", arg: 1, scope: !1157, file: !3, line: 278, type: !55)
!1161 = !DILocation(line: 278, column: 23, scope: !1157)
!1162 = !DILocalVariable(name: "access_code", arg: 2, scope: !1157, file: !3, line: 278, type: !55)
!1163 = !DILocation(line: 278, column: 39, scope: !1157)
!1164 = !DILocation(line: 279, column: 19, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 279, column: 9)
!1166 = !DILocation(line: 279, column: 29, scope: !1165)
!1167 = !DILocation(line: 279, column: 9, scope: !1157)
!1168 = !DILocation(line: 280, column: 38, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 279, column: 40)
!1170 = !DILocation(line: 281, column: 9, scope: !1169)
!1171 = !DILocation(line: 282, column: 5, scope: !1169)
!1172 = !DILocalVariable(name: "av", scope: !1157, file: !3, line: 284, type: !49)
!1173 = !DILocation(line: 284, column: 13, scope: !1157)
!1174 = !DILocation(line: 284, column: 18, scope: !1157)
!1175 = !DILocation(line: 285, column: 10, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 285, column: 9)
!1177 = !DILocation(line: 285, column: 9, scope: !1157)
!1178 = !DILocation(line: 286, column: 9, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 285, column: 14)
!1180 = !DILocation(line: 287, column: 9, scope: !1179)
!1181 = !DILocation(line: 290, column: 9, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 290, column: 9)
!1183 = !DILocation(line: 290, column: 9, scope: !1157)
!1184 = !DILocation(line: 291, column: 24, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 290, column: 19)
!1186 = !DILocation(line: 291, column: 9, scope: !1185)
!1187 = !DILocation(line: 291, column: 13, scope: !1185)
!1188 = !DILocation(line: 291, column: 22, scope: !1185)
!1189 = !DILocation(line: 292, column: 14, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 292, column: 13)
!1191 = !DILocation(line: 292, column: 18, scope: !1190)
!1192 = !DILocation(line: 292, column: 13, scope: !1185)
!1193 = !DILocation(line: 293, column: 40, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 292, column: 28)
!1195 = !DILocation(line: 293, column: 13, scope: !1194)
!1196 = !DILocation(line: 294, column: 13, scope: !1194)
!1197 = !DILocation(line: 295, column: 13, scope: !1194)
!1198 = !DILocation(line: 297, column: 16, scope: !1185)
!1199 = !DILocation(line: 297, column: 20, scope: !1185)
!1200 = !DILocation(line: 297, column: 9, scope: !1185)
!1201 = !DILocation(line: 298, column: 17, scope: !1185)
!1202 = !DILocation(line: 298, column: 21, scope: !1185)
!1203 = !DILocation(line: 298, column: 31, scope: !1185)
!1204 = !DILocation(line: 298, column: 9, scope: !1185)
!1205 = !DILocation(line: 299, column: 5, scope: !1185)
!1206 = !DILocation(line: 301, column: 9, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 301, column: 9)
!1208 = !DILocation(line: 301, column: 9, scope: !1157)
!1209 = !DILocation(line: 302, column: 27, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 301, column: 22)
!1211 = !DILocation(line: 302, column: 9, scope: !1210)
!1212 = !DILocation(line: 302, column: 13, scope: !1210)
!1213 = !DILocation(line: 302, column: 25, scope: !1210)
!1214 = !DILocation(line: 303, column: 14, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 303, column: 13)
!1216 = !DILocation(line: 303, column: 18, scope: !1215)
!1217 = !DILocation(line: 303, column: 13, scope: !1210)
!1218 = !DILocation(line: 304, column: 40, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 303, column: 31)
!1220 = !DILocation(line: 304, column: 13, scope: !1219)
!1221 = !DILocation(line: 305, column: 13, scope: !1219)
!1222 = !DILocation(line: 306, column: 13, scope: !1219)
!1223 = !DILocation(line: 308, column: 16, scope: !1210)
!1224 = !DILocation(line: 308, column: 20, scope: !1210)
!1225 = !DILocation(line: 308, column: 9, scope: !1210)
!1226 = !DILocation(line: 309, column: 17, scope: !1210)
!1227 = !DILocation(line: 309, column: 21, scope: !1210)
!1228 = !DILocation(line: 309, column: 34, scope: !1210)
!1229 = !DILocation(line: 309, column: 9, scope: !1210)
!1230 = !DILocation(line: 310, column: 5, scope: !1210)
!1231 = !DILocalVariable(name: "status", scope: !1157, file: !3, line: 312, type: !11)
!1232 = !DILocation(line: 312, column: 9, scope: !1157)
!1233 = !DILocation(line: 312, column: 42, scope: !1157)
!1234 = !DILocation(line: 312, column: 52, scope: !1157)
!1235 = !DILocation(line: 312, column: 18, scope: !1157)
!1236 = !DILocation(line: 313, column: 9, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 313, column: 9)
!1238 = !DILocation(line: 313, column: 16, scope: !1237)
!1239 = !DILocation(line: 313, column: 9, scope: !1157)
!1240 = !DILocation(line: 314, column: 9, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 313, column: 23)
!1242 = !DILocation(line: 315, column: 36, scope: !1241)
!1243 = !DILocation(line: 315, column: 9, scope: !1241)
!1244 = !DILocation(line: 316, column: 9, scope: !1241)
!1245 = !DILocation(line: 317, column: 16, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 317, column: 16)
!1247 = !DILocation(line: 317, column: 23, scope: !1246)
!1248 = !DILocation(line: 317, column: 16, scope: !1237)
!1249 = !DILocation(line: 318, column: 9, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 317, column: 29)
!1251 = !DILocation(line: 319, column: 38, scope: !1250)
!1252 = !DILocation(line: 320, column: 5, scope: !1250)
!1253 = !DILocation(line: 321, column: 48, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 320, column: 12)
!1255 = !DILocation(line: 321, column: 9, scope: !1254)
!1256 = !DILocation(line: 324, column: 19, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 324, column: 9)
!1258 = !DILocation(line: 324, column: 9, scope: !1257)
!1259 = !DILocation(line: 324, column: 9, scope: !1157)
!1260 = !DILocation(line: 325, column: 35, scope: !1257)
!1261 = !DILocation(line: 325, column: 9, scope: !1257)
!1262 = !DILocation(line: 325, column: 13, scope: !1257)
!1263 = !DILocation(line: 325, column: 23, scope: !1257)
!1264 = !DILocation(line: 327, column: 9, scope: !1257)
!1265 = !DILocation(line: 327, column: 13, scope: !1257)
!1266 = !DILocation(line: 327, column: 23, scope: !1257)
!1267 = !DILocation(line: 329, column: 32, scope: !1157)
!1268 = !DILocation(line: 329, column: 30, scope: !1157)
!1269 = !DILocation(line: 330, column: 25, scope: !1157)
!1270 = !DILocation(line: 332, column: 58, scope: !1157)
!1271 = !DILocation(line: 332, column: 5, scope: !1157)
!1272 = !DILocation(line: 333, column: 1, scope: !1157)
!1273 = distinct !DISubprogram(name: "clear_avatar", scope: !3, file: !3, line: 335, type: !22, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1274 = !DILocation(line: 336, column: 19, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 336, column: 9)
!1276 = !DILocation(line: 336, column: 29, scope: !1275)
!1277 = !DILocation(line: 336, column: 9, scope: !1273)
!1278 = !DILocation(line: 337, column: 9, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 336, column: 35)
!1280 = !DILocation(line: 338, column: 9, scope: !1279)
!1281 = !DILocalVariable(name: "av", scope: !1273, file: !3, line: 340, type: !49)
!1282 = !DILocation(line: 340, column: 13, scope: !1273)
!1283 = !DILocation(line: 340, column: 28, scope: !1273)
!1284 = !DILocation(line: 341, column: 10, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 341, column: 9)
!1286 = !DILocation(line: 341, column: 9, scope: !1273)
!1287 = !DILocation(line: 342, column: 9, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 341, column: 14)
!1289 = !DILocation(line: 343, column: 9, scope: !1288)
!1290 = !DILocation(line: 345, column: 49, scope: !1273)
!1291 = !DILocation(line: 345, column: 53, scope: !1273)
!1292 = !DILocation(line: 345, column: 5, scope: !1273)
!1293 = !DILocation(line: 346, column: 32, scope: !1273)
!1294 = !DILocation(line: 346, column: 5, scope: !1273)
!1295 = !DILocation(line: 347, column: 5, scope: !1273)
!1296 = !DILocation(line: 348, column: 1, scope: !1273)
!1297 = distinct !DISubprogram(name: "render_ascii", scope: !3, file: !3, line: 353, type: !22, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1298 = !DILocalVariable(name: "av", scope: !1297, file: !3, line: 354, type: !49)
!1299 = !DILocation(line: 354, column: 13, scope: !1297)
!1300 = !DILocation(line: 354, column: 28, scope: !1297)
!1301 = !DILocation(line: 355, column: 10, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 355, column: 9)
!1303 = !DILocation(line: 355, column: 9, scope: !1297)
!1304 = !DILocation(line: 356, column: 9, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 355, column: 14)
!1306 = !DILocation(line: 357, column: 9, scope: !1305)
!1307 = !DILocation(line: 360, column: 5, scope: !1297)
!1308 = !DILocation(line: 361, column: 5, scope: !1297)
!1309 = !DILocation(line: 362, column: 5, scope: !1297)
!1310 = !DILocation(line: 363, column: 5, scope: !1297)
!1311 = !DILocation(line: 364, column: 5, scope: !1297)
!1312 = !DILocation(line: 366, column: 9, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 366, column: 9)
!1314 = !DILocation(line: 366, column: 13, scope: !1313)
!1315 = !DILocation(line: 366, column: 9, scope: !1297)
!1316 = !DILocalVariable(name: "i", scope: !1317, file: !3, line: 367, type: !11)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 367, column: 9)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 366, column: 23)
!1319 = !DILocation(line: 367, column: 18, scope: !1317)
!1320 = !DILocation(line: 367, column: 14, scope: !1317)
!1321 = !DILocation(line: 367, column: 25, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 367, column: 9)
!1323 = !DILocation(line: 367, column: 27, scope: !1322)
!1324 = !DILocation(line: 367, column: 32, scope: !1322)
!1325 = !DILocation(line: 367, column: 35, scope: !1322)
!1326 = !DILocation(line: 367, column: 39, scope: !1322)
!1327 = !DILocation(line: 367, column: 48, scope: !1322)
!1328 = !DILocation(line: 367, column: 51, scope: !1322)
!1329 = !DILocation(line: 0, scope: !1322)
!1330 = !DILocation(line: 367, column: 9, scope: !1317)
!1331 = !DILocalVariable(name: "c", scope: !1332, file: !3, line: 368, type: !18)
!1332 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 367, column: 65)
!1333 = !DILocation(line: 368, column: 27, scope: !1332)
!1334 = !DILocation(line: 368, column: 31, scope: !1332)
!1335 = !DILocation(line: 368, column: 35, scope: !1332)
!1336 = !DILocation(line: 368, column: 44, scope: !1332)
!1337 = !DILocation(line: 369, column: 17, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 369, column: 17)
!1339 = !DILocation(line: 369, column: 19, scope: !1338)
!1340 = !DILocation(line: 369, column: 27, scope: !1338)
!1341 = !DILocation(line: 369, column: 30, scope: !1338)
!1342 = !DILocation(line: 369, column: 32, scope: !1338)
!1343 = !DILocation(line: 369, column: 17, scope: !1332)
!1344 = !DILocation(line: 370, column: 25, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 369, column: 41)
!1346 = !DILocation(line: 370, column: 17, scope: !1345)
!1347 = !DILocation(line: 371, column: 13, scope: !1345)
!1348 = !DILocation(line: 372, column: 9, scope: !1332)
!1349 = !DILocation(line: 367, column: 61, scope: !1322)
!1350 = !DILocation(line: 367, column: 9, scope: !1322)
!1351 = distinct !{!1351, !1330, !1352, !203}
!1352 = !DILocation(line: 372, column: 9, scope: !1317)
!1353 = !DILocation(line: 373, column: 5, scope: !1318)
!1354 = !DILocation(line: 374, column: 9, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 373, column: 12)
!1356 = !DILocation(line: 377, column: 43, scope: !1297)
!1357 = !DILocation(line: 377, column: 47, scope: !1297)
!1358 = !DILocation(line: 377, column: 35, scope: !1297)
!1359 = !DILocation(line: 377, column: 33, scope: !1297)
!1360 = !DILocation(line: 377, column: 24, scope: !1297)
!1361 = !DILocation(line: 377, column: 5, scope: !1297)
!1362 = !DILocation(line: 378, column: 5, scope: !1297)
!1363 = !DILocation(line: 379, column: 5, scope: !1297)
!1364 = !DILocation(line: 380, column: 1, scope: !1297)
!1365 = distinct !DISubprogram(name: "print16_hex", scope: !3, file: !3, line: 382, type: !1366, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !87}
!1368 = !DILocalVariable(name: "buf", arg: 1, scope: !1365, file: !3, line: 382, type: !87)
!1369 = !DILocation(line: 382, column: 30, scope: !1365)
!1370 = !DILocalVariable(name: "b", scope: !1365, file: !3, line: 383, type: !16)
!1371 = !DILocation(line: 383, column: 26, scope: !1365)
!1372 = !DILocation(line: 383, column: 53, scope: !1365)
!1373 = !DILocation(line: 384, column: 5, scope: !1365)
!1374 = !DILocalVariable(name: "i", scope: !1375, file: !3, line: 385, type: !11)
!1375 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 385, column: 5)
!1376 = !DILocation(line: 385, column: 14, scope: !1375)
!1377 = !DILocation(line: 385, column: 10, scope: !1375)
!1378 = !DILocation(line: 385, column: 21, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 385, column: 5)
!1380 = !DILocation(line: 385, column: 23, scope: !1379)
!1381 = !DILocation(line: 385, column: 5, scope: !1375)
!1382 = !DILocation(line: 386, column: 24, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 385, column: 34)
!1384 = !DILocation(line: 386, column: 26, scope: !1383)
!1385 = !DILocation(line: 386, column: 9, scope: !1383)
!1386 = !DILocation(line: 387, column: 13, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 387, column: 13)
!1388 = !DILocation(line: 387, column: 15, scope: !1387)
!1389 = !DILocation(line: 387, column: 13, scope: !1383)
!1390 = !DILocation(line: 388, column: 13, scope: !1387)
!1391 = !DILocation(line: 389, column: 18, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 389, column: 18)
!1393 = !DILocation(line: 389, column: 20, scope: !1392)
!1394 = !DILocation(line: 389, column: 18, scope: !1387)
!1395 = !DILocation(line: 390, column: 13, scope: !1392)
!1396 = !DILocation(line: 391, column: 5, scope: !1383)
!1397 = !DILocation(line: 385, column: 30, scope: !1379)
!1398 = !DILocation(line: 385, column: 5, scope: !1379)
!1399 = distinct !{!1399, !1381, !1400, !203}
!1400 = !DILocation(line: 391, column: 5, scope: !1375)
!1401 = !DILocation(line: 392, column: 5, scope: !1365)
!1402 = !DILocation(line: 393, column: 1, scope: !1365)
!1403 = distinct !DISubprogram(name: "render_hex", scope: !3, file: !3, line: 395, type: !22, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1404 = !DILocalVariable(name: "av", scope: !1403, file: !3, line: 396, type: !49)
!1405 = !DILocation(line: 396, column: 13, scope: !1403)
!1406 = !DILocation(line: 396, column: 28, scope: !1403)
!1407 = !DILocation(line: 397, column: 10, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 397, column: 9)
!1409 = !DILocation(line: 397, column: 9, scope: !1403)
!1410 = !DILocation(line: 398, column: 9, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 397, column: 14)
!1412 = !DILocation(line: 399, column: 9, scope: !1411)
!1413 = !DILocation(line: 402, column: 5, scope: !1403)
!1414 = !DILocation(line: 403, column: 5, scope: !1403)
!1415 = !DILocation(line: 404, column: 5, scope: !1403)
!1416 = !DILocation(line: 405, column: 5, scope: !1403)
!1417 = !DILocation(line: 406, column: 5, scope: !1403)
!1418 = !DILocation(line: 407, column: 5, scope: !1403)
!1419 = !DILocation(line: 408, column: 9, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 408, column: 9)
!1421 = !DILocation(line: 408, column: 13, scope: !1420)
!1422 = !DILocation(line: 408, column: 9, scope: !1403)
!1423 = !DILocation(line: 409, column: 21, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 408, column: 23)
!1425 = !DILocation(line: 409, column: 25, scope: !1424)
!1426 = !DILocation(line: 409, column: 9, scope: !1424)
!1427 = !DILocation(line: 410, column: 9, scope: !1424)
!1428 = !DILocation(line: 411, column: 23, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 411, column: 13)
!1430 = !DILocation(line: 411, column: 13, scope: !1429)
!1431 = !DILocation(line: 411, column: 13, scope: !1424)
!1432 = !DILocalVariable(name: "sl", scope: !1433, file: !3, line: 412, type: !64)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 411, column: 34)
!1434 = !DILocation(line: 412, column: 24, scope: !1433)
!1435 = !DILocation(line: 412, column: 39, scope: !1433)
!1436 = !DILocation(line: 413, column: 17, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 413, column: 17)
!1438 = !DILocation(line: 413, column: 17, scope: !1433)
!1439 = !DILocation(line: 414, column: 17, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 413, column: 21)
!1441 = !DILocation(line: 415, column: 31, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 415, column: 21)
!1443 = !DILocation(line: 415, column: 21, scope: !1442)
!1444 = !DILocation(line: 415, column: 21, scope: !1440)
!1445 = !DILocation(line: 416, column: 55, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 415, column: 40)
!1447 = !DILocation(line: 416, column: 59, scope: !1446)
!1448 = !DILocation(line: 416, column: 21, scope: !1446)
!1449 = !DILocalVariable(name: "ux", scope: !1446, file: !3, line: 417, type: !12)
!1450 = !DILocation(line: 417, column: 30, scope: !1446)
!1451 = !DILocation(line: 417, column: 36, scope: !1446)
!1452 = !DILocation(line: 417, column: 40, scope: !1446)
!1453 = !DILocation(line: 417, column: 55, scope: !1446)
!1454 = !DILocation(line: 417, column: 65, scope: !1446)
!1455 = !DILocation(line: 417, column: 69, scope: !1446)
!1456 = !DILocation(line: 417, column: 84, scope: !1446)
!1457 = !DILocation(line: 417, column: 62, scope: !1446)
!1458 = !DILocation(line: 418, column: 34, scope: !1446)
!1459 = !DILocation(line: 418, column: 38, scope: !1446)
!1460 = !DILocation(line: 418, column: 53, scope: !1446)
!1461 = !DILocation(line: 417, column: 91, scope: !1446)
!1462 = !DILocation(line: 418, column: 63, scope: !1446)
!1463 = !DILocation(line: 418, column: 67, scope: !1446)
!1464 = !DILocation(line: 418, column: 60, scope: !1446)
!1465 = !DILocalVariable(name: "uy", scope: !1446, file: !3, line: 419, type: !12)
!1466 = !DILocation(line: 419, column: 30, scope: !1446)
!1467 = !DILocation(line: 419, column: 36, scope: !1446)
!1468 = !DILocation(line: 419, column: 40, scope: !1446)
!1469 = !DILocation(line: 419, column: 55, scope: !1446)
!1470 = !DILocation(line: 419, column: 65, scope: !1446)
!1471 = !DILocation(line: 419, column: 69, scope: !1446)
!1472 = !DILocation(line: 419, column: 84, scope: !1446)
!1473 = !DILocation(line: 419, column: 62, scope: !1446)
!1474 = !DILocation(line: 420, column: 34, scope: !1446)
!1475 = !DILocation(line: 420, column: 38, scope: !1446)
!1476 = !DILocation(line: 420, column: 53, scope: !1446)
!1477 = !DILocation(line: 419, column: 91, scope: !1446)
!1478 = !DILocation(line: 420, column: 63, scope: !1446)
!1479 = !DILocation(line: 420, column: 67, scope: !1446)
!1480 = !DILocation(line: 420, column: 60, scope: !1446)
!1481 = !DILocation(line: 421, column: 83, scope: !1446)
!1482 = !DILocation(line: 421, column: 87, scope: !1446)
!1483 = !DILocation(line: 421, column: 21, scope: !1446)
!1484 = !DILocation(line: 422, column: 17, scope: !1446)
!1485 = !DILocation(line: 423, column: 55, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 422, column: 24)
!1487 = !DILocation(line: 423, column: 59, scope: !1486)
!1488 = !DILocation(line: 423, column: 21, scope: !1486)
!1489 = !DILocation(line: 425, column: 13, scope: !1440)
!1490 = !DILocation(line: 426, column: 9, scope: !1433)
!1491 = !DILocation(line: 427, column: 5, scope: !1424)
!1492 = !DILocation(line: 428, column: 9, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 427, column: 12)
!1494 = !DILocation(line: 430, column: 5, scope: !1403)
!1495 = !DILocation(line: 431, column: 5, scope: !1403)
!1496 = !DILocation(line: 432, column: 1, scope: !1403)
!1497 = distinct !DISubprogram(name: "clear_screen", scope: !3, file: !3, line: 438, type: !22, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1498 = !DILocation(line: 439, column: 5, scope: !1497)
!1499 = !DILocation(line: 440, column: 1, scope: !1497)
!1500 = distinct !DISubprogram(name: "wait_enter", scope: !3, file: !3, line: 442, type: !1366, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1501 = !DILocalVariable(name: "msg", arg: 1, scope: !1500, file: !3, line: 442, type: !87)
!1502 = !DILocation(line: 442, column: 29, scope: !1500)
!1503 = !DILocation(line: 443, column: 18, scope: !1500)
!1504 = !DILocation(line: 443, column: 5, scope: !1500)
!1505 = !DILocation(line: 444, column: 5, scope: !1500)
!1506 = !DILocation(line: 444, column: 12, scope: !1500)
!1507 = !DILocation(line: 444, column: 22, scope: !1500)
!1508 = distinct !{!1508, !1505, !1509, !203}
!1509 = !DILocation(line: 444, column: 30, scope: !1500)
!1510 = !DILocation(line: 445, column: 1, scope: !1500)
!1511 = distinct !DISubprogram(name: "show_menu", scope: !3, file: !3, line: 461, type: !22, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1512 = !DILocation(line: 462, column: 5, scope: !1511)
!1513 = !DILocation(line: 463, column: 5, scope: !1511)
!1514 = !DILocation(line: 464, column: 5, scope: !1511)
!1515 = !DILocation(line: 465, column: 5, scope: !1511)
!1516 = !DILocation(line: 466, column: 5, scope: !1511)
!1517 = !DILocation(line: 467, column: 5, scope: !1511)
!1518 = !DILocation(line: 468, column: 5, scope: !1511)
!1519 = !DILocation(line: 469, column: 5, scope: !1511)
!1520 = !DILocation(line: 470, column: 5, scope: !1511)
!1521 = !DILocation(line: 471, column: 5, scope: !1511)
!1522 = !DILocation(line: 472, column: 5, scope: !1511)
!1523 = !DILocation(line: 473, column: 5, scope: !1511)
!1524 = !DILocation(line: 474, column: 5, scope: !1511)
!1525 = !DILocation(line: 475, column: 5, scope: !1511)
!1526 = !DILocation(line: 476, column: 5, scope: !1511)
!1527 = !DILocation(line: 477, column: 1, scope: !1511)
!1528 = distinct !DISubprogram(name: "test_render", scope: !3, file: !3, line: 479, type: !22, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1529 = !DILocation(line: 480, column: 19, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 480, column: 9)
!1531 = !DILocation(line: 480, column: 9, scope: !1530)
!1532 = !DILocation(line: 480, column: 9, scope: !1528)
!1533 = !DILocation(line: 481, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 480, column: 39)
!1535 = !DILocation(line: 482, column: 5, scope: !1534)
!1536 = !DILocation(line: 483, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 482, column: 12)
!1538 = !DILocation(line: 485, column: 1, scope: !1528)
!1539 = distinct !DISubprogram(name: "print_banner", scope: !3, file: !3, line: 489, type: !22, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1540 = !DILocation(line: 490, column: 5, scope: !1539)
!1541 = !DILocation(line: 491, column: 5, scope: !1539)
!1542 = !DILocation(line: 492, column: 5, scope: !1539)
!1543 = !DILocation(line: 493, column: 5, scope: !1539)
!1544 = !DILocation(line: 494, column: 5, scope: !1539)
!1545 = !DILocation(line: 495, column: 5, scope: !1539)
!1546 = !DILocation(line: 496, column: 5, scope: !1539)
!1547 = !DILocation(line: 497, column: 5, scope: !1539)
!1548 = !DILocation(line: 498, column: 1, scope: !1539)
!1549 = distinct !DISubprogram(name: "init_system", scope: !3, file: !3, line: 500, type: !22, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!1550 = !DILocation(line: 501, column: 5, scope: !1549)
!1551 = !DILocation(line: 502, column: 5, scope: !1549)
!1552 = !DILocation(line: 503, column: 30, scope: !1549)
!1553 = !DILocation(line: 504, column: 28, scope: !1549)
!1554 = !DILocation(line: 504, column: 26, scope: !1549)
!1555 = !DILocation(line: 505, column: 25, scope: !1549)
!1556 = !DILocation(line: 506, column: 34, scope: !1549)
!1557 = !DILocation(line: 508, column: 24, scope: !1549)
!1558 = !DILocation(line: 508, column: 22, scope: !1549)
!1559 = !DILocation(line: 509, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 509, column: 9)
!1561 = !DILocation(line: 509, column: 26, scope: !1560)
!1562 = !DILocation(line: 509, column: 9, scope: !1549)
!1563 = !DILocation(line: 510, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 509, column: 45)
!1565 = !DILocation(line: 511, column: 9, scope: !1564)
!1566 = !DILocation(line: 513, column: 5, scope: !1549)
!1567 = !DILocation(line: 513, column: 24, scope: !1549)
!1568 = !DILocation(line: 514, column: 5, scope: !1549)
!1569 = !DILocation(line: 514, column: 24, scope: !1549)
!1570 = !DILocation(line: 515, column: 5, scope: !1549)
!1571 = !DILocation(line: 517, column: 5, scope: !1549)
!1572 = !DILocation(line: 517, column: 24, scope: !1549)
!1573 = !DILocation(line: 518, column: 5, scope: !1549)
!1574 = !DILocation(line: 518, column: 24, scope: !1549)
!1575 = !DILocation(line: 519, column: 1, scope: !1549)
!1576 = distinct !DISubprogram(name: "memcpy", scope: !1577, file: !1577, line: 12, type: !1578, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !109)
!1577 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!5, !5, !1580, !195}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1582 = !DILocalVariable(name: "destaddr", arg: 1, scope: !1576, file: !1577, line: 12, type: !5)
!1583 = !DILocation(line: 12, column: 20, scope: !1576)
!1584 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !1576, file: !1577, line: 12, type: !1580)
!1585 = !DILocation(line: 12, column: 42, scope: !1576)
!1586 = !DILocalVariable(name: "len", arg: 3, scope: !1576, file: !1577, line: 12, type: !195)
!1587 = !DILocation(line: 12, column: 58, scope: !1576)
!1588 = !DILocalVariable(name: "dest", scope: !1576, file: !1577, line: 13, type: !55)
!1589 = !DILocation(line: 13, column: 9, scope: !1576)
!1590 = !DILocation(line: 13, column: 16, scope: !1576)
!1591 = !DILocalVariable(name: "src", scope: !1576, file: !1577, line: 14, type: !87)
!1592 = !DILocation(line: 14, column: 15, scope: !1576)
!1593 = !DILocation(line: 14, column: 21, scope: !1576)
!1594 = !DILocation(line: 16, column: 3, scope: !1576)
!1595 = !DILocation(line: 16, column: 13, scope: !1576)
!1596 = !DILocation(line: 16, column: 16, scope: !1576)
!1597 = !DILocation(line: 17, column: 19, scope: !1576)
!1598 = !DILocation(line: 17, column: 15, scope: !1576)
!1599 = !DILocation(line: 17, column: 10, scope: !1576)
!1600 = !DILocation(line: 17, column: 13, scope: !1576)
!1601 = distinct !{!1601, !1594, !1597, !203}
!1602 = !DILocation(line: 18, column: 10, scope: !1576)
!1603 = !DILocation(line: 18, column: 3, scope: !1576)
!1604 = distinct !DISubprogram(name: "memset", scope: !1605, file: !1605, line: 12, type: !1606, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !109)
!1605 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!5, !5, !11, !195}
!1608 = !DILocalVariable(name: "dst", arg: 1, scope: !1604, file: !1605, line: 12, type: !5)
!1609 = !DILocation(line: 12, column: 20, scope: !1604)
!1610 = !DILocalVariable(name: "s", arg: 2, scope: !1604, file: !1605, line: 12, type: !11)
!1611 = !DILocation(line: 12, column: 29, scope: !1604)
!1612 = !DILocalVariable(name: "count", arg: 3, scope: !1604, file: !1605, line: 12, type: !195)
!1613 = !DILocation(line: 12, column: 39, scope: !1604)
!1614 = !DILocalVariable(name: "a", scope: !1604, file: !1605, line: 13, type: !55)
!1615 = !DILocation(line: 13, column: 9, scope: !1604)
!1616 = !DILocation(line: 13, column: 13, scope: !1604)
!1617 = !DILocation(line: 14, column: 3, scope: !1604)
!1618 = !DILocation(line: 14, column: 15, scope: !1604)
!1619 = !DILocation(line: 14, column: 18, scope: !1604)
!1620 = !DILocation(line: 15, column: 12, scope: !1604)
!1621 = !DILocation(line: 15, column: 7, scope: !1604)
!1622 = !DILocation(line: 15, column: 10, scope: !1604)
!1623 = distinct !{!1623, !1617, !1620, !203}
!1624 = !DILocation(line: 16, column: 10, scope: !1604)
!1625 = !DILocation(line: 16, column: 3, scope: !1604)
