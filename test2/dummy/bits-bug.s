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

section "data" { align 8; }

section "data" { sym@success: }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 75::bits32 }; }

section "data" { bits32[1::bits32] { 63::bits32 }; }

section "data" { bits32[1::bits32] { 63::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { a::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" { align 8; }

section "data" { sym@failed: }

section "data" { bits32[1::bits32] { 66::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 69::bits32 }; }

section "data" { bits32[1::bits32] { 6c::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

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
        ;
        $r0 = ab54e2a3::bits32;
        ;
        $c0, $r30 = sym@callee, ($c0+4);
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

section "text"
{
    sym@callee()
    {
        $r31 = ($r31+-24);
        i0 = $r0;
        ;
        $t1 = $r30;
        ;
        initialize continuations:l14:
        $c0 when %ne[32](i0, ab54e2a3::bits32) = sym@join@l21;
        join:l22:
        ;
        $r0 = sym@success;
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
        join:l21:
        ;
        $r0 = sym@failed;
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

