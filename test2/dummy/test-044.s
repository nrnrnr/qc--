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

section "data"
{
    sym@p()
    {
        ;
        i = $m(32B)[($r(32)[32]+32::bits32)];
        $c(32)[0] = sym@loop;
        sym@loop:
        i = (i-1::bits32);
        $c(32)[0] when %ge[32](i, 0::bits32) = sym@p@l5;
        $c(32)[0] = sym@p@l6;
        $c(32)[0] = sym@p@l5;
        sym@p@l6:
        $c(32)[0] = sym@p@l4;
        sym@p@l5:
        $c(32)[0] = sym@loop;
        sym@p@l4:
        $c(32)[0] = $r(32)[30];
        ;
        ;
    }
}

section "data" { sym@p_end: }

section "data" {  }

