.globl f
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
f:
	leal -24(%esp), %esp
	nop
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,20(%esp)
initialize_continuations_l3:
	nop
	negl %eax
	movl $-99,%ecx
	movl %ecx,4(%esp)
	movl $4,%ecx
	movl %ecx,(%esp)
	leal 24(%esp), %ecx
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	movl 12(%esp),%edx
	addl %ecx,%edx
	movl %edx,12(%esp)
	movl 4(%esp),%ecx
	movl 12(%esp),%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl %ecx,16(%esp)
	leal 24(%esp), %ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	movl 16(%esp),%edx
	addl %edx,%ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
