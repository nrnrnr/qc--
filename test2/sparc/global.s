.global main
.global Cmm.global_area
.global Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec
.section ".data"
/* memory for global registers */
.align 8
Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec:
Cmm.global_area:
.skip 4
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set 99, %g1
	set Cmm.global_area, %g2
	st %g1, [%g2]
	set nvalue, %g1
	mov %g1, %o0
	set Cmm.global_area, %g1
	ld [%g1], %g2
	mov %g2, %o1
	call printf, 0
	nop
Ljoin_l18:
	set callincn, %g1
	mov %g1, %o0
	call printf, 0
	nop
Ljoin_l15:
	call incn, 0
	nop
Ljoin_l12:
	set nvalue, %g1
	mov %g1, %o0
	set Cmm.global_area, %g1
	ld [%g1], %g2
	mov %g2, %o1
	call printf, 0
	nop
Ljoin_l9:
	set 0, %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l26:
.word 0
.section ".pcmap"
.word Ljoin_l18
.word Lframe_l27
.section ".pcmap_data"
Lframe_l27:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l26
.word 0x80000000
.word 0x80000002
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l15
.word Lframe_l28
.section ".pcmap_data"
Lframe_l28:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l26
.word 0x80000000
.word 0x80000002
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l12
.word Lframe_l29
.section ".pcmap_data"
Lframe_l29:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l26
.word 0x80000000
.word 0x80000002
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l9
.word Lframe_l30
.section ".pcmap_data"
Lframe_l30:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l26
.word 0x80000000
.word 0x80000002
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0x80000000
.section ".text"
.section ".data"
nvalue:
.byte 103
.byte 108
.byte 111
.byte 98
.byte 97
.byte 108
.byte 32
.byte 118
.byte 97
.byte 114
.byte 105
.byte 97
.byte 98
.byte 108
.byte 101
.byte 32
.byte 110
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
callincn:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 101
.byte 120
.byte 116
.byte 101
.byte 114
.byte 110
.byte 97
.byte 108
.byte 32
.byte 102
.byte 117
.byte 110
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 105
.byte 110
.byte 99
.byte 110
.byte 46
.byte 46
.byte 46
.byte 10
.byte 0
