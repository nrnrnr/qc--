.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.data
p:
	nop
	nop
	movl %esp,%ecx
	movl (%ecx),%ecx
initialize_continuations_l3:
	jmp loop
loop:
	movl $1,%edx
	subl %edx,%eax
	movl $0,%edx
	cmpl %edx,%eax
	jge join_l5
join_l6:
	nop
	nop
	movl $0,%eax
	movl %esp,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	nop
	ret
join_l5:
	jmp loop
p_end:
