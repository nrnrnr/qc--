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

section "data" { sym@str: }

section "data" { bits8[1::bits32]; }

section "text"
{
    sym@f()
    {
        $r31 = ($r31+-24);
        ;
        ;
        $t1 = $r30;
        ;
        initialize continuations:l4:
    }
}

section "text" {  }

