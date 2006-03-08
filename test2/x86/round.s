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
	leal -128(%esp), %esp
	leal 128(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 128(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl %eax,56(%esp)
	leal 128(%esp), %eax
	movl %eax,60(%esp)
	movl $-100,%eax
	movl %eax,64(%esp)
	movl 60(%esp),%eax
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	leal 128(%esp), %eax
	movl %eax,72(%esp)
	movl $-100,%eax
	movl %eax,76(%esp)
	movl 72(%esp),%eax
	movl 76(%esp),%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 128(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	leal 128(%esp), %eax
	movl %eax,80(%esp)
	movl $-100,%eax
	movl %eax,84(%esp)
	movl 80(%esp),%eax
	movl 84(%esp),%ecx
	addl %ecx,%eax
	fildl (%eax)
	fdivp
	leal 128(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	fstps (%eax)
	leal 128(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 128(%esp), %eax
	movl $-104,%ecx
	addl %ecx,%eax
	fnstcw 36(%esp)
	movzwl 36(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 34(%esp)
	movl %eax,88(%esp)
	movzwl 34(%esp),%eax
	andl $-3073,%eax
	movl %eax,92(%esp)
	movl $1,%eax
	shll $10, %eax
	movl %ecx,96(%esp)
	movl 92(%esp),%ecx
	orl %eax,%ecx
	movw %cx,34(%esp)
	fldcw 34(%esp)
	movl 88(%esp),%eax
	fistpl (%eax)
	fnstcw 32(%esp)
	movzwl 32(%esp),%eax
	andl $-3073,%eax
	movl 96(%esp),%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,32(%esp)
	fldcw 32(%esp)
	leal fmt,%eax
	leal 128(%esp), %ecx
	movl %eax,100(%esp)
	movl $-128,%eax
	addl %eax,%ecx
	movl 100(%esp),%eax
	movl %eax,(%ecx)
	leal 128(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 128(%esp), %eax
	movl $-124,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal down,%eax
	leal 128(%esp), %ecx
	movl %eax,104(%esp)
	movl $-116,%eax
	addl %eax,%ecx
	movl 104(%esp),%eax
	movl %eax,(%ecx)
	leal 128(%esp), %eax
	movl $-104,%ecx
	addl %ecx,%eax
	leal 128(%esp), %ecx
	movl %eax,108(%esp)
	movl $-112,%eax
	addl %eax,%ecx
	movl 108(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,112(%esp)
	call printf
.Lcall_successor_l17:
	leal 128(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 128(%esp), %eax
	movl $-104,%ecx
	addl %ecx,%eax
	fnstcw 54(%esp)
	movzwl 54(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 52(%esp)
	movzwl 52(%esp),%edx
	andl $-3073,%edx
	movl %eax,116(%esp)
	movl $2,%eax
	shll $10, %eax
	orl %eax,%edx
	movw %dx,52(%esp)
	fldcw 52(%esp)
	movl 116(%esp),%eax
	fistpl (%eax)
	fnstcw 50(%esp)
	movzwl 50(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,50(%esp)
	fldcw 50(%esp)
	leal fmt,%eax
	leal 128(%esp), %ecx
	movl $-128,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 128(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 128(%esp), %eax
	movl $-124,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal up,%eax
	leal 128(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 128(%esp), %eax
	movl $-104,%ecx
	addl %ecx,%eax
	leal 128(%esp), %ecx
	movl $-112,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l14:
	leal 128(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 128(%esp), %eax
	movl $-104,%ecx
	addl %ecx,%eax
	fnstcw 48(%esp)
	movzwl 48(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 46(%esp)
	movzwl 46(%esp),%edx
	andl $-3073,%edx
	movl %eax,120(%esp)
	movl $0,%eax
	shll $10, %eax
	orl %eax,%edx
	movw %dx,46(%esp)
	fldcw 46(%esp)
	movl 120(%esp),%eax
	fistpl (%eax)
	fnstcw 44(%esp)
	movzwl 44(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,44(%esp)
	fldcw 44(%esp)
	leal fmt,%eax
	leal 128(%esp), %ecx
	movl $-128,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 128(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 128(%esp), %eax
	movl $-124,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal nearest,%eax
	leal 128(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 128(%esp), %eax
	movl $-104,%ecx
	addl %ecx,%eax
	leal 128(%esp), %ecx
	movl $-112,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l11:
	leal 128(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 128(%esp), %eax
	movl $-104,%ecx
	addl %ecx,%eax
	fnstcw 42(%esp)
	movzwl 42(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 40(%esp)
	movzwl 40(%esp),%edx
	andl $-3073,%edx
	movl %eax,124(%esp)
	movl $3,%eax
	shll $10, %eax
	orl %eax,%edx
	movw %dx,40(%esp)
	fldcw 40(%esp)
	movl 124(%esp),%eax
	fistpl (%eax)
	fnstcw 38(%esp)
	movzwl 38(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,38(%esp)
	fldcw 38(%esp)
	leal fmt,%eax
	leal 128(%esp), %ecx
	movl $-128,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 128(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 128(%esp), %eax
	movl $-124,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal zero,%eax
	leal 128(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 128(%esp), %eax
	movl $-104,%ecx
	addl %ecx,%eax
	leal 128(%esp), %ecx
	movl $-112,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l8:
	movl 56(%esp),%eax
	movl %eax,%ecx
	movl 68(%esp),%edx
	addl %edx,%ecx
	subl %edx,%eax
	imull %eax,%ecx
	leal 128(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 112(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %esp
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
.long 0xffffff80
.long 0xfffffff0
.long .Lstackdata_l23
.long 0
.long 4
.long 0
.long 1
.long 0xffffffb8
.long 0xffffffc4
.long 0xffffff94
.long 0xffffff98
.long 0
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l25
.section .pcmap_data
.Lframe_l25:
.long 0x80000008
.long 0xffffff80
.long 0xfffffff0
.long .Lstackdata_l23
.long 0
.long 4
.long 0
.long 1
.long 0xffffffb8
.long 0xffffffc4
.long 0xffffff94
.long 0xffffff98
.long 0
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l26
.section .pcmap_data
.Lframe_l26:
.long 0x80000008
.long 0xffffff80
.long 0xfffffff0
.long .Lstackdata_l23
.long 0
.long 4
.long 0
.long 1
.long 0xffffffb8
.long 0xffffffc4
.long 0xffffff94
.long 0xffffff98
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l27
.section .pcmap_data
.Lframe_l27:
.long 0x80000008
.long 0xffffff80
.long 0xfffffff0
.long .Lstackdata_l23
.long 0
.long 4
.long 0
.long 1
.long 0xffffffb8
.long 0xffffffc4
.long 0xffffff94
.long 0xffffff98
.long 0
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l29:
.Lproc_body_start_l28:
	leal -4(%esp), %esp
	movl $3,%ecx
	movl %eax,4(%esp)
	movl %ecx,%eax
	movl $2,%ecx
	leal 20(%esp), %edx
	movl %ecx,8(%esp)
	movl $-20,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	call test
.Lcall_successor_l39:
	leal -4(%esp), %esp
	movl $4,%eax
	movl $3,%ecx
	leal 20(%esp), %edx
	movl %ecx,12(%esp)
	movl $-20,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	call test
.Lcall_successor_l36:
	leal -4(%esp), %esp
	movl $-7,%eax
	movl $3,%ecx
	leal 20(%esp), %edx
	movl %ecx,16(%esp)
	movl $-20,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	call test
.Lcall_successor_l33:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
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
.long 0xfffffff0
.long 0xfffffff0
.long .Lstackdata_l45
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l36
.long .Lframe_l47
.section .pcmap_data
.Lframe_l47:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff0
.long .Lstackdata_l45
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l33
.long .Lframe_l48
.section .pcmap_data
.Lframe_l48:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff0
.long .Lstackdata_l45
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
