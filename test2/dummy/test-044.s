target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

export bits32 Cmm.global_area, Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY;

section "data" { align 1; }

section "data" { sym@Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[0::bits32]; }

section "data"
{
    sym@p()
    {
        $r31 = ($r31+-24);
        i = $r0;
        $t1 = $r30;
        Linitialize continuations:l5:
        Lproc body start:l4:
        $c0 = sym@loop;
        loop:
        i = (i-1);
        $c0 when %geu[32](i, 0) = sym@Ljoin@l7;
        Ljoin:l8:
        $r31 = ($r31+24);
        $c0 = $t1;
        Ljoin:l7:
        $c0 = sym@loop;
    }
}

section "data" { sym@p_end: }

section "data" {  }

