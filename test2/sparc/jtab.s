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
.section ".data"
.align 4
jump_tab:
.word L1
.word L2
.word L3
.section ".text"
f:
	save %sp, -96, %sp
	mov %i0, %l6
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set jump_tab, %l5
	set 4, %l4
	smul %l4, %l6, %l6
	add %l5, %l6, %l6
	set 0, %l5
	add %l6, %l5, %l5
	ldub [%l5], %l5
	set 8, %l4
	sll %l7, %l4, %l7
	or %l5, %l7, %l7
	set 1, %l5
	add %l6, %l5, %l5
	ldub [%l5], %l5
	set 8, %l4
	sll %l7, %l4, %l7
	or %l5, %l7, %l7
	set 2, %l5
	add %l6, %l5, %l5
	ldub [%l5], %l5
	set 8, %l4
	sll %l7, %l4, %l7
	or %l5, %l7, %l7
	set 3, %l5
	add %l6, %l5, %l6
	ldub [%l6], %l6
	set 8, %l5
	sll %l7, %l5, %l7
	or %l6, %l7, %l7
	jmp %l7
	nop
L1:
	set 1, %l7
	mov %l7, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
L2:
	set 2, %l7
	mov %l7, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
L3:
	set 3, %l7
	mov %l7, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l22:
Lproc_body_start_l21:
	set 0, %g1
	mov %g1, %o0
	st %i7, [%sp+96]
	call f, 0
	nop
Ljoin_l41:
	mov %o0, %g1
	set fmt, %g2
	mov %g2, %o0
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l38:
	set 1, %g1
	mov %g1, %o0
	call f, 0
	nop
Ljoin_l35:
	mov %o0, %g1
	set fmt, %g2
	mov %g2, %o0
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l32:
	set 2, %g1
	mov %g1, %o0
	call f, 0
	nop
Ljoin_l29:
	mov %o0, %g1
	set fmt, %g2
	mov %g2, %o0
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l26:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l49:
.word 0
.section ".pcmap"
.word Ljoin_l41
.word Lframe_l50
.section ".pcmap_data"
Lframe_l50:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l49
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l38
.word Lframe_l51
.section ".pcmap_data"
Lframe_l51:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l49
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l35
.word Lframe_l52
.section ".pcmap_data"
Lframe_l52:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l49
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l32
.word Lframe_l53
.section ".pcmap_data"
Lframe_l53:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l49
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l29
.word Lframe_l54
.section ".pcmap_data"
Lframe_l54:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l49
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l26
.word Lframe_l55
.section ".pcmap_data"
Lframe_l55:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l49
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.section ".text"
.section ".data"
.align 4
fmt:
.byte 67
.byte 111
.byte 117
.byte 110
.byte 116
.byte 105
.byte 110
.byte 103
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
