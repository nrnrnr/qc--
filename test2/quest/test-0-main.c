/* $Id$ */
/* ./quest -seed 12345 cmm.lua -test cmm -n 5 -2 -s 0 -o test-0 */

/* These macros are defined in Lua string Quest.header, which may be
 * re-defined from the quest command line or in file quest.lua. 
 */
#ifndef QUEST_FAILED
#include <assert.h>
#define QUEST_ASSERT(x) assert(x)
#else
#define QUEST_ASSERT(x) if (!(x)) failed(__LINE__)
#endif

extern int printf (char *, ...);
int errors = 0;
static void failed( int line )
{ printf ("failed in %s: %d\n", __FILE__, line); errors++; }
float av5 = 30806.259500;
int bv5 = 1375855961;
float cv5 = 57648.738214;
unsigned long int dv5 = 1953251918UL;
double ev5 = 84691.657924;
float fv5 = 8028.224739;
unsigned int gv5 = 904255062U;
float hv5 = 83129.008832;
float iv5 = 64360.493233;
extern
float
callee_af5
(int,
float,
unsigned long int,
double,
float,
unsigned int,
float,
float);
static void caller_bf5(  )
{
    float jv5;
    /* seed: 931216817 */
    jv5 = callee_af5 (bv5, cv5, dv5, ev5, fv5, gv5, hv5, iv5);
    QUEST_ASSERT (av5 ==  jv5);
}
double av4 = 87352.812102;
long int bv4 = 654925312L;
unsigned char cv4 = '\x7e';
short int dv4 = 7565;
unsigned char ev4 = '\x14';
double fv4 = 90627.748213;
double gv4 = 22841.267762;
unsigned short int hv4 = 59858;
extern
double
callee_af4
(long int,
unsigned char,
short int,
unsigned char,
double,
double,
unsigned short int);
static void caller_bf4(  )
{
    double iv4;
    /* seed: 459733091 */
    iv4 = callee_af4 (bv4, cv4, dv4, ev4, fv4, gv4, hv4);
    QUEST_ASSERT (av4 ==  iv4);
}
unsigned short int av3 = 55298;
float bv3 = 35279.920397;
long int cv3 = 623849968L;
extern unsigned short int callee_af3 (float, long int);
static void caller_bf3(  )
{
    unsigned short int dv3;
    /* seed: 722884747 */
    dv3 = callee_af3 (bv3, cv3);
    QUEST_ASSERT (av3 ==  dv3);
}
unsigned int av2 = 127659270U;
float bv2 = 75016.947768;
extern unsigned int callee_af2 (float);
static void caller_bf2(  )
{
    unsigned int cv2;
    /* seed: -1067149487 */
    cv2 = callee_af2 (bv2);
    QUEST_ASSERT (av2 ==  cv2);
}
float av1 = 43887.142231;
float bv1 = 90261.094350;
unsigned long int cv1 = 1192478086UL;
extern float callee_af1 (float, unsigned long int);
static void caller_bf1(  )
{
    float dv1;
    /* seed: 12345 */ dv1 = callee_af1 (bv1, cv1); QUEST_ASSERT (av1 ==  dv1);
}
int main( int argc, char **argv )
{
    caller_bf5 ();
    caller_bf4 ();
    caller_bf3 ();
    caller_bf2 ();
    caller_bf1 ();
    return errors;
}
