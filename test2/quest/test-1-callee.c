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
extern char *av5;
extern long int sv5[1];
extern float *tv5;
extern
struct at5
{
    unsigned long int bv5;
    float cv5;
    unsigned char dv5;
    float ev5;
    short int fv5;
    short int gv5;
}
uv5;
extern double vv5;
extern
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
wv5;
extern union ct5 { long int pv5; } xv5;
extern union dt5 { unsigned int qv5; int rv5; } yv5;
extern long int zv5[1];
char *
callee_af5(
    long int ap5[1],
    float *bp5,
    struct at5 cp5,
    double dp5,
    struct bt5 ep5,
    union ct5 fp5,
    union dt5 gp5,
    long int hp5[1]
)
{
    /* seed: -39245689 */
    QUEST_ASSERT (sv5[0] ==  ap5[0]);
    QUEST_ASSERT (tv5 ==  bp5);
    QUEST_ASSERT (uv5.bv5 ==  cp5.bv5);
    QUEST_ASSERT (uv5.cv5 ==  cp5.cv5);
    QUEST_ASSERT (uv5.dv5 ==  cp5.dv5);
    QUEST_ASSERT (uv5.ev5 ==  cp5.ev5);
    QUEST_ASSERT (uv5.fv5 ==  cp5.fv5);
    QUEST_ASSERT (uv5.gv5 ==  cp5.gv5);
    QUEST_ASSERT (vv5 ==  dp5);
    QUEST_ASSERT (wv5.hv5 ==  ep5.hv5);
    QUEST_ASSERT (wv5.iv5 ==  ep5.iv5);
    QUEST_ASSERT (wv5.jv5 ==  ep5.jv5);
    QUEST_ASSERT (wv5.kv5 ==  ep5.kv5);
    QUEST_ASSERT (wv5.lv5 ==  ep5.lv5);
    QUEST_ASSERT (wv5.mv5 ==  ep5.mv5);
    QUEST_ASSERT (wv5.nv5 ==  ep5.nv5);
    QUEST_ASSERT (wv5.ov5 ==  ep5.ov5);
    QUEST_ASSERT (xv5.pv5 ==  fp5.pv5);
    QUEST_ASSERT (yv5.qv5 ==  gp5.qv5);
    QUEST_ASSERT (zv5[0] ==  hp5[0]);
    return av5;
}
extern unsigned long int *av4;
extern unsigned short int sv4;
extern float tv4;
extern unsigned int uv4;
extern char vv4;
extern
struct at4
{
    char bv4;
    signed cv4:6;
    signed dv4:7;
    unsigned long int ev4;
    short int fv4;
    float gv4;
}
wv4;
extern union bt4 { float hv4; char iv4; } xv4;
extern union ct4 { char jv4; long int kv4; } yv4;
extern double zv4[1];
extern
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
bav4;
extern int bbv4;
unsigned long int *
callee_af4(
    unsigned short int ap4,
    float bp4,
    unsigned int cp4,
    char dp4,
    struct at4 ep4,
    union bt4 fp4,
    union ct4 gp4,
    double hp4[1],
    struct dt4 ip4,
    int jp4
)
{
    /* seed: 834332115 */
    QUEST_ASSERT (sv4 ==  ap4);
    QUEST_ASSERT (tv4 ==  bp4);
    QUEST_ASSERT (uv4 ==  cp4);
    QUEST_ASSERT (vv4 ==  dp4);
    QUEST_ASSERT (wv4.bv4 ==  ep4.bv4);
    QUEST_ASSERT (wv4.cv4 ==  ep4.cv4);
    QUEST_ASSERT (wv4.dv4 ==  ep4.dv4);
    QUEST_ASSERT (wv4.ev4 ==  ep4.ev4);
    QUEST_ASSERT (wv4.fv4 ==  ep4.fv4);
    QUEST_ASSERT (wv4.gv4 ==  ep4.gv4);
    QUEST_ASSERT (xv4.hv4 ==  fp4.hv4);
    QUEST_ASSERT (yv4.jv4 ==  gp4.jv4);
    QUEST_ASSERT (zv4[0] ==  hp4[0]);
    QUEST_ASSERT (bav4.lv4 ==  ip4.lv4);
    QUEST_ASSERT (bav4.mv4 ==  ip4.mv4);
    QUEST_ASSERT (bav4.nv4 ==  ip4.nv4);
    QUEST_ASSERT (bav4.ov4 ==  ip4.ov4);
    QUEST_ASSERT (bav4.pv4 ==  ip4.pv4);
    QUEST_ASSERT (bav4.qv4 ==  ip4.qv4);
    QUEST_ASSERT (bav4.rv4 ==  ip4.rv4);
    QUEST_ASSERT (bbv4 ==  jp4);
    return av4;
}
extern union at3 { int av3; } bv3;
extern unsigned long int *tv3;
extern union bt3 { float cv3; unsigned int dv3; float ev3; } uv3;
extern union ct3 { float fv3; unsigned long int gv3; } vv3;
extern int wv3;
extern double *xv3;
extern
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
yv3;
extern
struct et3
{ double ov3; char pv3; unsigned short int qv3; double rv3; char sv3; }
zv3;
extern long int bav3[1];
union at3
callee_af3(
    unsigned long int *ap3,
    union bt3 bp3,
    union ct3 cp3,
    int dp3,
    double *ep3,
    struct dt3 fp3,
    struct et3 gp3,
    long int hp3[1]
)
{
    /* seed: 1070052262 */
    QUEST_ASSERT (tv3 ==  ap3);
    QUEST_ASSERT (uv3.cv3 ==  bp3.cv3);
    QUEST_ASSERT (vv3.fv3 ==  cp3.fv3);
    QUEST_ASSERT (wv3 ==  dp3);
    QUEST_ASSERT (xv3 ==  ep3);
    QUEST_ASSERT (yv3.hv3 ==  fp3.hv3);
    QUEST_ASSERT (yv3.iv3 ==  fp3.iv3);
    QUEST_ASSERT (yv3.jv3 ==  fp3.jv3);
    QUEST_ASSERT (yv3.kv3 ==  fp3.kv3);
    QUEST_ASSERT (yv3.lv3 ==  fp3.lv3);
    QUEST_ASSERT (yv3.mv3 ==  fp3.mv3);
    QUEST_ASSERT (yv3.nv3 ==  fp3.nv3);
    QUEST_ASSERT (zv3.ov3 ==  gp3.ov3);
    QUEST_ASSERT (zv3.pv3 ==  gp3.pv3);
    QUEST_ASSERT (zv3.qv3 ==  gp3.qv3);
    QUEST_ASSERT (zv3.rv3 ==  gp3.rv3);
    QUEST_ASSERT (zv3.sv3 ==  gp3.sv3);
    QUEST_ASSERT (bav3[0] ==  hp3[0]);
    return bv3;
}
extern double av2;
extern unsigned char bv2;
extern float cv2;
extern unsigned long int dv2;
extern double ev2[1];
extern double fv2;
double
callee_af2(
    unsigned char ap2,
    float bp2,
    unsigned long int cp2,
    double dp2[1],
    double ep2
)
{
    /* seed: 383824054 */
    QUEST_ASSERT (bv2 ==  ap2);
    QUEST_ASSERT (cv2 ==  bp2);
    QUEST_ASSERT (dv2 ==  cp2);
    QUEST_ASSERT (ev2[0] ==  dp2[0]);
    QUEST_ASSERT (fv2 ==  ep2);
    return av2;
}
extern float av1;
extern union at1 { unsigned long int bv1; char cv1; } kv1;
extern
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
lv1;
float callee_af1( union at1 ap1, struct bt1 bp1 )
{
    /* seed: 12345 */
    QUEST_ASSERT (kv1.bv1 ==  ap1.bv1);
    QUEST_ASSERT (lv1.dv1 ==  bp1.dv1);
    QUEST_ASSERT (lv1.ev1 ==  bp1.ev1);
    QUEST_ASSERT (lv1.fv1 ==  bp1.fv1);
    QUEST_ASSERT (lv1.gv1 ==  bp1.gv1);
    QUEST_ASSERT (lv1.hv1 ==  bp1.hv1);
    QUEST_ASSERT (lv1.iv1 ==  bp1.iv1);
    QUEST_ASSERT (lv1.jv1 ==  bp1.jv1);
    return av1;
}
