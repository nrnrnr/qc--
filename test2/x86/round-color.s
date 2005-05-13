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
fmt:
.byte 37
.byte 102
.byte 32
.byte 114
.byte 111
.byte 117
.byte 110
.byte 100
.byte 101
.byte 100
.byte 32
.byte 37
.byte 115
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
up:
.byte 117
.byte 112
.byte 0
down:
.byte 100
.byte 111
.byte 119
.byte 110
.byte 0
nearest:
.byte 110
.byte 101
.byte 97
.byte 114
.byte 101
.byte 115
.byte 116
.byte 0
zero:
.byte 122
.byte 101
.byte 114
.byte 111
.byte 0
.section .text
test:
	leal -76(%esp), %esp
	movl %eax,60(%esp)
	leal 76(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,64(%esp)
	leal 76(%esp), %eax
	movl (%eax),%eax
	movl %eax,72(%esp)
	movl %ebp,68(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal 76(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 76(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	fildl (%eax)
	fdivp
	leal 76(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstps (%eax)
	leal 76(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 76(%esp), %ecx
	movl $-52,%eax
	addl %eax,%ecx
	fnstcw 56(%esp)
	movzwl 56(%esp),%eax
	shll $20, %eax
	shrl $30, %eax
	fnstcw 54(%esp)
	movzwl 54(%esp),%ebp
	andl $-3073,%ebp
	movl $1,%edx
	shll $10, %edx
	orl %edx,%ebp
	movw %bp,54(%esp)
	fldcw 54(%esp)
	fistpl (%ecx)
	fnstcw 52(%esp)
	movzwl 52(%esp),%ecx
	andl $-3073,%ecx
	shll $10, %eax
	orl %eax,%ecx
	movw %cx,52(%esp)
	fldcw 52(%esp)
	leal fmt,%ecx
	leal 76(%esp), %eax
	movl $-76,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 76(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal down,%ecx
	leal 76(%esp), %eax
	movl $-64,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 76(%esp), %ecx
	movl $-52,%eax
	addl %eax,%ecx
	leal 76(%esp), %eax
	movl $-60,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l17:
	leal 76(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 76(%esp), %ecx
	movl $-52,%eax
	addl %eax,%ecx
	fnstcw 32(%esp)
	movzwl 32(%esp),%eax
	shll $20, %eax
	shrl $30, %eax
	fnstcw 30(%esp)
	movzwl 30(%esp),%ebp
	andl $-3073,%ebp
	movl $2,%edx
	shll $10, %edx
	orl %edx,%ebp
	movw %bp,30(%esp)
	fldcw 30(%esp)
	fistpl (%ecx)
	fnstcw 28(%esp)
	movzwl 28(%esp),%ecx
	andl $-3073,%ecx
	shll $10, %eax
	orl %eax,%ecx
	movw %cx,28(%esp)
	fldcw 28(%esp)
	leal fmt,%ecx
	leal 76(%esp), %eax
	movl $-76,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 76(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal up,%ecx
	leal 76(%esp), %eax
	movl $-64,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 76(%esp), %ecx
	movl $-52,%eax
	addl %eax,%ecx
	leal 76(%esp), %eax
	movl $-60,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l14:
	leal 76(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 76(%esp), %ecx
	movl $-52,%eax
	addl %eax,%ecx
	fnstcw 38(%esp)
	movzwl 38(%esp),%eax
	shll $20, %eax
	shrl $30, %eax
	fnstcw 36(%esp)
	movzwl 36(%esp),%ebp
	andl $-3073,%ebp
	movl $0,%edx
	shll $10, %edx
	orl %edx,%ebp
	movw %bp,36(%esp)
	fldcw 36(%esp)
	fistpl (%ecx)
	fnstcw 34(%esp)
	movzwl 34(%esp),%ecx
	andl $-3073,%ecx
	shll $10, %eax
	orl %eax,%ecx
	movw %cx,34(%esp)
	fldcw 34(%esp)
	leal fmt,%ecx
	leal 76(%esp), %eax
	movl $-76,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 76(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal nearest,%ecx
	leal 76(%esp), %eax
	movl $-64,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 76(%esp), %ecx
	movl $-52,%eax
	addl %eax,%ecx
	leal 76(%esp), %eax
	movl $-60,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l11:
	leal 76(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 76(%esp), %ecx
	movl $-52,%eax
	addl %eax,%ecx
	fnstcw 44(%esp)
	movzwl 44(%esp),%eax
	shll $20, %eax
	shrl $30, %eax
	fnstcw 42(%esp)
	movzwl 42(%esp),%ebp
	andl $-3073,%ebp
	movl $3,%edx
	shll $10, %edx
	orl %edx,%ebp
	movw %bp,42(%esp)
	fldcw 42(%esp)
	fistpl (%ecx)
	fnstcw 40(%esp)
	movzwl 40(%esp),%ecx
	andl $-3073,%ecx
	shll $10, %eax
	orl %eax,%ecx
	movw %cx,40(%esp)
	fldcw 40(%esp)
	leal fmt,%ecx
	leal 76(%esp), %eax
	movl $-76,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 76(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal zero,%ecx
	leal 76(%esp), %eax
	movl $-64,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 76(%esp), %ecx
	movl $-52,%eax
	addl %eax,%ecx
	leal 76(%esp), %eax
	movl $-60,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l8:
	movl 60(%esp),%eax
	movl 64(%esp),%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl 64(%esp),%edx
	subl %edx,%ecx
	imull %ecx,%eax
	movl %eax,60(%esp)
	leal 76(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	movl 68(%esp),%ebp
	leal 80(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l23:
.long 0
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l24
.section .pcmap_data
.Lframe_l24:
.long 0x80000008
.long 0xffffffb4
.long 0xfffffffc
.long .Lstackdata_l23
.long 1
.long 4
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0xfffffff0
.long 0xfffffff4
.long 0xffffffc8
.long 0xffffffcc
.long 0
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l25
.section .pcmap_data
.Lframe_l25:
.long 0x80000008
.long 0xffffffb4
.long 0xfffffffc
.long .Lstackdata_l23
.long 1
.long 4
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0xfffffff0
.long 0xfffffff4
.long 0xffffffc8
.long 0xffffffcc
.long 0
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l26
.section .pcmap_data
.Lframe_l26:
.long 0x80000008
.long 0xffffffb4
.long 0xfffffffc
.long .Lstackdata_l23
.long 1
.long 4
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0xfffffff0
.long 0xfffffff4
.long 0xffffffc8
.long 0xffffffcc
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l27
.section .pcmap_data
.Lframe_l27:
.long 0x80000008
.long 0xffffffb4
.long 0xfffffffc
.long .Lstackdata_l23
.long 1
.long 4
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0xfffffff0
.long 0xfffffff4
.long 0xffffffc8
.long 0xffffffcc
.long 0
.section .text
main:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l29:
.Lproc_body_start_l28:
	leal -4(%esp), %esp
	movl $3,%eax
	movl $2,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test
.Lcall_successor_l39:
	leal -4(%esp), %esp
	movl $4,%eax
	movl $3,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test
.Lcall_successor_l36:
	leal -4(%esp), %esp
	movl $-7,%eax
	movl $3,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test
.Lcall_successor_l33:
	movl $0,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l45:
.long 0
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l46
.section .pcmap_data
.Lframe_l46:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l45
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l36
.long .Lframe_l47
.section .pcmap_data
.Lframe_l47:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l45
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l33
.long .Lframe_l48
.section .pcmap_data
.Lframe_l48:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l45
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .text
