.global incn
.section ".data"
Cmm.ref_to_global_area:
! reference to global-register signature
.word Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec
.section ".text"
incn:
	save %sp, -112, %sp
	mov %i7, %l7
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set Cmm.global_area, %l6
	ld [%l6], %l6
	set 1, %l5
	add %l6, %l5, %l6
	set Cmm.global_area, %l5
	st %l6, [%l5]
	st %i7, [%sp+96]
	mov %l7, %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".text"
