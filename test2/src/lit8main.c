extern signed char      lits8[], lits8lim[];
extern signed long long lits64[], lits64lim[];

main(int argc, char *argv) {
  signed char *p;
  signed long long *l;

  for (p = lits8; p < lits8lim; p++)
    printf("lits8[%d] = %d (%u)\n", p - lits8, *p, *(unsigned char *)p);

  for (l = lits64; l < lits64lim; l++)
    printf("lits64[%d] = %lld (%llu)\n", l - lits64, *l, *(unsigned long long *)l);

  return 0;
}



