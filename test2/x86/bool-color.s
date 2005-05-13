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
main:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %eax
	movl (%eax),%eax
	movl %eax,(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $3,%eax
	call tryout
.Lcall_successor_l11:
	movl $4,%eax
	call tryout
.Lcall_successor_l8:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
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
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l17
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l17
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
.section .text
tryout:
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l21:
.Lproc_body_start_l20:
.Lbranch_target_l32:
	movl $1,%edx
	movl %eax,%ecx
	andl %edx,%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne .Lbranch_target_l28
.Lbranch_target_l27:
	leal z,%ecx
	jmp .Lbranch_target_l26
.Lbranch_target_l28:
	leal nz,%ecx
.Lbranch_target_l26:
	leal 16(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l25:
	leal 16(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l35:
.long 0
.section .pcmap
.long .Lcall_successor_l25
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l35
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .text
.section .data
nz:
.byte 37
.byte 100
.byte 32
.byte 108
.byte 111
.byte 119
.byte 32
.byte 98
.byte 105
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 110
.byte 111
.byte 110
.byte 122
.byte 101
.byte 114
.byte 111
.byte 10
.byte 0
z:
.byte 37
.byte 100
.byte 32
.byte 108
.byte 111
.byte 119
.byte 32
.byte 98
.byte 105
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 122
.byte 101
.byte 114
.byte 111
.byte 10
.byte 0
