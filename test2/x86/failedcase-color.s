.globl main
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
.section .data
result:
.byte 105
.byte 110
.byte 116
.byte 58
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $1,%eax
	call unresolved
.Lcall_successor_l11:
	movl %eax,%edi
	leal result,%eax
	leal 16(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
.Lcall_successor_l8:
	movl %edi,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l17:
.long 0
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l18
.section .pcmap_data
.Lframe_l18:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l17
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l17
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0x4000000b
.long 0
.section .text
.section .text
unresolved:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
	movl %ebx,(%esp)
.Linitialize_continuations_l21:
.Lproc_body_start_l20:
.Lbranch_target_l29:
.Lbranch_target_l33:
	movl $1,%edx
	cmpl %edx,%eax
	je .Lbranch_target_l28
.Lbranch_target_l26:
.Lbranch_target_l34:
	movl $2,%edx
	cmpl %edx,%eax
	je .Lbranch_target_l25
.Lbranch_target_l23:
	int $3
.Lbranch_target_l25:
	movl $1,%eax
	leal 4(%esp), %ebx
	movl $0,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.Lbranch_target_l28:
	movl $0,%eax
	leal 4(%esp), %ebx
	movl $0,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .text
