.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
p:
	leal -12(%esp), %esp
	leal 12(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1,%eax
	movl $2,%edx
	movl %ecx,(%esp)
	movl $3,%ecx
	movl %edx,(%eax)
	movl %edx,%ecx
	movl %eax,4(%esp)
	movl %edx,%eax
	movl %ebx,8(%esp)
	movl 4(%esp),%ebx
	movb %al,(%ebx)
	movsbl (%ebx),%eax
	movl %eax,(%ebx)
	movzbl (%edx),%eax
	movl %eax,(%edx)
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %ebx,%eax
	movl $0,%ebx
	leal 12(%esp), %ecx
	addl %ebx,%ecx
	movl (%esp),%ebx
	movl %ebx,(%ecx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
.section .text
