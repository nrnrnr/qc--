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
	leal 64(%esp), %edx
	movl (%edx),%ecx
initialize_continuations_l3:
	movl $0,%edx
	leal 64(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 64(%esp), %esp
	ret
.section .pcmap_data
stackdata_l11:
.long 1
.long 0xffffffc0
.section .text
