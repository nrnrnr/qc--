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

export bits32 Cmm.global_area, Cmm.globalsig.OSNNKPBSNCfRUUWOHSAbUQaKZU;

section "data" { align 4; }

section "data" { sym@Cmm.globalsig.OSNNKPBSNCfRUUWOHSAbUQaKZU: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[8::bits32]; }

section "text"
{
    sym@TryAMove()
    {
        $r31 = ($r31+-24);
        $t1 = $r30;
        Linitialize continuations:l17:
        Lproc body start:l16:
        $r0 = sym@player;
        $c0, $r30 = sym@getMove, ($c0+4);
        Ljoin:l34:
        $r31 = $r31;
        // the preceding node is merely asserted
        t = $r0;
        $r0 = t;
        $c0, $r30 = sym@makeMove, ($c0+4);
        Ljoin:l29:
        $r31 = $r31;
        // the preceding node is merely asserted
        t = bits32[sym@players];
        next = %modu[32]((next+1), t);
        $c0 = sym@finish;
        C--:R27:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@Ljoin@l36;
        C--:R28:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@Ljoin@l35;
        C--:R32:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@Ljoin@l36;
        Ljoin:l36:
        t = bits32[bits32[(sym@player+12)]];
        $r0 = s;
        $c0, $r30 = t, ($c0+4);
        Ljoin:l23:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@finish;
        C--:R33:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@Ljoin@l35;
        Ljoin:l35:
        t = bits32[bits32[(sym@player+12)]];
        $r0 = sym@lit1;
        $c0, $r30 = t, ($c0+4);
        Ljoin:l20:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@finish;
        finish:
        movesTried = (movesTried-1);
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@lit1: }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x6f::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x75::bits32 }; }

section "data" { bits32[1::bits32] { 0x67::bits32 }; }

section "data" { bits32[1::bits32] { 0x68::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x69::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x6c::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x66::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "data" { sym@ex1: }

section "data" { align 4; }

section "data" { bits32[1::bits32] { 0x2::bits32 }; }

section "data"
{
    bits32[1::bits32] { %add(sym@Exn_illegalMove, 0x0::bits32) };
}

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "data"
{
    bits32[1::bits32] { %add(sym@Exn_NoMoreTiles, 0x0::bits32) };
}

section "data" { bits32[1::bits32] { 0xffffffffffffffff::bits32 }; }

section "data" {  }

