.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.text
p:
	nop
	nop
	nop
	movl %esp,%eax
	movl (%eax),%eax
initialize_continuations_l3:
	movl %ecx,%eax
	movl (%ecx),%eax
	movl %ecx,(%eax)
	movl (%ecx),%edx
	movl %edx,(%eax)
	movsbl (%ecx),%eax
	movswl (%ecx),%eax
	movzbl (%ecx),%eax
	movzwl (%ecx),%eax
	movw %cx,(%eax)
	movb %cl,(%eax)
	movl %ecx,%eax
	addl %ecx,%eax
	movl %ecx,%eax
	subl %ecx,%eax
	movl %ecx,%eax
	andl %ecx,%eax
	movl %ecx,%eax
	orl %ecx,%eax
	movl %ecx,%eax
	xorl %ecx,%eax
	movl (%ecx),%eax
	addl %ecx,%eax
	movl (%ecx),%eax
	subl %ecx,%eax
	movl (%ecx),%eax
	andl %ecx,%eax
	movl (%ecx),%eax
	orl %ecx,%eax
	movl (%ecx),%eax
	xorl %ecx,%eax
	movl (%ecx),%edx
	movl %ecx,%eax
	addl %edx,%eax
	movl (%ecx),%edx
	movl %ecx,%eax
	subl %edx,%eax
	movl (%ecx),%edx
	movl %ecx,%eax
	andl %edx,%eax
	movl (%ecx),%edx
	movl %ecx,%eax
	orl %edx,%eax
	movl (%ecx),%edx
	movl %ecx,%eax
	xorl %edx,%eax
	movl (%ecx),%ebx
	movl %ecx,%edx
	addl %ebx,%edx
	movl %edx,(%eax)
	movl (%ecx),%ebx
	movl %ecx,%edx
	subl %ebx,%edx
	movl %edx,(%eax)
	movl (%ecx),%ebx
	movl %ecx,%edx
	andl %ebx,%edx
	movl %edx,(%eax)
	movl (%ecx),%ebx
	movl %ecx,%edx
	orl %ebx,%edx
	movl %edx,(%eax)
	movl (%ecx),%ebx
	movl %ecx,%edx
	xorl %ebx,%edx
	movl %edx,(%eax)
	cmpl %ecx,%ecx
	jl join_l8
join_l9:
	cmpl %ecx,%ecx
	jle join_l6
join_l7:
	cmpl %ecx,%ecx
	jbe join_l5
join_l14:
	jmp L
join_l5:
	jmp L
join_l6:
	jmp L
join_l8:
	jmp L
L:
