.global main
.global my_data
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".data"
my_data:
.byte 104
.byte 101
.byte 108
.byte 108
.byte 111
.byte 10
.byte 0
.section ".text"
foo:
	save %sp, -112, %sp
	mov %i0, %g1
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set my_data, %g2
	mov %g2, %o0
	st %g1, [%sp+96]
	mov %g1, %g2
	call %g2, 0
	nop
Ljoin_l10:
	ld [%sp+96], %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l18:
.word 0
.section ".pcmap"
.word Ljoin_l10
.word Lframe_l19
.section ".pcmap_data"
Lframe_l19:
.word 0xffffffec
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l18
.word 0x80000000
.word 0x80000001
.word 0x80000000
.word 0x80000001
.word 0xfffffff0
.word 0x80000000
.section ".text"
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l23:
Lproc_body_start_l22:
	set printf, %g1
	mov %g1, %o0
	call foo, 0
	nop
Ljoin_l27:
	mov %o0, %g1
	set 0, %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l35:
.word 0
.section ".pcmap"
.word Ljoin_l27
.word Lframe_l36
.section ".pcmap_data"
Lframe_l36:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l35
.word 0x80000000
.word 0x80000003
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0x80000000
.section ".text"
