
#include "qc--runtime.h"
#include <stdio.h>
#include <stdlib.h>

extern void h(void);

int compare(const void* a, const void* b) {
  int x = *(int*)a;
  int y = *(int*)b;
  h();
  exit(0);
  if (x < y) return -1;
  else if (x == y) return 0;
  else return 1;
}

#define length 10
int numbs[length] = { 11,52,223,14,45,6,17,89,999,10 };

void c_a() { h(); } //qsort(numbs, length, sizeof(int), compare); }
void c_b() { c_a(); }


void rt_stack_trace(Cmm_Cont* t) {
  char* name;
  Cmm_Activation a;
  printf("RTS: %X\n", (void*)t);
  a = Cmm_YoungestActivation(t);
  do {
    name = (char*)Cmm_GetDescriptor(&a, 1);
    printf("RTS: found activation \"%s\" pc:%X vfp:%X\n", name, a.pc, a.vfp);
  } while (Cmm_ChangeActivation(&a));
}

