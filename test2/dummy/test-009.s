target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

export bits32
Cmm.global_area,
    Cmm.globalsig.NKZfaaEdeFZVBMDSIVLbEeKXbI,
    Cmm_stack_growth;

section "data" { align 1; }

section "data" { sym@Cmm.globalsig.NKZfaaEdeFZVBMDSIVLbEeKXbI: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[1::bits32]; }

section "data" { align 4; }

section "data" { sym@Cmm_stack_growth: }

section "data" { bits32[1::bits32] { 0xffffffff::bits32 }; }

section "data" { sym@x: }

section "data" {  }

