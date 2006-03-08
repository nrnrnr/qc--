.globl f3
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .text
f3:
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl (%ecx),%eax
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
f3_label:
	movl $18,%eax
	leal 64(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 64(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 64(%esp), %eax
	movl $-64,%ecx
	addl %ecx,%eax
	leal 64(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl $32,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	jmp f3_label
.section .text
