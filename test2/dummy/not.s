target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

import  bits32 printf;

export bits32
Cmm.global_area,
    Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY,
    main;

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
        Linitialize continuations:l6:
        Lproc body start:l5:
        $c0 when %not[](%lt[32](i, j)) = sym@Ljoin@l9;
        Ljoin:l10:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        Ljoin:l9:
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
        Linitialize continuations:l18:
        Lproc body start:l17:
        $r0, $r1 = 987, 33;
        $c0, $r30 = sym@ge, ($c0+4);
        Ljoin:l31:
        $r31 = $r31;
        // the preceding node is merely asserted
        a = $r0;
        $r0, $r1 = 33, 987;
        $c0, $r30 = sym@ge, ($c0+4);
        Ljoin:l28:
        $r31 = $r31;
        // the preceding node is merely asserted
        b = $r0;
        $r0, $r1 = 987, 987;
        $c0, $r30 = sym@ge, ($c0+4);
        Ljoin:l25:
        $r31 = $r31;
        // the preceding node is merely asserted
        c = $r0;
        $r0, $r1, $r2, $r3 = sym@answer, a, b, c;
        $c0, $r30 = sym@printf, ($c0+4);
        Ljoin:l22:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@answer: }

section "data" { bits32[1::bits32] { 0x39::bits32 }; }

section "data" { bits32[1::bits32] { 0x38::bits32 }; }

section "data" { bits32[1::bits32] { 0x37::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x3e::bits32 }; }

section "data" { bits32[1::bits32] { 0x3d::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x33::bits32 }; }

section "data" { bits32[1::bits32] { 0x33::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x3d::bits32 }; }

section "data" { bits32[1::bits32] { 0x3d::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x25::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0x3b::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x33::bits32 }; }

section "data" { bits32[1::bits32] { 0x33::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x3e::bits32 }; }

section "data" { bits32[1::bits32] { 0x3d::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x39::bits32 }; }

section "data" { bits32[1::bits32] { 0x38::bits32 }; }

section "data" { bits32[1::bits32] { 0x37::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x3d::bits32 }; }

section "data" { bits32[1::bits32] { 0x3d::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x25::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0x3b::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x39::bits32 }; }

section "data" { bits32[1::bits32] { 0x38::bits32 }; }

section "data" { bits32[1::bits32] { 0x37::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x3e::bits32 }; }

section "data" { bits32[1::bits32] { 0x3d::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x39::bits32 }; }

section "data" { bits32[1::bits32] { 0x38::bits32 }; }

section "data" { bits32[1::bits32] { 0x37::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x3d::bits32 }; }

section "data" { bits32[1::bits32] { 0x3d::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x25::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0xa::bits32 }; }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "data" {  }

