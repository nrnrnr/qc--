/* $Id$ */
/* quest -seed 12345 -lua quest.lua -n 5 -2 -s 0 -o test-0 */


extern int printf (char *, ...);

int errors = 0;

static void failed( int line )
{ printf ("failed in %s: %d\n", __FILE__, line); errors++; }

double av1 = 83193.455859;

extern double callee_af1 ();

static void caller_bf1(  )
{ double bv1; bv1 = callee_af1 (); if (av1 !=  bv1) failed (__LINE__); }

short int av2 = 16726;

double bv2 = 3401.154893;

unsigned long int cv2 = 97976453UL;

extern short int callee_af2 (double, unsigned long int);

static void caller_bf2(  )
{
    short int dv2;
    dv2 = callee_af2 (bv2, cv2); if (av2 !=  dv2) failed (__LINE__);
}

float av3 = 47943.819833;

long int bv3 = 1375855961L;

double cv3 = 57648.738214;

float dv3 = 49143.453686;

char ev3 = '\x21';

extern float callee_af3 (long int, double, float, char);

static void caller_bf3(  )
{
    float fv3;
    fv3 = callee_af3 (bv3, cv3, dv3, ev3); if (av3 !=  fv3) failed (__LINE__);
}

char av4 = '\x26';

unsigned short int bv4 = 48475;

double cv4 = 56825.937554;

long int dv4 = 169106757L;

unsigned int ev4 = 1154655870U;

char fv4 = '\x1e';

unsigned char gv4 = '\x18';

extern
char
callee_af4
(unsigned short int,
double,
long int,
unsigned int,
char,
unsigned char);

static void caller_bf4(  )
{
    char hv4;
    hv4 = callee_af4 (bv4, cv4, dv4, ev4, fv4, gv4);
    if (av4 !=  hv4) failed (__LINE__);
}

float av5 = 79304.984775;

extern float callee_af5 ();

static void caller_bf5(  )
{ float bv5; bv5 = callee_af5 (); if (av5 !=  bv5) failed (__LINE__); }

int main( int argc, char **argv )
{
    caller_bf1 ();
    caller_bf2 ();
    caller_bf3 ();
    caller_bf4 ();
    caller_bf5 ();
    return errors;
}
