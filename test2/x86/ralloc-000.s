.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.text
p:
	leal -44(%esp), %esp
	nop
	nop
	leal 44(%esp), %eax
	movl (%eax),%eax
	movl %eax,40(%esp)
initialize_continuations_l3:
	movl $1,%eax
	movl $2,%ecx
	movl %ecx,32(%esp)
	movl $0,%ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	movl %ecx,(%esp)
	movl $0,%ecx
	movl %ecx,12(%esp)
	movl 12(%esp),%ecx
	movl %ecx,4(%esp)
	movl $2,%ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl 32(%esp),%edx
	cmpl %ecx,%edx
	jge join_l5
join_l12:
	jmp join_l6
join_l5:
	movl $3,%ecx
	movl %ecx,20(%esp)
	movl 20(%esp),%ecx
	movl %ecx,(%esp)
	movl $4,%ecx
	movl %ecx,24(%esp)
	movl 24(%esp),%ecx
	movl %ecx,4(%esp)
	jmp join_l6
join_l6:
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	addl %ecx,%eax
	nop
	movl $0,%ecx
	movl %ecx,36(%esp)
	leal 44(%esp), %ecx
	movl %ecx,28(%esp)
	movl 28(%esp),%ecx
	movl 36(%esp),%edx
	addl %edx,%ecx
	movl %ecx,28(%esp)
	movl 28(%esp),%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
