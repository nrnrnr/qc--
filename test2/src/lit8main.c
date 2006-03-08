extern signed char      lits8[], lits8lim[];
extern signed long long lits64[], lits64lim[];
extern int printf(const char *fmt, ...);

main(int argc, char *argv) {
  signed char *p;
  signed long long *l;

  for (p = lits8; p < lits8lim; p++)
    printf("lits8[%d] = %d (%u) [0x%02x]\n", p - lits8, *p, *(unsigned char *)p,
           *(unsigned char *)p);

  for (l = lits64; l < lits64lim; l++)
    printf("lits64[%d] = %lld (%llu) [0x%016llx]\n", l - lits64, *l,
           *(unsigned long long *)l, *(unsigned long long *)l);

  return 0;
}



