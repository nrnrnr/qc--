/* $Id$ */
/* quest -seed 12345 -lua quest.lua -n 5 -2 -s 1 -o test-1 */


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

struct at3 { float av3; float bv3; } cv3 = { 47943.819833, 71541.788863 };

struct bt3 { float dv3; char ev3; } fv3 = { 84215.315253, '\x32' };

double gv3 = 83129.008832;

long int hv3[1] = { 108847963L };

float iv3[1] = { 54735.244629 };

extern struct at3 callee_af3 (struct bt3, double, long int [1], float [1]);

static void caller_bf3(  )
{
    struct at3 jv3;
    jv3 = callee_af3 (fv3, gv3, hv3, iv3);
    if (cv3.av3 !=  jv3.av3) failed (__LINE__);
    if (cv3.bv3 !=  jv3.bv3) failed (__LINE__);
}

float *av4 = (float *) 372915515U;

union at4 { float bv4; unsigned long int cv4; } dv4 = { 11695.101877 };

long long int *ev4 = (long long int *) 1448979814U;

float *fv4 = (float *) 1029491116U;

float gv4 = 4234.146770;

int *hv4 = (int *) 1868064562U;

double *iv4 = (double *) 1331601328U;

extern
float
*callee_af4
(union at4,
long long int *,
float *,
float,
int *,
double *);

static void caller_bf4(  )
{
    float *jv4;
    jv4 = callee_af4 (dv4, ev4, fv4, gv4, hv4, iv4);
    if (av4 !=  jv4) failed (__LINE__);
}

struct at5 { short int av5; } bv5 = { 11051 };

struct bt5 { float cv5; unsigned char dv5; unsigned int ev5; } iv5 =
    { 15980.942717, '\x6b', 1295340369U };

union ct5 { double fv5; float gv5; char hv5; } jv5 = { 71414.933312 };

unsigned long int kv5 = 2049646045UL;

unsigned short int *lv5 = (unsigned short int *) 362467827U;

float *mv5 = (float *) 1709582196U;

long int *nv5 = (long int *) 771012779U;

extern
struct at5
callee_af5
(struct bt5,
union ct5,
unsigned long int,
unsigned short int *,
float *,
long int *);

static void caller_bf5(  )
{
    struct at5 ov5;
    ov5 = callee_af5 (iv5, jv5, kv5, lv5, mv5, nv5);
    if (bv5.av5 !=  ov5.av5) failed (__LINE__);
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
