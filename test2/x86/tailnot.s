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
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	leal -8(%esp), %esp
	leal 68(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl $1,%edx
	movl %edi,32(%esp)
	leal 68(%esp), %edi
	movl %edi,36(%esp)
	movl $-68,%edi
	movl %edi,40(%esp)
	movl 36(%esp),%edi
	movl %esi,44(%esp)
	movl 40(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl $10,%edi
	leal 68(%esp), %esi
	movl $-64,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	movl %ecx,48(%esp)
	call down
Ljoin_l24:
	leal -8(%esp), %esp
	leal 68(%esp), %edi
	movl $-4,%esi
	addl %esi,%edi
	movl %eax,52(%esp)
	movl %edi,%eax
	movl $1,%edi
	leal 68(%esp), %esi
	movl $-68,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $47,%edi
	leal 68(%esp), %esi
	movl $-64,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call down
Ljoin_l21:
	leal -8(%esp), %esp
	leal 68(%esp), %edi
	movl $-4,%esi
	addl %esi,%edi
	movl %eax,56(%esp)
	movl %edi,%eax
	movl $1,%edi
	leal 68(%esp), %esi
	movl $-68,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $100,%edi
	leal 68(%esp), %esi
	movl $-64,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call down
Ljoin_l18:
	movl %eax,%edi
	movl 44(%esp),%esi
	subl %esi,%edi
	movl $90,%ecx
	movl %eax,52(%esp)
	movl %edi,%eax
	movl $0,%edx
	divl %ecx, %eax
	movl $10,%edi
	imull %eax,%edi
	movl %esi,%ecx
	subl %edi,%ecx
	movl $3,%edi
	cmpl %edi,%eax
	jae Ljoin_l28
Ljoin_l29:
	movl 48(%esp),%edi
	jmp Ljoin_l15
Ljoin_l28:
	movl $47,%edi
	movl %eax,%edx
	imull %edi,%edx
	addl %ecx,%edx
	movl 48(%esp),%edi
	cmpl %edi,%edx
	je Ljoin_l14
Ljoin_l32:
	jmp Ljoin_l15
Ljoin_l15:
	leal badcmp,%ecx
	leal 60(%esp), %edx
	movl $-60,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 60(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	leal 60(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	movl 48(%esp),%esi
	movl %esi,(%edi)
	leal 60(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	movl 52(%esp),%esi
	movl %esi,(%edi)
	leal 60(%esp), %edi
	movl $-44,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl $47,%edi
	imull %edi,%eax
	leal 60(%esp), %edi
	movl $-40,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l9:
	jmp Ljoin_l12
Ljoin_l14:
	leal goodcmp,%edi
	leal 60(%esp), %esi
	movl $-60,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l13:
	jmp Ljoin_l12
Ljoin_l12:
	movl $0,%eax
	leal 60(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 36(%esp),%esi
	movl 24(%esp),%edi
	leal 60(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l33:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l24
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffec
.long Lstackdata_l33
.long 2
.long 7
.long 0
.long 1
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l21
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffec
.long Lstackdata_l33
.long 2
.long 7
.long 0
.long 1
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffdc
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l18
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffec
.long Lstackdata_l33
.long 2
.long 7
.long 0
.long 1
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffdc
.long 0
.long 0
.long 0xfffffff0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l37
.section .pcmap_data
Lframe_l37:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffec
.long Lstackdata_l33
.long 2
.long 7
.long 0
.long 1
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l13
.long Lframe_l38
.section .pcmap_data
Lframe_l38:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffec
.long Lstackdata_l33
.long 2
.long 7
.long 0
.long 1
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
down:
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 32(%esp), %ecx
	movl %edx,(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l41:
Lproc_body_start_l40:
	movl %ecx,4(%esp)
	movl (%esp),%ecx
	cmpl %edx,%ecx
	jb Ljoin_l47
Ljoin_l48:
	leal 32(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	subl %edx,%eax
	leal 32(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 40(%esp), %esp
	ret
Ljoin_l47:
	leal -12(%esp), %esp
	movl %edi,20(%esp)
	leal down,%edi
	movl %eax,24(%esp)
	movl %edi,%eax
	leal 44(%esp), %edi
	movl %edi,28(%esp)
	movl $-44,%edi
	movl %edi,32(%esp)
	movl 28(%esp),%edi
	movl %esi,36(%esp)
	movl 32(%esp),%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	movl $1,%edi
	addl %edi,%ecx
	leal 44(%esp), %edi
	movl $-40,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 44(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	call call3
Ljoin_l46:
	leal 32(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%esi
	movl 8(%esp),%edi
	leal 40(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l53:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l46
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l53
.long 2
.long 4
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
goodcmp:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 100
.byte 111
.byte 119
.byte 110
.byte 32
.byte 49
.byte 48
.byte 32
.byte 97
.byte 110
.byte 100
.byte 32
.byte 49
.byte 48
.byte 48
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 112
.byte 114
.byte 101
.byte 100
.byte 105
.byte 99
.byte 116
.byte 115
.byte 32
.byte 52
.byte 55
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 119
.byte 105
.byte 116
.byte 104
.byte 32
.byte 115
.byte 105
.byte 122
.byte 101
.byte 32
.byte 62
.byte 61
.byte 32
.byte 51
.byte 10
.byte 0
badcmp:
.byte 98
.byte 97
.byte 100
.byte 32
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 58
.byte 32
.byte 100
.byte 49
.byte 48
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 100
.byte 52
.byte 55
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 100
.byte 49
.byte 48
.byte 48
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 99
.byte 111
.byte 109
.byte 112
.byte 117
.byte 116
.byte 101
.byte 100
.byte 32
.byte 100
.byte 49
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 100
.byte 52
.byte 55
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
