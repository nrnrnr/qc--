.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.text
p:
	leal -48(%esp), %esp
	nop
	nop
	leal 48(%esp), %eax
	movl (%eax),%eax
	movl %eax,44(%esp)
initialize_continuations_l3:
	movl $1,%eax
	movl %eax,32(%esp)
	movl $2,%eax
	movl %eax,28(%esp)
	movl $0,%eax
	movl %eax,8(%esp)
	movl 8(%esp),%eax
	movl %eax,(%esp)
	movl $0,%eax
	movl %eax,12(%esp)
	movl 12(%esp),%eax
	movl %eax,4(%esp)
	movl $2,%eax
	movl %eax,16(%esp)
	movl 16(%esp),%eax
	movl 28(%esp),%ecx
	cmpl %eax,%ecx
	jge join_l5
join_l12:
	jmp join_l6
join_l5:
	movl $3,%eax
	movl %eax,20(%esp)
	movl 20(%esp),%eax
	movl %eax,(%esp)
	movl $4,%eax
	movl %eax,24(%esp)
	movl 24(%esp),%eax
	movl %eax,4(%esp)
	jmp join_l6
join_l6:
	movl 32(%esp),%eax
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	addl %ecx,%eax
	nop
	movl $0,%ecx
	movl %ecx,40(%esp)
	leal 48(%esp), %ecx
	movl %ecx,36(%esp)
	movl 36(%esp),%ecx
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl %ecx,36(%esp)
	movl 36(%esp),%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %esp
	ret
