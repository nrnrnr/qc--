/* $Id$ */
/* ./quest -seed 12345 cmm.lua -test cmm -n 5 -2 -s 2 -o test-2 */

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
nv5
=
    {
        { 80418.350056, 88009.217569 },
        { 98834016UL, 1, 7, 85, 4933.608095, 93769.052146, 20251.709782 },
        { 31263 }
    };
float byv5 = 24532.582149;
union et5
{
    union dt5
    { unsigned long int ov5; unsigned char pv5; short int qv5; }
    rv5;
    double *sv5;
    unsigned short int tv5[1];
}
bzv5
=
    { { 1893222172UL } };
long int cav5 = 1139112897L;
union ft5 { long int uv5; } cbv5 = { 805441464L };
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
ccv5
=
    {
        20202,
        (long int *) 853255652U,
        9,
        { 1308095527UL, 5, 746, 0, 89035944U }
    };
float cdv5 = 35252.978128;
unsigned char **cev5 = (unsigned char **) 1270204002U;
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
cfv5
=
    {
        {
            6587.352937,
            702757745L,
            2485.474558,
            2,
            8,
            0,
            46735.138349,
            1070004274U,
            50080
        }
    };
struct mt5
{
    union kt5 { float bov5; } bsv5;
    signed btv5:11;
    signed buv5:9;
    signed bvv5:11;
    unsigned short int bwv5;
    union lt5 { int bpv5; float bqv5; unsigned char brv5; } bxv5;
}
cgv5
=
    { { 73957.347509 }, 454, 173, 367, 19436, { 1017547117 } };
extern
struct ct5
callee_af5
(float,
union et5,
long int,
union ft5,
struct ht5,
float,
unsigned char **,
union jt5,
struct mt5);
static void caller_bf5(  )
{
    struct ct5 chv5;
    /* seed: 23144859 */
    chv5 = callee_af5 (byv5, bzv5, cav5, cbv5, ccv5, cdv5, cev5, cfv5, cgv5);
    QUEST_ASSERT (nv5.kv5[1] ==  chv5.kv5[1]);
    QUEST_ASSERT (nv5.kv5[0] ==  chv5.kv5[0]);
    QUEST_ASSERT (nv5.lv5.av5 ==  chv5.lv5.av5);
    QUEST_ASSERT (nv5.lv5.bv5 ==  chv5.lv5.bv5);
    QUEST_ASSERT (nv5.lv5.cv5 ==  chv5.lv5.cv5);
    QUEST_ASSERT (nv5.lv5.dv5 ==  chv5.lv5.dv5);
    QUEST_ASSERT (nv5.lv5.ev5 ==  chv5.lv5.ev5);
    QUEST_ASSERT (nv5.lv5.fv5 ==  chv5.lv5.fv5);
    QUEST_ASSERT (nv5.lv5.gv5 ==  chv5.lv5.gv5);
    QUEST_ASSERT (nv5.mv5.hv5 ==  chv5.mv5.hv5);
}
float av4 = 21752.455822;
float *zv4 = (float *) 362467827U;
double bav4[1] = { 71806.160667 };
union bt4
{
    unsigned short int ev4;
    union at4 { double bv4; double cv4; unsigned char dv4; } fv4;
}
bbv4
=
    { 62258 };
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
bcv4
=
    { { 13363.358174 } };
float bdv4 = 63637.581366;
union ft4 { char rv4; short int sv4; unsigned char tv4; } bev4 = { '\x7c' };
union ht4
{ double wv4; union gt4 { float uv4; float vv4; } xv4; double *yv4; }
bfv4
=
    { 48810.796462 };
short int bgv4 = 15565;
float (*bhv4)[2] = (float (*)[2]) 2132403919U;
extern
float
callee_af4
(float *,
double [1],
union bt4,
union et4,
float,
union ft4,
union ht4,
short int,
float (*)[2]);
static void caller_bf4(  )
{
    float biv4;
    /* seed: 64714718 */
    biv4 = callee_af4 (zv4, bav4, bbv4, bcv4, bdv4, bev4, bfv4, bgv4, bhv4);
    QUEST_ASSERT (av4 ==  biv4);
}
unsigned char av3 = '\x51';
float bv3 = 55335.529662;
extern unsigned char callee_af3 (float);
static void caller_bf3(  )
{
    unsigned char cv3;
    /* seed: 834433004 */ cv3 = callee_af3 (bv3); QUEST_ASSERT (av3 ==  cv3);
}
float av2 = 11889.196075;
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
dnv2
=
    {
        16726,
        0,
        1,
        7,
        2,
        { 35279.920397, 12784, 97560.922437, 937943677UL, 47943.819833 },
        { 219830932U },
        95752.013466
    };
struct dt2
{ int rv2; signed sv2:6; signed tv2:8; double *uv2; short int *vv2; }
dov2
=
    { 1171270379, 18, 108, (double *) 710826965U, (short int *) 1375855961U };
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
dpv2
=
    {
        { 57648.738214, 590, 42489, 84691.657924 },
        {
            8028.224739,
            68767.744688,
            10137.256592,
            220,
            13,
            54974010,
            88249.325386,
            7982.670371
        },
        0,
        1,
        266648923U,
        '\x18',
        { '\x12', 5, 20, 1154655870UL, 19870, 31537.433389 }
    };
union kt2
{
    union it2 { char bvv2; } byv2;
    union jt2 { char bwv2; long int bxv2; } bzv2;
}
dqv2
=
    { { '\x33' } };
double drv2[1][1] = { { 40309.533551 } };
struct mt2
{
    unsigned short int ccv2;
    float cdv2;
    float cev2;
    signed cfv2:6;
    union lt2 { int cav2; float cbv2; } cgv2;
}
dsv2
=
    { 57047, 20248.772315, 20936.164630, 0, { 1448979814 } };
char dtv2 = '\x2c';
double duv2 = 75931.379633;
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
dvv2
=
    {
        45463804,
        { 592900189UL },
        { 93340.140107, 13456.484918, 1, 0, 1, 84424.838488, 85691.211692 },
        2,
        1664076876U,
        { 1135841948U },
        49808.601811
    };
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
dwv2
=
    {
        { 81380.702577 },
        24,
        10,
        693,
        507,
        { 748412744L, 15, 237, 14, '\x5b', 12904.379217 },
        12693.791719,
        54204.247441
    };
extern
float
callee_af2
(struct ct2,
struct dt2,
struct ht2,
union kt2,
double [1][1],
struct mt2,
char,
double,
struct qt2,
struct st2);
static void caller_bf2(  )
{
    float dxv2;
    /* seed: 745220225 */
    dxv2
    =
    callee_af2 (dnv2, dov2, dpv2, dqv2, drv2, dsv2, dtv2, duv2, dvv2, dwv2);
    QUEST_ASSERT (av2 ==  dxv2);
}
float av1 = 43887.142231;
union bt1
{
    unsigned long int gv1;
    struct at1
    { unsigned char bv1; float cv1; double dv1; float ev1; long int fv1; }
    hv1;
}
iv1
=
    { 421369926UL };
unsigned short int jv1 = 24752;
extern float callee_af1 (union bt1, unsigned short int);
static void caller_bf1(  )
{
    float kv1;
    /* seed: 12345 */ kv1 = callee_af1 (iv1, jv1); QUEST_ASSERT (av1 ==  kv1);
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
