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
        x = $m(32B)[($r(32)[31]+32::bits32)];
        $m(32B)[($r(32)[31]+32::bits32)] = $m(32B)[(x+x)];
        $c(32)[0] = $r(32)[30];
        ;
        ;
    }
}

section "text" {  }

