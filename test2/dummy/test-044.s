target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

export bits32 \212\029\140\217\143\000\178\004\233\128\t\152\236\248B~;

section "data" { align 1; }

section "data" { sym@Cmm_private_global_area: }

section "data"
{
    sym@@212@029@140@217@143@000@178@004@233@128@t@152@236@248B@:
}

section "data" { bits8[0::bits32]; }

section "data"
{
    sym@p()
    {
        $r31 = ($r31+-24);
        i = $r0;
        ;
        $t1 = $r30;
        ;
        initialize continuations:l4:
        loop:
        i = (i-1);
        $c0 when %ge[32](i, 0) = sym@join@l6;
        join:l7:
        ;
        ;
        ;
        $t1 = $t1;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l6:
        $c0 = sym@sym@loop;
        sym@loop:
        // dangling pointer in flow graph
    }
}

section "data" { sym@p_end: }

section "data" {  }

