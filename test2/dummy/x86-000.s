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

section "text"
{
    sym@p()
    {
        $r31 = ($r31+-24);
        ;
        ;
        $t1 = $r30;
        ;
        initialize continuations:l3:
        i = 1;
        j = 2;
        k = 3;
        bits32[i] = j;
        k = j;
        bits8[i] = %lobits[32,8](j);
        bits32[i] = %sx[8,32](bits8[i]);
        bits32[j] = %zx[8,32](bits8[j]);
        ntotal = ((i+j)+k);
        ;
        $r0 = ntotal;
        ;
        $t1 = $t1;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

