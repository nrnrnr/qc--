.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
nocut:
.byte 110
.byte 111
.byte 32
.byte 99
.byte 117
.byte 116
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
ret:
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 10
.byte 0
.section .text
main:
	leal -36(%esp), %esp
	movl $4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l13:
	leal k_C10,%ecx
	movl $-8,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-36,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl $-4,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
Lproc_body_start_l12:
	movl $0,%ecx
	movl $-8,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
	movl %ebx,8(%esp)
	movl %ecx,24(%esp)
	call f
Ljoin_l24:
	leal nocut,%edi
	movl $-36,%esi
	leal 36(%esp), %ebx
	addl %esi,%ebx
	movl %edi,(%ebx)
	movl $-32,%ebx
	leal 36(%esp), %edi
	addl %ebx,%edi
	movl 24(%esp),%ebx
	movl %ebx,(%edi)
	call printf
Ljoin_l21:
	leal 36(%esp), %eax
	movl $0,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 16(%esp),%esi
	movl 20(%esp),%edi
	leal 36(%esp), %esp
	ret
k_C10:
	movl $3,%eax
	leal nocut,%ecx
	addl %eax,%ecx
	movl $-36,%eax
	leal 36(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $-32,%ecx
	leal 36(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	call printf
Ljoin_l17:
	leal 36(%esp), %eax
	movl $0,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 16(%esp),%esi
	movl 20(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l29:
.long 0
.section .pcmap
.long k_C10
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l24
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0xfffffff4
.section .pcmap
.long Ljoin_l21
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l17
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.section .text
.section .text
f:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l36:
Lproc_body_start_l35:
	movl $-12,%ecx
	movl %eax,4(%esp)
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,8(%esp)
	call g
Ljoin_l43:
	leal ret,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l40:
	movl $0,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l49:
.long 0
.section .pcmap
.long Ljoin_l43
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l49
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.section .pcmap
.long Ljoin_l40
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l49
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.section .text
.section .text
g:
	leal -4(%esp), %esp
	movl $4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%eax
Linitialize_continuations_l54:
Lproc_body_start_l53:
	call h
Ljoin_l61:
	leal ret,%eax
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l58:
	leal 4(%esp), %eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l67:
.long 0
.section .pcmap
.long Ljoin_l61
.long Lframe_l68
.section .pcmap_data
Lframe_l68:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l67
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.section .pcmap
.long Ljoin_l58
.long Lframe_l69
.section .pcmap_data
Lframe_l69:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l67
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.section .text
.section .text
h:
	movl %esp,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l72:
Lproc_body_start_l71:
	movl $99,%edx
	movl $4,%edi
	movl %eax,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl (%eax),%esi
	movl %edi, %esp; jmp *%esi
.section .pcmap_data
Lstackdata_l80:
.long 0
.section .text
