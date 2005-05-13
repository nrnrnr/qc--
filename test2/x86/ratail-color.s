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
g:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 12(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 12(%esp), %edx
	movl (%edx),%edx
	movl %edx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	leal 12(%esp), %edi
	movl $-4,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $10,%edx
	addl %edx,%ecx
	leal 12(%esp), %edi
	movl $0,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl (%esp),%edi
	leal 12(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	jmp gt
.section .text
.section .text
gt:
	leal -8(%esp), %esp
	movl %eax,4(%esp)
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 8(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 8(%esp), %eax
	movl (%eax),%eax
	movl %eax,(%esp)
.Linitialize_continuations_l15:
.Lproc_body_start_l14:
	movl 4(%esp),%eax
	addl %edx,%eax
	addl %ecx,%eax
	leal 8(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
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
.Linitialize_continuations_l25:
.Lproc_body_start_l24:
	movl $10,%ecx
	leal 16(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $20,%ecx
	leal 16(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call g
.Lcall_successor_l32:
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
.Lcall_successor_l29:
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
.Lstackdata_l39:
.long 0
.section .pcmap
.long .Lcall_successor_l32
.long .Lframe_l40
.section .pcmap_data
.Lframe_l40:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l39
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
.long .Lcall_successor_l29
.long .Lframe_l41
.section .pcmap_data
.Lframe_l41:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l39
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
.byte 105
.byte 120
.byte 116
.byte 121
.byte 32
.byte 115
.byte 104
.byte 111
.byte 117
.byte 108
.byte 100
.byte 32
.byte 98
.byte 101
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
