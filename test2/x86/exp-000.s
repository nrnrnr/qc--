.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.text
p:
	leal -12(%esp), %esp
	nop
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
initialize_continuations_l3:
	nop
	addl %eax,%eax
	movl (%eax),%eax
	movl $0,%ecx
	movl %ecx,4(%esp)
	leal 12(%esp), %ecx
	movl %ecx,(%esp)
	movl (%esp),%ecx
	movl 4(%esp),%edx
	addl %edx,%ecx
	movl %ecx,(%esp)
	movl (%esp),%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 12(%esp), %esp
	ret
