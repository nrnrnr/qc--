.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
str:
.skip 1, 0
.section .text
f:
	leal -64(%esp), %esp
	nop
	leal 64(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l3:
