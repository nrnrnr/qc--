target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

import bits32 Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY;

export bits32 f;

section "data" { sym@Cmm.ref_to_global_area: }

section "data"
{
    bits32[1::bits32]
    { %add(sym@Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY, 0::bits32) };
}

section "text"
{
    sym@f()
    {
        $r4 = ($r4+-24);
        ;
        $r1 = ($r4+24);
        $r1 = bits32[$r1 aligned 4];
        bits32[($r4+20) aligned 4] = $r1;
        initialize continuations:l3:
        ;
        $r0 = %sub[32]($r0);
        $r1 = 99;
        $r1 = %sub[32]($r1);
        bits32[($r4+4) aligned 4] = $r1;
        $r1 = 4;
        bits32[$r4 aligned 4] = $r1;
        $r1 = ($r4+24);
        bits32[($r4+12) aligned 4] = $r1;
        $r1 = bits32[$r4 aligned 4];
        $r2 = bits32[($r4+12) aligned 4];
        $r2, $c2 = ($r2+$r1), %x86_addflags[32]($r2, $r1);
        bits32[($r4+12) aligned 4] = $r2;
        $r1 = bits32[($r4+4) aligned 4];
        $r2 = bits32[($r4+12) aligned 4];
        bits32[$r2] = $r1;
        $r1 = 0;
        bits32[($r4+16) aligned 4] = $r1;
        $r1 = ($r4+24);
        bits32[($r4+8) aligned 4] = $r1;
        $r1 = bits32[($r4+8) aligned 4];
        $r2 = bits32[($r4+16) aligned 4];
        $r1, $c2 = ($r1+$r2), %x86_addflags[32]($r1, $r2);
        bits32[($r4+8) aligned 4] = $r1;
        $r1 = bits32[($r4+8) aligned 4];
        $r2 = bits32[($r4+20) aligned 4];
        bits32[$r1 aligned 4] = $r2;
        $r4 = ($r4+24);
        $c0, $r4 = bits32[$r4], ($r4+4);
    }
}

section "text" {  }

