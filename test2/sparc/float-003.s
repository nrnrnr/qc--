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
	mov %i0, %g1
	mov %i1, %g1
	mov %i7, %g1
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set 2146435072, %g2
	add %sp, 112, %g3
	set -16, %g4
	add %g3, %g4, %g3
	st %g2, [%g3]
	set 0, %g2
	add %sp, 112, %g3
	set -12, %g4
	add %g3, %g4, %g3
	st %g2, [%g3]
	set 2146435072, %g2
	add %sp, 112, %g3
	set -16, %g4
	add %g3, %g4, %g3
	st %g2, [%g3]
	set 18, %g2
	add %sp, 112, %g3
	set -12, %g4
	add %g3, %g4, %g3
	st %g2, [%g3]
	set 1, %g2
Ljoin_l11:
	set fmt, %g3
	mov %g3, %o0
	add %sp, 112, %g3
	set -12, %g4
	add %g3, %g4, %g3
	ld [%g3], %g3
	mov %g3, %o2
	add %sp, 112, %g3
	set -16, %g4
	add %g3, %g4, %g3
	ld [%g3], %g3
	mov %g3, %o1
	mov %g2, %o3
	st %i7, [%sp+108]
	st %g1, [%sp+104]
	call printf, 0
	nop
Ljoin_l9:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+104], %i7
	ld [%sp+108], %i7
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
.word 1
.word 4
.word 0
.word 1
.word 49
.word 0xfffffffc
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
