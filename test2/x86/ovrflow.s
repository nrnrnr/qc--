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
Linitialize_continuations_l5:
Lproc_body_start_l4:
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
	jo Ljoin_l35
Ljoin_l36:
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
Ljoin_l30:
	jmp Ljoin_l33
Ljoin_l35:
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
Ljoin_l34:
	movl 36(%esp),%ebp
	jmp Ljoin_l33
Ljoin_l33:
	movl 20(%esp),%eax
	movl %eax,%ecx
	movl 24(%esp),%edx
	imull %edx,%ecx
	movl %edx,%ebx
	imull %eax,%ebx
	jo Ljoin_l26
Ljoin_l27:
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
Ljoin_l21:
	jmp Ljoin_l24
Ljoin_l26:
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
Ljoin_l25:
	movl 40(%esp),%esi
	movl 36(%esp),%ebp
	jmp Ljoin_l24
Ljoin_l24:
	leal nodiv,%eax
	movl $-44,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l18:
	movl 24(%esp),%eax
	movl %eax,%ecx
	movl 20(%esp),%edx
	subl %edx,%ecx
	movl %eax,%ebx
	subl %edx,%ebx
	jo Ljoin_l14
Ljoin_l15:
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
Ljoin_l9:
	jmp Ljoin_l12
Ljoin_l14:
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
Ljoin_l13:
	movl 40(%esp),%esi
	movl 36(%esp),%ebp
	jmp Ljoin_l12
Ljoin_l12:
	movl $4,%eax
	leal 44(%esp), %ecx
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl 32(%esp),%ebx
	leal 48(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l42:
.long 0
.section .pcmap
.long Ljoin_l34
.long Lframe_l43
.section .pcmap_data
Lframe_l43:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l42
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
.long Ljoin_l30
.long Lframe_l44
.section .pcmap_data
Lframe_l44:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l42
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
.long Ljoin_l25
.long Lframe_l45
.section .pcmap_data
Lframe_l45:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l42
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
.long Ljoin_l21
.long Lframe_l46
.section .pcmap_data
Lframe_l46:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l42
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
.long Ljoin_l18
.long Lframe_l47
.section .pcmap_data
Lframe_l47:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l42
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
.long Ljoin_l13
.long Lframe_l48
.section .pcmap_data
Lframe_l48:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l42
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
.long Ljoin_l9
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0xffffffd4
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l42
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
Linitialize_continuations_l52:
Lproc_body_start_l51:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $1,%ecx
	movl $-8,%edx
	movl %ebx,4(%esp)
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l98:
	leal -4(%esp), %esp
	movl $1,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l95:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $1,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l92:
	leal -4(%esp), %esp
	movl $1,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l89:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-1,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l86:
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l83:
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l80:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l77:
	leal -4(%esp), %esp
	movl $2,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l74:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l71:
	leal -4(%esp), %esp
	movl $2,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l68:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l65:
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $2147483647,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l62:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $-2,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l59:
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $-2147483648,%ecx
	movl $-8,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call test_ovrfl
Ljoin_l56:
	movl $0,%eax
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l104:
.long 0
.section .pcmap
.long Ljoin_l98
.long Lframe_l105
.section .pcmap_data
Lframe_l105:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l95
.long Lframe_l106
.section .pcmap_data
Lframe_l106:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l92
.long Lframe_l107
.section .pcmap_data
Lframe_l107:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l89
.long Lframe_l108
.section .pcmap_data
Lframe_l108:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l86
.long Lframe_l109
.section .pcmap_data
Lframe_l109:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l83
.long Lframe_l110
.section .pcmap_data
Lframe_l110:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l80
.long Lframe_l111
.section .pcmap_data
Lframe_l111:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l77
.long Lframe_l112
.section .pcmap_data
Lframe_l112:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l74
.long Lframe_l113
.section .pcmap_data
Lframe_l113:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l71
.long Lframe_l114
.section .pcmap_data
Lframe_l114:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l68
.long Lframe_l115
.section .pcmap_data
Lframe_l115:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l65
.long Lframe_l116
.section .pcmap_data
Lframe_l116:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l62
.long Lframe_l117
.section .pcmap_data
Lframe_l117:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l59
.long Lframe_l118
.section .pcmap_data
Lframe_l118:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
.long Ljoin_l56
.long Lframe_l119
.section .pcmap_data
Lframe_l119:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
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
