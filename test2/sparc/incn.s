.global incn
.section ".data"
Cmm.ref_to_global_area:
! reference to global-register signature
.word Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec
.section ".text"
incn:
	save %sp, -96, %sp
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set Cmm.global_area, %l7
	ld [%l7], %l7
	set 1, %l6
	add %l7, %l6, %l7
	set Cmm.global_area, %l6
	st %l7, [%l6]
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
