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
.word 0xffffffffffffffff
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %l7
	mov %i1, %l7
	mov %i7, %l7
Linitialize_continuations_l5:
Lproc_body_start_l4:
Ljoin_l8:
	set 0, %l6
	mov %l6, %i0
	st %i7, [%sp+96]
	mov %l7, %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".text"
