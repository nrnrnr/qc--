/* $Id$ */


extern int printf (char *, ...);

extern int errors;

static void failed( int line )
{ printf ("failed in %s: %d\n", __FILE__, line); errors++; }

extern double av1;

double callee_af1(  ) { return av1; }

extern short int av2;

extern double bv2;

extern unsigned long int cv2;

short int callee_af2( double ap2, unsigned long int bp2 )
{
    if (bv2 !=  ap2) failed (__LINE__);
    if (cv2 !=  bp2) failed (__LINE__);
    return av2;
}

extern float av3;

extern long int bv3;

extern double cv3;

extern float dv3;

extern char ev3;

float callee_af3( long int ap3, double bp3, float cp3, char dp3 )
{
    if (bv3 !=  ap3) failed (__LINE__);
    if (cv3 !=  bp3) failed (__LINE__);
    if (dv3 !=  cp3) failed (__LINE__);
    if (ev3 !=  dp3) failed (__LINE__);
    return av3;
}

extern char av4;

extern unsigned short int bv4;

extern double cv4;

extern long int dv4;

extern unsigned int ev4;

extern char fv4;

extern unsigned char gv4;

char
callee_af4(
    unsigned short int ap4,
    double bp4,
    long int cp4,
    unsigned int dp4,
    char ep4,
    unsigned char fp4
)
{
    if (bv4 !=  ap4) failed (__LINE__);
    if (cv4 !=  bp4) failed (__LINE__);
    if (dv4 !=  cp4) failed (__LINE__);
    if (ev4 !=  dp4) failed (__LINE__);
    if (fv4 !=  ep4) failed (__LINE__);
    if (gv4 !=  fp4) failed (__LINE__);
    return av4;
}

extern float av5;

float callee_af5(  ) { return av5; }
