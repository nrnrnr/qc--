.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.section .data
print_float:
.byte 37
.byte 102
.byte 10
.byte 0
print_int:
.byte 37
.byte 100
.byte 10
.byte 0
.section .text
main:
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 44(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	fnstcw 16(%esp)
	movzwl 16(%esp),%eax
	shll $20, %eax
	shrl $30, %eax
	movl $2,%ecx
	leal 44(%esp), %edx
	movl %ebx,36(%esp)
	movl $-24,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 44(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	fildl (%ecx)
	movl $3,%ecx
	leal 44(%esp), %edx
	movl $-24,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 44(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	fildl (%ecx)
	fdivp
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	fstps (%ecx)
	fnstcw 24(%esp)
	movzwl 24(%esp),%ecx
	andl $-3073,%ecx
	movl $1,%edx
	shll $10, %edx
	orl %edx,%ecx
	movw %cx,24(%esp)
	fldcw 24(%esp)
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	flds (%ecx)
	leal 44(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	fistpl (%ecx)
	leal print_int,%ecx
	leal 44(%esp), %edx
	movl $-44,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 44(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	leal 44(%esp), %edx
	movl $-40,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl %eax,40(%esp)
	call printf
Ljoin_l17:
	fnstcw 26(%esp)
	movzwl 26(%esp),%eax
	andl $-3073,%eax
	movl $2,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,26(%esp)
	fldcw 26(%esp)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal print_int,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call printf
Ljoin_l14:
	fnstcw 28(%esp)
	movzwl 28(%esp),%eax
	andl $-3073,%eax
	movl $0,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,28(%esp)
	fldcw 28(%esp)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal print_int,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call printf
Ljoin_l11:
	fnstcw 30(%esp)
	movzwl 30(%esp),%eax
	andl $-3073,%eax
	movl $3,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,30(%esp)
	fldcw 30(%esp)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal print_int,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call printf
Ljoin_l8:
	fnstcw 32(%esp)
	movzwl 32(%esp),%eax
	andl $-3073,%eax
	movl 40(%esp),%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,32(%esp)
	fldcw 32(%esp)
	movl $0,%eax
	leal 44(%esp), %ecx
	leal 44(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 36(%esp),%ebx
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l24:
.long 0
.section .pcmap
.long Ljoin_l17
.long Lframe_l25
.section .pcmap_data
Lframe_l25:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l24
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffdc
.long 0xffffffe0
.long 0x80000000
.section .pcmap
.long Ljoin_l14
.long Lframe_l26
.section .pcmap_data
Lframe_l26:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l24
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffdc
.long 0xffffffe0
.long 0x80000000
.section .pcmap
.long Ljoin_l11
.long Lframe_l27
.section .pcmap_data
Lframe_l27:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l24
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffdc
.long 0xffffffe0
.long 0x80000000
.section .pcmap
.long Ljoin_l8
.long Lframe_l28
.section .pcmap_data
Lframe_l28:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l24
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffdc
.long 0xffffffe0
.long 0x80000000
.section .text
