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
playground:
.skip 48, 0
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
	movl $1,%edx
	movl $2,%eax
	movl $3,%esi
	movl %eax,%edx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%edx
	leal playground,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal playground,%ecx
	addl %eax,%ecx
	leal playground,%edi
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal playground,%ecx
	addl %eax,%ecx
	movsbl (%ecx),%edx
	leal playground,%ecx
	addl %eax,%ecx
	movswl (%ecx),%edx
	leal playground,%ecx
	addl %eax,%ecx
	movzbl (%ecx),%edx
	leal playground,%ecx
	addl %eax,%ecx
	movzwl (%ecx),%edx
	leal playground,%ecx
	addl %edx,%ecx
	movw %ax,(%ecx)
	leal playground,%ecx
	addl %edx,%ecx
	movb %al,(%ecx)
	movl %eax,%edx
	addl %esi,%edx
	movl %eax,%edx
	subl %esi,%edx
	movl %eax,%edx
	andl %esi,%edx
	movl %eax,%edx
	orl %esi,%edx
	movl %eax,%edx
	xorl %esi,%edx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%edx
	addl %esi,%edx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%edx
	subl %esi,%edx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%edx
	andl %esi,%edx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%edx
	orl %esi,%edx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%edx
	xorl %esi,%edx
	leal playground,%ecx
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl %eax,%edx
	addl %ecx,%edx
	leal playground,%ecx
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl %eax,%edx
	subl %ecx,%edx
	leal playground,%ecx
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl %eax,%edx
	andl %ecx,%edx
	leal playground,%ecx
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl %eax,%edx
	orl %ecx,%edx
	leal playground,%ecx
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl %eax,%edx
	xorl %ecx,%edx
	leal playground,%ecx
	addl %esi,%ecx
	movl (%ecx),%edi
	movl %eax,%ecx
	addl %edi,%ecx
	leal playground,%edi
	addl %edx,%edi
	movl %ecx,(%edi)
	leal playground,%ecx
	addl %esi,%ecx
	movl (%ecx),%edi
	movl %eax,%ecx
	subl %edi,%ecx
	leal playground,%edi
	addl %edx,%edi
	movl %ecx,(%edi)
	leal playground,%ecx
	addl %esi,%ecx
	movl (%ecx),%edi
	movl %eax,%ecx
	andl %edi,%ecx
	leal playground,%edi
	addl %edx,%edi
	movl %ecx,(%edi)
	leal playground,%ecx
	addl %esi,%ecx
	movl (%ecx),%edi
	movl %eax,%ecx
	orl %edi,%ecx
	leal playground,%edi
	addl %edx,%edi
	movl %ecx,(%edi)
	leal playground,%ecx
	addl %esi,%ecx
	movl (%ecx),%edi
	movl %eax,%ecx
	xorl %edi,%ecx
	leal playground,%edi
	addl %edx,%edi
	movl %ecx,(%edi)
.Lbranch_target_l13:
	cmpl %esi,%eax
	jb L
.Lbranch_target_l7:
.Lbranch_target_l11:
	cmpl %esi,%eax
	jbe L
.Lbranch_target_l6:
.Lbranch_target_l12:
	cmpl %esi,%eax
	jbe L
L:
	movl $99,%eax
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
.Linitialize_continuations_l19:
.Lproc_body_start_l18:
	call p
.Lcall_successor_l26:
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
.Lcall_successor_l23:
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
.Lstackdata_l32:
.long 0
.section .pcmap
.long .Lcall_successor_l26
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l32
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
.long .Lcall_successor_l23
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l32
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
.byte 115
.byte 111
.byte 109
.byte 101
.byte 32
.byte 119
.byte 101
.byte 105
.byte 114
.byte 100
.byte 32
.byte 105
.byte 110
.byte 115
.byte 116
.byte 114
.byte 117
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 115
.byte 32
.byte 114
.byte 97
.byte 110
.byte 44
.byte 32
.byte 97
.byte 102
.byte 116
.byte 101
.byte 114
.byte 32
.byte 119
.byte 104
.byte 105
.byte 99
.byte 104
.byte 32
.byte 119
.byte 101
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 101
.byte 100
.byte 32
.byte 97
.byte 32
.byte 108
.byte 105
.byte 116
.byte 101
.byte 114
.byte 97
.byte 108
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
