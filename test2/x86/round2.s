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
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	fnstcw 16(%esp)
	movzwl 16(%esp),%eax
	shll $20, %eax
	shrl $30, %eax
	movl $2,%ecx
	leal 44(%esp), %edx
	movl %edi,36(%esp)
	movl $-24,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 44(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	fildl (%edi)
	movl $3,%edi
	leal 44(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 44(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	fildl (%edi)
	fdivp
	leal 44(%esp), %edi
	movl $-36,%ecx
	addl %ecx,%edi
	fstps (%edi)
	fnstcw 24(%esp)
	movzwl 24(%esp),%edi
	andl $-3073,%edi
	movl $1,%ecx
	shll $10, %ecx
	orl %ecx,%edi
	movw %di,24(%esp)
	fldcw 24(%esp)
	leal 44(%esp), %edi
	movl $-36,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 44(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal print_int,%edi
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 44(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	movl %eax,40(%esp)
	call printf
Ljoin_l17:
	fnstcw 26(%esp)
	movzwl 26(%esp),%edi
	andl $-3073,%edi
	movl $2,%eax
	shll $10, %eax
	orl %eax,%edi
	movw %di,26(%esp)
	fldcw 26(%esp)
	leal 44(%esp), %edi
	movl $-36,%eax
	addl %eax,%edi
	flds (%edi)
	leal 44(%esp), %edi
	movl $-32,%eax
	addl %eax,%edi
	fistpl (%edi)
	leal print_int,%edi
	leal 44(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 44(%esp), %edi
	movl $-32,%eax
	addl %eax,%edi
	leal 44(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	call printf
Ljoin_l14:
	fnstcw 28(%esp)
	movzwl 28(%esp),%edi
	andl $-3073,%edi
	movl $0,%eax
	shll $10, %eax
	orl %eax,%edi
	movw %di,28(%esp)
	fldcw 28(%esp)
	leal 44(%esp), %edi
	movl $-36,%eax
	addl %eax,%edi
	flds (%edi)
	leal 44(%esp), %edi
	movl $-32,%eax
	addl %eax,%edi
	fistpl (%edi)
	leal print_int,%edi
	leal 44(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 44(%esp), %edi
	movl $-32,%eax
	addl %eax,%edi
	leal 44(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	call printf
Ljoin_l11:
	fnstcw 30(%esp)
	movzwl 30(%esp),%edi
	andl $-3073,%edi
	movl $3,%eax
	shll $10, %eax
	orl %eax,%edi
	movw %di,30(%esp)
	fldcw 30(%esp)
	leal 44(%esp), %edi
	movl $-36,%eax
	addl %eax,%edi
	flds (%edi)
	leal 44(%esp), %edi
	movl $-32,%eax
	addl %eax,%edi
	fistpl (%edi)
	leal print_int,%edi
	leal 44(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 44(%esp), %edi
	movl $-32,%eax
	addl %eax,%edi
	leal 44(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	call printf
Ljoin_l8:
	fnstcw 32(%esp)
	movzwl 32(%esp),%edx
	andl $-3073,%edx
	movl 40(%esp),%ecx
	shll $10, %ecx
	orl %ecx,%edx
	movw %dx,32(%esp)
	fldcw 32(%esp)
	movl $0,%eax
	leal 44(%esp), %edx
	leal 44(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 36(%esp),%edi
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
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffdc
.long 0xffffffe0
.long 0
.section .pcmap
.long Ljoin_l14
.long Lframe_l26
.section .pcmap_data
Lframe_l26:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l24
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffdc
.long 0xffffffe0
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l27
.section .pcmap_data
Lframe_l27:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l24
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffdc
.long 0xffffffe0
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l28
.section .pcmap_data
Lframe_l28:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l24
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffdc
.long 0xffffffe0
.long 0
.section .text
