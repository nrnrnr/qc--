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
a:
.skip 20
b:
.word 0x400921ca
.word 0xc0831271
fmt:
.byte 112
.byte 105
.byte 32
.byte 119
.byte 105
.byte 116
.byte 104
.byte 32
.byte 50
.byte 32
.byte 117
.byte 108
.byte 112
.byte 115
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 49
.byte 56
.byte 103
.byte 10
.byte 0
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g3
	mov %i1, %g3
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set fmt, %g3
	mov %g3, %o0
	set b, %g3
	set 4, %g4
	add %g3, %g4, %g3
	set 0, %g4
	add %g3, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %g1, %l0, %g1
	or %g4, %g1, %g1
	set 1, %g4
	add %g3, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %g1, %l0, %g1
	or %g4, %g1, %g1
	set 2, %g4
	add %g3, %g4, %g4
	ldub [%g4], %g4
	set 8, %l0
	sll %g1, %l0, %g1
	or %g4, %g1, %g1
	set 3, %g4
	add %g3, %g4, %g3
	ldub [%g3], %g3
	set 8, %g4
	sll %g1, %g4, %g1
	or %g3, %g1, %g1
	mov %g1, %o2
	set b, %g1
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
	mov %g1, %o1
	st %i7, [%sp+96]
	call printf, 0
	nop
Ljoin_l9:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l17:
.word 0
.section ".pcmap"
.word Ljoin_l9
.word Lframe_l18
.section ".pcmap_data"
Lframe_l18:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l17
.word 0
.word 2
.word 0
.word 1
.word 0
.word 0
.word 0
.section ".text"
