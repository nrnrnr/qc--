target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

export bits32 Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY;

section "data" { align 1; }

section "data" { sym@Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[0::bits32]; }

section "text"
{
    sym@p()
    {
        $r31 = ($r31+-24);
        x = $r0;
        ;
        $t1 = $r30;
        ;
        initialize continuations:l4:
        ;
        $r0 = bits32[(x+x)];
        $t1 = $t1;
        ;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

