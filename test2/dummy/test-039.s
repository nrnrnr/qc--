target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

export bits32 sp1, sp2, sp3;

section "data" { align 8; }

section "data" { sym@Cmm_private_global_area: }

section "data" { bits8[0::bits32]; }

section "text"
{
    sym@sp1()
    {
        ;
        n = $m(32B)[($r(32)[32]+64::bits32)];
        $c(32)[0] when %eq[32](n, 0::bits32) = sym@sp1@l15;
        $c(32)[0] = sym@sp1@l16;
        $c(32)[0] = sym@sp1@l15;
        sym@sp1@l16:
        $m(32B)[($r(32)[32]+0::bits32)] = (n-1::bits32);
        $c(32)[0], $r(32)[30] = sym@sp1, ($c(32)[0]+4::bits32);
        ;
        p = $m(32B)[($r(32)[32]+96::bits32)];
        s = $m(32B)[($r(32)[32]+64::bits32)];
        $m(32B)[($r(32)[32]+96::bits32)] = %mul_trunc[32](p, n);
        $m(32B)[($r(32)[32]+64::bits32)] = (s+n);
        $c(32)[0] = $r(32)[30];
        sym@sp1@l15:
        $m(32B)[($r(32)[32]+96::bits32)] = 1::bits32;
        $m(32B)[($r(32)[32]+64::bits32)] = 1::bits32;
        $c(32)[0] = $r(32)[30];
        ;
        ;
        ;
    }
}

section "text"
{
    sym@sp2()
    {
        ;
        n = $m(32B)[($r(32)[32]+32::bits32)];
        $m(32B)[($r(32)[32]+96::bits32)] = 1::bits32;
        $m(32B)[($r(32)[32]+64::bits32)] = 1::bits32;
        $m(32B)[($r(32)[32]+32::bits32)] = n;
        $c(32)[0] = sym@sp2_help;
        ;
        ;
    }
}

section "text"
{
    sym@sp2_help()
    {
        ;
        p = $m(32B)[($r(32)[32]+96::bits32)];
        s = $m(32B)[($r(32)[32]+64::bits32)];
        n = $m(32B)[($r(32)[32]+32::bits32)];
        $c(32)[0] when %eq[32](n, 1::bits32) = sym@sp2_help@l39;
        $c(32)[0] = sym@sp2_help@l40;
        $c(32)[0] = sym@sp2_help@l39;
        sym@sp2_help@l40:
        $m(32B)[($r(32)[32]+96::bits32)] = %mul_trunc[32](p, n);
        $m(32B)[($r(32)[32]+64::bits32)] = (s+n);
        $m(32B)[($r(32)[32]+32::bits32)] = (n-1::bits32);
        $c(32)[0] = sym@sp2_help;
        sym@sp2_help@l39:
        $m(32B)[($r(32)[32]+64::bits32)] = p;
        $m(32B)[($r(32)[32]+32::bits32)] = s;
        $c(32)[0] = $r(32)[30];
        ;
        ;
        ;
    }
}

section "text"
{
    sym@sp3()
    {
        ;
        n = $m(32B)[($r(32)[32]+32::bits32)];
        s = 1::bits32;
        p = 1::bits32;
        $c(32)[0] = sym@loop;
        sym@loop:
        $c(32)[0] when %eq[32](n, 1::bits32) = sym@sp3@l53;
        $c(32)[0] = sym@sp3@l54;
        $c(32)[0] = sym@sp3@l53;
        sym@sp3@l54:
        s = (s+n);
        p = %mul_trunc[32](p, n);
        n = (n-1::bits32);
        $c(32)[0] = sym@loop;
        sym@sp3@l53:
        $m(32B)[($r(32)[32]+64::bits32)] = p;
        $m(32B)[($r(32)[32]+32::bits32)] = s;
        $c(32)[0] = $r(32)[30];
        ;
        ;
    }
}

section "text" {  }

