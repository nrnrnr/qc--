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
    sym@ge()
    {
        $r31 = ($r31+-24);
        i, j = $r0, $r1;
        $t1 = $r30;
        initialize continuations:l4:
        $c0 when %not[](%lt[32](i, j)) = sym@join@l7;
        join:l8:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l7:
        $r0 = 1;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

