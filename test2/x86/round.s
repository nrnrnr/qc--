.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
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
	leal -72(%esp), %esp
	leal 72(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 72(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl %eax,56(%esp)
	leal 72(%esp), %eax
	movl %edx,60(%esp)
	movl $-44,%edx
	addl %edx,%eax
	movl 60(%esp),%edx
	movl %edx,(%eax)
	leal 72(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	fildl (%eax)
	leal 72(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl 56(%esp),%edx
	movl %edx,(%eax)
	leal 72(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	fildl (%eax)
	fdivp
	leal 72(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	fstps (%eax)
	leal 72(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	flds (%eax)
	leal 72(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	fnstcw 36(%esp)
	movzwl 36(%esp),%edx
	andl $3072,%edx
	shrl $10, %edx
	fnstcw 34(%esp)
	movl %ecx,64(%esp)
	movzwl 34(%esp),%ecx
	andl $-3073,%ecx
	movl %ebx,68(%esp)
	movl $1,%ebx
	shll $10, %ebx
	orl %ebx,%ecx
	movw %cx,34(%esp)
	fldcw 34(%esp)
	fistpl (%eax)
	fnstcw 32(%esp)
	movzwl 32(%esp),%eax
	andl $-3073,%eax
	shll $10, %edx
	orl %edx,%eax
	movw %ax,32(%esp)
	fldcw 32(%esp)
	leal fmt,%eax
	leal 72(%esp), %edx
	movl $-72,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 72(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	flds (%eax)
	leal 72(%esp), %eax
	movl $-68,%edx
	addl %edx,%eax
	fstpl (%eax)
	leal down,%eax
	leal 72(%esp), %edx
	movl $-60,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 72(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	leal 72(%esp), %edx
	movl $-56,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l18:
	leal 72(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 72(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fnstcw 42(%esp)
	movzwl 42(%esp),%ecx
	andl $3072,%ecx
	shrl $10, %ecx
	fnstcw 40(%esp)
	movzwl 40(%esp),%edx
	andl $-3073,%edx
	movl $2,%ebx
	shll $10, %ebx
	orl %ebx,%edx
	movw %dx,40(%esp)
	fldcw 40(%esp)
	fistpl (%eax)
	fnstcw 38(%esp)
	movzwl 38(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,38(%esp)
	fldcw 38(%esp)
	leal fmt,%eax
	leal 72(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 72(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 72(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal up,%eax
	leal 72(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 72(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	leal 72(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call printf
Ljoin_l15:
	leal 72(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 72(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fnstcw 48(%esp)
	movzwl 48(%esp),%ecx
	andl $3072,%ecx
	shrl $10, %ecx
	fnstcw 46(%esp)
	movzwl 46(%esp),%edx
	andl $-3073,%edx
	movl $0,%ebx
	shll $10, %ebx
	orl %ebx,%edx
	movw %dx,46(%esp)
	fldcw 46(%esp)
	fistpl (%eax)
	fnstcw 44(%esp)
	movzwl 44(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,44(%esp)
	fldcw 44(%esp)
	leal fmt,%eax
	leal 72(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 72(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 72(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal nearest,%eax
	leal 72(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 72(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	leal 72(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call printf
Ljoin_l12:
	leal 72(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 72(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fnstcw 54(%esp)
	movzwl 54(%esp),%ecx
	andl $3072,%ecx
	shrl $10, %ecx
	fnstcw 52(%esp)
	movzwl 52(%esp),%edx
	andl $-3073,%edx
	movl $3,%ebx
	shll $10, %ebx
	orl %ebx,%edx
	movw %dx,52(%esp)
	fldcw 52(%esp)
	fistpl (%eax)
	fnstcw 50(%esp)
	movzwl 50(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,50(%esp)
	fldcw 50(%esp)
	leal fmt,%eax
	leal 72(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 72(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 72(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal zero,%eax
	leal 72(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 72(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	leal 72(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call printf
Ljoin_l9:
	movl 56(%esp),%eax
	movl %eax,%ecx
	movl 60(%esp),%edx
	addl %edx,%ecx
	subl %edx,%eax
	imull %eax,%ecx
	leal 72(%esp), %ecx
	movl $4,%eax
	addl %eax,%ecx
	movl 64(%esp),%eax
	movl %eax,(%ecx)
	movl 68(%esp),%ebx
	leal 76(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l24:
.long 0
.section .pcmap
.long Ljoin_l18
.long Lframe_l25
.section .pcmap_data
Lframe_l25:
.long 0xffffffb8
.long 0x80000008
.long 0xfffffff8
.long Lstackdata_l24
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff0
.long 0xfffffff4
.long 0xffffffcc
.long 0xffffffd0
.long 0x80000000
.section .pcmap
.long Ljoin_l15
.long Lframe_l26
.section .pcmap_data
Lframe_l26:
.long 0xffffffb8
.long 0x80000008
.long 0xfffffff8
.long Lstackdata_l24
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff0
.long 0xfffffff4
.long 0xffffffcc
.long 0xffffffd0
.long 0x80000000
.section .pcmap
.long Ljoin_l12
.long Lframe_l27
.section .pcmap_data
Lframe_l27:
.long 0xffffffb8
.long 0x80000008
.long 0xfffffff8
.long Lstackdata_l24
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff0
.long 0xfffffff4
.long 0xffffffcc
.long 0xffffffd0
.long 0x80000000
.section .pcmap
.long Ljoin_l9
.long Lframe_l28
.section .pcmap_data
Lframe_l28:
.long 0xffffffb8
.long 0x80000008
.long 0xfffffff8
.long Lstackdata_l24
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff0
.long 0xfffffff4
.long 0xffffffcc
.long 0xffffffd0
.long 0x80000000
.section .text
main:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 4(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l31:
Lproc_body_start_l30:
	leal -4(%esp), %esp
	movl $3,%eax
	movl $2,%ecx
	leal 8(%esp), %edx
	movl %ebx,4(%esp)
	movl $-8,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call test
Ljoin_l41:
	leal -4(%esp), %esp
	movl $4,%eax
	movl $3,%ecx
	leal 8(%esp), %edx
	movl $-8,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call test
Ljoin_l38:
	leal -4(%esp), %esp
	movl $-7,%eax
	movl $3,%ecx
	leal 8(%esp), %edx
	movl $-8,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call test
Ljoin_l35:
	movl $0,%eax
	leal 4(%esp), %ecx
	leal 4(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l47:
.long 0
.section .pcmap
.long Ljoin_l41
.long Lframe_l48
.section .pcmap_data
Lframe_l48:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l47
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l38
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l47
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l35
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l47
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x80000000
.section .text
