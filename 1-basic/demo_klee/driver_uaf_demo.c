#include <stdint.h>
#include <stddef.h>

#ifdef __KLEE__
  #include "klee/klee.h"
  extern void klee_check_memory_access(const void *p, size_t n);
#else
  #define klee_make_symbolic(a,b,c) ((void)0)
  #define klee_assume(x) ((void)0)
  #define klee_check_memory_access(p,n) ((void)0)
#endif

#include "../metalogin.h"

// Functions we call directly (avoid menu / stdin)
void init_system(void);
void set_avatar(char *username, char *access_code);
void clear_avatar(void);
void render_hex(void);

// Global session declared in metalogin.h (defined in metalogin.c)
extern session g_session;

static void constrain_small_prefix(char *s, size_t n, int kind) {
#ifdef __KLEE__
  // Constrain only first 4 bytes to keep search space small.
  // kind=0: lowercase letters or NUL
  // kind=1: digits or NUL
  int limit = (n < 4 ? (int)n : 4);
  for (int i = 0; i < limit; i++) {
    unsigned char c = (unsigned char)s[i];
    if (kind == 0) {
      klee_assume(c == 0 || (c >= (unsigned char)'a' && c <= (unsigned char)'z'));
    } else {
      klee_assume(c == 0 || (c >= (unsigned char)'0' && c <= (unsigned char)'9'));
    }
  }
#else
  (void)s; (void)n; (void)kind;
#endif
}

int main(void) {
  init_system();

  char username[MAX_LENGTH];
  char access_code[MAX_LENGTH];

#ifdef __KLEE__
  klee_make_symbolic(username, sizeof(username), "username");
  klee_make_symbolic(access_code, sizeof(access_code), "access_code");

  // Always terminate concretely (never assume termination)
  username[sizeof(username) - 1] = 0;
  access_code[sizeof(access_code) - 1] = 0;

  // Minimal constraint: non-empty username
  klee_assume((unsigned char)username[0] != 0);
#endif


  // --- minimal UAF sequence ---
  set_avatar(username, access_code);
  clear_avatar();

#ifdef __KLEE__
  // Do NOT assume non-NULL here — it can be provably false if clear_avatar() nulls it.
  // Instead: "if it's non-NULL, it must be valid memory".
  if (g_session.current_avatar) {
    klee_check_memory_access(g_session.current_avatar, sizeof(avatar));
  }
#endif

  render_hex();
  return 0;
}
