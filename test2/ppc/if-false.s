.globl _main
.globl _Cmm.global_area
.globl _Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section __DATA,data
; memory for global registers
_Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
_Cmm.global_area:
.text
_main:
	addi r1,r1,-64
	mflr r12
_Linitialize_continuations_l4:
_Lproc_body_start_l3:
	bl _Lpic_fun_l13
_Lpic_l12:
_Lpic_fun_l13:
	mflr r11
_Lpic_end_l14:
_Ljoin_l8:
	addi r3,0,0
	mtlr r12
	addi r1,r1,64
	blr
.text
