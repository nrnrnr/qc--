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
nodiv:
.byte 99
.byte 97
.byte 110
.byte 110
.byte 111
.byte 116
.byte 32
.byte 116
.byte 101
.byte 115
.byte 116
.byte 32
.byte 111
.byte 118
.byte 101
.byte 114
.byte 102
.byte 108
.byte 111
.byte 119
.byte 32
.byte 102
.byte 111
.byte 114
.byte 32
.byte 100
.byte 105
.byte 118
.byte 105
.byte 115
.byte 105
.byte 111
.byte 110
.byte 10
.byte 0
.section .text
test_ovrfl:
	leal -44(%esp), %esp
	movl $4,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 44(%esp), %edx
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
	jo join_l33
join_l34:
	leal no,%edx
	movl %eax,20(%esp)
	movl $-44,%eax
	movl %ebx,32(%esp)
	leal 44(%esp), %ebx
	addl %eax,%ebx
	movl %edx,(%ebx)
	movl $-40,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl 24(%esp),%edx
	movl %edx,(%ebx)
	leal plus,%ebx
	movl $-36,%eax
	movl %edx,24(%esp)
	leal 44(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $-32,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl 20(%esp),%edx
	movl %edx,(%ebx)
	movl $-28,%ebx
	leal 44(%esp), %eax
	addl %ebx,%eax
	movl %ecx,(%eax)
	movl %edx,20(%esp)
	call printf
join_l28:
	jmp join_l31
join_l33:
	leal yes,%edx
	movl %ebx,32(%esp)
	movl $-44,%ebx
	movl %ebp,36(%esp)
	leal 44(%esp), %ebp
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl $-40,%edx
	leal 44(%esp), %ebp
	addl %edx,%ebp
	movl 24(%esp),%edx
	movl %edx,(%ebp)
	leal plus,%ebp
	movl $-36,%ebx
	movl %edx,24(%esp)
	leal 44(%esp), %edx
	addl %ebx,%edx
	movl %ebp,(%edx)
	movl $-32,%edx
	leal 44(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl $-28,%ebp
	leal 44(%esp), %edx
	addl %ebp,%edx
	movl %ecx,(%edx)
	movl %eax,20(%esp)
	call printf
join_l32:
	movl 36(%esp),%ebp
	jmp join_l31
join_l31:
	movl 20(%esp),%eax
	movl %eax,%ecx
	movl 24(%esp),%edx
	imull %edx,%ecx
	movl %edx,%ebx
	imull %eax,%ebx
	jo join_l24
join_l25:
	leal no,%ebx
	movl %eax,20(%esp)
	movl $-44,%eax
	movl %edx,24(%esp)
	leal 44(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $-40,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl 24(%esp),%edx
	movl %edx,(%ebx)
	leal mul,%ebx
	movl $-36,%eax
	movl %edx,24(%esp)
	leal 44(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $-32,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl 20(%esp),%edx
	movl %edx,(%ebx)
	movl $-28,%ebx
	leal 44(%esp), %eax
	addl %ebx,%eax
	movl %ecx,(%eax)
	movl %edx,20(%esp)
	call printf
join_l19:
	jmp join_l22
join_l24:
	leal yes,%ebx
	movl %ebp,36(%esp)
	movl $-44,%ebp
	movl %esi,40(%esp)
	leal 44(%esp), %esi
	addl %ebp,%esi
	movl %ebx,(%esi)
	movl $-40,%ebx
	leal 44(%esp), %esi
	addl %ebx,%esi
	movl %edx,(%esi)
	leal mul,%esi
	movl $-36,%ebx
	leal 44(%esp), %ebp
	addl %ebx,%ebp
	movl %esi,(%ebp)
	movl $-32,%ebp
	leal 44(%esp), %esi
	addl %ebp,%esi
	movl %eax,(%esi)
	movl $-28,%esi
	leal 44(%esp), %ebp
	addl %esi,%ebp
	movl %ecx,(%ebp)
	movl %edx,24(%esp)
	movl %eax,20(%esp)
	call printf
join_l23:
	movl 40(%esp),%esi
	movl 36(%esp),%ebp
	jmp join_l22
join_l22:
	leal nodiv,%eax
	movl $-44,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
join_l16:
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
	movl $-44,%eax
	movl %edx,20(%esp)
	leal 44(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $-40,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl 24(%esp),%edx
	movl %edx,(%ebx)
	leal sub,%edx
	movl $-36,%ebx
	leal 44(%esp), %eax
	addl %ebx,%eax
	movl %edx,(%eax)
	movl $-32,%eax
	leal 44(%esp), %edx
	addl %eax,%edx
	movl 20(%esp),%eax
	movl %eax,(%edx)
	movl $-28,%eax
	leal 44(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	call printf
join_l7:
	jmp join_l10
join_l12:
	leal yes,%ebx
	movl %ebp,36(%esp)
	movl $-44,%ebp
	movl %esi,40(%esp)
	leal 44(%esp), %esi
	addl %ebp,%esi
	movl %ebx,(%esi)
	movl $-40,%ebx
	leal 44(%esp), %esi
	addl %ebx,%esi
	movl %eax,(%esi)
	leal sub,%eax
	movl $-36,%esi
	leal 44(%esp), %ebx
	addl %esi,%ebx
	movl %eax,(%ebx)
	movl $-32,%eax
	leal 44(%esp), %ebx
	addl %eax,%ebx
	movl %edx,(%ebx)
	movl $-28,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call printf
join_l11:
	movl 40(%esp),%esi
	movl 36(%esp),%ebp
	jmp join_l10
join_l10:
	movl $4,%eax
	leal 44(%esp), %ecx
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl 32(%esp),%ebx
	leal 48(%esp), %esp
	ret
.section .pcmap_data
stackdata_l40:
.long 0
.section .pcmap
.long join_l32
.long frame_l41
.section .pcmap_data
frame_l41:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long stackdata_l40
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0xfffffff8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0xffffffe8
.long 0
.section .pcmap
.long join_l28
.long frame_l42
.section .pcmap_data
frame_l42:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long stackdata_l40
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0xffffffe8
.long 0
.section .pcmap
.long join_l23
.long frame_l43
.section .pcmap_data
frame_l43:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long stackdata_l40
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0xfffffff8
.long 0x4000000a
.long 0xfffffffc
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0xffffffe8
.long 0
.section .pcmap
.long join_l19
.long frame_l44
.section .pcmap_data
frame_l44:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long stackdata_l40
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0xffffffe8
.long 0
.section .pcmap
.long join_l16
.long frame_l45
.section .pcmap_data
frame_l45:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long stackdata_l40
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0xffffffe8
.long 0
.section .pcmap
.long join_l11
.long frame_l46
.section .pcmap_data
frame_l46:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long stackdata_l40
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0xfffffff8
.long 0x4000000a
.long 0xfffffffc
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.section .pcmap
.long join_l7
.long frame_l47
.section .pcmap_data
frame_l47:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long stackdata_l40
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
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
initialize_continuations_l50:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $1,%ecx
	movl $-8,%edx
	movl %ebx,4(%esp)
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l96:
	leal -4(%esp), %esp
	movl $1,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l93:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $1,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l90:
	leal -4(%esp), %esp
	movl $1,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l87:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-1,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l84:
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l81:
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l78:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l75:
	leal -4(%esp), %esp
	movl $2,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l72:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l69:
	leal -4(%esp), %esp
	movl $2,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l66:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l63:
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l60:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $-2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l57:
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
join_l54:
	movl $0,%eax
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l102:
.long 0
.section .pcmap
.long join_l96
.long frame_l103
.section .pcmap_data
frame_l103:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l93
.long frame_l104
.section .pcmap_data
frame_l104:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l90
.long frame_l105
.section .pcmap_data
frame_l105:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l87
.long frame_l106
.section .pcmap_data
frame_l106:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l84
.long frame_l107
.section .pcmap_data
frame_l107:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l81
.long frame_l108
.section .pcmap_data
frame_l108:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l78
.long frame_l109
.section .pcmap_data
frame_l109:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l75
.long frame_l110
.section .pcmap_data
frame_l110:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l72
.long frame_l111
.section .pcmap_data
frame_l111:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l69
.long frame_l112
.section .pcmap_data
frame_l112:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l66
.long frame_l113
.section .pcmap_data
frame_l113:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l63
.long frame_l114
.section .pcmap_data
frame_l114:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l60
.long frame_l115
.section .pcmap_data
frame_l115:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l57
.long frame_l116
.section .pcmap_data
frame_l116:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l54
.long frame_l117
.section .pcmap_data
frame_l117:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
