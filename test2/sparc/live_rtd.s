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
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set 0, %g1
	mov %g1, %o0
	st %i7, [%sp+96]
	call exit, 0
	nop
Lpostcall_l8:
.section ".pcmap_data"
Lstackdata_l16:
.word 0
.section ".pcmap"
.word Lpostcall_l8
.word Lframe_l17
.section ".pcmap_data"
Lframe_l17:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l16
.word 0
.word 0
.word 0
.word 1
.word 0
.section ".text"
