.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.data
str:
.skip 1, 0
.text
f:
	leal -64(%esp), %esp
	nop
	nop
	leal 64(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l3:
