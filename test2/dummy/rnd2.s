target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

export bits32 \223\030;*\183\2383\144\190E\157j\151\006\240o;

section "data" { align 1; }

section "data" { sym@Cmm_private_global_area: }

section "data" { sym@@223@030@@@183@2383@144@190E@157j@151@006@240o: }

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
        ;
        ;
        ;
        $t1 = $t1;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

