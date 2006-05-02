#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include "qc--runtime.h"

#include "pcmap.h"

static Cmm_Word *locptr(const Cmm_Activation *a, location l) {
  int reg;
  switch (Cmm_loctype(l)) {
    case REGISTER:
      reg = Cmm_as_register(l);
      assert(a);
      assert(a->regs);
      if (a->regs[reg] == NULL) 
	exit(1);
      return a->regs[reg];
    case DEAD:
      return NULL;
    case OFFSET:
      return (Cmm_Word *)(a->vfp + Cmm_as_offset(l));
    default:
	exit(1);
      return 0;
  }
}

void* getRA(Cmm_Cont* k) {
  Cmm_Activation a = Cmm_YoungestActivation(k);
  printf("getRA %x\n", *(Cmm_Codeptr*)locptr(&a, a.rtdata->return_addressp ));
  return *(Cmm_Codeptr*)locptr(&a, a.rtdata->return_addressp );
}

void* getSP(Cmm_Cont* k) {
  /* getSP returns the incoming deallocation point for k's frame. */
  Cmm_Activation a = Cmm_YoungestActivation(k);
  printf("getSP %x\n", (Cmm_Codeptr*)locptr(&a, a.rtdata->inalloc ));
  return (Cmm_Codeptr*)locptr(&a, a.rtdata->inalloc );
}

void* getOverflowBlock(Cmm_Cont* k) {
  /* getOverflowBlock returns the address of the overflow block for k's frame's
   * return values.  This is currently the incoming deallocation point, though
   * I don't see any reason why the two should be necessarily be the same. */
  Cmm_Activation a = Cmm_YoungestActivation(k);
  printf("getOverflowBlock %x\n", (Cmm_Codeptr*)locptr(&a, a.rtdata->inalloc ));
  return (Cmm_Codeptr*)locptr(&a, a.rtdata->inalloc );
}
