/* $Id$ */
/* ./quest -seed 12345 cmm.lua -test cmm -n 5 -2 -s 1 -o test-1 */

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
char *av5 = (char *) 1521220399U;
long int sv5[1] = { 741409703L };
float *tv5 = (float *) 2094277358U;
struct at5
{
    unsigned long int bv5;
    float cv5;
    unsigned char dv5;
    float ev5;
    short int fv5;
    short int gv5;
}
uv5
=
    { 920102379UL, 5783.524819, '\x79', 49808.601811, 1988, 8496 };
double vv5 = 11769.854521;
struct bt5
{
    short int hv5;
    short int iv5;
    unsigned int jv5;
    signed kv5:10;
    signed lv5:3;
    signed mv5:11;
    float nv5;
    unsigned long int ov5;
}
wv5
=
    { 29365, 15867, 748412744U, 111, 1, 446, 78299.188850, 1212301540UL };
union ct5 { long int pv5; } xv5 = { 790578080L };
union dt5 { unsigned int qv5; int rv5; } yv5 = { 1956633478U };
long int zv5[1] = { 1655755499L };
extern
char
*callee_af5
(long int [1],
float *,
struct at5,
double,
struct bt5,
union ct5,
union dt5,
long int [1]);
static void caller_bf5(  )
{
    char *bav5;
    /* seed: -39245689 */
    bav5 = callee_af5 (sv5, tv5, uv5, vv5, wv5, xv5, yv5, zv5);
    QUEST_ASSERT (av5 ==  bav5);
}
unsigned long int *av4 = (unsigned long int *) 1683905682U;
unsigned short int sv4 = 33044;
float tv4 = 44688.740230;
unsigned int uv4 = 1564295064U;
char vv4 = '\x54';
struct at4
{
    char bv4;
    signed cv4:6;
    signed dv4:7;
    unsigned long int ev4;
    short int fv4;
    float gv4;
}
wv4
=
    { '\x33', 10, 38, 1506562144UL, 24030, 43644.632325 };
union bt4 { float hv4; char iv4; } xv4 = { 11695.101877 };
union ct4 { char jv4; long int kv4; } yv4 = { '\x66' };
double zv4[1] = { 66618.457340 };
struct dt4
{
    long int lv4;
    unsigned short int mv4;
    float nv4;
    signed ov4:9;
    signed pv4:11;
    signed qv4:6;
    float rv4;
}
bav4
=
    { 704711883L, 47356, 24015.037767, 243, 667, 26, 13456.484918 };
int bbv4 = 179088171;
extern
unsigned
long
int
*callee_af4
(unsigned short int,
float,
unsigned int,
char,
struct at4,
union bt4,
union ct4,
double [1],
struct dt4,
int);
static void caller_bf4(  )
{
    unsigned long int *bcv4;
    /* seed: 834332115 */
    bcv4 = callee_af4 (sv4, tv4, uv4, vv4, wv4, xv4, yv4, zv4, bav4, bbv4);
    QUEST_ASSERT (av4 ==  bcv4);
}
union at3 { int av3; } bv3 = { 851306962 };
unsigned long int *tv3 = (unsigned long int *) 710826965U;
union bt3 { float cv3; unsigned int dv3; float ev3; } uv3 = { 61148.367975 };
union ct3 { float fv3; unsigned long int gv3; } vv3 = { 81910.760568 };
int wv3 = 2130421241;
double *xv3 = (double *) 615639841U;
struct dt3
{
    double hv3;
    unsigned char iv3;
    float jv3;
    signed kv3:5;
    signed lv3:7;
    signed mv3:8;
    float nv3;
}
yv3
=
    { 8028.224739, '\x56', 70992.555068, 7, 27, 92, 54735.244629 };
struct et3
{ double ov3; char pv3; unsigned short int qv3; double rv3; char sv3; }
zv3
=
    { 88249.325386, '\x3b', 43816, 5823.207269, '\x5b' };
long int bav3[1] = { 1051002172L };
extern
union at3
callee_af3
(unsigned long int *,
union bt3,
union ct3,
int,
double *,
struct dt3,
struct et3,
long int [1]);
static void caller_bf3(  )
{
    union at3 bbv3;
    /* seed: 1070052262 */
    bbv3 = callee_af3 (tv3, uv3, vv3, wv3, xv3, yv3, zv3, bav3);
    QUEST_ASSERT (bv3.av3 ==  bbv3.av3);
}
double av2 = 97560.922437;
unsigned char bv2 = '\x7d';
float cv2 = 56861.269289;
unsigned long int dv2 = 514792845UL;
double ev2[1] = { 90627.748213 };
double fv2 = 22841.267762;
extern
double
callee_af2
(unsigned char,
float,
unsigned long int,
double [1],
double);
static void caller_bf2(  )
{
    double gv2;
    /* seed: 383824054 */
    gv2 = callee_af2 (bv2, cv2, dv2, ev2, fv2);
    QUEST_ASSERT (av2 ==  gv2);
}
float av1 = 43887.142231;
union at1 { unsigned long int bv1; char cv1; } kv1 = { 421369926UL };
struct bt1
{
    float dv1;
    char ev1;
    double fv1;
    signed gv1:1;
    signed hv1:1;
    signed iv1:8;
    double jv1;
}
lv1
=
    { 79166.270896, '\x6', 27819.699156, 0, 0, 71, 58100.555870 };
extern float callee_af1 (union at1, struct bt1);
static void caller_bf1(  )
{
    float mv1;
    /* seed: 12345 */ mv1 = callee_af1 (kv1, lv1); QUEST_ASSERT (av1 ==  mv1);
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
