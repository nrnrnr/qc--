.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
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
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	fnstcw 32(%esp)
	movzwl 32(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	movl $2,%edx
	movl %eax,36(%esp)
	leal 52(%esp), %eax
	movl %eax,40(%esp)
	movl $-24,%eax
	movl %eax,44(%esp)
	movl 40(%esp),%eax
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fildl (%eax)
	movl $3,%eax
	leal 52(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fildl (%eax)
	fdivp
	leal 52(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	fstps (%eax)
	fnstcw 24(%esp)
	movzwl 24(%esp),%eax
	andl $-3073,%eax
	movl $1,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,24(%esp)
	fldcw 24(%esp)
	leal 52(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 52(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal print_int,%eax
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	leal 52(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Ljoin_l17:
	fnstcw 22(%esp)
	movzwl 22(%esp),%eax
	andl $-3073,%eax
	movl $2,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,22(%esp)
	fldcw 22(%esp)
	leal 52(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 52(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal print_int,%eax
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	leal 52(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Ljoin_l14:
	fnstcw 20(%esp)
	movzwl 20(%esp),%eax
	andl $-3073,%eax
	movl $0,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,20(%esp)
	fldcw 20(%esp)
	leal 52(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 52(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal print_int,%eax
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	leal 52(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Ljoin_l11:
	fnstcw 18(%esp)
	movzwl 18(%esp),%eax
	andl $-3073,%eax
	movl $3,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,18(%esp)
	fldcw 18(%esp)
	leal 52(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 52(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal print_int,%eax
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	leal 52(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Ljoin_l8:
	fnstcw 16(%esp)
	movzwl 16(%esp),%eax
	andl $-3073,%eax
	movl 48(%esp),%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,16(%esp)
	fldcw 16(%esp)
	movl $0,%eax
	leal 52(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l24:
.long 0
.section .pcmap
.long .Ljoin_l17
.long .Lframe_l25
.section .pcmap_data
.Lframe_l25:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffff0
.long .Lstackdata_l24
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffd8
.long 0xffffffd4
.long 0
.section .pcmap
.long .Ljoin_l14
.long .Lframe_l26
.section .pcmap_data
.Lframe_l26:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffff0
.long .Lstackdata_l24
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffd8
.long 0xffffffd4
.long 0
.section .pcmap
.long .Ljoin_l11
.long .Lframe_l27
.section .pcmap_data
.Lframe_l27:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffff0
.long .Lstackdata_l24
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffd8
.long 0xffffffd4
.long 0
.section .pcmap
.long .Ljoin_l8
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffff0
.long .Lstackdata_l24
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffd8
.long 0xffffffd4
.long 0
.section .text
