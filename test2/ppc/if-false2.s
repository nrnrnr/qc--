.globl _main
.globl _Cmm.global_area
.globl _Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section __DATA,data
; memory for global registers
_Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
_Cmm.global_area:
.text
_main:
	addi r1,r1,-64
	mflr r4
_Linitialize_continuations_l4:
_Lproc_body_start_l3:
	bl _Lpic_fun_l12
_Lpic_l11:
_Lpic_fun_l12:
	mflr r3
_Lpic_end_l13:
_Ljoin_l7:
	addi r3,0,0
	addis r3,r3,0
	mtlr r4
	addi r1,r1,64
	blr
.text
