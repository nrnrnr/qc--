#include <stdio.h>
#include <stdlib.h>
#include "../runtime/qc--runtime.h"

void do_unwind(Cmm_Cont *k) {
  Cmm_Activation a;
  Cmm_Cont *k2;

  a = Cmm_YoungestActivation(k);
  if(!Cmm_ChangeActivation(&a)) {
    fprintf(stderr, "Failed: couldn't change activation\n");
    exit(1);
  }
  k2 = Cmm_MakeUnwindCont(&a, 0, 97);
  Cmm_CutTo(k2);
}
