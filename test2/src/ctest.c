extern unsigned long long lladd(unsigned long long x, unsigned long long y);
extern long long llsub(long long x, long long y);
extern long long llmul(long long x, long long y);
extern int printf(const char *fmt, ...);

int main() {
  unsigned long long x;
  int i;

  x = 2000000;
  for (i = 0; i < 64; i++) {
    unsigned long long z = x + (x + 1);
    unsigned long long z2 = lladd(x, x+1);
    if (z != z2) 
      printf ("%25lld + %25lld =? %25lld\n", x, x+1, z2);
    if (llsub(x, x + 4) != -4)
      printf ("%25lld - %25lld =? %25lld\n", x, x+4, llsub(x, x+4));
    if (llmul(x, x + 1) != x * (x+1))
      printf ("%25lld * %25lld =? %25lld\n", x, x+1, llmul(x, x+1));
    x = z;
  }
  return 0;
}

  

