target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

export bits32
Cmm.global_area,
    Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY,
    Cmm_stack_growth,
    sp1,
    sp2,
    sp3;

section "data" { align 1; }

section "data" { sym@Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[0::bits32]; }

section "data" { align 4; }

section "data" { sym@Cmm_stack_growth: }

section "data" { bits32[1::bits32] { 0xffffffff::bits32 }; }

section "text"
{
    sym@sp1()
    {
        $r31 = ($r31+-24);
        n = $r0;
        $t1 = $r30;
        Linitialize continuations:l8:
        Lproc body start:l7:
        $c0 when %eq[32](n, 0) = sym@Ljoin@l14;
        Ljoin:l15:
        $r0 = (n-1);
        $c0, $r30 = sym@sp1, ($c0+4);
        Ljoin:l12:
        $r31 = $r31;
        // the preceding node is merely asserted
        s, p = $r0, $r1;
        $r0, $r1 = (s+n), %mul[32](p, n);
        $r31 = ($r31+24);
        $c0 = $t1;
        Ljoin:l14:
        $r0, $r1 = 1, 1;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@sp2()
    {
        $r31 = ($r31+-24);
        n = $r0;
        $t1 = $r30;
        Linitialize continuations:l22:
        Lproc body start:l21:
        $r0, $r1, $r2 = n, 1, 1;
        $c0 = sym@sp2_help;
    }
}

section "text"
{
    sym@sp2_help()
    {
        $r31 = ($r31+-24);
        n, s, p = $r0, $r1, $r2;
        $t1 = $r30;
        Linitialize continuations:l31:
        Lproc body start:l30:
        $c0 when %eq[32](n, 1) = sym@Ljoin@l34;
        Ljoin:l35:
        $r0, $r1, $r2 = (n-1), (s+n), %mul[32](p, n);
        $c0 = sym@sp2_help;
        Ljoin:l34:
        $r0, $r1 = s, p;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@sp3()
    {
        $r31 = ($r31+-24);
        n = $r0;
        $t1 = $r30;
        Linitialize continuations:l43:
        Lproc body start:l42:
        s = 1;
        p = 1;
        $c0 = sym@loop;
        loop:
        $c0 when %eq[32](n, 1) = sym@Ljoin@l45;
        Ljoin:l46:
        s = (s+n);
        p = %mul[32](p, n);
        n = (n-1);
        $c0 = sym@loop;
        Ljoin:l45:
        $r0, $r1 = s, p;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

