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
    sym@p()
    {
        $r31 = ($r31+-24);
        $t1 = $r30;
        Linitialize continuations:l6:
        Lproc body start:l5:
        ii = 1;
        ij = 2;
        ik = 0;
        il = 0;
        $c0 when %geu[32](ij, 2) = sym@Ljoin@l8;
        Ljoin:l14:
        $c0 = sym@Ljoin@l9;
        Ljoin:l8:
        ik = 3;
        il = 4;
        $c0 = sym@Ljoin@l9;
        Ljoin:l9:
        iitotal = (((ii+ij)+ik)+il);
        $r0 = iitotal;
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
        $c0, $r30 = sym@p, ($c0+4);
        Ljoin:l25:
        $r31 = $r31;
        // the preceding node is merely asserted
        n = $r0;
        $r0, $r1 = sym@fmt, n;
        $c0, $r30 = sym@printf, ($c0+4);
        Ljoin:l22:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@fmt: }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 69::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 25::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { a::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" {  }

