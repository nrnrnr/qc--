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

section "data" { sym@hello: }

section "data" { bits32[1::bits32] { 0x68::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x6f::bits32 }; }

section "data" { bits32[1::bits32] { 0x2c::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x77::bits32 }; }

section "data" { bits32[1::bits32] { 0x6f::bits32 }; }

section "data" { bits32[1::bits32] { 0x72::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0x21::bits32 }; }

section "data" { bits32[1::bits32] { 0xa::bits32 }; }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "data" { sym@bye: }

section "data" { bits32[1::bits32] { 0x62::bits32 }; }

section "data" { bits32[1::bits32] { 0x79::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x21::bits32 }; }

section "data" { bits32[1::bits32] { 0xa::bits32 }; }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "text"
{
    sym@main()
    {
        $r31 = ($r31+-24);
        iargc, iargv = $r0, $r1;
        $t1 = $r30;
        Linitialize continuations:l5:
        Lproc body start:l4:
        $c0 when %gtu[32](iargc, 1) = sym@Ljoin@l11;
        Ljoin:l12:
        iptr = sym@hello;
        $c0 = sym@Ljoin@l10;
        Ljoin:l11:
        iptr = sym@bye;
        $c0 = sym@Ljoin@l10;
        Ljoin:l10:
        $r0 = iptr;
        $c0, $r30 = sym@printf, ($c0+4);
        Ljoin:l9:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

