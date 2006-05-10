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

struct absmem {
  Cmm_Word eax, ecx, edx, ebx, ebp, esi, edi, esp;
};

void get_callee_save_registers(struct absmem* state, Cmm_Cont* body) {
  int i;
  Cmm_Activation callee_a = Cmm_YoungestActivation(body);
  
  struct reg* regs = registers(callee_a.rtdata);
  
  for(i = 0; i < callee_a.rtdata->num_registers; i++) {
    Cmm_Word value = *(Cmm_Word*)locptr(&callee_a, regs[i].saved);
    switch (regs[i].index) {
      case 4: /* eax volatile; used for first result */
        assert(0);
	break; 
      case 5: /* ecx volatile */
        assert(0); 
	break;
      case 6: /* edx volatile; used for second result */
        assert(0); 
        break;
      case 7: /* ebx nonvolatile */
        state->ebx = value;
        break;
      case 8:/* esp special cased. */
        printf("Got esp %x\n", value);
        break;
      case 9: /* ebp nonvolatile */
        state->ebp = value;
        break;
      case 10:/* esi nonvolatile */
	state->esi = value;
        break;
      case 11:/* edi nonvolatile */
        state->edi = value;
        break;
    }
  }
  return;
}
