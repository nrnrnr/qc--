#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#include <qc--runtime.h>

#define STACKSIZE (512*1024)

extern void cmm_threadfun(void *x);

extern int run_thread(Cmm_Cont *k);

extern void stacktrace(Cmm_Cont *k);
extern void cmm_stacktrace(void);

struct thread {
  int (*f)(int arg);
  int arg;
};

static int cfact(int n);
extern int fact(int n);

static void runfun(int (*f)(int), int arg);

int main(int argc, char *argv[]) {
  runfun(fact, 10);
  runfun(cfact, 10);
  return 0;
}

static struct thread *fxptr;

static void runfun(int (*f)(int), int arg) {
  void *stack;
  Cmm_Cont *thread;
  int rc;
  struct thread fx;
  fx.f = f;
  fx.arg = arg;
  fxptr = &fx;

  stack = malloc(STACKSIZE);
  assert(stack);
  thread = Cmm_CreateThread(cmm_threadfun, &fx, stack, STACKSIZE);
  printf("stack trace for initial thread...\n");
  stacktrace(thread);
  printf("stack trace from bottom of recursion...\n");
  rc = run_thread(thread);
  printf("run_thread returns %d (should be %d)\n", rc, 3628800);
}


static int cfact(int n) {
  if (n == 0) {
    cmm_stacktrace();
    return 1;
  } else {
    return n * cfact(n - 1);
  }
}


void stacktrace(Cmm_Cont* k) {
  Cmm_Activation a;
  int i;

#if 0
  printf("Trace from continuation @ %X: (pc=%p, sp=%p)\n", (unsigned)k,
         (void*)k->pc, (void*)k->sp);
#endif
  a = Cmm_YoungestActivation(k);
  do {
    void* rootp;
    char* desc;
    int var_count;
    desc = (char*)Cmm_GetDescriptor(&a, 1);
    var_count = Cmm_LocalVarCount(&a);
    if (desc) {
      printf("  found %s\n", desc);
    } else {
      printf("  unknown function with %d locals\n", var_count);
    }
    for (i = 0; i < var_count; i++) {
      rootp = (void *) Cmm_FindLocalVar(&a, i);
      if (rootp) {
        printf("\tlocal %d == ");
        if (*(unsigned *)rootp == (unsigned)cmm_threadfun)
          printf("cmm_threadfun");
        else if (*(unsigned *)rootp == (unsigned) fxptr)
          printf("&fx");
        else
          printf("%d", *(int*)rootp);
        printf("\n");
      } else {
        printf("\tlocal %d is <DEAD>\n", i);
      }
    }
    fflush(stdout);
  } while (Cmm_ChangeActivation(&a));
}

