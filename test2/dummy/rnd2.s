target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

export bits32 m\208\\\245O,\028\030\246\203V\151\153o\250\006;

section "data" { align 1; }

section "data" { sym@Cmm_private_global_area: }

section "data" { sym@m@208@@@245O@@028@030@246@203V@151@153o@250@006: }

section "data" { bits8[1::bits32]; }

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

