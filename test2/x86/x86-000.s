.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
p:
	leal -32(%esp), %esp
	nop
	nop
	leal 32(%esp), %eax
	movl (%eax),%eax
	movl %eax,28(%esp)
initialize_continuations_l3:
	movl $1,%ecx
	movl $2,%eax
	movl %eax,20(%esp)
	movl $3,%eax
	movl %eax,4(%esp)
	movl 4(%esp),%eax
	movl %eax,(%esp)
	movl 20(%esp),%eax
	movl %eax,(%ecx)
	movl 20(%esp),%eax
	movl %eax,(%esp)
	movl 20(%esp),%eax
	movb %al,(%ecx)
	movsbl (%ecx),%eax
	movl %eax,8(%esp)
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	movl 20(%esp),%eax
	movzbl (%eax),%eax
	movl %eax,12(%esp)
	movl 12(%esp),%eax
	movl 20(%esp),%edx
	movl %eax,(%edx)
	movl %ecx,%eax
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	addl %ecx,%eax
	nop
	movl $0,%ecx
	movl %ecx,24(%esp)
	leal 32(%esp), %ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl 24(%esp),%edx
	addl %edx,%ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
