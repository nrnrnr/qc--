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

section "data"
{
    sym@p()
    {
        $r31 = ($r31+-24);
        i = $r0;
        $t1 = $r30;
        .Linitialize continuations:l4:
        .Lproc body start:l3:
        loop:
        i = (i-1);
        $c0 when %geu[32](i, 0) = sym@loop;
        .Lbranch target:l6:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@p_end: }

section "data" {  }

