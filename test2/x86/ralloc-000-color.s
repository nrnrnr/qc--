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
.section .text
p:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl %edi,4(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $1,%eax
	movl $2,%edx
	movl $0,%esi
	movl $0,%ecx
.Lbranch_target_l11:
	movl $2,%edi
	cmpl %edi,%edx
	jae .Lbranch_target_l7
	jmp .Lbranch_target_l6
.Lbranch_target_l7:
	movl $3,%esi
	movl $4,%ecx
.Lbranch_target_l6:
	addl %edx,%eax
	addl %esi,%eax
	addl %ecx,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	movl (%esp),%esi
	leal 12(%esp), %esp
	ret
.section .text
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
.Linitialize_continuations_l17:
.Lproc_body_start_l16:
	call p
.Lcall_successor_l24:
	leal fmt,%ecx
	leal 16(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l21:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l30:
.long 0
.section .pcmap
.long .Lcall_successor_l24
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l30
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
.long .Lcall_successor_l21
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l30
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
.section .text
.section .data
fmt:
.byte 116
.byte 111
.byte 116
.byte 97
.byte 108
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
