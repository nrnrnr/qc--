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

section "data" { sym@str: }

section "data" { bits8[1::bits32]; }

section "text" { sym@f() { ; $c(32)[0] = sym@f@x2; sym@f@x2: ; } }

section "text" {  }

