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
    sym@f()
    {
        $r31 = ($r31+-24);
        i = $r0;
        $t1 = $r30;
        initialize continuations:l5:
        proc body start:l4:
        $c0 when %disjoin[](%eq[32](i, 1), %false()) = sym@join@l11;
        join:l12:
        $c0 = sym@join@l9;
        join:l9:
        $c0
            when
            %disjoin[](%conjoin[](%leu[32](2, i), %geu[32](3, i)),
            %false()) = sym@join@l7;
        join:l8:
        $c0 = sym@exit@l1;
        join:l7:
        $r0 = i;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l11:
        $r0 = i;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

