.global incn
.section ".data"
Cmm.ref_to_global_area:
! reference to global-register signature
.word Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec
.section ".text"
incn:
	save %sp, -96, %sp
	mov %i7, %g1
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set Cmm.global_area, %g2
	ld [%g2], %g2
	set 1, %g3
	add %g2, %g3, %g3
	set Cmm.global_area, %g2
	st %g3, [%g2]
	mov %g1, %i7
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
