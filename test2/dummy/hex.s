target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

import  bits32 printf, strlen;

export bits32
Cmm.global_area,
    Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY,
    main;

section "data" { align 1; }

section "data" { sym@Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[0::bits32]; }

section "data" { sym@notzero: }

section "data" { bits32[1::bits32] { 0xa::bits32 }; }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "text"
{
    sym@main()
    {
        $r31 = ($r31+-24);
        argc, argv = $r0, $r1;
        $t1 = $r30;
        Linitialize continuations:l5:
        Lproc body start:l4:
        $r0 = sym@notzero;
        $c0, $r30 = sym@strlen, ($c0+4);
        Ljoin:l12:
        $r31 = $r31;
        // the preceding node is merely asserted
        n = $r0;
        $r0, $r1, $r2 = sym@answer, n, %zx[8,32](bits8[sym@notzero]);
        $c0, $r30 = sym@printf, ($c0+4);
        Ljoin:l9:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@answer: }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x67::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x68::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x69::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x25::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x28::bits32 }; }

section "data" { bits32[1::bits32] { 0x77::bits32 }; }

section "data" { bits32[1::bits32] { 0x61::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x31::bits32 }; }

section "data" { bits32[1::bits32] { 0x29::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x61::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x66::bits32 }; }

section "data" { bits32[1::bits32] { 0x69::bits32 }; }

section "data" { bits32[1::bits32] { 0x72::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x63::bits32 }; }

section "data" { bits32[1::bits32] { 0x68::bits32 }; }

section "data" { bits32[1::bits32] { 0x61::bits32 }; }

section "data" { bits32[1::bits32] { 0x72::bits32 }; }

section "data" { bits32[1::bits32] { 0x61::bits32 }; }

section "data" { bits32[1::bits32] { 0x63::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x72::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x69::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x68::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x66::bits32 }; }

section "data" { bits32[1::bits32] { 0x69::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x61::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x77::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x69::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x2e::bits32 }; }

section "data" { bits32[1::bits32] { 0x25::bits32 }; }

section "data" { bits32[1::bits32] { 0x63::bits32 }; }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "data" {  }

