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
divmod:
	leal -12(%esp), %esp
	movl %eax,(%esp)
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl (%esp),%eax
	movl $0,%edx
	divl %ecx, %eax
	movl %eax,%edi
	movl (%esp),%eax
	movl $0,%edx
	divl %ecx, %eax
	movl %edi,%eax
	leal 12(%esp), %edi
	movl $4,%ecx
	addl %ecx,%edi
	movl 8(%esp),%ecx
	movl %ecx,(%edi)
	movl 4(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -52(%esp), %esp
	leal 52(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %eax
	movl (%eax),%eax
	movl %eax,48(%esp)
	movl %edi,44(%esp)
	movl %esi,40(%esp)
	movl %ebp,36(%esp)
	movl %ebx,32(%esp)
.Linitialize_continuations_l14:
.Lproc_body_start_l13:
	movl $987,%ebx
	movl $33,%ebp
	leal -4(%esp), %esp
	movl %ebx,%eax
	leal 56(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %ebp,(%ecx)
	call divmod
.Lcall_successor_l21:
	leal answer,%ecx
	leal 52(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 52(%esp), %ecx
	movl $-48,%esi
	addl %esi,%ecx
	movl %ebx,(%ecx)
	leal 52(%esp), %ecx
	movl $-44,%esi
	addl %esi,%ecx
	movl %ebp,(%ecx)
	leal 52(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %ecx
	movl $-36,%esi
	addl %esi,%ecx
	movl %ebx,(%ecx)
	leal 52(%esp), %ecx
	movl $-32,%ebx
	addl %ebx,%ecx
	movl %ebp,(%ecx)
	leal 52(%esp), %ecx
	movl $-28,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	imull %ebp,%eax
	addl %edx,%eax
	leal 52(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l18:
	movl $0,%eax
	leal 52(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	movl 44(%esp),%edi
	movl 40(%esp),%esi
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	leal 52(%esp), %esp
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
.long 0xffffffcc
.long 0xfffffffc
.long .Lstackdata_l27
.long 4
.long 6
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff0
.long 7
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0x40000009
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffffc
.long .Lstackdata_l27
.long 4
.long 6
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff0
.long 7
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
answer:
.byte 37
.byte 100
.byte 32
.byte 100
.byte 105
.byte 118
.byte 32
.byte 37
.byte 100
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 119
.byte 97
.byte 110
.byte 116
.byte 115
.byte 32
.byte 50
.byte 57
.byte 41
.byte 59
.byte 32
.byte 32
.byte 37
.byte 100
.byte 32
.byte 109
.byte 111
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 119
.byte 97
.byte 110
.byte 116
.byte 115
.byte 32
.byte 51
.byte 48
.byte 41
.byte 59
.byte 32
.byte 32
.byte 100
.byte 32
.byte 42
.byte 32
.byte 113
.byte 32
.byte 43
.byte 32
.byte 114
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
