#include "qc--runtime.h"
#include <stdio.h>
#include <assert.h>

extern int unwind_test(void);

int main(int argc, char *argv[]) {
  int n;
  n = unwind_test();
  if (n == 77)
    printf("unwound to %d as expected\n", n);
  else
    printf("returned %d?!  must be an error...\n", n);
  return 0;
}

void do_unwind(Cmm_Cont *k) {
  Cmm_Activation a = Cmm_YoungestActivation(k);
  int n = Cmm_ChangeActivation(&a);
  Cmm_Cont *u;
  assert(n);
  u = Cmm_MakeUnwindCont(&a, 0, 77);
  Cmm_CutTo(u);
  assert(0);
}
