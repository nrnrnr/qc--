target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

import  bits32 printf;

export bits32 Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY, f, main;

section "data" { align 1; }

section "data" { sym@Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[0::bits32]; }

section "text"
{
    sym@f()
    {
        $r31 = ($r31+-24);
        i = $r0;
        $t1 = $r30;
        initialize continuations:l6:
        proc body start:l5:
        $r0, $r1 = %neg[32](i), -99;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@main()
    {
        $r31 = ($r31+-24);
        iargc, iargv = $r0, $r1;
        $t1 = $r30;
        initialize continuations:l15:
        proc body start:l14:
        $r0 = -33;
        $c0, $r30 = sym@f, ($c0+4);
        join:l22:
        $r31 = $r31;
        // the preceding node is merely asserted
        x, y = $r0, $r1;
        $r0, $r1, $r2 = sym@fmt, x, y;
        $c0, $r30 = sym@printf, ($c0+4);
        join:l19:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@fmt: }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 75::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 2d::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 75::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 63::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 66::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 75::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 25::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 2c::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 25::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 28::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 78::bits32 }; }

section "data" { bits32[1::bits32] { 70::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 63::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 33::bits32 }; }

section "data" { bits32[1::bits32] { 33::bits32 }; }

section "data" { bits32[1::bits32] { 2c::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 2d::bits32 }; }

section "data" { bits32[1::bits32] { 39::bits32 }; }

section "data" { bits32[1::bits32] { 39::bits32 }; }

section "data" { bits32[1::bits32] { 29::bits32 }; }

section "data" { bits32[1::bits32] { a::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" {  }

