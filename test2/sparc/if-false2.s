.global main
.global Cmm.global_area
.global Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section ".data"
! memory for global registers
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.global Cmm_stack_growth
.section ".data"
.align 4
Cmm_stack_growth:
.word 0xffffffff
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %l7
	mov %i1, %l7
Linitialize_continuations_l5:
Lproc_body_start_l4:
Ljoin_l8:
	set 0, %l7
	mov %l7, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
