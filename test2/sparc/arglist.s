.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".data"
numbers:
.word 1
.word 2
.word 3
.word 4
.word 5
.word 6
.word 7
.word 8
.word 9
.word 10
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
	mov %i2, %g3
	mov %i3, %g4
	mov %i4, %l0
	mov %i5, %l1
Linitialize_continuations_l7:
Lproc_body_start_l6:
	set numbers, %l2
	ld [%l2], %l3
	subcc %g1, %l3, %g0
	be Ljoin_l37
	nop
Ljoin_l46:
	ba Ljoin_l38
	nop
Ljoin_l37:
	set ok, %l3
	mov %l3, %o0
	mov %g1, %o1
	set numbers, %g1
	ld [%g1], %l3
	mov %l3, %o2
	st %g2, [%sp+96]
	st %g3, [%sp+100]
	st %g4, [%sp+104]
	st %l0, [%sp+108]
	st %l1, [%sp+112]
	call printf, 0
	nop
Ljoin_l36:
	ld [%sp+96], %g2
	ld [%sp+100], %g3
	ld [%sp+104], %g4
	ld [%sp+108], %l0
	ld [%sp+112], %l1
	ba Ljoin_l38
	nop
Ljoin_l38:
	set numbers, %g1
	set 4, %l2
	add %g1, %l2, %l3
	ld [%l3], %g1
	subcc %g2, %g1, %g0
	be Ljoin_l32
	nop
Ljoin_l47:
	ba Ljoin_l33
	nop
Ljoin_l32:
	set ok, %g1
	mov %g1, %o0
	mov %g2, %o1
	set numbers, %g2
	set 4, %g1
	add %g2, %g1, %l3
	ld [%l3], %g1
	mov %g1, %o2
	st %g3, [%sp+100]
	st %g4, [%sp+104]
	st %l0, [%sp+108]
	st %l1, [%sp+112]
	call printf, 0
	nop
Ljoin_l31:
	ld [%sp+100], %g3
	ld [%sp+104], %g4
	ld [%sp+108], %l0
	ld [%sp+112], %l1
	ba Ljoin_l33
	nop
Ljoin_l33:
	set numbers, %g1
	set 8, %g2
	add %g1, %g2, %l2
	ld [%l2], %g1
	subcc %g3, %g1, %g0
	be Ljoin_l27
	nop
Ljoin_l48:
	ba Ljoin_l28
	nop
Ljoin_l27:
	set ok, %g1
	mov %g1, %o0
	mov %g3, %o1
	set numbers, %g3
	set 8, %g1
	add %g3, %g1, %l2
	ld [%l2], %g1
	mov %g1, %o2
	st %g4, [%sp+104]
	st %l0, [%sp+108]
	st %l1, [%sp+112]
	call printf, 0
	nop
Ljoin_l26:
	ld [%sp+104], %g4
	ld [%sp+108], %l0
	ld [%sp+112], %l1
	ba Ljoin_l28
	nop
Ljoin_l28:
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g3
	ld [%g3], %g1
	subcc %g4, %g1, %g0
	be Ljoin_l22
	nop
Ljoin_l49:
	ba Ljoin_l23
	nop
Ljoin_l22:
	set ok, %g1
	mov %g1, %o0
	mov %g4, %o1
	set numbers, %g4
	set 12, %g1
	add %g4, %g1, %g3
	ld [%g3], %g1
	mov %g1, %o2
	st %l0, [%sp+108]
	st %l1, [%sp+112]
	call printf, 0
	nop
Ljoin_l21:
	ld [%sp+108], %l0
	ld [%sp+112], %l1
	ba Ljoin_l23
	nop
Ljoin_l23:
	set numbers, %g1
	set 16, %g2
	add %g1, %g2, %g3
	ld [%g3], %g1
	subcc %l0, %g1, %g0
	be Ljoin_l17
	nop
Ljoin_l50:
	ba Ljoin_l18
	nop
Ljoin_l17:
	set ok, %g1
	mov %g1, %o0
	mov %l0, %o1
	set numbers, %l0
	set 16, %g1
	add %l0, %g1, %g3
	ld [%g3], %g1
	mov %g1, %o2
	st %l1, [%sp+112]
	call printf, 0
	nop
Ljoin_l16:
	ld [%sp+112], %l1
	ba Ljoin_l18
	nop
Ljoin_l18:
	set numbers, %g1
	set 20, %g2
	add %g1, %g2, %g3
	ld [%g3], %g1
	subcc %l1, %g1, %g0
	be Ljoin_l12
	nop
Ljoin_l51:
	ba Ljoin_l13
	nop
Ljoin_l12:
	set ok, %g1
	mov %g1, %o0
	mov %l1, %o1
	set numbers, %l1
	set 20, %g1
	add %l1, %g1, %g3
	ld [%g3], %g1
	mov %g1, %o2
	call printf, 0
	nop
Ljoin_l11:
	ba Ljoin_l13
	nop
Ljoin_l13:
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l52:
.word 0
.section ".pcmap"
.word Ljoin_l36
.word Lframe_l53
.section ".pcmap_data"
Lframe_l53:
.word 0xffffffdc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l52
.word 0x80000000
.word 0x80000006
.word 0x80000000
.word 0x80000001
.word 0
.word 0xffffffe0
.word 0xffffffe4
.word 0xffffffe8
.word 0xffffffec
.word 0xfffffff0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l31
.word Lframe_l54
.section ".pcmap_data"
Lframe_l54:
.word 0xffffffdc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l52
.word 0x80000000
.word 0x80000006
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0xffffffe4
.word 0xffffffe8
.word 0xffffffec
.word 0xfffffff0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l26
.word Lframe_l55
.section ".pcmap_data"
Lframe_l55:
.word 0xffffffdc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l52
.word 0x80000000
.word 0x80000006
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0xffffffe8
.word 0xffffffec
.word 0xfffffff0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l21
.word Lframe_l56
.section ".pcmap_data"
Lframe_l56:
.word 0xffffffdc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l52
.word 0x80000000
.word 0x80000006
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0
.word 0xffffffec
.word 0xfffffff0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l16
.word Lframe_l57
.section ".pcmap_data"
Lframe_l57:
.word 0xffffffdc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l52
.word 0x80000000
.word 0x80000006
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0xfffffff0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l11
.word Lframe_l58
.section ".pcmap_data"
Lframe_l58:
.word 0xffffffdc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l52
.word 0x80000000
.word 0x80000006
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0x80000000
.section ".text"
.section ".text"
g:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g2
	mov %i2, %g3
Linitialize_continuations_l62:
Lproc_body_start_l61:
	set numbers, %g4
	set 20, %l0
	add %g4, %l0, %l1
	ld [%l1], %g4
	subcc %g1, %g4, %g0
	be Ljoin_l77
	nop
Ljoin_l86:
	ba Ljoin_l78
	nop
Ljoin_l77:
	set ok, %g4
	mov %g4, %o0
	mov %g1, %o1
	set numbers, %g1
	set 20, %g4
	add %g1, %g4, %l1
	ld [%l1], %g1
	mov %g1, %o2
	st %g2, [%sp+96]
	st %g3, [%sp+100]
	call printf, 0
	nop
Ljoin_l76:
	ld [%sp+96], %g2
	ld [%sp+100], %g3
	ba Ljoin_l78
	nop
Ljoin_l78:
	set numbers, %g1
	set 16, %g4
	add %g1, %g4, %l0
	ld [%l0], %g1
	subcc %g2, %g1, %g0
	be Ljoin_l72
	nop
Ljoin_l87:
	ba Ljoin_l73
	nop
Ljoin_l72:
	set ok, %g1
	mov %g1, %o0
	mov %g2, %o1
	set numbers, %g2
	set 16, %g1
	add %g2, %g1, %l0
	ld [%l0], %g1
	mov %g1, %o2
	st %g3, [%sp+100]
	call printf, 0
	nop
Ljoin_l71:
	ld [%sp+100], %g3
	ba Ljoin_l73
	nop
Ljoin_l73:
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g4
	ld [%g4], %g1
	subcc %g3, %g1, %g0
	be Ljoin_l67
	nop
Ljoin_l88:
	ba Ljoin_l68
	nop
Ljoin_l67:
	set ok, %g1
	mov %g1, %o0
	mov %g3, %o1
	set numbers, %g3
	set 12, %g1
	add %g3, %g1, %g4
	ld [%g4], %g1
	mov %g1, %o2
	call printf, 0
	nop
Ljoin_l66:
	ba Ljoin_l68
	nop
Ljoin_l68:
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l89:
.word 0
.section ".pcmap"
.word Ljoin_l76
.word Lframe_l90
.section ".pcmap_data"
Lframe_l90:
.word 0xffffffec
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l89
.word 0x80000000
.word 0x80000003
.word 0x80000000
.word 0x80000001
.word 0
.word 0xfffffff0
.word 0xfffffff4
.word 0x80000000
.section ".pcmap"
.word Ljoin_l71
.word Lframe_l91
.section ".pcmap_data"
Lframe_l91:
.word 0xffffffec
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l89
.word 0x80000000
.word 0x80000003
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0xfffffff4
.word 0x80000000
.section ".pcmap"
.word Ljoin_l66
.word Lframe_l92
.section ".pcmap_data"
Lframe_l92:
.word 0xffffffec
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l89
.word 0x80000000
.word 0x80000003
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0x80000000
.section ".text"
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l96:
Lproc_body_start_l95:
	set numbers, %g1
	ld [%g1], %g2
	mov %g2, %o0
	set numbers, %g2
	set 4, %g1
	add %g2, %g1, %g3
	ld [%g3], %g1
	mov %g1, %o1
	set numbers, %g1
	set 8, %g3
	add %g1, %g3, %g2
	ld [%g2], %g1
	mov %g1, %o2
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g3
	ld [%g3], %g1
	mov %g1, %o3
	set numbers, %g1
	set 16, %g3
	add %g1, %g3, %g2
	ld [%g2], %g1
	mov %g1, %o4
	set numbers, %g1
	set 20, %g2
	add %g1, %g2, %g3
	ld [%g3], %g1
	mov %g1, %o5
	call f, 0
	nop
Ljoin_l103:
	set numbers, %g1
	set 20, %g2
	add %g1, %g2, %g3
	ld [%g3], %g1
	mov %g1, %o0
	set numbers, %g1
	set 16, %g3
	add %g1, %g3, %g2
	ld [%g2], %g1
	mov %g1, %o1
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g3
	ld [%g3], %g1
	mov %g1, %o2
	call g, 0
	nop
Ljoin_l100:
	set 0, %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l111:
.word 0
.section ".pcmap"
.word Ljoin_l103
.word Lframe_l112
.section ".pcmap_data"
Lframe_l112:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l111
.word 0x80000000
.word 0x80000002
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l100
.word Lframe_l113
.section ".pcmap_data"
Lframe_l113:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l111
.word 0x80000000
.word 0x80000002
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0x80000000
.section ".text"
