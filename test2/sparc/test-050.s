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
	mov %i1, %g2
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set fmt, %g2
	mov %g2, %o0
	mov %g1, %o1
	st %i7, [%sp+100]
	st %g1, [%sp+96]
	call printf, 0
	nop
Ljoin_l15:
	set fmt, %g1
	mov %g1, %o0
	ld [%sp+96], %g1
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l12:
	set fmt, %g1
	mov %g1, %o0
	ld [%sp+96], %g1
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l9:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+100], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l23:
.word 0
.section ".pcmap"
.word Ljoin_l15
.word Lframe_l24
.section ".pcmap_data"
Lframe_l24:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff4
.word Lstackdata_l23
.word 0
.word 2
.word 0
.word 1
.word 0xfffffff0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l12
.word Lframe_l25
.section ".pcmap_data"
Lframe_l25:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff4
.word Lstackdata_l23
.word 0
.word 2
.word 0
.word 1
.word 0xfffffff0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l9
.word Lframe_l26
.section ".pcmap_data"
Lframe_l26:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff4
.word Lstackdata_l23
.word 0
.word 2
.word 0
.word 1
.word 0
.word 0
.word 0
.section ".text"
.section ".data"
fmt:
.byte 97
.byte 114
.byte 103
.byte 99
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
