.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
p:
	leal -12(%esp), %esp
	nop
	leal 12(%esp), %edx
	movl (%edx),%ecx
initialize_continuations_l3:
	movl $1,%eax
	movl $2,%edx
	movl %ecx,(%esp)
	movl $0,%ecx
	movl %ebx,4(%esp)
	movl $0,%ebx
	movl %ebp,8(%esp)
	movl $2,%ebp
	cmpl %ebp,%edx
	jge join_l5
join_l13:
	jmp join_l6
join_l5:
	movl $3,%ebp
	movl $4,%ecx
	movl %ecx,%ebx
	movl %ebp,%ecx
	jmp join_l6
join_l6:
	addl %edx,%eax
	addl %ecx,%eax
	addl %ebx,%eax
	nop
	movl $0,%ebx
	leal 12(%esp), %ecx
	addl %ebx,%ecx
	movl (%esp),%ebx
	movl %ebx,(%ecx)
	movl 8(%esp),%ebp
	movl 4(%esp),%ebx
	leal 12(%esp), %esp
	ret
.section .pcmap_data
stackdata_l14:
.long 0
.section .text
