.globl main
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
	nop
initialize_continuations_l10:
	leal k_C8,%ecx
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
	movl $0,%ecx
	nop
	movl $-8,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	nop
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
	movl %ebx,8(%esp)
	movl %ecx,24(%esp)
	call f
join_l21:
	nop
	nop
	nop
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
	nop
	call printf
join_l18:
	nop
	nop
	nop
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
k_C8:
	nop
	nop
	nop
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
	nop
	call printf
join_l14:
	nop
	nop
	nop
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
stackdata_l26:
.long 0
.section .pcmap
.long k_C8
.long frame_l27
.section .pcmap_data
frame_l27:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l26
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
.long join_l21
.long frame_l28
.section .pcmap_data
frame_l28:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l26
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
.long join_l18
.long frame_l29
.section .pcmap_data
frame_l29:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l26
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
.long join_l14
.long frame_l30
.section .pcmap_data
frame_l30:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l26
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
