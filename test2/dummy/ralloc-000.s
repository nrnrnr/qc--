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
        $t1 = $r30;
        initialize continuations:l4:
        ii = 1;
        ij = 2;
        ik = 0;
        il = 0;
        $c0 when %geu[32](ij, 2) = sym@join@l6;
        join:l12:
        $c0 = sym@join@l7;
        join:l6:
        ik = 3;
        il = 4;
        $c0 = sym@join@l7;
        join:l7:
        iitotal = (((ii+ij)+ik)+il);
        $r0 = iitotal;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

