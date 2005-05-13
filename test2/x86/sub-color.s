.globl f
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
f:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	negl %eax
	movl $-99,%edx
	leal 12(%esp), %ecx
	movl $0,%edi
	movl %edi,(%esp)
	movl (%esp),%edi
	addl %edi,%ecx
	movl 4(%esp),%edi
	movl %edi,(%ecx)
	movl 8(%esp),%edi
	leal 12(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	movl %edi,16(%esp)
	movl %esi,12(%esp)
.Linitialize_continuations_l14:
.Lproc_body_start_l13:
	movl $-33,%eax
	call f
.Lcall_successor_l21:
	leal fmt,%ecx
	leal 24(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 24(%esp), %ecx
	movl $-20,%esi
	addl %esi,%ecx
	movl %eax,(%ecx)
	leal 24(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l18:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 12(%esp),%esi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l27:
.long 0
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l27
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l27
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 100
.byte 117
.byte 97
.byte 108
.byte 45
.byte 114
.byte 101
.byte 115
.byte 117
.byte 108
.byte 116
.byte 32
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 116
.byte 111
.byte 32
.byte 102
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 115
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 101
.byte 120
.byte 112
.byte 101
.byte 99
.byte 116
.byte 101
.byte 100
.byte 32
.byte 51
.byte 51
.byte 44
.byte 32
.byte 45
.byte 57
.byte 57
.byte 41
.byte 10
.byte 0
