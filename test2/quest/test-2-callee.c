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

extern
struct bt3
{
    struct at3 { float av3; unsigned char bv3; long int cv3; } dv3;
    double ev3;
}
fv3;

extern struct ct3 { double gv3; float hv3; } lv3;

extern float mv3;

extern union et3 { union dt3 { double iv3; float jv3; } kv3; } nv3;

extern long long int ov3[1];

extern char (*pv3)[2];

extern float qv3;

struct bt3
callee_af3(
    struct ct3 ap3,
    float bp3,
    union et3 cp3,
    long long int dp3[1],
    char (*ep3)[2],
    float fp3
)
{
    if (lv3.gv3 !=  ap3.gv3) failed (__LINE__);
    if (lv3.hv3 !=  ap3.hv3) failed (__LINE__);
    if (mv3 !=  bp3) failed (__LINE__);
    if (nv3.kv3.iv3 !=  cp3.kv3.iv3) failed (__LINE__);
    if (ov3[0] !=  dp3[0]) failed (__LINE__);
    if (pv3 !=  ep3) failed (__LINE__);
    if (qv3 !=  fp3) failed (__LINE__);
    return fv3;
}

extern
struct bt4
{
    unsigned char av4;
    float bv4;
    struct at4 { unsigned long int cv4; unsigned long long int dv4; } ev4;
}
fv4;

extern union ct4 { float gv4; short int hv4; } *rv4;

extern double sv4[1];

extern union dt4 { unsigned char iv4; } *tv4;

extern unsigned short int *uv4[1];

extern
union et4 { long int jv4; unsigned long long int kv4; double lv4; } vv4[2];

extern struct ft4 { double mv4; float nv4; } *wv4;

extern struct gt4 { long long int ov4; double pv4; short int qv4; } *xv4;

struct bt4
callee_af4(
    union ct4 *ap4,
    double bp4[1],
    union dt4 *cp4,
    unsigned short int *dp4[1],
    union et4 ep4[2],
    struct ft4 *fp4,
    struct gt4 *gp4
)
{
    if (rv4 !=  ap4) failed (__LINE__);
    if (sv4[0] !=  bp4[0]) failed (__LINE__);
    if (tv4 !=  cp4) failed (__LINE__);
    if (uv4[0] !=  dp4[0]) failed (__LINE__);
    if (vv4[1].jv4 !=  ep4[1].jv4) failed (__LINE__);
    if (vv4[0].jv4 !=  ep4[0].jv4) failed (__LINE__);
    if (wv4 !=  fp4) failed (__LINE__);
    if (xv4 !=  gp4) failed (__LINE__);
    return fv4;
}

extern unsigned char av5;

extern char cv5;

extern double dv5;

extern struct at5 { unsigned int bv5[1]; } ev5;

extern short int fv5;

extern unsigned short int *gv5;

unsigned char
callee_af5(
    char ap5,
    double bp5,
    struct at5 cp5,
    short int dp5,
    unsigned short int *ep5
)
{
    if (cv5 !=  ap5) failed (__LINE__);
    if (dv5 !=  bp5) failed (__LINE__);
    if (ev5.bv5[0] !=  cp5.bv5[0]) failed (__LINE__);
    if (fv5 !=  dp5) failed (__LINE__);
    if (gv5 !=  ep5) failed (__LINE__);
    return av5;
}
