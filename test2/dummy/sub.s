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
    f,
    main;

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
        Linitialize continuations:l6:
        Lproc body start:l5:
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
        Linitialize continuations:l15:
        Lproc body start:l14:
        $r0 = -33;
        $c0, $r30 = sym@f, ($c0+4);
        Ljoin:l22:
        $r31 = $r31;
        // the preceding node is merely asserted
        x, y = $r0, $r1;
        $r0, $r1, $r2 = sym@fmt, x, y;
        $c0, $r30 = sym@printf, ($c0+4);
        Ljoin:l19:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@fmt: }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0x75::bits32 }; }

section "data" { bits32[1::bits32] { 0x61::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x2d::bits32 }; }

section "data" { bits32[1::bits32] { 0x72::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x75::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x63::bits32 }; }

section "data" { bits32[1::bits32] { 0x61::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x6f::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x66::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x72::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x75::bits32 }; }

section "data" { bits32[1::bits32] { 0x72::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x25::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0x2c::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x25::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x28::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x78::bits32 }; }

section "data" { bits32[1::bits32] { 0x70::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x63::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x33::bits32 }; }

section "data" { bits32[1::bits32] { 0x33::bits32 }; }

section "data" { bits32[1::bits32] { 0x2c::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x2d::bits32 }; }

section "data" { bits32[1::bits32] { 0x39::bits32 }; }

section "data" { bits32[1::bits32] { 0x39::bits32 }; }

section "data" { bits32[1::bits32] { 0x29::bits32 }; }

section "data" { bits32[1::bits32] { 0xa::bits32 }; }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "data" {  }

