.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.section .text
p:
	nop
	nop
	nop
	movl %esp,%eax
	movl (%eax),%eax
initialize_continuations_l3:
	nop
	nop
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	ret
