.global main
.global my_data
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
my_data:
.byte 104
.byte 101
.byte 108
.byte 108
.byte 111
.byte 44
.byte 32
.byte 119
.byte 111
.byte 114
.byte 108
.byte 100
.byte 33
.byte 10
.byte 0
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set my_data, %g1
	mov %g1, %o0
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
