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
q:
	save %sp, -96, %sp
	mov %i0, %l6
Linitialize_continuations_l6:
Lproc_body_start_l5:
	add %l6, %l6, %l6
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
	mov %l7, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
.section ".text"
main:
	save %sp, -128, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l20:
Lproc_body_start_l19:
	set -559038737, %g1
	add %sp, 128, %g2
	set -16, %g3
	add %g2, %g3, %g2
	st %g1, [%g2]
	add %sp, 128, %g1
	set -16, %g2
	add %g1, %g2, %g1
	set 2, %g2
	udiv %g1, %g2, %g1
	mov %g1, %o0
	st %i7, [%sp+96]
	call q, 0
	nop
Ljoin_l27:
	mov %o0, %g1
	set fmt, %g2
	mov %g2, %o0
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l24:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l35:
.word 1
.word 0xfffffff0
.section ".pcmap"
.word Ljoin_l27
.word Lframe_l36
.section ".pcmap_data"
Lframe_l36:
.word 0x8000005c
.word 0xffffffdc
.word 0xffffffe0
.word Lstackdata_l35
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l24
.word Lframe_l37
.section ".pcmap_data"
Lframe_l37:
.word 0x8000005c
.word 0xffffffdc
.word 0xffffffe0
.word Lstackdata_l35
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
fmt:
.byte 108
.byte 111
.byte 111
.byte 107
.byte 117
.byte 112
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 115
.byte 32
.byte 48
.byte 120
.byte 37
.byte 120
.byte 32
.byte 40
.byte 115
.byte 104
.byte 111
.byte 117
.byte 108
.byte 100
.byte 32
.byte 98
.byte 101
.byte 32
.byte 48
.byte 120
.byte 100
.byte 101
.byte 97
.byte 100
.byte 98
.byte 101
.byte 101
.byte 102
.byte 41
.byte 10
.byte 0
