.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
! memory for global registers
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.global Cmm_stack_growth
.section ".data"
.align 4
Cmm_stack_growth:
.word 0xffffffff
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set 1, %g1
	mov %g1, %o0
	st %i7, [%sp+96]
	call sw, 0
	nop
Ljoin_l25:
	set 2, %g1
	mov %g1, %o0
	call sw, 0
	nop
Ljoin_l22:
	set 3, %g1
	mov %g1, %o0
	call sw, 0
	nop
Ljoin_l19:
	set 4, %g1
	mov %g1, %o0
	call sw, 0
	nop
Ljoin_l16:
	set 99, %g1
	mov %g1, %o0
	call sw, 0
	nop
Ljoin_l13:
	set -3, %g1
	mov %g1, %o0
	call sw, 0
	nop
Ljoin_l10:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l33:
.word 0
.section ".pcmap"
.word Ljoin_l25
.word Lframe_l34
.section ".pcmap_data"
Lframe_l34:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l33
.word 0
.word 2
.word 0
.word 1
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l22
.word Lframe_l35
.section ".pcmap_data"
Lframe_l35:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l33
.word 0
.word 2
.word 0
.word 1
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l19
.word Lframe_l36
.section ".pcmap_data"
Lframe_l36:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l33
.word 0
.word 2
.word 0
.word 1
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l16
.word Lframe_l37
.section ".pcmap_data"
Lframe_l37:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l33
.word 0
.word 2
.word 0
.word 1
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l13
.word Lframe_l38
.section ".pcmap_data"
Lframe_l38:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l33
.word 0
.word 2
.word 0
.word 1
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l10
.word Lframe_l39
.section ".pcmap_data"
Lframe_l39:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l33
.word 0
.word 2
.word 0
.word 1
.word 0
.word 0
.word 0
.section ".text"
.section ".text"
sw:
	save %sp, -112, %sp
	mov %i0, %l7
Linitialize_continuations_l43:
Lproc_body_start_l42:
	set 1, %l6
	subcc %l7, %l6, %g0
	be Ljoin_l67
	nop
Ljoin_l68:
	ba Ljoin_l63
	nop
Ljoin_l63:
	set 2, %l6
	subcc %l6, %l7, %g0
	bleu Ljoin_l72
	nop
Ljoin_l81:
	ba Ljoin_l62
	nop
Ljoin_l72:
	set 3, %l6
	subcc %l7, %l6, %g0
	bleu Ljoin_l61
	nop
Ljoin_l82:
	ba Ljoin_l62
	nop
Ljoin_l62:
	ba Ljoin_l57
	nop
Ljoin_l57:
	set 4, %l6
	subcc %l7, %l6, %g0
	be Ljoin_l55
	nop
Ljoin_l56:
	ba Ljoin_l51
	nop
Ljoin_l51:
	set 5, %l6
	subcc %l6, %l7, %g0
	bleu Ljoin_l76
	nop
Ljoin_l83:
	ba Ljoin_l75
	nop
Ljoin_l76:
	set -1, %l6
	subcc %l7, %l6, %g0
	bleu Ljoin_l49
	nop
Ljoin_l84:
	ba Ljoin_l75
	nop
Ljoin_l75:
	set 0, %l6
	subcc %l7, %l6, %g0
	be Ljoin_l49
	nop
Ljoin_l74:
	set -2147483648, %l6
	subcc %l6, %l7, %g0
	bleu Ljoin_l73
	nop
Ljoin_l85:
	ba Ljoin_l50
	nop
Ljoin_l73:
	set -1, %l6
	subcc %l7, %l6, %g0
	bleu Ljoin_l49
	nop
Ljoin_l86:
	ba Ljoin_l50
	nop
Ljoin_l50:
	ba Ljoin_l45
	nop
Ljoin_l49:
	set def, %g1
	mov %g1, %o0
	mov %l7, %o1
	st %i7, [%sp+96]
	call printf, 0
	nop
Ljoin_l48:
	ld [%sp+96], %i7
	ba Ljoin_l45
	nop
Ljoin_l55:
	set third, %g1
	mov %g1, %o0
	mov %l7, %o1
	st %i7, [%sp+96]
	call printf, 0
	nop
Ljoin_l54:
	ld [%sp+96], %i7
	ba Ljoin_l45
	nop
Ljoin_l61:
	set second, %g1
	mov %g1, %o0
	mov %l7, %o1
	st %i7, [%sp+96]
	call printf, 0
	nop
Ljoin_l60:
	ld [%sp+96], %i7
	ba Ljoin_l45
	nop
Ljoin_l67:
	set first, %g1
	mov %g1, %o0
	mov %l7, %o1
	st %i7, [%sp+96]
	call printf, 0
	nop
Ljoin_l66:
	ld [%sp+96], %i7
	ba Ljoin_l45
	nop
Ljoin_l45:
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l87:
.word 0
.section ".pcmap"
.word Ljoin_l48
.word Lframe_l88
.section ".pcmap_data"
Lframe_l88:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l87
.word 0
.word 1
.word 0
.word 1
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l54
.word Lframe_l89
.section ".pcmap_data"
Lframe_l89:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l87
.word 0
.word 1
.word 0
.word 1
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l60
.word Lframe_l90
.section ".pcmap_data"
Lframe_l90:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l87
.word 0
.word 1
.word 0
.word 1
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l66
.word Lframe_l91
.section ".pcmap_data"
Lframe_l91:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l87
.word 0
.word 1
.word 0
.word 1
.word 0
.word 0
.section ".text"
.section ".data"
first:
.byte 102
.byte 105
.byte 114
.byte 115
.byte 116
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
second:
.byte 115
.byte 101
.byte 99
.byte 111
.byte 110
.byte 100
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
third:
.byte 116
.byte 104
.byte 105
.byte 114
.byte 100
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
def:
.byte 100
.byte 101
.byte 102
.byte 97
.byte 117
.byte 108
.byte 116
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
