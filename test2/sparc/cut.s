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
nocut:
.byte 110
.byte 111
.byte 32
.byte 99
.byte 117
.byte 116
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
ret:
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 10
.byte 0
.section ".text"
main:
	save %sp, -128, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l14:
	set k_C10, %g1
	add %sp, 128, %g2
	set -16, %g3
	add %g2, %g3, %g2
	st %g1, [%g2]
	add %sp, 128, %g1
	set -128, %g2
	add %g1, %g2, %g1
	add %sp, 128, %g2
	set -12, %g3
	add %g2, %g3, %g2
	st %g1, [%g2]
Lproc_body_start_l13:
	set 0, %g1
	add %sp, 128, %g2
	set -16, %g3
	add %g2, %g3, %g2
	mov %g2, %o0
	st %i7, [%sp+100]
	st %g1, [%sp+96]
	call f, 0
	nop
Ljoin_l25:
	set nocut, %g1
	mov %g1, %o0
	ld [%sp+96], %g1
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l22:
	set 1, %l7
	mov %l7, %i0
	ld [%sp+100], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
k_C10:
	mov %i0, %g1
	set nocut, %g2
	set 3, %g3
	add %g2, %g3, %g2
	mov %g2, %o0
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l18:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+100], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l32:
.word 0
.section ".pcmap"
.word Ljoin_l25
.word Lframe_l33
.section ".pcmap_data"
Lframe_l33:
.word 0x8000005c
.word 0xffffffdc
.word 0xffffffe4
.word Lstackdata_l32
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0xffffffe0
.word 0
.section ".pcmap"
.word Ljoin_l22
.word Lframe_l34
.section ".pcmap_data"
Lframe_l34:
.word 0x8000005c
.word 0xffffffdc
.word 0xffffffe4
.word Lstackdata_l32
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.section ".pcmap"
.word k_C10
.word Lframe_l35
.section ".pcmap_data"
Lframe_l35:
.word 0x8000005c
.word 0xffffff80
.word 0xffffffe4
.word Lstackdata_l32
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l18
.word Lframe_l36
.section ".pcmap_data"
Lframe_l36:
.word 0x8000005c
.word 0xffffffdc
.word 0xffffffe4
.word Lstackdata_l32
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.section ".text"
.section ".text"
f:
	save %sp, -112, %sp
	mov %i0, %g1
Linitialize_continuations_l40:
Lproc_body_start_l39:
	mov %g1, %o0
	st %i7, [%sp+96]
	call g, 0
	nop
Ljoin_l47:
	set ret, %g1
	mov %g1, %o0
	call printf, 0
	nop
Ljoin_l44:
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l55:
.word 0
.section ".pcmap"
.word Ljoin_l47
.word Lframe_l56
.section ".pcmap_data"
Lframe_l56:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l55
.word 0
.word 1
.word 0
.word 1
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l44
.word Lframe_l57
.section ".pcmap_data"
Lframe_l57:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l55
.word 0
.word 1
.word 0
.word 1
.word 0
.word 0
.section ".text"
.section ".text"
g:
	save %sp, -112, %sp
	mov %i0, %g1
Linitialize_continuations_l61:
Lproc_body_start_l60:
	mov %g1, %o0
	st %i7, [%sp+96]
	call h, 0
	nop
Ljoin_l68:
	set ret, %g1
	mov %g1, %o0
	call printf, 0
	nop
Ljoin_l65:
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l76:
.word 0
.section ".pcmap"
.word Ljoin_l68
.word Lframe_l77
.section ".pcmap_data"
Lframe_l77:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l76
.word 0
.word 1
.word 0
.word 1
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l65
.word Lframe_l78
.section ".pcmap_data"
Lframe_l78:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l76
.word 0
.word 1
.word 0
.word 1
.word 0
.word 0
.section ".text"
.section ".text"
h:
	save %sp, -96, %sp
	mov %i0, %l5
Linitialize_continuations_l82:
Lproc_body_start_l81:
	set 99, %i7
	mov %i7, %i0
	set 4, %i7
	add %l5, %i7, %i7
	set 0, %l4
	add %i7, %l4, %l4
	ldub [%l4], %l4
	set 8, %l3
	sll %l6, %l3, %l6
	or %l4, %l6, %l6
	set 1, %l4
	add %i7, %l4, %l4
	ldub [%l4], %l4
	set 8, %l3
	sll %l6, %l3, %l6
	or %l4, %l6, %l6
	set 2, %l4
	add %i7, %l4, %l4
	ldub [%l4], %l4
	set 8, %l3
	sll %l6, %l3, %l6
	or %l4, %l6, %l6
	set 3, %l4
	add %i7, %l4, %i7
	ldub [%i7], %i7
	set 8, %l4
	sll %l6, %l4, %l6
	or %i7, %l6, %i7
	set 0, %l6
	add %l5, %l6, %l6
	ldub [%l6], %l6
	set 8, %l4
	sll %l7, %l4, %l7
	or %l6, %l7, %l7
	set 1, %l6
	add %l5, %l6, %l6
	ldub [%l6], %l6
	set 8, %l4
	sll %l7, %l4, %l7
	or %l6, %l7, %l7
	set 2, %l6
	add %l5, %l6, %l6
	ldub [%l6], %l6
	set 8, %l4
	sll %l7, %l4, %l7
	or %l6, %l7, %l7
	set 3, %l6
	add %l5, %l6, %l6
	ldub [%l6], %l6
	set 8, %l5
	sll %l7, %l5, %l7
	or %l6, %l7, %l7
	ta 3
	jmp %l7
	mov %i7, %sp
.section ".text"
