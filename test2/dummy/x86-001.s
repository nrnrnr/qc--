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
        i, j, k = 1, 2, 3;
        i = j;
        i = bits32[(sym@playground+j)];
        bits32[(sym@playground+i)] = j;
        bits32[(sym@playground+i)] = bits32[(sym@playground+j)];
        i = %sx[8,32](bits8[(sym@playground+j)]);
        i = %sx[16,32](bits16[(sym@playground+j)]);
        i = %zx[8,32](bits8[(sym@playground+j)]);
        i = %zx[16,32](bits16[(sym@playground+j)]);
        bits16[(sym@playground+i)] = %lobits[32,16](j);
        bits8[(sym@playground+i)] = %lobits[32,8](j);
        i = (j+k);
        i = (j-k);
        i = %and[32](j, k);
        i = %or[32](j, k);
        i = %xor[32](j, k);
        i = (bits32[(sym@playground+j)]+k);
        i = (bits32[(sym@playground+j)]-k);
        i = %and[32](bits32[(sym@playground+j)], k);
        i = %or[32](bits32[(sym@playground+j)], k);
        i = %xor[32](bits32[(sym@playground+j)], k);
        i = (j+bits32[(sym@playground+k)]);
        i = (j-bits32[(sym@playground+k)]);
        i = %and[32](j, bits32[(sym@playground+k)]);
        i = %or[32](j, bits32[(sym@playground+k)]);
        i = %xor[32](j, bits32[(sym@playground+k)]);
        bits32[(sym@playground+i)] = (j+bits32[(sym@playground+k)]);
        bits32[(sym@playground+i)] = (j-bits32[(sym@playground+k)]);
        bits32[(sym@playground+i)]
            = %and[32](j, bits32[(sym@playground+k)]);
        bits32[(sym@playground+i)]
            = %or[32](j, bits32[(sym@playground+k)]);
        bits32[(sym@playground+i)]
            = %xor[32](j, bits32[(sym@playground+k)]);
        $c0 when %ltu[32](j, k) = sym@Ljoin@l11;
        Ljoin:l12:
        $c0 when %leu[32](j, k) = sym@Ljoin@l9;
        Ljoin:l10:
        $c0 when %leu[32](j, k) = sym@Ljoin@l8;
        Ljoin:l17:
        $c0 = sym@L;
        Ljoin:l8:
        $c0 = sym@L;
        Ljoin:l9:
        $c0 = sym@L;
        Ljoin:l11:
        $c0 = sym@L;
        L:
        $r0 = 99;
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
        Linitialize continuations:l21:
        Lproc body start:l20:
        $c0, $r30 = sym@p, ($c0+4);
        Ljoin:l28:
        $r31 = $r31;
        // the preceding node is merely asserted
        n = $r0;
        $r0, $r1 = sym@fmt, n;
        $c0, $r30 = sym@printf, ($c0+4);
        Ljoin:l25:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@fmt: }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 6d::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 77::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 69::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 69::bits32 }; }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 75::bits32 }; }

section "data" { bits32[1::bits32] { 63::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 69::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { 2c::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 66::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 77::bits32 }; }

section "data" { bits32[1::bits32] { 68::bits32 }; }

section "data" { bits32[1::bits32] { 69::bits32 }; }

section "data" { bits32[1::bits32] { 63::bits32 }; }

section "data" { bits32[1::bits32] { 68::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 77::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 75::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 69::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 25::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { a::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" {  }

