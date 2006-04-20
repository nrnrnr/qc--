#include "qc--runtime.h"

Cmm_Dataptr getspan(Cmm_Cont* k, Cmm_Word token) {
  Cmm_Activation a = Cmm_YoungestActivation(k);
  return Cmm_GetDescriptor(&a, token);
}

Cmm_Dataptr getlocal(Cmm_Cont* k, unsigned n) {
  Cmm_Activation a = Cmm_YoungestActivation(k);
  return Cmm_FindLocalVar(&a, n);
}
