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

section "text"
{
    sym@p()
    {
        $r31 = ($r31+-24);
        $t1 = $r30;
        Linitialize continuations:l5:
        Lproc body start:l4:
        i = j;
        i = bits32[j];
        bits32[i] = j;
        bits32[i] = bits32[j];
        i = %sx[8,32](bits8[j]);
        i = %sx[16,32](bits16[j]);
        i = %zx[8,32](bits8[j]);
        i = %zx[16,32](bits16[j]);
        bits16[i] = %lobits[32,16](j);
        bits8[i] = %lobits[32,8](j);
        i = (j+k);
        i = (j-k);
        i = %and[32](j, k);
        i = %or[32](j, k);
        i = %xor[32](j, k);
        i = (bits32[j]+k);
        i = (bits32[j]-k);
        i = %and[32](bits32[j], k);
        i = %or[32](bits32[j], k);
        i = %xor[32](bits32[j], k);
        i = (j+bits32[k]);
        i = (j-bits32[k]);
        i = %and[32](j, bits32[k]);
        i = %or[32](j, bits32[k]);
        i = %xor[32](j, bits32[k]);
        bits32[i] = (j+bits32[k]);
        bits32[i] = (j-bits32[k]);
        bits32[i] = %and[32](j, bits32[k]);
        bits32[i] = %or[32](j, bits32[k]);
        bits32[i] = %xor[32](j, bits32[k]);
        $c0 when %ltu[32](j, k) = sym@Ljoin@l10;
        Ljoin:l11:
        $c0 when %leu[32](j, k) = sym@Ljoin@l8;
        Ljoin:l9:
        $c0 when %leu[32](j, k) = sym@Ljoin@l7;
        Ljoin:l16:
        $c0 = sym@L;
        Ljoin:l7:
        $c0 = sym@L;
        Ljoin:l8:
        $c0 = sym@L;
        Ljoin:l10:
        $c0 = sym@L;
        L:
        $r0 = 99;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

