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
extern
struct ct5
{
    double kv5[2];
    struct at5
    {
        unsigned long int av5;
        signed bv5:2;
        signed cv5:4;
        signed dv5:8;
        float ev5;
        float fv5;
        float gv5;
    }
    lv5;
    union bt5 { short int hv5; unsigned short int iv5; int jv5; } mv5;
}
nv5;
extern float byv5;
extern
union et5
{
    union dt5
    { unsigned long int ov5; unsigned char pv5; short int qv5; }
    rv5;
    double *sv5;
    unsigned short int tv5[1];
}
bzv5;
extern long int cav5;
extern union ft5 { long int uv5; } cbv5;
extern
struct ht5
{
    unsigned short int bav5;
    long int *bbv5;
    signed bcv5:5;
    struct gt5
    {
        unsigned long int vv5;
        signed wv5:9;
        signed xv5:11;
        signed yv5:4;
        unsigned int zv5;
    }
    bdv5;
}
ccv5;
extern float cdv5;
extern unsigned char **cev5;
extern
union jt5
{
    struct it5
    {
        float bev5;
        long int bfv5;
        double bgv5;
        signed bhv5:3;
        signed biv5:7;
        signed bjv5:1;
        float bkv5;
        unsigned int blv5;
        unsigned short int bmv5;
    }
    bnv5;
}
cfv5;
extern
struct mt5
{
    union kt5 { float bov5; } bsv5;
    signed btv5:11;
    signed buv5:9;
    signed bvv5:11;
    unsigned short int bwv5;
    union lt5 { int bpv5; float bqv5; unsigned char brv5; } bxv5;
}
cgv5;
struct ct5
callee_af5(
    float ap5,
    union et5 bp5,
    long int cp5,
    union ft5 dp5,
    struct ht5 ep5,
    float fp5,
    unsigned char **gp5,
    union jt5 hp5,
    struct mt5 ip5
)
{
    /* seed: 23144859 */
    QUEST_ASSERT (byv5 ==  ap5);
    QUEST_ASSERT (bzv5.rv5.ov5 ==  bp5.rv5.ov5);
    QUEST_ASSERT (cav5 ==  cp5);
    QUEST_ASSERT (cbv5.uv5 ==  dp5.uv5);
    QUEST_ASSERT (ccv5.bav5 ==  ep5.bav5);
    QUEST_ASSERT (ccv5.bbv5 ==  ep5.bbv5);
    QUEST_ASSERT (ccv5.bcv5 ==  ep5.bcv5);
    QUEST_ASSERT (ccv5.bdv5.vv5 ==  ep5.bdv5.vv5);
    QUEST_ASSERT (ccv5.bdv5.wv5 ==  ep5.bdv5.wv5);
    QUEST_ASSERT (ccv5.bdv5.xv5 ==  ep5.bdv5.xv5);
    QUEST_ASSERT (ccv5.bdv5.yv5 ==  ep5.bdv5.yv5);
    QUEST_ASSERT (ccv5.bdv5.zv5 ==  ep5.bdv5.zv5);
    QUEST_ASSERT (cdv5 ==  fp5);
    QUEST_ASSERT (cev5 ==  gp5);
    QUEST_ASSERT (cfv5.bnv5.bev5 ==  hp5.bnv5.bev5);
    QUEST_ASSERT (cfv5.bnv5.bfv5 ==  hp5.bnv5.bfv5);
    QUEST_ASSERT (cfv5.bnv5.bgv5 ==  hp5.bnv5.bgv5);
    QUEST_ASSERT (cfv5.bnv5.bhv5 ==  hp5.bnv5.bhv5);
    QUEST_ASSERT (cfv5.bnv5.biv5 ==  hp5.bnv5.biv5);
    QUEST_ASSERT (cfv5.bnv5.bjv5 ==  hp5.bnv5.bjv5);
    QUEST_ASSERT (cfv5.bnv5.bkv5 ==  hp5.bnv5.bkv5);
    QUEST_ASSERT (cfv5.bnv5.blv5 ==  hp5.bnv5.blv5);
    QUEST_ASSERT (cfv5.bnv5.bmv5 ==  hp5.bnv5.bmv5);
    QUEST_ASSERT (cgv5.bsv5.bov5 ==  ip5.bsv5.bov5);
    QUEST_ASSERT (cgv5.btv5 ==  ip5.btv5);
    QUEST_ASSERT (cgv5.buv5 ==  ip5.buv5);
    QUEST_ASSERT (cgv5.bvv5 ==  ip5.bvv5);
    QUEST_ASSERT (cgv5.bwv5 ==  ip5.bwv5);
    QUEST_ASSERT (cgv5.bxv5.bpv5 ==  ip5.bxv5.bpv5);
    return nv5;
}
extern float av4;
extern float *zv4;
extern double bav4[1];
extern
union bt4
{
    unsigned short int ev4;
    union at4 { double bv4; double cv4; unsigned char dv4; } fv4;
}
bbv4;
extern
union et4
{
    union ct4 { double gv4; double hv4; } ov4;
    struct dt4
    {
        char iv4;
        signed jv4:10;
        signed kv4:6;
        signed lv4:3;
        int mv4;
        double nv4;
    }
    pv4;
    unsigned char *qv4;
}
bcv4;
extern float bdv4;
extern union ft4 { char rv4; short int sv4; unsigned char tv4; } bev4;
extern
union ht4
{ double wv4; union gt4 { float uv4; float vv4; } xv4; double *yv4; }
bfv4;
extern short int bgv4;
extern float (*bhv4)[2];
float
callee_af4(
    float *ap4,
    double bp4[1],
    union bt4 cp4,
    union et4 dp4,
    float ep4,
    union ft4 fp4,
    union ht4 gp4,
    short int hp4,
    float (*ip4)[2]
)
{
    /* seed: 64714718 */
    QUEST_ASSERT (zv4 ==  ap4);
    QUEST_ASSERT (bav4[0] ==  bp4[0]);
    QUEST_ASSERT (bbv4.ev4 ==  cp4.ev4);
    QUEST_ASSERT (bcv4.ov4.gv4 ==  dp4.ov4.gv4);
    QUEST_ASSERT (bdv4 ==  ep4);
    QUEST_ASSERT (bev4.rv4 ==  fp4.rv4);
    QUEST_ASSERT (bfv4.wv4 ==  gp4.wv4);
    QUEST_ASSERT (bgv4 ==  hp4);
    QUEST_ASSERT (bhv4 ==  ip4);
    return av4;
}
extern unsigned char av3;
extern float bv3;
unsigned char callee_af3( float ap3 )
{ /* seed: 834433004 */ QUEST_ASSERT (bv3 ==  ap3); return av3; }
extern float av2;
extern
struct ct2
{
    short int jv2;
    signed kv2:1;
    signed lv2:4;
    signed mv2:4;
    signed nv2:12;
    struct at2
    {
        double bv2;
        short int cv2;
        float dv2;
        unsigned long int ev2;
        double fv2;
    }
    ov2;
    union bt2 { unsigned int gv2; float hv2; float iv2; } pv2;
    float qv2;
}
dnv2;
extern
struct dt2
{ int rv2; signed sv2:6; signed tv2:8; double *uv2; short int *vv2; }
dov2;
extern
struct ht2
{
    struct et2
    { float wv2; signed xv2:11; unsigned short int yv2; float zv2; }
    bov2;
    struct ft2
    {
        float bav2;
        double bbv2;
        float bcv2;
        signed bdv2:10;
        signed bev2:5;
        int bfv2;
        float bgv2;
        double bhv2;
    }
    bpv2;
    signed bqv2:2;
    signed brv2:2;
    unsigned int bsv2;
    char btv2;
    struct gt2
    {
        char biv2;
        signed bjv2:6;
        signed bkv2:7;
        unsigned long int blv2;
        short int bmv2;
        float bnv2;
    }
    buv2;
}
dpv2;
extern
union kt2
{
    union it2 { char bvv2; } byv2;
    union jt2 { char bwv2; long int bxv2; } bzv2;
}
dqv2;
extern double drv2[1][1];
extern
struct mt2
{
    unsigned short int ccv2;
    float cdv2;
    float cev2;
    signed cfv2:6;
    union lt2 { int cav2; float cbv2; } cgv2;
}
dsv2;
extern char dtv2;
extern double duv2;
extern
struct qt2
{
    int csv2;
    union nt2
    { unsigned long int chv2; unsigned long int civ2; float cjv2; }
    ctv2;
    struct ot2
    {
        double ckv2;
        float clv2;
        signed cmv2:2;
        signed cnv2:1;
        signed cov2:2;
        float cpv2;
        float cqv2;
    }
    cuv2;
    signed cvv2:5;
    unsigned int cwv2;
    union pt2 { unsigned int crv2; } cxv2;
    double cyv2;
}
dvv2;
extern
struct st2
{
    double dfv2[1];
    signed dgv2:6;
    signed dhv2:5;
    signed div2:11;
    signed djv2:11;
    struct rt2
    {
        long int czv2;
        signed dav2:5;
        signed dbv2:9;
        signed dcv2:5;
        char ddv2;
        double dev2;
    }
    dkv2;
    float dlv2;
    float dmv2;
}
dwv2;
float
callee_af2(
    struct ct2 ap2,
    struct dt2 bp2,
    struct ht2 cp2,
    union kt2 dp2,
    double ep2[1][1],
    struct mt2 fp2,
    char gp2,
    double hp2,
    struct qt2 ip2,
    struct st2 jp2
)
{
    /* seed: 745220225 */
    QUEST_ASSERT (dnv2.jv2 ==  ap2.jv2);
    QUEST_ASSERT (dnv2.kv2 ==  ap2.kv2);
    QUEST_ASSERT (dnv2.lv2 ==  ap2.lv2);
    QUEST_ASSERT (dnv2.mv2 ==  ap2.mv2);
    QUEST_ASSERT (dnv2.nv2 ==  ap2.nv2);
    QUEST_ASSERT (dnv2.ov2.bv2 ==  ap2.ov2.bv2);
    QUEST_ASSERT (dnv2.ov2.cv2 ==  ap2.ov2.cv2);
    QUEST_ASSERT (dnv2.ov2.dv2 ==  ap2.ov2.dv2);
    QUEST_ASSERT (dnv2.ov2.ev2 ==  ap2.ov2.ev2);
    QUEST_ASSERT (dnv2.ov2.fv2 ==  ap2.ov2.fv2);
    QUEST_ASSERT (dnv2.pv2.gv2 ==  ap2.pv2.gv2);
    QUEST_ASSERT (dnv2.qv2 ==  ap2.qv2);
    QUEST_ASSERT (dov2.rv2 ==  bp2.rv2);
    QUEST_ASSERT (dov2.sv2 ==  bp2.sv2);
    QUEST_ASSERT (dov2.tv2 ==  bp2.tv2);
    QUEST_ASSERT (dov2.uv2 ==  bp2.uv2);
    QUEST_ASSERT (dov2.vv2 ==  bp2.vv2);
    QUEST_ASSERT (dpv2.bov2.wv2 ==  cp2.bov2.wv2);
    QUEST_ASSERT (dpv2.bov2.xv2 ==  cp2.bov2.xv2);
    QUEST_ASSERT (dpv2.bov2.yv2 ==  cp2.bov2.yv2);
    QUEST_ASSERT (dpv2.bov2.zv2 ==  cp2.bov2.zv2);
    QUEST_ASSERT (dpv2.bpv2.bav2 ==  cp2.bpv2.bav2);
    QUEST_ASSERT (dpv2.bpv2.bbv2 ==  cp2.bpv2.bbv2);
    QUEST_ASSERT (dpv2.bpv2.bcv2 ==  cp2.bpv2.bcv2);
    QUEST_ASSERT (dpv2.bpv2.bdv2 ==  cp2.bpv2.bdv2);
    QUEST_ASSERT (dpv2.bpv2.bev2 ==  cp2.bpv2.bev2);
    QUEST_ASSERT (dpv2.bpv2.bfv2 ==  cp2.bpv2.bfv2);
    QUEST_ASSERT (dpv2.bpv2.bgv2 ==  cp2.bpv2.bgv2);
    QUEST_ASSERT (dpv2.bpv2.bhv2 ==  cp2.bpv2.bhv2);
    QUEST_ASSERT (dpv2.bqv2 ==  cp2.bqv2);
    QUEST_ASSERT (dpv2.brv2 ==  cp2.brv2);
    QUEST_ASSERT (dpv2.bsv2 ==  cp2.bsv2);
    QUEST_ASSERT (dpv2.btv2 ==  cp2.btv2);
    QUEST_ASSERT (dpv2.buv2.biv2 ==  cp2.buv2.biv2);
    QUEST_ASSERT (dpv2.buv2.bjv2 ==  cp2.buv2.bjv2);
    QUEST_ASSERT (dpv2.buv2.bkv2 ==  cp2.buv2.bkv2);
    QUEST_ASSERT (dpv2.buv2.blv2 ==  cp2.buv2.blv2);
    QUEST_ASSERT (dpv2.buv2.bmv2 ==  cp2.buv2.bmv2);
    QUEST_ASSERT (dpv2.buv2.bnv2 ==  cp2.buv2.bnv2);
    QUEST_ASSERT (dqv2.byv2.bvv2 ==  dp2.byv2.bvv2);
    QUEST_ASSERT (drv2[0][0] ==  ep2[0][0]);
    QUEST_ASSERT (dsv2.ccv2 ==  fp2.ccv2);
    QUEST_ASSERT (dsv2.cdv2 ==  fp2.cdv2);
    QUEST_ASSERT (dsv2.cev2 ==  fp2.cev2);
    QUEST_ASSERT (dsv2.cfv2 ==  fp2.cfv2);
    QUEST_ASSERT (dsv2.cgv2.cav2 ==  fp2.cgv2.cav2);
    QUEST_ASSERT (dtv2 ==  gp2);
    QUEST_ASSERT (duv2 ==  hp2);
    QUEST_ASSERT (dvv2.csv2 ==  ip2.csv2);
    QUEST_ASSERT (dvv2.ctv2.chv2 ==  ip2.ctv2.chv2);
    QUEST_ASSERT (dvv2.cuv2.ckv2 ==  ip2.cuv2.ckv2);
    QUEST_ASSERT (dvv2.cuv2.clv2 ==  ip2.cuv2.clv2);
    QUEST_ASSERT (dvv2.cuv2.cmv2 ==  ip2.cuv2.cmv2);
    QUEST_ASSERT (dvv2.cuv2.cnv2 ==  ip2.cuv2.cnv2);
    QUEST_ASSERT (dvv2.cuv2.cov2 ==  ip2.cuv2.cov2);
    QUEST_ASSERT (dvv2.cuv2.cpv2 ==  ip2.cuv2.cpv2);
    QUEST_ASSERT (dvv2.cuv2.cqv2 ==  ip2.cuv2.cqv2);
    QUEST_ASSERT (dvv2.cvv2 ==  ip2.cvv2);
    QUEST_ASSERT (dvv2.cwv2 ==  ip2.cwv2);
    QUEST_ASSERT (dvv2.cxv2.crv2 ==  ip2.cxv2.crv2);
    QUEST_ASSERT (dvv2.cyv2 ==  ip2.cyv2);
    QUEST_ASSERT (dwv2.dfv2[0] ==  jp2.dfv2[0]);
    QUEST_ASSERT (dwv2.dgv2 ==  jp2.dgv2);
    QUEST_ASSERT (dwv2.dhv2 ==  jp2.dhv2);
    QUEST_ASSERT (dwv2.div2 ==  jp2.div2);
    QUEST_ASSERT (dwv2.djv2 ==  jp2.djv2);
    QUEST_ASSERT (dwv2.dkv2.czv2 ==  jp2.dkv2.czv2);
    QUEST_ASSERT (dwv2.dkv2.dav2 ==  jp2.dkv2.dav2);
    QUEST_ASSERT (dwv2.dkv2.dbv2 ==  jp2.dkv2.dbv2);
    QUEST_ASSERT (dwv2.dkv2.dcv2 ==  jp2.dkv2.dcv2);
    QUEST_ASSERT (dwv2.dkv2.ddv2 ==  jp2.dkv2.ddv2);
    QUEST_ASSERT (dwv2.dkv2.dev2 ==  jp2.dkv2.dev2);
    QUEST_ASSERT (dwv2.dlv2 ==  jp2.dlv2);
    QUEST_ASSERT (dwv2.dmv2 ==  jp2.dmv2);
    return av2;
}
extern float av1;
extern
union bt1
{
    unsigned long int gv1;
    struct at1
    { unsigned char bv1; float cv1; double dv1; float ev1; long int fv1; }
    hv1;
}
iv1;
extern unsigned short int jv1;
float callee_af1( union bt1 ap1, unsigned short int bp1 )
{
    /* seed: 12345 */
    QUEST_ASSERT (iv1.gv1 ==  ap1.gv1);
    QUEST_ASSERT (jv1 ==  bp1);
    return av1;
}
