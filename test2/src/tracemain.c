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


void rt_check(Cmm_Cont* t) {
  Cmm_Activation a;
  int i;

  a = Cmm_YoungestActivation(t);
  do {
    int* rootp;
    char* desc;
    int var_count;
    int* sd;
    fflush(stdout);
    desc = (char*)Cmm_GetDescriptor(&a, 1);
    var_count = Cmm_LocalVarCount(&a);
    if (desc) {
      sd = Cmm_FindStackLabel(&a, 0);
      printf("Descriptor: %d \"%s\"\n", var_count, desc);
      for (i = 0; i < var_count; i++) {
        rootp = Cmm_FindLocalVar(&a, i);
        if (rootp)
          printf("\tlocal %d = %d (%x)\n", i, *rootp, *rootp);
        else
          printf("\tlocal %d: <DEAD>\n", i);
      }
      if (sd) {
        printf("\tstackdata");
        for (i = 0; i < 3; i++) {
          printf(" %d", sd[i]);
        }
        printf(" (hex");
        for (i = 0; i < 3; i++) {
          printf(" %x", sd[i]);
        }
        printf(")\n");
      }
    } else {
      printf("Undescribed frame with %d locals\n", var_count);
    }
    fflush(stdout);
  } while (Cmm_ChangeActivation(&a));
}

