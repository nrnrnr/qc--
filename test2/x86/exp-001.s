.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.text
p:
	leal -24(%esp), %esp
	nop
	nop
	leal 24(%esp), %eax
	movl (%eax),%eax
	movl %eax,20(%esp)
initialize_continuations_l3:
	movl $1,%eax
	movl $2,%ecx
	movl %ecx,8(%esp)
	movl $3,%ecx
	movl %ecx,4(%esp)
	movl 4(%esp),%ecx
	movl %ecx,(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	addl %ecx,%eax
	nop
	movl $0,%ecx
	movl %ecx,16(%esp)
	leal 24(%esp), %ecx
	movl %ecx,12(%esp)
	movl 12(%esp),%ecx
	movl 16(%esp),%edx
	addl %edx,%ecx
	movl %ecx,12(%esp)
	movl 12(%esp),%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
