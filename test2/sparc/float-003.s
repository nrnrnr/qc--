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
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set 2146435072, %g1
	add %sp, 112, %g2
	set -16, %g3
	add %g2, %g3, %g2
	st %g1, [%g2]
	set 0, %g1
	add %sp, 112, %g2
	set -12, %g3
	add %g2, %g3, %g2
	st %g1, [%g2]
	set 2146435072, %g1
	add %sp, 112, %g2
	set -16, %g3
	add %g2, %g3, %g2
	st %g1, [%g2]
	set 18, %g1
	add %sp, 112, %g2
	set -12, %g3
	add %g2, %g3, %g2
	st %g1, [%g2]
	set 1, %g1
Ljoin_l11:
	set fmt, %g2
	mov %g2, %o0
	add %sp, 112, %g2
	set -12, %g3
	add %g2, %g3, %g2
	ld [%g2], %g2
	mov %g2, %o2
	add %sp, 112, %g2
	set -16, %g3
	add %g2, %g3, %g2
	ld [%g2], %g2
	mov %g2, %o1
	mov %g1, %o3
	st %i7, [%sp+104]
	call printf, 0
	nop
Ljoin_l9:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+104], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l19:
.word 0
.section ".pcmap"
.word Ljoin_l9
.word Lframe_l20
.section ".pcmap_data"
Lframe_l20:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff8
.word Lstackdata_l19
.word 0
.word 4
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0xfffffff0
.word 0
.section ".text"
.section ".data"
fmt:
.byte 102
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 102
.byte 59
.byte 32
.byte 120
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
