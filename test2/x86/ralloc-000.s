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
	movl $0,%ecx
	movl %ebx,4(%esp)
	movl $0,%ebx
	movl %ebp,8(%esp)
	movl $2,%ebp
	cmpl %ebp,%edx
	jae Ljoin_l6
Ljoin_l14:
	jmp Ljoin_l7
Ljoin_l6:
	movl $3,%ebp
	movl $4,%ecx
	movl %ecx,%ebx
	movl %ebp,%ecx
	jmp Ljoin_l7
Ljoin_l7:
	addl %edx,%eax
	addl %ecx,%eax
	addl %ebx,%eax
	movl $0,%ebx
	leal 12(%esp), %ecx
	addl %ebx,%ecx
	movl (%esp),%ebx
	movl %ebx,(%ecx)
	movl 4(%esp),%ebx
	movl 8(%esp),%ebp
	leal 12(%esp), %esp
	ret
.section .text
