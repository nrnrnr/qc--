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
	leal 64(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	jmp f3_label
f3_label:
	movl $18,%edi
	leal 64(%esp), %esi
	movl $-64,%ebp
	addl %ebp,%esi
	movl %edi,(%esi)
	movl $0,%edi
	leal 64(%esp), %esi
	movl $-60,%ebp
	addl %ebp,%esi
	movl %edi,(%esi)
	leal 64(%esp), %edi
	movl $-64,%esi
	addl %esi,%edi
	leal 64(%esp), %esi
	movl $-64,%ebp
	addl %ebp,%esi
	movl $32,%ebp
	addl %ebp,%esi
	fildq (%edi)
	fistpq (%esi)
	jmp f3_label
.section .text
