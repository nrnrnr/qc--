target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

import  bits32
Exn_NoMoreTiles,
    Exn_illegalMove,
    getMove,
    makeMove,
    player,
    players;

export bits32
Cmm.global_area,
    Cmm.globalsig.OSNNKPBSNCfRUUWOHSAbUQaKZU,
    Cmm_stack_growth;

section "data" { align 4; }

section "data" { sym@Cmm.globalsig.OSNNKPBSNCfRUUWOHSAbUQaKZU: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[8::bits32]; }

section "data" { align 4; }

section "data" { sym@Cmm_stack_growth: }

section "data" { bits32[1::bits32] { 0xffffffff::bits32 }; }

section "text"
{
    sym@TryAMove()
    {
        $r31 = ($r31+-24);
        $t1 = $r30;
        .Linitialize continuations:l18:
        .Lproc body start:l17:
        $r0 = sym@player;
        $c0, $r30 = sym@getMove, ($c0+4);
        .Lcall successor:l35:
        t = $r0;
        $r0 = t;
        $c0, $r30 = sym@makeMove, ($c0+4);
        .Lcall successor:l30:
        t = bits32[sym@players];
        next = %modu[32]((next+1), t);
        $c0 = sym@finish;
        .Lreturn_entry:l28:
        $c0 = sym@.Lstart@of@continuation@code@l7;
        .Lreturn_entry:l29:
        $c0 = sym@.Lstart@of@continuation@code@l13;
        .Lreturn_entry:l33:
        .Lstart of continuation code:l7:
        t = bits32[bits32[(sym@player+12)]];
        $r0 = s;
        $c0, $r30 = t, ($c0+4);
        .Lcall successor:l24:
        $c0 = sym@finish;
        .Lreturn_entry:l34:
        .Lstart of continuation code:l13:
        t = bits32[bits32[(sym@player+12)]];
        $r0 = sym@lit1;
        $c0, $r30 = t, ($c0+4);
        .Lcall successor:l21:
        finish:
        movesTried = (movesTried-1);
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@lit1: }

section "data" { bits8[1::bits32] { 110::bits8 }; }

section "data" { bits8[1::bits32] { 111::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 101::bits8 }; }

section "data" { bits8[1::bits32] { 110::bits8 }; }

section "data" { bits8[1::bits32] { 117::bits8 }; }

section "data" { bits8[1::bits32] { 103::bits8 }; }

section "data" { bits8[1::bits32] { 104::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 108::bits8 }; }

section "data" { bits8[1::bits32] { 101::bits8 }; }

section "data" { bits8[1::bits32] { 115::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 108::bits8 }; }

section "data" { bits8[1::bits32] { 101::bits8 }; }

section "data" { bits8[1::bits32] { 102::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 0::bits8 }; }

section "data" { sym@ex1: }

section "data" { align 4; }

section "data" { bits32[1::bits32] { 2::bits32 }; }

section "data" { bits32[1::bits32] { sym@Exn_illegalMove }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" { bits32[1::bits32] { sym@Exn_NoMoreTiles }; }

section "data" { bits32[1::bits32] { -1::bits32 }; }

section "data" {  }

