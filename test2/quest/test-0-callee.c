/* $Id$ */

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
extern int errors;
static void failed( int line )
{ printf ("failed in %s: %d\n", __FILE__, line); errors++; }
extern float av5;
extern int bv5;
extern float cv5;
extern unsigned long int dv5;
extern double ev5;
extern float fv5;
extern unsigned int gv5;
extern float hv5;
extern float iv5;
float
callee_af5(
    int ap5,
    float bp5,
    unsigned long int cp5,
    double dp5,
    float ep5,
    unsigned int fp5,
    float gp5,
    float hp5
)
{
    /* seed: 931216817 */
    QUEST_ASSERT (bv5 ==  ap5);
    QUEST_ASSERT (cv5 ==  bp5);
    QUEST_ASSERT (dv5 ==  cp5);
    QUEST_ASSERT (ev5 ==  dp5);
    QUEST_ASSERT (fv5 ==  ep5);
    QUEST_ASSERT (gv5 ==  fp5);
    QUEST_ASSERT (hv5 ==  gp5);
    QUEST_ASSERT (iv5 ==  hp5);
    return av5;
}
extern double av4;
extern long int bv4;
extern unsigned char cv4;
extern short int dv4;
extern unsigned char ev4;
extern double fv4;
extern double gv4;
extern unsigned short int hv4;
double
callee_af4(
    long int ap4,
    unsigned char bp4,
    short int cp4,
    unsigned char dp4,
    double ep4,
    double fp4,
    unsigned short int gp4
)
{
    /* seed: 459733091 */
    QUEST_ASSERT (bv4 ==  ap4);
    QUEST_ASSERT (cv4 ==  bp4);
    QUEST_ASSERT (dv4 ==  cp4);
    QUEST_ASSERT (ev4 ==  dp4);
    QUEST_ASSERT (fv4 ==  ep4);
    QUEST_ASSERT (gv4 ==  fp4);
    QUEST_ASSERT (hv4 ==  gp4);
    return av4;
}
extern unsigned short int av3;
extern float bv3;
extern long int cv3;
unsigned short int callee_af3( float ap3, long int bp3 )
{
    /* seed: 722884747 */
    QUEST_ASSERT (bv3 ==  ap3);
    QUEST_ASSERT (cv3 ==  bp3);
    return av3;
}
extern unsigned int av2;
extern float bv2;
unsigned int callee_af2( float ap2 )
{ /* seed: -1067149487 */ QUEST_ASSERT (bv2 ==  ap2); return av2; }
extern float av1;
extern float bv1;
extern unsigned long int cv1;
float callee_af1( float ap1, unsigned long int bp1 )
{
    /* seed: 12345 */
    QUEST_ASSERT (bv1 ==  ap1);
    QUEST_ASSERT (cv1 ==  bp1);
    return av1;
}
