target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

section "data" { align 8; }

section "data" { sym@Cmm_private_global_area: }

section "data" { bits8[0::bits32]; }

section "text"
{
    sym@p()
    {
        ;
        $r(32)[0] = 1::bits32;
        $r(32)[1] = 2::bits32;
        $r(32)[2] = 0::bits32;
        $r(32)[3] = 0::bits32;
        $r(32)[4] = 2::bits32;
        $c(32)[0] when %ge[32]($r(32)[1], $r(32)[4]) = sym@p@l6;
        $c(32)[0] = sym@p@l7;
        $c(32)[0] = sym@p@l6;
        sym@p@l7:
        $c(32)[0] = sym@p@l5;
        sym@p@l6:
        $r(32)[2] = 3::bits32;
        $r(32)[3] = 4::bits32;
        $c(32)[0] = sym@p@l5;
        sym@p@l5:
        $r(32)[0] = ($r(32)[0]+$r(32)[1]);
        $r(32)[0] = ($r(32)[0]+$r(32)[2]);
        $r(32)[0] = ($r(32)[0]+$r(32)[3]);
        $r(32)[1] = 32::bits32;
        $r(32)[2] = 0::bits32;
        $r(32)[1] = ($r(32)[1]+$r(32)[2]);
        $r(32)[2] = 0::bits32;
        $r(32)[1] = ($r(32)[1]+$r(32)[2]);
        $r(32)[1] = ($r(32)[31]+$r(32)[1]);
        $m(32B)[$r(32)[1]] = $r(32)[0];
        $r(32)[0] = $m(32L)[$r(32)[31]];
        $c(32)[0] = $r(32)[0];
        ;
        ;
    }
}

section "text" {  }

