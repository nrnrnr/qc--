.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
! memory for global registers
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".data"
numbers:
.byte 0
.byte 0
.byte 0
.byte 1
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 3
.byte 0
.byte 0
.byte 0
.byte 4
.byte 0
.byte 0
.byte 0
.byte 5
.byte 0
.byte 0
.byte 0
.byte 6
.byte 0
.byte 0
.byte 0
.byte 7
.byte 0
.byte 0
.byte 0
.byte 8
.byte 0
.byte 0
.byte 0
.byte 9
.byte 0
.byte 0
.byte 0
.byte 10
ok:
.byte 111
.byte 107
.byte 32
.byte 40
.byte 101
.byte 120
.byte 112
.byte 101
.byte 99
.byte 116
.byte 101
.byte 100
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 114
.byte 101
.byte 99
.byte 101
.byte 105
.byte 118
.byte 101
.byte 100
.byte 32
.byte 37
.byte 100
.byte 41
.byte 10
.section ".text"
f:
	save %sp, -128, %sp
	mov %i0, %g1
	mov %i1, %g2
	st %g2, [%sp+104]
	mov %i2, %g2
	st %g2, [%sp+108]
	mov %i3, %g2
	st %g2, [%sp+112]
	mov %i4, %g2
	st %g2, [%sp+116]
	mov %i5, %g2
	st %g2, [%sp+120]
	st %i7, [%sp+100]
	st %i7, [%sp+96]
Linitialize_continuations_l7:
Lproc_body_start_l6:
	set numbers, %g2
	ld [%g2], %g2
	subcc %g1, %g2, %g0
	be Ljoin_l37
	nop
Ljoin_l46:
	ba Ljoin_l38
	nop
Ljoin_l37:
	set ok, %g2
	mov %g2, %o0
	mov %g1, %o1
	set numbers, %g1
	ld [%g1], %g1
	mov %g1, %o2
	call printf, 0
	nop
Ljoin_l36:
	ba Ljoin_l38
	nop
Ljoin_l38:
	set numbers, %g1
	set 4, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	ld [%sp+104], %g2
	subcc %g2, %g1, %g0
	be Ljoin_l32
	nop
Ljoin_l47:
	ba Ljoin_l33
	nop
Ljoin_l32:
	set ok, %g1
	mov %g1, %o0
	ld [%sp+104], %g1
	mov %g1, %o1
	set numbers, %g1
	set 4, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	call printf, 0
	nop
Ljoin_l31:
	ba Ljoin_l33
	nop
Ljoin_l33:
	set numbers, %g1
	set 8, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	ld [%sp+108], %g2
	subcc %g2, %g1, %g0
	be Ljoin_l27
	nop
Ljoin_l48:
	ba Ljoin_l28
	nop
Ljoin_l27:
	set ok, %g1
	mov %g1, %o0
	ld [%sp+108], %g1
	mov %g1, %o1
	set numbers, %g1
	set 8, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	call printf, 0
	nop
Ljoin_l26:
	ba Ljoin_l28
	nop
Ljoin_l28:
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	ld [%sp+112], %g2
	subcc %g2, %g1, %g0
	be Ljoin_l22
	nop
Ljoin_l49:
	ba Ljoin_l23
	nop
Ljoin_l22:
	set ok, %g1
	mov %g1, %o0
	ld [%sp+112], %g1
	mov %g1, %o1
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	call printf, 0
	nop
Ljoin_l21:
	ba Ljoin_l23
	nop
Ljoin_l23:
	set numbers, %g1
	set 16, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	ld [%sp+116], %g2
	subcc %g2, %g1, %g0
	be Ljoin_l17
	nop
Ljoin_l50:
	ba Ljoin_l18
	nop
Ljoin_l17:
	set ok, %g1
	mov %g1, %o0
	ld [%sp+116], %g1
	mov %g1, %o1
	set numbers, %g1
	set 16, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	call printf, 0
	nop
Ljoin_l16:
	ba Ljoin_l18
	nop
Ljoin_l18:
	set numbers, %g1
	set 20, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	ld [%sp+120], %g2
	subcc %g2, %g1, %g0
	be Ljoin_l12
	nop
Ljoin_l51:
	ba Ljoin_l13
	nop
Ljoin_l12:
	set ok, %g1
	mov %g1, %o0
	ld [%sp+120], %g1
	mov %g1, %o1
	set numbers, %g1
	set 20, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	call printf, 0
	nop
Ljoin_l11:
	ba Ljoin_l13
	nop
Ljoin_l13:
	ld [%sp+100], %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l52:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l36
.word Lframe_l53
.section ".pcmap_data"
Lframe_l53:
.byte -1
.byte -1
.byte -1
.byte -36
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -28
.word Lstackdata_l52
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 6
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -32
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -24
.byte -1
.byte -1
.byte -1
.byte -20
.byte -1
.byte -1
.byte -1
.byte -16
.byte -1
.byte -1
.byte -1
.byte -12
.byte -1
.byte -1
.byte -1
.byte -8
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l31
.word Lframe_l54
.section ".pcmap_data"
Lframe_l54:
.byte -1
.byte -1
.byte -1
.byte -36
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -28
.word Lstackdata_l52
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 6
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -32
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -24
.byte -1
.byte -1
.byte -1
.byte -20
.byte -1
.byte -1
.byte -1
.byte -16
.byte -1
.byte -1
.byte -1
.byte -12
.byte -1
.byte -1
.byte -1
.byte -8
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l26
.word Lframe_l55
.section ".pcmap_data"
Lframe_l55:
.byte -1
.byte -1
.byte -1
.byte -36
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -28
.word Lstackdata_l52
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 6
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -32
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -24
.byte -1
.byte -1
.byte -1
.byte -20
.byte -1
.byte -1
.byte -1
.byte -16
.byte -1
.byte -1
.byte -1
.byte -12
.byte -1
.byte -1
.byte -1
.byte -8
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l21
.word Lframe_l56
.section ".pcmap_data"
Lframe_l56:
.byte -1
.byte -1
.byte -1
.byte -36
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -28
.word Lstackdata_l52
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 6
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -32
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -24
.byte -1
.byte -1
.byte -1
.byte -20
.byte -1
.byte -1
.byte -1
.byte -16
.byte -1
.byte -1
.byte -1
.byte -12
.byte -1
.byte -1
.byte -1
.byte -8
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l16
.word Lframe_l57
.section ".pcmap_data"
Lframe_l57:
.byte -1
.byte -1
.byte -1
.byte -36
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -28
.word Lstackdata_l52
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 6
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -32
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -24
.byte -1
.byte -1
.byte -1
.byte -20
.byte -1
.byte -1
.byte -1
.byte -16
.byte -1
.byte -1
.byte -1
.byte -12
.byte -1
.byte -1
.byte -1
.byte -8
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l11
.word Lframe_l58
.section ".pcmap_data"
Lframe_l58:
.byte -1
.byte -1
.byte -1
.byte -36
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -28
.word Lstackdata_l52
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 6
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -32
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -24
.byte -1
.byte -1
.byte -1
.byte -20
.byte -1
.byte -1
.byte -1
.byte -16
.byte -1
.byte -1
.byte -1
.byte -12
.byte -1
.byte -1
.byte -1
.byte -8
.byte 0
.byte 0
.byte 0
.byte 0
.section ".text"
.section ".text"
g:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g2
	st %g2, [%sp+104]
	mov %i2, %g2
	st %g2, [%sp+108]
	st %i7, [%sp+100]
	st %i7, [%sp+96]
Linitialize_continuations_l62:
Lproc_body_start_l61:
	set numbers, %g2
	set 20, %g3
	add %g2, %g3, %g2
	ld [%g2], %g2
	subcc %g1, %g2, %g0
	be Ljoin_l77
	nop
Ljoin_l86:
	ba Ljoin_l78
	nop
Ljoin_l77:
	set ok, %g2
	mov %g2, %o0
	mov %g1, %o1
	set numbers, %g1
	set 20, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	call printf, 0
	nop
Ljoin_l76:
	ba Ljoin_l78
	nop
Ljoin_l78:
	set numbers, %g1
	set 16, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	ld [%sp+104], %g2
	subcc %g2, %g1, %g0
	be Ljoin_l72
	nop
Ljoin_l87:
	ba Ljoin_l73
	nop
Ljoin_l72:
	set ok, %g1
	mov %g1, %o0
	ld [%sp+104], %g1
	mov %g1, %o1
	set numbers, %g1
	set 16, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	call printf, 0
	nop
Ljoin_l71:
	ba Ljoin_l73
	nop
Ljoin_l73:
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	ld [%sp+108], %g2
	subcc %g2, %g1, %g0
	be Ljoin_l67
	nop
Ljoin_l88:
	ba Ljoin_l68
	nop
Ljoin_l67:
	set ok, %g1
	mov %g1, %o0
	ld [%sp+108], %g1
	mov %g1, %o1
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	call printf, 0
	nop
Ljoin_l66:
	ba Ljoin_l68
	nop
Ljoin_l68:
	ld [%sp+100], %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l89:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l76
.word Lframe_l90
.section ".pcmap_data"
Lframe_l90:
.byte -1
.byte -1
.byte -1
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l89
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 3
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -16
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -8
.byte -1
.byte -1
.byte -1
.byte -4
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l71
.word Lframe_l91
.section ".pcmap_data"
Lframe_l91:
.byte -1
.byte -1
.byte -1
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l89
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 3
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -16
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -8
.byte -1
.byte -1
.byte -1
.byte -4
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l66
.word Lframe_l92
.section ".pcmap_data"
Lframe_l92:
.byte -1
.byte -1
.byte -1
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l89
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 3
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -16
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -8
.byte -1
.byte -1
.byte -1
.byte -4
.byte 0
.byte 0
.byte 0
.byte 0
.section ".text"
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
	st %i7, [%sp+100]
	st %i7, [%sp+96]
Linitialize_continuations_l96:
Lproc_body_start_l95:
	set numbers, %g1
	ld [%g1], %g1
	mov %g1, %o0
	set numbers, %g1
	set 4, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o1
	set numbers, %g1
	set 8, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o3
	set numbers, %g1
	set 16, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o4
	set numbers, %g1
	set 20, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o5
	call f, 0
	nop
Ljoin_l103:
	set numbers, %g1
	set 20, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o0
	set numbers, %g1
	set 16, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o1
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	call g, 0
	nop
Ljoin_l100:
	set 0, %g1
	mov %g1, %i0
	ld [%sp+100], %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l111:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l103
.word Lframe_l112
.section ".pcmap_data"
Lframe_l112:
.byte -1
.byte -1
.byte -1
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l111
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -16
.byte 64
.byte 0
.byte 0
.byte 19
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l100
.word Lframe_l113
.section ".pcmap_data"
Lframe_l113:
.byte -1
.byte -1
.byte -1
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l111
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -16
.byte 64
.byte 0
.byte 0
.byte 19
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
.section ".text"
