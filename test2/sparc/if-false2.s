.global main
.global Cmm.global_area
.global Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section ".data"
! memory for global registers
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g1
	mov %i7, %g1
Linitialize_continuations_l5:
Lproc_body_start_l4:
	ba Ljoin_l8
	nop
Ljoin_l8:
	set 0, %g2
	mov %g2, %i0
	mov %g1, %i7
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
