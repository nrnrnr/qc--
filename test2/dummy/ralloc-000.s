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
        ii = 1::bits32;
        ij = 2::bits32;
        ik = 0::bits32;
        il = 0::bits32;
        $c(32)[0] when %ge[32](ij, 2::bits32) = sym@p@l6;
        $c(32)[0] = sym@p@l7;
        $c(32)[0] = sym@p@l6;
        sym@p@l7:
        $c(32)[0] = sym@p@l5;
        sym@p@l6:
        ik = 3::bits32;
        il = 4::bits32;
        $c(32)[0] = sym@p@l5;
        sym@p@l5:
        iitotal = (((ii+ij)+ik)+il);
        $m(32B)[($r(32)[31]+32::bits32)] = iitotal;
        $c(32)[0] = $r(32)[30];
        ;
        ;
    }
}

section "text" {  }

