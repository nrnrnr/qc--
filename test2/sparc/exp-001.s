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
p:
	save %sp, -96, %sp
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set 1, %l7
	set 2, %l6
	set 3, %l5
	add %l7, %l6, %l7
	add %l7, %l5, %l7
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
Linitialize_continuations_l20:
Lproc_body_start_l19:
	st %i7, [%sp+96]
	call p, 0
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
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l35:
.word 0
.section ".pcmap"
.word Ljoin_l27
.word Lframe_l36
.section ".pcmap_data"
Lframe_l36:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
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
.word 0xffffffec
.word 0xfffffff0
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
.byte 116
.byte 111
.byte 116
.byte 97
.byte 108
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
