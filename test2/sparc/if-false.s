.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
! memory for global registers
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g1
	mov %i7, %g1
Linitialize_continuations_l5:
Lproc_body_start_l4:
Ljoin_l9:
	set 0, %g2
	mov %g2, %i0
	mov %g1, %i7
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
