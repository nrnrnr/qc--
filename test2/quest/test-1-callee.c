/* $Id$ */


extern int printf (char *, ...);

extern int errors;

static void failed( int line )
{ printf ("failed in %s: %d\n", __FILE__, line); errors++; }

extern double *av1;

double * callee_af1(  ) { return av1; }

extern float *av2;

extern float bv2;

float * callee_af2( float ap2 )
{ if (bv2 !=  ap2) failed (__LINE__); return av2; }

extern struct at3 { float av3; float bv3; } cv3;

extern struct bt3 { float dv3; char ev3; } fv3;

extern double gv3;

extern long int hv3[1];

extern float iv3[1];

struct at3
callee_af3( struct bt3 ap3, double bp3, long int cp3[1], float dp3[1] )
{
    if (fv3.dv3 !=  ap3.dv3) failed (__LINE__);
    if (fv3.ev3 !=  ap3.ev3) failed (__LINE__);
    if (gv3 !=  bp3) failed (__LINE__);
    if (hv3[0] !=  cp3[0]) failed (__LINE__);
    if (iv3[0] !=  dp3[0]) failed (__LINE__);
    return cv3;
}

extern float *av4;

extern union at4 { float bv4; unsigned long int cv4; } dv4;

extern long long int *ev4;

extern float *fv4;

extern float gv4;

extern int *hv4;

extern double *iv4;

float *
callee_af4(
    union at4 ap4,
    long long int *bp4,
    float *cp4,
    float dp4,
    int *ep4,
    double *fp4
)
{
    if (dv4.bv4 !=  ap4.bv4) failed (__LINE__);
    if (ev4 !=  bp4) failed (__LINE__);
    if (fv4 !=  cp4) failed (__LINE__);
    if (gv4 !=  dp4) failed (__LINE__);
    if (hv4 !=  ep4) failed (__LINE__);
    if (iv4 !=  fp4) failed (__LINE__);
    return av4;
}

extern struct at5 { short int av5; } bv5;

extern struct bt5 { float cv5; unsigned char dv5; unsigned int ev5; } iv5;

extern union ct5 { double fv5; float gv5; char hv5; } jv5;

extern unsigned long int kv5;

extern unsigned short int *lv5;

extern float *mv5;

extern long int *nv5;

struct at5
callee_af5(
    struct bt5 ap5,
    union ct5 bp5,
    unsigned long int cp5,
    unsigned short int *dp5,
    float *ep5,
    long int *fp5
)
{
    if (iv5.cv5 !=  ap5.cv5) failed (__LINE__);
    if (iv5.dv5 !=  ap5.dv5) failed (__LINE__);
    if (iv5.ev5 !=  ap5.ev5) failed (__LINE__);
    if (jv5.fv5 !=  bp5.fv5) failed (__LINE__);
    if (kv5 !=  cp5) failed (__LINE__);
    if (lv5 !=  dp5) failed (__LINE__);
    if (mv5 !=  ep5) failed (__LINE__);
    if (nv5 !=  fp5) failed (__LINE__);
    return bv5;
}
