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

section "data" { sym@playground: }

section "data" { bits8[48::bits32]; }

section "text"
{
    sym@p()
    {
        $r31 = ($r31+-24);
        $t1 = $r30;
        Linitialize continuations:l6:
        Lproc body start:l5:
        i = 1;
        j = 2;
        k = 3;
        bits32[(sym@playground+i)] = j;
        k = j;
        bits8[(sym@playground+i)] = %lobits[32,8](j);
        bits32[(sym@playground+i)]
            = %sx[8,32](bits8[(sym@playground+i)]);
        bits32[(sym@playground+j)]
            = %zx[8,32](bits8[(sym@playground+j)]);
        ntotal
            =
            ((((i+j)+k)+bits32[(sym@playground+i)])+
                bits32[(sym@playground+j)]);
        $r0 = ntotal;
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
        $c0, $r30 = sym@p, ($c0+4);
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

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x6f::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x61::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x69::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x25::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0xa::bits32 }; }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "data" {  }

