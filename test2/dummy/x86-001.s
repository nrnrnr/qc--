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
        initialize continuations:l4:
        i = j;
        i = bits32[j];
        bits32[i] = j;
        bits32[i] = bits32[j];
        i = %sx[8,32](bits8[j]);
        i = %sx[16,32](bits16[j]);
        i = %zx[8,32](bits8[j]);
        i = %zx[16,32](bits16[j]);
        bits16[i] = %lobits[32,16](j);
        bits8[i] = %lobits[32,8](j);
        i = (j+k);
        i = (j-k);
        i = %and[32](j, k);
        i = %or[32](j, k);
        i = %xor[32](j, k);
        i = (bits32[j]+k);
        i = (bits32[j]-k);
        i = %and[32](bits32[j], k);
        i = %or[32](bits32[j], k);
        i = %xor[32](bits32[j], k);
        i = (j+bits32[k]);
        i = (j-bits32[k]);
        i = %and[32](j, bits32[k]);
        i = %or[32](j, bits32[k]);
        i = %xor[32](j, bits32[k]);
        bits32[i] = (j+bits32[k]);
        bits32[i] = (j-bits32[k]);
        bits32[i] = %and[32](j, bits32[k]);
        bits32[i] = %or[32](j, bits32[k]);
        bits32[i] = %xor[32](j, bits32[k]);
        $c0 when %lt[32](j, k) = sym@join@l9;
        join:l10:
        $c0 when %le[32](j, k) = sym@join@l7;
        join:l8:
        $c0 when %leu[32](j, k) = sym@join@l6;
        L:
        ;
        $r0 = 99;
        ;
        $t1 = $t1;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l6:
        $c0 = sym@sym@L;
        join:l7:
        $c0 = sym@sym@L;
        join:l9:
        $c0 = sym@sym@L;
        sym@L:
        // dangling pointer in flow graph
    }
}

section "text" {  }

