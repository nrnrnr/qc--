target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

import  bits32 printf;

export bits32 Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY, main;

section "data" { align 1; }

section "data" { sym@Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[0::bits32]; }

section "text"
{
    sym@ge()
    {
        $r31 = ($r31+-24);
        i, j = $r0, $r1;
        $t1 = $r30;
        initialize continuations:l6:
        proc body start:l5:
        $c0 when %not[](%lt[32](i, j)) = sym@join@l9;
        join:l10:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l9:
        $r0 = 1;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@main()
    {
        $r31 = ($r31+-24);
        argc, argv = $r0, $r1;
        $t1 = $r30;
        initialize continuations:l18:
        proc body start:l17:
        $r0, $r1 = 987, 33;
        $c0, $r30 = sym@ge, ($c0+4);
        join:l31:
        $r31 = $r31;
        // the preceding node is merely asserted
        a = $r0;
        $r0, $r1 = 33, 987;
        $c0, $r30 = sym@ge, ($c0+4);
        join:l28:
        $r31 = $r31;
        // the preceding node is merely asserted
        b = $r0;
        $r0, $r1 = 987, 987;
        $c0, $r30 = sym@ge, ($c0+4);
        join:l25:
        $r31 = $r31;
        // the preceding node is merely asserted
        c = $r0;
        $r0, $r1, $r2, $r3 = sym@answer, a, b, c;
        $c0, $r30 = sym@printf, ($c0+4);
        join:l22:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@answer: }

section "data" { bits32[1::bits32] { 39::bits32 }; }

section "data" { bits32[1::bits32] { 38::bits32 }; }

section "data" { bits32[1::bits32] { 37::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 3e::bits32 }; }

section "data" { bits32[1::bits32] { 3d::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 33::bits32 }; }

section "data" { bits32[1::bits32] { 33::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 3d::bits32 }; }

section "data" { bits32[1::bits32] { 3d::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 25::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 3b::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 33::bits32 }; }

section "data" { bits32[1::bits32] { 33::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 3e::bits32 }; }

section "data" { bits32[1::bits32] { 3d::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 39::bits32 }; }

section "data" { bits32[1::bits32] { 38::bits32 }; }

section "data" { bits32[1::bits32] { 37::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 3d::bits32 }; }

section "data" { bits32[1::bits32] { 3d::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 25::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 3b::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 39::bits32 }; }

section "data" { bits32[1::bits32] { 38::bits32 }; }

section "data" { bits32[1::bits32] { 37::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 3e::bits32 }; }

section "data" { bits32[1::bits32] { 3d::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 39::bits32 }; }

section "data" { bits32[1::bits32] { 38::bits32 }; }

section "data" { bits32[1::bits32] { 37::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 3d::bits32 }; }

section "data" { bits32[1::bits32] { 3d::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 25::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { a::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" {  }

