
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

void c_a() { qsort(numbs, length, sizeof(int), compare); }
void c_b() { c_a(); }


void rt_stack_trace(Cmm_Cont* t) {
  char* name;
  Cmm_Activation a;
  printf("RTS: %X\n", (unsigned)t);
  a = Cmm_YoungestActivation(t);
  do {
    name = (char*)Cmm_GetDescriptor(&a, 1);
    printf("RTS: found activation \"%s\" pc:%X vfp:%X\n",
           name, (unsigned)a.pc, (unsigned)a.vfp);
  } while (Cmm_ChangeActivation(&a));
}

void rt_check(Cmm_Cont* t) {
  Cmm_Activation a;
  int i;

  printf("Check starts with continuation: %X\n", (unsigned)t);
  a = Cmm_YoungestActivation(t);
  do {
    void* rootp;
    char* desc = (char*)Cmm_GetDescriptor(&a, 1);
    int var_count = Cmm_LocalVarCount(&a);
    int* sd = Cmm_FindStackData(&a, 0);
    printf("Descriptor: %d \"%s\"\n", var_count, desc);
    for (i = 0; i < var_count; i++) {
      rootp = (void *) Cmm_FindLocalVar(&a, i);
      if (rootp)
        printf("\tlocal %d: %X = %X\n", i, (unsigned)rootp, *(int*)rootp);
      else
        printf("\tlocal %d: <DEAD>\n", i);
    }

    if (sd) {
      for (i = 0; i < 3; i++) {
        printf("\tsd %d: %X = %d\n", i, (unsigned)sd + i, sd[i]);
      }
    }

  } while (Cmm_ChangeActivation(&a));
}

