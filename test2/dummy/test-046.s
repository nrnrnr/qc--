target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

export bits32
Cmm.global_area,
    Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY,
    Cmm_stack_growth;

section "data" { align 1; }

section "data" { sym@Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[0::bits32]; }

section "data" { align 4; }

section "data" { sym@Cmm_stack_growth: }

section "data" { bits32[1::bits32] { 0xffffffff::bits32 }; }

section "text"
{
    sym@f()
    {
        $r31 = ($r31+-24);
        i = $r0;
        $t1 = $r30;
        Linitialize continuations:l5:
        Lproc body start:l4:
        $c0 when %eq[32](i, 1) = sym@Ljoin@l11;
        Ljoin:l12:
        $c0 = sym@Ljoin@l9;
        Ljoin:l9:
        $c0 when %conjoin[](%leu[32](2, i), %leu[32](i, 3))
            = sym@Ljoin@l7;
        Ljoin:l8:
        $c0 = sym@Lexit@l2;
        Ljoin:l7:
        $r0 = i;
        $r31 = ($r31+24);
        $c0 = $t1;
        Ljoin:l11:
        $r0 = i;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

