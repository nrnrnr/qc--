/* $Id$ */
/* quest -seed 12345 -lua quest.lua -n 5 -2 -s 2 -o test-2 */


extern int printf (char *, ...);

int errors = 0;

static void failed( int line )
{ printf ("failed in %s: %d\n", __FILE__, line); errors++; }

double *av1 = (double *) 421369926U;

extern double *callee_af1 ();

static void caller_bf1(  )
{ double *bv1; bv1 = callee_af1 (); if (av1 !=  bv1) failed (__LINE__); }

float *av2 = (float *) 706396502U;

float bv2 = 35279.920397;

extern float *callee_af2 (float);

static void caller_bf2(  )
{ float *cv2; cv2 = callee_af2 (bv2); if (av2 !=  cv2) failed (__LINE__); }

struct bt3
{
    struct at3 { float av3; unsigned char bv3; long int cv3; } dv3;
    double ev3;
}
fv3
=
    { { 79284.139185, '\x6c', 710826965L }, 61148.367975 };

struct ct3 { double gv3; float hv3; } lv3 = { 15749.294084, 46704.376030 };

float mv3 = 50894.348273;

union et3 { union dt3 { double iv3; float jv3; } kv3; } nv3 =
    { { 4688.666254 } };

long long int ov3[1] = { 851530790L };

char (*pv3)[2] = (char (*)[2]) 661642967U;

float qv3 = 43644.632325;

extern
struct bt3
callee_af3
(struct ct3,
float,
union et3,
long long int [1],
char (*)[2],
float);

static void caller_bf3(  )
{
    struct bt3 rv3;
    rv3 = callee_af3 (lv3, mv3, nv3, ov3, pv3, qv3);
    if (fv3.dv3.av3 !=  rv3.dv3.av3) failed (__LINE__);
    if (fv3.dv3.bv3 !=  rv3.dv3.bv3) failed (__LINE__);
    if (fv3.dv3.cv3 !=  rv3.dv3.cv3) failed (__LINE__);
    if (fv3.ev3 !=  rv3.ev3) failed (__LINE__);
}

struct bt4
{
    unsigned char av4;
    float bv4;
    struct at4 { unsigned long int cv4; unsigned long long int dv4; } ev4;
}
fv4
=
    { '\x3a', 13456.484918, { 179088171UL, 1521220399UL } };

union ct4 { float gv4; short int hv4; } *rv4 = (union ct4 *) 1776922981U;

double sv4[1] = { 98595.590816 };

union dt4 { unsigned char iv4; } *tv4 = (union dt4 *) 734059703U;

unsigned short int *uv4[1] = { (unsigned short int *) 15149037U };

union et4 { long int jv4; unsigned long long int kv4; double lv4; } vv4[2] =
    { { 863485458L }, { 332191306L } };

struct ft4 { double mv4; float nv4; } *wv4 = (struct ft4 *) 1997807036U;

struct gt4 { long long int ov4; double pv4; short int qv4; } *xv4 =
    (struct gt4 *) 1640630647U;

extern
struct bt4
callee_af4
(union ct4 *,
double [1],
union dt4 *,
unsigned short int *[1],
union et4 [2],
struct ft4 *,
struct gt4 *);

static void caller_bf4(  )
{
    struct bt4 yv4;
    yv4 = callee_af4 (rv4, sv4, tv4, uv4, vv4, wv4, xv4);
    if (fv4.av4 !=  yv4.av4) failed (__LINE__);
    if (fv4.bv4 !=  yv4.bv4) failed (__LINE__);
    if (fv4.ev4.cv4 !=  yv4.ev4.cv4) failed (__LINE__);
    if (fv4.ev4.dv4 !=  yv4.ev4.dv4) failed (__LINE__);
}

unsigned char av5 = '\x3c';

char cv5 = '\x2d';

double dv5 = 45277.528478;

struct at5 { unsigned int bv5[1]; } ev5 = { { 89035944U } };

short int fv5 = 11015;

unsigned short int *gv5 = (unsigned short int *) 397748199U;

extern
unsigned
char
callee_af5
(char,
double,
struct at5,
short int,
unsigned short int *);

static void caller_bf5(  )
{
    unsigned char hv5;
    hv5 = callee_af5 (cv5, dv5, ev5, fv5, gv5);
    if (av5 !=  hv5) failed (__LINE__);
}

int main( int argc, char **argv )
{
    caller_bf1 ();
    caller_bf2 ();
    caller_bf3 ();
    caller_bf4 ();
    caller_bf5 ();
    return errors;
}
