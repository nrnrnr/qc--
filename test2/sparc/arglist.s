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
.word 0xffffffffffffffff
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
	save %sp, -192, %sp
	st %g1, [%sp+96]
	mov %i0, %g1
	st %g1, [%sp+100]
	mov %i1, %g1
	st %g1, [%sp+104]
	mov %i2, %g1
	st %g1, [%sp+108]
	mov %i3, %g1
	st %g1, [%sp+112]
	mov %i4, %g1
	st %g1, [%sp+116]
	mov %i5, %g1
	st %g1, [%sp+120]
	mov %i7, %g1
Linitialize_continuations_l7:
Lproc_body_start_l6:
	st %g1, [%sp+124]
	set numbers, %g1
	st %g1, [%sp+128]
	set 0, %g1
	st %g2, [%sp+132]
	ld [%sp+128], %g2
	add %g2, %g1, %g1
	ldub [%g1], %g1
	st %g1, [%sp+136]
	set 8, %g1
	sll %l7, %g1, %g1
	ld [%sp+136], %l7
	or %l7, %g1, %g1
	set 1, %l7
	add %g2, %l7, %l7
	ldub [%l7], %l7
	st %g1, [%sp+140]
	set 8, %g1
	ld [%sp+140], %g2
	sll %g2, %g1, %g1
	or %l7, %g1, %g1
	set 2, %g2
	ld [%sp+128], %l7
	add %l7, %g2, %g2
	ldub [%g2], %g2
	st %g1, [%sp+140]
	set 8, %g1
	st %g2, [%sp+136]
	ld [%sp+140], %g2
	sll %g2, %g1, %g1
	ld [%sp+136], %g2
	or %g2, %g1, %g1
	set 3, %g2
	add %l7, %g2, %g2
	ldub [%g2], %g2
	set 8, %l7
	sll %g1, %l7, %g1
	or %g2, %g1, %g1
	ld [%sp+100], %g2
	subcc %g2, %g1, %g0
	be Ljoin_l37
	nop
Ljoin_l46:
	ba Ljoin_l38
	nop
Ljoin_l37:
	set ok, %g1
	mov %g1, %o0
	mov %g2, %o1
	set numbers, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %l7
	sll %l6, %l7, %l6
	or %g2, %l6, %g2
	set 1, %l6
	add %g1, %l6, %l6
	ldub [%l6], %l6
	set 8, %l7
	sll %g2, %l7, %g2
	or %l6, %g2, %g2
	set 2, %l6
	add %g1, %l6, %l6
	ldub [%l6], %l6
	set 8, %l7
	sll %g2, %l7, %g2
	or %l6, %g2, %g2
	set 3, %l6
	add %g1, %l6, %g1
	ldub [%g1], %g1
	set 8, %l6
	sll %g2, %l6, %g2
	or %g1, %g2, %g1
	mov %g1, %o2
	st %i7, [%sp+176]
	st %l5, [%sp+172]
	st %l4, [%sp+168]
	st %l3, [%sp+164]
	st %l2, [%sp+160]
	st %l1, [%sp+156]
	st %l0, [%sp+152]
	st %g4, [%sp+148]
	st %g3, [%sp+144]
	call printf, 0
	nop
Ljoin_l36:
	ld [%sp+176], %i7
	ld [%sp+172], %l5
	ld [%sp+168], %l4
	ld [%sp+164], %l3
	ld [%sp+160], %l2
	ld [%sp+156], %l1
	ld [%sp+152], %l0
	ld [%sp+148], %g4
	ld [%sp+144], %g3
	ba Ljoin_l38
	nop
Ljoin_l38:
	set numbers, %g1
	set 4, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %l6
	sll %l5, %l6, %l5
	or %g2, %l5, %g2
	set 1, %l5
	add %g1, %l5, %l5
	ldub [%l5], %l5
	set 8, %l6
	sll %g2, %l6, %g2
	or %l5, %g2, %g2
	set 2, %l5
	add %g1, %l5, %l5
	ldub [%l5], %l5
	set 8, %l6
	sll %g2, %l6, %g2
	or %l5, %g2, %g2
	set 3, %l5
	add %g1, %l5, %g1
	ldub [%g1], %g1
	set 8, %l5
	sll %g2, %l5, %g2
	or %g1, %g2, %g1
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
	mov %g2, %o1
	set numbers, %g1
	set 4, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %l5
	sll %l4, %l5, %l4
	or %g2, %l4, %g2
	set 1, %l4
	add %g1, %l4, %l4
	ldub [%l4], %l4
	set 8, %l5
	sll %g2, %l5, %g2
	or %l4, %g2, %g2
	set 2, %l4
	add %g1, %l4, %l4
	ldub [%l4], %l4
	set 8, %l5
	sll %g2, %l5, %g2
	or %l4, %g2, %g2
	set 3, %l4
	add %g1, %l4, %g1
	ldub [%g1], %g1
	set 8, %l4
	sll %g2, %l4, %g2
	or %g1, %g2, %g1
	mov %g1, %o2
	st %i7, [%sp+176]
	st %l3, [%sp+164]
	st %l2, [%sp+160]
	st %l1, [%sp+156]
	st %l0, [%sp+152]
	st %g4, [%sp+148]
	st %g3, [%sp+144]
	call printf, 0
	nop
Ljoin_l31:
	ld [%sp+176], %i7
	ld [%sp+164], %l3
	ld [%sp+160], %l2
	ld [%sp+156], %l1
	ld [%sp+152], %l0
	ld [%sp+148], %g4
	ld [%sp+144], %g3
	ba Ljoin_l33
	nop
Ljoin_l33:
	set numbers, %g1
	set 8, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %l4
	sll %l3, %l4, %l3
	or %g2, %l3, %g2
	set 1, %l3
	add %g1, %l3, %l3
	ldub [%l3], %l3
	set 8, %l4
	sll %g2, %l4, %g2
	or %l3, %g2, %g2
	set 2, %l3
	add %g1, %l3, %l3
	ldub [%l3], %l3
	set 8, %l4
	sll %g2, %l4, %g2
	or %l3, %g2, %g2
	set 3, %l3
	add %g1, %l3, %g1
	ldub [%g1], %g1
	set 8, %l3
	sll %g2, %l3, %g2
	or %g1, %g2, %g1
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
	mov %g2, %o1
	set numbers, %g1
	set 8, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %l3
	sll %l2, %l3, %l2
	or %g2, %l2, %g2
	set 1, %l2
	add %g1, %l2, %l2
	ldub [%l2], %l2
	set 8, %l3
	sll %g2, %l3, %g2
	or %l2, %g2, %g2
	set 2, %l2
	add %g1, %l2, %l2
	ldub [%l2], %l2
	set 8, %l3
	sll %g2, %l3, %g2
	or %l2, %g2, %g2
	set 3, %l2
	add %g1, %l2, %g1
	ldub [%g1], %g1
	set 8, %l2
	sll %g2, %l2, %g2
	or %g1, %g2, %g1
	mov %g1, %o2
	st %i7, [%sp+176]
	st %l1, [%sp+156]
	st %l0, [%sp+152]
	st %g4, [%sp+148]
	st %g3, [%sp+144]
	call printf, 0
	nop
Ljoin_l26:
	ld [%sp+176], %i7
	ld [%sp+156], %l1
	ld [%sp+152], %l0
	ld [%sp+148], %g4
	ld [%sp+144], %g3
	ba Ljoin_l28
	nop
Ljoin_l28:
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %l2
	sll %l1, %l2, %l1
	or %g2, %l1, %g2
	set 1, %l1
	add %g1, %l1, %l1
	ldub [%l1], %l1
	set 8, %l2
	sll %g2, %l2, %g2
	or %l1, %g2, %g2
	set 2, %l1
	add %g1, %l1, %l1
	ldub [%l1], %l1
	set 8, %l2
	sll %g2, %l2, %g2
	or %l1, %g2, %g2
	set 3, %l1
	add %g1, %l1, %g1
	ldub [%g1], %g1
	set 8, %l1
	sll %g2, %l1, %g2
	or %g1, %g2, %g1
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
	mov %g2, %o1
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %l1
	sll %l0, %l1, %l0
	or %g2, %l0, %g2
	set 1, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g2, %l1, %g2
	or %l0, %g2, %g2
	set 2, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g2, %l1, %g2
	or %l0, %g2, %g2
	set 3, %l0
	add %g1, %l0, %g1
	ldub [%g1], %g1
	set 8, %l0
	sll %g2, %l0, %g2
	or %g1, %g2, %g1
	mov %g1, %o2
	st %i7, [%sp+176]
	st %g4, [%sp+148]
	st %g3, [%sp+144]
	call printf, 0
	nop
Ljoin_l21:
	ld [%sp+176], %i7
	ld [%sp+148], %g4
	ld [%sp+144], %g3
	ba Ljoin_l23
	nop
Ljoin_l23:
	set numbers, %g1
	set 16, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %l0
	sll %g4, %l0, %g4
	or %g2, %g4, %g2
	set 1, %g4
	add %g1, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %g2, %l0, %g2
	or %g4, %g2, %g2
	set 2, %g4
	add %g1, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %g2, %l0, %g2
	or %g4, %g2, %g2
	set 3, %g4
	add %g1, %g4, %g1
	ldub [%g1], %g1
	set 8, %g4
	sll %g2, %g4, %g2
	or %g1, %g2, %g1
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
	mov %g2, %o1
	set numbers, %g1
	set 16, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %g4
	sll %g3, %g4, %g3
	or %g2, %g3, %g2
	set 1, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 2, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 3, %g3
	add %g1, %g3, %g1
	ldub [%g1], %g1
	set 8, %g3
	sll %g2, %g3, %g2
	or %g1, %g2, %g1
	mov %g1, %o2
	st %i7, [%sp+176]
	call printf, 0
	nop
Ljoin_l16:
	ld [%sp+176], %i7
	ba Ljoin_l18
	nop
Ljoin_l18:
	set numbers, %g1
	set 20, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %g3
	ld [%sp+132], %g4
	sll %g4, %g3, %g3
	or %g2, %g3, %g2
	set 1, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 2, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 3, %g3
	add %g1, %g3, %g1
	ldub [%g1], %g1
	set 8, %g3
	sll %g2, %g3, %g2
	or %g1, %g2, %g1
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
	mov %g2, %o1
	set numbers, %g1
	set 20, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %g3
	ld [%sp+96], %g4
	sll %g4, %g3, %g3
	or %g2, %g3, %g2
	set 1, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 2, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 3, %g3
	add %g1, %g3, %g1
	ldub [%g1], %g1
	set 8, %g3
	sll %g2, %g3, %g2
	or %g1, %g2, %g1
	mov %g1, %o2
	st %i7, [%sp+176]
	call printf, 0
	nop
Ljoin_l11:
	ld [%sp+176], %i7
	ba Ljoin_l13
	nop
Ljoin_l13:
	st %i7, [%sp+176]
	ld [%sp+124], %i7
	ld [%sp+176], %i7
	! Evil recognizer deleted add %sp, 192, %sp
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
.word 0x8000005c
.word 0xffffff9c
.word 0xffffffbc
.word Lstackdata_l52
.word 1
.word 6
.word 0
.word 1
.word 49
.word 0xfffffff0
.word 0
.word 0xffffffa8
.word 0xffffffac
.word 0xffffffb0
.word 0xffffffb4
.word 0xffffffb8
.word 0
.section ".pcmap"
.word Ljoin_l31
.word Lframe_l54
.section ".pcmap_data"
Lframe_l54:
.word 0x8000005c
.word 0xffffff9c
.word 0xffffffbc
.word Lstackdata_l52
.word 1
.word 6
.word 0
.word 1
.word 49
.word 0xfffffff0
.word 0
.word 0
.word 0xffffffac
.word 0xffffffb0
.word 0xffffffb4
.word 0xffffffb8
.word 0
.section ".pcmap"
.word Ljoin_l26
.word Lframe_l55
.section ".pcmap_data"
Lframe_l55:
.word 0x8000005c
.word 0xffffff9c
.word 0xffffffbc
.word Lstackdata_l52
.word 1
.word 6
.word 0
.word 1
.word 49
.word 0xfffffff0
.word 0
.word 0
.word 0
.word 0xffffffb0
.word 0xffffffb4
.word 0xffffffb8
.word 0
.section ".pcmap"
.word Ljoin_l21
.word Lframe_l56
.section ".pcmap_data"
Lframe_l56:
.word 0x8000005c
.word 0xffffff9c
.word 0xffffffbc
.word Lstackdata_l52
.word 1
.word 6
.word 0
.word 1
.word 49
.word 0xfffffff0
.word 0
.word 0
.word 0
.word 0
.word 0xffffffb4
.word 0xffffffb8
.word 0
.section ".pcmap"
.word Ljoin_l16
.word Lframe_l57
.section ".pcmap_data"
Lframe_l57:
.word 0x8000005c
.word 0xffffff9c
.word 0xffffffbc
.word Lstackdata_l52
.word 1
.word 6
.word 0
.word 1
.word 49
.word 0xfffffff0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0xffffffb8
.word 0
.section ".pcmap"
.word Ljoin_l11
.word Lframe_l58
.section ".pcmap_data"
Lframe_l58:
.word 0x8000005c
.word 0xffffff9c
.word 0xffffffbc
.word Lstackdata_l52
.word 1
.word 6
.word 0
.word 1
.word 49
.word 0xfffffff0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.section ".text"
.section ".text"
g:
	save %sp, -128, %sp
	mov %i0, %l2
	mov %i1, %l3
	mov %i2, %l4
	mov %i7, %l5
Linitialize_continuations_l62:
Lproc_body_start_l61:
	set numbers, %l6
	set 20, %l7
	add %l6, %l7, %l6
	set 0, %l7
	add %l6, %l7, %l7
	ldub [%l7], %l7
	st %g1, [%sp+96]
	set 8, %g1
	sll %l1, %g1, %g1
	or %l7, %g1, %g1
	set 1, %l1
	add %l6, %l1, %l1
	ldub [%l1], %l1
	set 8, %l7
	sll %g1, %l7, %g1
	or %l1, %g1, %g1
	set 2, %l1
	add %l6, %l1, %l1
	ldub [%l1], %l1
	set 8, %l7
	sll %g1, %l7, %g1
	or %l1, %g1, %g1
	set 3, %l1
	add %l6, %l1, %l1
	ldub [%l1], %l1
	set 8, %l6
	sll %g1, %l6, %g1
	or %l1, %g1, %g1
	subcc %l2, %g1, %g0
	be Ljoin_l77
	nop
Ljoin_l86:
	ba Ljoin_l78
	nop
Ljoin_l77:
	set ok, %g1
	mov %g1, %o0
	mov %l2, %o1
	set numbers, %g1
	set 20, %l1
	add %g1, %l1, %g1
	set 0, %l1
	add %g1, %l1, %l1
	ldub [%l1], %l1
	set 8, %l2
	sll %l0, %l2, %l0
	or %l1, %l0, %l0
	set 1, %l1
	add %g1, %l1, %l1
	ldub [%l1], %l1
	set 8, %l2
	sll %l0, %l2, %l0
	or %l1, %l0, %l0
	set 2, %l1
	add %g1, %l1, %l1
	ldub [%l1], %l1
	set 8, %l2
	sll %l0, %l2, %l0
	or %l1, %l0, %l0
	set 3, %l1
	add %g1, %l1, %g1
	ldub [%g1], %g1
	set 8, %l1
	sll %l0, %l1, %l0
	or %g1, %l0, %g1
	mov %g1, %o2
	st %i7, [%sp+124]
	st %l5, [%sp+120]
	st %l3, [%sp+112]
	st %l4, [%sp+116]
	st %g4, [%sp+108]
	st %g3, [%sp+104]
	st %g2, [%sp+100]
	call printf, 0
	nop
Ljoin_l76:
	ld [%sp+124], %i7
	ld [%sp+120], %l5
	ld [%sp+112], %l3
	ld [%sp+116], %l4
	ld [%sp+108], %g4
	ld [%sp+104], %g3
	ld [%sp+100], %g2
	ba Ljoin_l78
	nop
Ljoin_l78:
	set numbers, %g1
	set 16, %l0
	add %g1, %l0, %g1
	set 0, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g4, %l1, %g4
	or %l0, %g4, %g4
	set 1, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g4, %l1, %g4
	or %l0, %g4, %g4
	set 2, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g4, %l1, %g4
	or %l0, %g4, %g4
	set 3, %l0
	add %g1, %l0, %g1
	ldub [%g1], %g1
	set 8, %l0
	sll %g4, %l0, %g4
	or %g1, %g4, %g1
	subcc %l3, %g1, %g0
	be Ljoin_l72
	nop
Ljoin_l87:
	ba Ljoin_l73
	nop
Ljoin_l72:
	set ok, %g1
	mov %g1, %o0
	mov %l3, %o1
	set numbers, %g1
	set 16, %g4
	add %g1, %g4, %g1
	set 0, %g4
	add %g1, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %g3, %l0, %g3
	or %g4, %g3, %g3
	set 1, %g4
	add %g1, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %g3, %l0, %g3
	or %g4, %g3, %g3
	set 2, %g4
	add %g1, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %g3, %l0, %g3
	or %g4, %g3, %g3
	set 3, %g4
	add %g1, %g4, %g1
	ldub [%g1], %g1
	set 8, %g4
	sll %g3, %g4, %g3
	or %g1, %g3, %g1
	mov %g1, %o2
	st %i7, [%sp+124]
	st %l5, [%sp+120]
	st %l4, [%sp+116]
	st %g2, [%sp+100]
	call printf, 0
	nop
Ljoin_l71:
	ld [%sp+124], %i7
	ld [%sp+120], %l5
	ld [%sp+116], %l4
	ld [%sp+100], %g2
	ba Ljoin_l73
	nop
Ljoin_l73:
	set numbers, %g1
	set 12, %g3
	add %g1, %g3, %g1
	set 0, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 1, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 2, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 3, %g3
	add %g1, %g3, %g1
	ldub [%g1], %g1
	set 8, %g3
	sll %g2, %g3, %g2
	or %g1, %g2, %g1
	subcc %l4, %g1, %g0
	be Ljoin_l67
	nop
Ljoin_l88:
	ba Ljoin_l68
	nop
Ljoin_l67:
	set ok, %g1
	mov %g1, %o0
	mov %l4, %o1
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %g3
	ld [%sp+96], %g4
	sll %g4, %g3, %g3
	or %g2, %g3, %g2
	set 1, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 2, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 3, %g3
	add %g1, %g3, %g1
	ldub [%g1], %g1
	set 8, %g3
	sll %g2, %g3, %g2
	or %g1, %g2, %g1
	mov %g1, %o2
	st %i7, [%sp+124]
	st %l5, [%sp+120]
	call printf, 0
	nop
Ljoin_l66:
	ld [%sp+124], %i7
	ld [%sp+120], %l5
	ba Ljoin_l68
	nop
Ljoin_l68:
	st %i7, [%sp+124]
	mov %l5, %i7
	ld [%sp+124], %i7
	! Evil recognizer deleted add %sp, 128, %sp
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
.word 0x8000005c
.word 0xffffffdc
.word 0xfffffff8
.word Lstackdata_l89
.word 1
.word 3
.word 0
.word 1
.word 49
.word 0xfffffffc
.word 0
.word 0xfffffff0
.word 0xfffffff4
.word 0
.section ".pcmap"
.word Ljoin_l71
.word Lframe_l91
.section ".pcmap_data"
Lframe_l91:
.word 0x8000005c
.word 0xffffffdc
.word 0xfffffff8
.word Lstackdata_l89
.word 1
.word 3
.word 0
.word 1
.word 49
.word 0xfffffffc
.word 0
.word 0
.word 0xfffffff4
.word 0
.section ".pcmap"
.word Ljoin_l66
.word Lframe_l92
.section ".pcmap_data"
Lframe_l92:
.word 0x8000005c
.word 0xffffffdc
.word 0xfffffff8
.word Lstackdata_l89
.word 1
.word 3
.word 0
.word 1
.word 49
.word 0xfffffffc
.word 0
.word 0
.word 0
.word 0
.section ".text"
.section ".text"
main:
	save %sp, -128, %sp
	mov %i0, %l5
	mov %i1, %l5
	mov %i7, %l5
Linitialize_continuations_l96:
Lproc_body_start_l95:
	set numbers, %l6
	set 0, %l7
	add %l6, %l7, %l7
	ldub [%l7], %l7
	st %g1, [%sp+96]
	set 8, %g1
	sll %g4, %g1, %g1
	or %l7, %g1, %g1
	set 1, %g4
	add %l6, %g4, %g4
	ldub [%g4], %g4
	set 8, %l7
	sll %g1, %l7, %g1
	or %g4, %g1, %g1
	set 2, %g4
	add %l6, %g4, %g4
	ldub [%g4], %g4
	set 8, %l7
	sll %g1, %l7, %g1
	or %g4, %g1, %g1
	set 3, %g4
	add %l6, %g4, %g4
	ldub [%g4], %g4
	set 8, %l6
	sll %g1, %l6, %g1
	or %g4, %g1, %g1
	mov %g1, %o0
	set numbers, %g1
	set 4, %g4
	add %g1, %g4, %g1
	set 0, %g4
	add %g1, %g4, %g4
	ldub [%g4], %g4
	set 8, %l6
	sll %l0, %l6, %l0
	or %g4, %l0, %g4
	set 1, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l6
	sll %g4, %l6, %g4
	or %l0, %g4, %g4
	set 2, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l6
	sll %g4, %l6, %g4
	or %l0, %g4, %g4
	set 3, %l0
	add %g1, %l0, %g1
	ldub [%g1], %g1
	set 8, %l0
	sll %g4, %l0, %g4
	or %g1, %g4, %g1
	mov %g1, %o1
	set numbers, %g1
	set 8, %g4
	add %g1, %g4, %g1
	set 0, %g4
	add %g1, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %l1, %l0, %l0
	or %g4, %l0, %g4
	set 1, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g4, %l1, %g4
	or %l0, %g4, %g4
	set 2, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g4, %l1, %g4
	or %l0, %g4, %g4
	set 3, %l0
	add %g1, %l0, %g1
	ldub [%g1], %g1
	set 8, %l0
	sll %g4, %l0, %g4
	or %g1, %g4, %g1
	mov %g1, %o2
	set numbers, %g1
	set 12, %g4
	add %g1, %g4, %g1
	set 0, %g4
	add %g1, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %l2, %l0, %l0
	or %g4, %l0, %g4
	set 1, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g4, %l1, %g4
	or %l0, %g4, %g4
	set 2, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g4, %l1, %g4
	or %l0, %g4, %g4
	set 3, %l0
	add %g1, %l0, %g1
	ldub [%g1], %g1
	set 8, %l0
	sll %g4, %l0, %g4
	or %g1, %g4, %g1
	mov %g1, %o3
	set numbers, %g1
	set 16, %g4
	add %g1, %g4, %g1
	set 0, %g4
	add %g1, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %l3, %l0, %l0
	or %g4, %l0, %g4
	set 1, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g4, %l1, %g4
	or %l0, %g4, %g4
	set 2, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g4, %l1, %g4
	or %l0, %g4, %g4
	set 3, %l0
	add %g1, %l0, %g1
	ldub [%g1], %g1
	set 8, %l0
	sll %g4, %l0, %g4
	or %g1, %g4, %g1
	mov %g1, %o4
	set numbers, %g1
	set 20, %g4
	add %g1, %g4, %g1
	set 0, %g4
	add %g1, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %l4, %l0, %l0
	or %g4, %l0, %g4
	set 1, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g4, %l1, %g4
	or %l0, %g4, %g4
	set 2, %l0
	add %g1, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g4, %l1, %g4
	or %l0, %g4, %g4
	set 3, %l0
	add %g1, %l0, %g1
	ldub [%g1], %g1
	set 8, %l0
	sll %g4, %l0, %g4
	or %g1, %g4, %g1
	mov %g1, %o5
	st %i7, [%sp+112]
	st %l5, [%sp+108]
	st %g3, [%sp+104]
	st %g2, [%sp+100]
	call f, 0
	nop
Ljoin_l103:
	set numbers, %g1
	set 20, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %g3
	ld [%sp+96], %g4
	sll %g4, %g3, %g3
	or %g2, %g3, %g2
	set 1, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 2, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 3, %g3
	add %g1, %g3, %g1
	ldub [%g1], %g1
	set 8, %g3
	sll %g2, %g3, %g2
	or %g1, %g2, %g1
	mov %g1, %o0
	set numbers, %g1
	set 16, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %g3
	ld [%sp+100], %g4
	sll %g4, %g3, %g3
	or %g2, %g3, %g2
	set 1, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 2, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 3, %g3
	add %g1, %g3, %g1
	ldub [%g1], %g1
	set 8, %g3
	sll %g2, %g3, %g2
	or %g1, %g2, %g1
	mov %g1, %o1
	set numbers, %g1
	set 12, %g2
	add %g1, %g2, %g1
	set 0, %g2
	add %g1, %g2, %g2
	ldub [%g2], %g2
	set 8, %g3
	ld [%sp+104], %g4
	sll %g4, %g3, %g3
	or %g2, %g3, %g2
	set 1, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 2, %g3
	add %g1, %g3, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g2, %g4, %g2
	or %g3, %g2, %g2
	set 3, %g3
	add %g1, %g3, %g1
	ldub [%g1], %g1
	set 8, %g3
	sll %g2, %g3, %g2
	or %g1, %g2, %g1
	mov %g1, %o2
	call g, 0
	nop
Ljoin_l100:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+108], %i7
	ld [%sp+112], %i7
	! Evil recognizer deleted add %sp, 128, %sp
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
.word 0x8000005c
.word 0xffffffdc
.word 0xffffffec
.word Lstackdata_l111
.word 1
.word 2
.word 0
.word 1
.word 49
.word 0xfffffff0
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l100
.word Lframe_l113
.section ".pcmap_data"
Lframe_l113:
.word 0x8000005c
.word 0xffffffdc
.word 0xffffffec
.word Lstackdata_l111
.word 1
.word 2
.word 0
.word 1
.word 49
.word 0xfffffff0
.word 0
.word 0
.word 0
.section ".text"
