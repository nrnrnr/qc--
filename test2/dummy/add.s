target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

import bits32 printf;

export bits32
\212\029\140\217\143\000\178\004\233\128\t\152\236\248B~,
    main;

section "data" { align 1; }

section "data" { sym@Cmm_private_global_area: }

section "data"
{
    sym@@212@029@140@217@143@000@178@004@233@128@t@152@236@248B@:
}

section "data" { bits8[0::bits32]; }

section "data" { sym@hello: }

section "data" { bits32[1::bits32] { 68::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 2c::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 77::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 21::bits32 }; }

section "data" { bits32[1::bits32] { a::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" { sym@bye: }

section "data" { bits32[1::bits32] { 62::bits32 }; }

section "data" { bits32[1::bits32] { 79::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 21::bits32 }; }

section "data" { bits32[1::bits32] { a::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "text"
{
    sym@main()
    {
        $r31 = ($r31+-24);
        iargc, iargv = $r0, $r1;
        ;
        $t1 = $r30;
        ;
        initialize continuations:l4:
        $c0 when %gt[32](iargc, 1) = sym@join@l9;
        join:l10:
        iptr = sym@hello;
        $c0 = sym@join@l8;
        join:l9:
        iptr = sym@bye;
        $c0 = sym@join@l8;
        join:l8:
        ;
        $r0 = iptr;
        ;
        $c0, $r30 = sym@printf, ($c0+4);
        $r31 = $r31;
        // the preceding node is merely asserted
        ;
        ;
        ;
        ;
        ;
        ;
        $t1 = $t1;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

