extern int printf(const char *fmt, ...);
extern unsigned long long f(void);

main(int argc, char **argv) {
  printf("C-- can return a long long like 0x%16llx\n", f());
  return 0;
}
