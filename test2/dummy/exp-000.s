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
    sym@q()
    {
        $r31 = ($r31+-24);
        x = $r0;
        $t1 = $r30;
        Linitialize continuations:l6:
        Lproc body start:l5:
        $r0 = bits32[(x+x)];
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
        Linitialize continuations:l15:
        Lproc body start:l14:
        bits32[($r31+24)] = 0xdeadbeef::bits32;
        $r0 = %divu[32](($r31+24), 2);
        $c0, $r30 = sym@q, ($c0+4);
        Ljoin:l22:
        $r31 = $r31;
        // the preceding node is merely asserted
        n = $r0;
        $r0, $r1 = sym@fmt, n;
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

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 6b::bits32 }; }

section "data" { bits32[1::bits32] { 75::bits32 }; }

section "data" { bits32[1::bits32] { 70::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 75::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 30::bits32 }; }

section "data" { bits32[1::bits32] { 78::bits32 }; }

section "data" { bits32[1::bits32] { 25::bits32 }; }

section "data" { bits32[1::bits32] { 78::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 28::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 68::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 75::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 62::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 30::bits32 }; }

section "data" { bits32[1::bits32] { 78::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 62::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 66::bits32 }; }

section "data" { bits32[1::bits32] { 29::bits32 }; }

section "data" { bits32[1::bits32] { a::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" {  }

