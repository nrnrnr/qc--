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
        initialize continuations:l5:
        proc body start:l4:
        i = 1;
        j = 2;
        k = 3;
        bits32[i] = j;
        k = j;
        bits8[i] = %lobits[32,8](j);
        bits32[i] = %sx[8,32](bits8[i]);
        bits32[j] = %zx[8,32](bits8[j]);
        ntotal = ((i+j)+k);
        $r0 = ntotal;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text" {  }

