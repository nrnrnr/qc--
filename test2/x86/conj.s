.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
foo:
	movl $4,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
initialize_continuations_l4:
proc_body_start_l3:
	movl $1,%ecx
	cmpl %ecx,%edx
	jne conj_true_l11
join_l16:
	jmp join_l7
conj_true_l11:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne join_l6
join_l17:
	jmp join_l7
join_l6:
	movl $0,%eax
	jmp join_l7
join_l7:
	movl $1,%eax
	ret
.section .pcmap_data
stackdata_l18:
.long 0
.section .text
