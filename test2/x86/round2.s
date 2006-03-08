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
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	fnstcw 16(%esp)
	movzwl 16(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	movl $2,%edx
	movl %eax,36(%esp)
	leal 52(%esp), %eax
	movl %eax,40(%esp)
	movl $-32,%eax
	movl %eax,44(%esp)
	movl 40(%esp),%eax
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	fildl (%eax)
	movl $3,%eax
	leal 52(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-32,%ecx
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
.Lcall_successor_l16:
	fnstcw 32(%esp)
	movzwl 32(%esp),%eax
	andl $-3073,%eax
	movl $2,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,32(%esp)
	fldcw 32(%esp)
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
.Lcall_successor_l13:
	fnstcw 30(%esp)
	movzwl 30(%esp),%eax
	andl $-3073,%eax
	movl $0,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,30(%esp)
	fldcw 30(%esp)
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
.Lcall_successor_l10:
	fnstcw 28(%esp)
	movzwl 28(%esp),%eax
	andl $-3073,%eax
	movl $3,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,28(%esp)
	fldcw 28(%esp)
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
.Lcall_successor_l7:
	fnstcw 26(%esp)
	movzwl 26(%esp),%eax
	andl $-3073,%eax
	movl 48(%esp),%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,26(%esp)
	fldcw 26(%esp)
	movl $0,%eax
	leal 52(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l23:
.long 0
.section .pcmap
.long .Lcall_successor_l16
.long .Lframe_l24
.section .pcmap_data
.Lframe_l24:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffff0
.long .Lstackdata_l23
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
.long .Lcall_successor_l13
.long .Lframe_l25
.section .pcmap_data
.Lframe_l25:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffff0
.long .Lstackdata_l23
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
.long .Lcall_successor_l10
.long .Lframe_l26
.section .pcmap_data
.Lframe_l26:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffff0
.long .Lstackdata_l23
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
.long .Lcall_successor_l7
.long .Lframe_l27
.section .pcmap_data
.Lframe_l27:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffff0
.long .Lstackdata_l23
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
