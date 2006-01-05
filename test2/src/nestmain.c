#include "qc--runtime.h"
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

extern int nest(void);

int main(int argc, char *argv[]) {
  return nest();
}

void trace(Cmm_Cont *k) {
  Cmm_Activation a = Cmm_YoungestActivation(k);
  char *s = Cmm_GetDescriptor(&a, 1);
  printf("closest enclosing span is %s\n", s);
  exit(0);
}
