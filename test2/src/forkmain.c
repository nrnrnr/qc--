#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#include <qc--runtime.h>

#define STACKSIZE (512*1024)

extern void cmm_threadfun(void *x);

extern int run_thread(Cmm_Cont *k);

int main(int argc, char *argv[]) {
  void *stack;
  Cmm_Cont *thread;
  int rc;

  stack = malloc(STACKSIZE);
  assert(stack);
  thread = Cmm_CreateThread(cmm_threadfun, "fib(%d) = %d\n", stack, STACKSIZE);
  rc = run_thread(thread);
  printf("run_thread returns %d\n", rc);
  return 0;
}

static int fib_helper(i, fi, fpi, n) {
  if (i == n)
    return fi;
  else
    return fib_helper(i+1, fi + fpi, fi, n);
}

int fib(const char *fmt, int n) {
  int f;
  if (n <= 2) {
    f = 1;
  } else {
    f = fib_helper(2, 1, 1, n);
  }
  printf(fmt, n, f);
  return f;
}
