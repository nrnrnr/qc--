.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.text
p:
	leal -32(%esp), %esp
	nop
	nop
	leal 32(%esp), %eax
	movl (%eax),%eax
	movl %eax,28(%esp)
initialize_continuations_l3:
	movl $1,%eax
	movl $2,%ecx
	movl %ecx,20(%esp)
	movl $3,%ecx
	movl %ecx,4(%esp)
	movl 4(%esp),%ecx
	movl %ecx,(%esp)
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl 20(%esp),%ecx
	movl %ecx,(%esp)
	movl 20(%esp),%ecx
	movb %cl,(%eax)
	movsbl (%eax),%ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	movl 20(%esp),%ecx
	movzbl (%ecx),%ecx
	movl %ecx,12(%esp)
	movl 12(%esp),%ecx
	movl 20(%esp),%edx
	movl %ecx,(%edx)
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
