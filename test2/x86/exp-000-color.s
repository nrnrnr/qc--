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
q:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	addl %eax,%eax
	movl (%eax),%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l14:
.Lproc_body_start_l13:
	movl $-559038737,%ecx
	leal 20(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $2,%ecx
	movl $0,%edx
	divl %ecx, %eax
	call q
.Lcall_successor_l21:
	leal fmt,%ecx
	leal 20(%esp), %edi
	movl $-20,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 20(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l18:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l27:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l27
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff4
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
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l27
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 108
.byte 111
.byte 111
.byte 107
.byte 117
.byte 112
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 115
.byte 32
.byte 48
.byte 120
.byte 37
.byte 120
.byte 32
.byte 40
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
.byte 48
.byte 120
.byte 100
.byte 101
.byte 97
.byte 100
.byte 98
.byte 101
.byte 101
.byte 102
.byte 41
.byte 10
.byte 0
