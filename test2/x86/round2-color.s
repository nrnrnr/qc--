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
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl (%eax),%eax
	movl %eax,40(%esp)
	movl %edi,36(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	fnstcw 24(%esp)
	movzwl 24(%esp),%edi
	shll $20, %edi
	shrl $30, %edi
	movl $2,%eax
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	fildl (%eax)
	movl $3,%eax
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	fildl (%eax)
	fdivp
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	fstps (%eax)
	fnstcw 32(%esp)
	movzwl 32(%esp),%ecx
	andl $-3073,%ecx
	movl $1,%eax
	shll $10, %eax
	orl %eax,%ecx
	movw %cx,32(%esp)
	fldcw 32(%esp)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal print_int,%eax
	leal 44(%esp), %edx
	movl $-44,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	leal 44(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call printf
.Lcall_successor_l16:
	fnstcw 16(%esp)
	movzwl 16(%esp),%ecx
	andl $-3073,%ecx
	movl $2,%eax
	shll $10, %eax
	orl %eax,%ecx
	movw %cx,16(%esp)
	fldcw 16(%esp)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal print_int,%eax
	leal 44(%esp), %edx
	movl $-44,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	leal 44(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call printf
.Lcall_successor_l13:
	fnstcw 18(%esp)
	movzwl 18(%esp),%ecx
	andl $-3073,%ecx
	movl $0,%eax
	shll $10, %eax
	orl %eax,%ecx
	movw %cx,18(%esp)
	fldcw 18(%esp)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal print_int,%eax
	leal 44(%esp), %edx
	movl $-44,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	leal 44(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call printf
.Lcall_successor_l10:
	fnstcw 20(%esp)
	movzwl 20(%esp),%ecx
	andl $-3073,%ecx
	movl $3,%eax
	shll $10, %eax
	orl %eax,%ecx
	movw %cx,20(%esp)
	fldcw 20(%esp)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal print_int,%eax
	leal 44(%esp), %edx
	movl $-44,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	leal 44(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call printf
.Lcall_successor_l7:
	fnstcw 22(%esp)
	movzwl 22(%esp),%eax
	andl $-3073,%eax
	shll $10, %edi
	orl %edi,%eax
	movw %ax,22(%esp)
	fldcw 22(%esp)
	movl $0,%eax
	leal 44(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	movl 36(%esp),%edi
	leal 44(%esp), %esp
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
.long 0xffffffd4
.long 0xfffffffc
.long .Lstackdata_l23
.long 1
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffdc
.long 0
.section .pcmap
.long .Lcall_successor_l13
.long .Lframe_l25
.section .pcmap_data
.Lframe_l25:
.long 0x80000004
.long 0xffffffd4
.long 0xfffffffc
.long .Lstackdata_l23
.long 1
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffdc
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l26
.section .pcmap_data
.Lframe_l26:
.long 0x80000004
.long 0xffffffd4
.long 0xfffffffc
.long .Lstackdata_l23
.long 1
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffdc
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l27
.section .pcmap_data
.Lframe_l27:
.long 0x80000004
.long 0xffffffd4
.long 0xfffffffc
.long .Lstackdata_l23
.long 1
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffdc
.long 0
.section .text
