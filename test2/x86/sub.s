.globl f
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
f:
	leal -8(%esp), %esp
	nop
	leal 8(%esp), %edx
	movl (%edx),%ecx
initialize_continuations_l3:
	nop
	negl %eax
	movl $-99,%edx
	movl %ecx,(%esp)
	movl $4,%ecx
	movl %ebx,4(%esp)
	leal 8(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $0,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl (%esp),%edx
	movl %edx,(%ebx)
	movl 4(%esp),%ebx
	leal 8(%esp), %esp
	ret
.section .pcmap_data
stackdata_l11:
.long 0
.section .text
