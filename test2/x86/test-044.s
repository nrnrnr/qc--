.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
p:
	nop
	nop
	movl %esp,%edx
	movl (%edx),%ecx
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
	movl $0,%edx
	movl %esp,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
	nop
	ret
join_l5:
	jmp loop
.section .pcmap_data
stackdata_l13:
.long 0
.section .data
p_end:
