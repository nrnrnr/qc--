.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
no:
.byte 110
.byte 111
.byte 32
yes:
.byte 111
.byte 118
.byte 101
.byte 114
.byte 102
.byte 108
.byte 111
.byte 119
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
plus:
.byte 43
.byte 0
mul:
.byte 42
.byte 0
mulu:
.byte 60
.byte 109
.byte 117
.byte 108
.byte 117
.byte 62
.byte 0
sub:
.byte 45
.byte 0
div:
.byte 47
.byte 0
.section .text
test_ovrfl:
	leal -48(%esp), %esp
	movl $4,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l3:
	movl %ecx,20(%esp)
	movl %eax,%ecx
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	addl %eax,%ecx
	movl %edx,28(%esp)
	movl %eax,20(%esp)
	movl 24(%esp),%eax
	movl %eax,%edx
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	addl %eax,%edx
	jo join_l39
join_l40:
	leal no,%edx
	movl %eax,20(%esp)
	movl $-48,%eax
	movl %ebx,32(%esp)
	leal 48(%esp), %ebx
	addl %eax,%ebx
	movl %edx,(%ebx)
	movl $-44,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl 24(%esp),%eax
	movl %eax,(%ebx)
	leal plus,%ebx
	movl $-40,%edx
	movl %eax,24(%esp)
	leal 48(%esp), %eax
	addl %edx,%eax
	movl %ebx,(%eax)
	movl $-36,%eax
	leal 48(%esp), %ebx
	addl %eax,%ebx
	movl 20(%esp),%eax
	movl %eax,(%ebx)
	movl $-32,%ebx
	leal 48(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,20(%esp)
	call printf
join_l34:
	jmp join_l37
join_l39:
	leal yes,%edx
	movl %ebx,32(%esp)
	movl $-48,%ebx
	movl %ebp,36(%esp)
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl $-44,%edx
	leal 48(%esp), %ebp
	addl %edx,%ebp
	movl 24(%esp),%edx
	movl %edx,(%ebp)
	leal plus,%ebp
	movl $-40,%ebx
	movl %edx,24(%esp)
	leal 48(%esp), %edx
	addl %ebx,%edx
	movl %ebp,(%edx)
	movl $-36,%edx
	leal 48(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl $-32,%ebp
	leal 48(%esp), %edx
	addl %ebp,%edx
	movl %ecx,(%edx)
	movl %eax,20(%esp)
	call printf
join_l38:
	movl 36(%esp),%ebp
	jmp join_l37
join_l37:
	movl 20(%esp),%eax
	movl %eax,%ecx
	movl 24(%esp),%edx
	imull %edx,%ecx
	movl %edx,%ebx
	imull %eax,%ebx
	jo join_l30
join_l31:
	leal no,%ebx
	movl %eax,20(%esp)
	movl $-48,%eax
	movl %edx,24(%esp)
	leal 48(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $-44,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl 24(%esp),%edx
	movl %edx,(%ebx)
	leal mul,%ebx
	movl $-40,%eax
	movl %edx,24(%esp)
	leal 48(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $-36,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl 20(%esp),%edx
	movl %edx,(%ebx)
	movl $-32,%ebx
	leal 48(%esp), %eax
	addl %ebx,%eax
	movl %ecx,(%eax)
	movl %edx,20(%esp)
	call printf
join_l25:
	jmp join_l28
join_l30:
	leal yes,%ebx
	movl %ebp,36(%esp)
	movl $-48,%ebp
	movl %esi,40(%esp)
	leal 48(%esp), %esi
	addl %ebp,%esi
	movl %ebx,(%esi)
	movl $-44,%ebx
	leal 48(%esp), %esi
	addl %ebx,%esi
	movl %edx,(%esi)
	leal mul,%esi
	movl $-40,%ebx
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	movl %esi,(%ebp)
	movl $-36,%ebp
	leal 48(%esp), %esi
	addl %ebp,%esi
	movl %eax,(%esi)
	movl $-32,%esi
	leal 48(%esp), %ebp
	addl %esi,%ebp
	movl %ecx,(%ebp)
	movl %edx,24(%esp)
	movl %eax,20(%esp)
	call printf
join_l29:
	movl 40(%esp),%esi
	movl 36(%esp),%ebp
	jmp join_l28
join_l28:
	movl 24(%esp),%eax
	movl %eax,%ecx
	movl %eax,24(%esp)
	movl %ecx,%eax
	movl %eax,%ecx
	sarl $31, %ecx
	movl %ecx,%edx
	movl 20(%esp),%ecx
	idivl %ecx, %eax
	movl 24(%esp),%edx
	movl %edx,%ebx
	movl %eax,44(%esp)
	movl %ebx,%eax
	movl %eax,%ebx
	sarl $31, %ebx
	movl %edx,24(%esp)
	movl %ebx,%edx
	idivl %ecx, %eax
	jo join_l21
join_l22:
	leal no,%eax
	movl $-48,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-44,%eax
	leal 48(%esp), %ebx
	addl %eax,%ebx
	movl 24(%esp),%eax
	movl %eax,(%ebx)
	leal div,%ebx
	movl $-40,%edx
	movl %eax,24(%esp)
	leal 48(%esp), %eax
	addl %edx,%eax
	movl %ebx,(%eax)
	movl $-36,%eax
	leal 48(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $-32,%ebx
	leal 48(%esp), %eax
	addl %ebx,%eax
	movl 44(%esp),%ebx
	movl %ebx,(%eax)
	movl %ecx,20(%esp)
	call printf
join_l16:
	jmp join_l19
join_l21:
	leal yes,%ebx
	movl $-48,%eax
	leal 48(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $-44,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl 24(%esp),%edx
	movl %edx,(%ebx)
	leal div,%ebx
	movl $-40,%eax
	movl %edx,24(%esp)
	leal 48(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $-36,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-32,%ebx
	leal 48(%esp), %edx
	addl %ebx,%edx
	movl 44(%esp),%ebx
	movl %ebx,(%edx)
	movl %ecx,20(%esp)
	call printf
join_l20:
	jmp join_l19
join_l19:
	movl 24(%esp),%eax
	movl %eax,%ecx
	movl 20(%esp),%edx
	subl %edx,%ecx
	movl %eax,%ebx
	subl %edx,%ebx
	jo join_l12
join_l13:
	leal no,%ebx
	movl %eax,24(%esp)
	movl $-48,%eax
	movl %edx,20(%esp)
	leal 48(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $-44,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl 24(%esp),%edx
	movl %edx,(%ebx)
	leal sub,%edx
	movl $-40,%ebx
	leal 48(%esp), %eax
	addl %ebx,%eax
	movl %edx,(%eax)
	movl $-36,%eax
	leal 48(%esp), %edx
	addl %eax,%edx
	movl 20(%esp),%eax
	movl %eax,(%edx)
	movl $-32,%eax
	leal 48(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	call printf
join_l7:
	jmp join_l10
join_l12:
	leal yes,%ebx
	movl %ebp,36(%esp)
	movl $-48,%ebp
	movl %esi,40(%esp)
	leal 48(%esp), %esi
	addl %ebp,%esi
	movl %ebx,(%esi)
	movl $-44,%ebx
	leal 48(%esp), %esi
	addl %ebx,%esi
	movl %eax,(%esi)
	leal sub,%eax
	movl $-40,%esi
	leal 48(%esp), %ebx
	addl %esi,%ebx
	movl %eax,(%ebx)
	movl $-36,%eax
	leal 48(%esp), %ebx
	addl %eax,%ebx
	movl %edx,(%ebx)
	movl $-32,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call printf
join_l11:
	movl 40(%esp),%esi
	movl 36(%esp),%ebp
	jmp join_l10
join_l10:
	movl $4,%eax
	leal 48(%esp), %ecx
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl 32(%esp),%ebx
	leal 52(%esp), %esp
	ret
.section .pcmap_data
stackdata_l46:
.long 0
.section .pcmap
.long join_l38
.long frame_l47
.section .pcmap_data
frame_l47:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffec
.long stackdata_l46
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe8
.long 0xffffffe4
.long 0
.section .pcmap
.long join_l34
.long frame_l48
.section .pcmap_data
frame_l48:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffec
.long stackdata_l46
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe8
.long 0xffffffe4
.long 0
.section .pcmap
.long join_l29
.long frame_l49
.section .pcmap_data
frame_l49:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffec
.long stackdata_l46
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe8
.long 0xffffffe4
.long 0
.section .pcmap
.long join_l25
.long frame_l50
.section .pcmap_data
frame_l50:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffec
.long stackdata_l46
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe8
.long 0xffffffe4
.long 0
.section .pcmap
.long join_l20
.long frame_l51
.section .pcmap_data
frame_l51:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffec
.long stackdata_l46
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe8
.long 0xffffffe4
.long 0
.section .pcmap
.long join_l16
.long frame_l52
.section .pcmap_data
frame_l52:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffec
.long stackdata_l46
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe8
.long 0xffffffe4
.long 0
.section .pcmap
.long join_l11
.long frame_l53
.section .pcmap_data
frame_l53:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffec
.long stackdata_l46
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.section .pcmap
.long join_l7
.long frame_l54
.section .pcmap_data
frame_l54:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffec
.long stackdata_l46
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -4(%esp), %esp
	movl $4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
initialize_continuations_l57:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $1,%ecx
	movl $-8,%edx
	movl %ebx,4(%esp)
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l103:
	leal -4(%esp), %esp
	movl $1,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l100:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $1,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l97:
	leal -4(%esp), %esp
	movl $1,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l94:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-1,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l91:
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l88:
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l85:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l82:
	leal -4(%esp), %esp
	movl $2,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l79:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l76:
	leal -4(%esp), %esp
	movl $2,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l73:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l70:
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l67:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $-2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l64:
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l61:
	movl $0,%eax
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l109:
.long 0
.section .pcmap
.long join_l103
.long frame_l110
.section .pcmap_data
frame_l110:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l100
.long frame_l111
.section .pcmap_data
frame_l111:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l97
.long frame_l112
.section .pcmap_data
frame_l112:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l94
.long frame_l113
.section .pcmap_data
frame_l113:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l91
.long frame_l114
.section .pcmap_data
frame_l114:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l88
.long frame_l115
.section .pcmap_data
frame_l115:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l85
.long frame_l116
.section .pcmap_data
frame_l116:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l82
.long frame_l117
.section .pcmap_data
frame_l117:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l79
.long frame_l118
.section .pcmap_data
frame_l118:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l76
.long frame_l119
.section .pcmap_data
frame_l119:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l73
.long frame_l120
.section .pcmap_data
frame_l120:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l70
.long frame_l121
.section .pcmap_data
frame_l121:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l67
.long frame_l122
.section .pcmap_data
frame_l122:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l64
.long frame_l123
.section .pcmap_data
frame_l123:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l61
.long frame_l124
.section .pcmap_data
frame_l124:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l109
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .text
