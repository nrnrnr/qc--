target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

import bits32 printf;

export bits32 Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY, main;

section "data" { align 1; }

section "data" { sym@Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[0::bits32]; }

section "data" { sym@nocut: }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 63::bits32 }; }

section "data" { bits32[1::bits32] { 75::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 3d::bits32 }; }

section "data" { bits32[1::bits32] { 25::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { a::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" { sym@ret: }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 75::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { a::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "text"
{
    sym@main()
    {
        $r31 = ($r31+-32);
        iargc, iargv = $r0, $r1;
        $t1 = $r30;
        initialize continuations:l11:
        bits32[($r31+24)], bits32[($r31+28)] = sym@k@C8, $r31;
        n = 0;
        $r0 = ($r31+24);
        $c0, $r30 = sym@f, ($c0+4);
        join:l22:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0, $r1 = sym@nocut, n;
        $c0, $r30 = sym@printf, ($c0+4);
        join:l19:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r31 = ($r31+32);
        $c0 = $t1;
        k:C8:
        $r31 = $r31;
        // the preceding node is merely asserted
        n = $r0;
        $r0, $r1 = (sym@nocut+3), n;
        $c0, $r30 = sym@printf, ($c0+4);
        join:l15:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r31 = ($r31+32);
        $c0 = $t1;
    }
}

section "text"
{
    sym@f()
    {
        $r31 = ($r31+-24);
        k = $r0;
        $t1 = $r30;
        initialize continuations:l28:
        $r0 = k;
        $c0, $r30 = sym@g, ($c0+4);
        join:l35:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = sym@ret;
        $c0, $r30 = sym@printf, ($c0+4);
        join:l32:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@g()
    {
        $r31 = ($r31+-24);
        k = $r0;
        $t1 = $r30;
        initialize continuations:l42:
        $r0 = k;
        $c0, $r30 = sym@h, ($c0+4);
        join:l49:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = sym@ret;
        $c0, $r30 = sym@printf, ($c0+4);
        join:l46:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@h()
    {
        $r31 = ($r31+-24);
        k = $r0;
        $t1 = $r30;
        initialize continuations:l56:
        $r0 = 99;
        $r31, $c0 = bits32[(k+4)], bits32[k];
    }
}

section "text" {  }

