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
.long 0xffffffffffffffff
.section .text
divmod:
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 24(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl %eax,(%esp)
	movl %edx,4(%esp)
	movl $0,%edx
	divl %ecx, %eax
	movl %eax,8(%esp)
	movl (%esp),%eax
	movl $0,%edx
	divl %ecx, %eax
	movl 8(%esp),%eax
	leal 24(%esp), %ecx
	movl %ecx,12(%esp)
	movl $4,%ecx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	addl %edi,%ecx
	movl 4(%esp),%edi
	movl %edi,(%ecx)
	movl 20(%esp),%edi
	leal 28(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -68(%esp), %esp
	leal 68(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 68(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 68(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l16:
Lproc_body_start_l15:
	movl $987,%eax
	movl $33,%edx
	leal -4(%esp), %esp
	movl %eax,36(%esp)
	movl %edi,40(%esp)
	leal 72(%esp), %edi
	movl %edi,44(%esp)
	movl $-72,%edi
	movl %edi,48(%esp)
	movl 44(%esp),%edi
	movl %esi,52(%esp)
	movl 48(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %ecx,56(%esp)
	movl %edx,60(%esp)
	call divmod
Ljoin_l23:
	leal answer,%edi
	leal 68(%esp), %esi
	movl $-68,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 68(%esp), %edi
	movl $-64,%esi
	addl %esi,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	leal 68(%esp), %edi
	movl $-60,%ecx
	addl %ecx,%edi
	movl 56(%esp),%ecx
	movl %ecx,(%edi)
	leal 68(%esp), %edi
	movl %edi,60(%esp)
	movl $-56,%edi
	movl %edi,64(%esp)
	movl 60(%esp),%edi
	movl 64(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 68(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	leal 68(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 68(%esp), %edi
	movl $-44,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	imull %ecx,%eax
	addl %edx,%eax
	leal 68(%esp), %edi
	movl $-40,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l20:
	movl $0,%eax
	leal 68(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%esi
	movl 36(%esp),%edi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l29:
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0x80000004
.long 0xffffffbc
.long 0xfffffff0
.long Lstackdata_l29
.long 8
.long 6
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
.long 0xfffffff4
.long 0
.section .pcmap
.long Ljoin_l20
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0x80000004
.long 0xffffffbc
.long 0xfffffff0
.long Lstackdata_l29
.long 8
.long 6
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
