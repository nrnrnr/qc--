.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
usage:
.byte 69
.byte 114
.byte 114
.byte 111
.byte 114
.byte 58
.byte 32
.byte 49
.byte 32
.byte 99
.byte 111
.byte 109
.byte 109
.byte 97
.byte 110
.byte 100
.byte 45
.byte 108
.byte 105
.byte 110
.byte 101
.byte 32
.byte 97
.byte 114
.byte 103
.byte 32
.byte 114
.byte 101
.byte 113
.byte 117
.byte 105
.byte 114
.byte 101
.byte 100
.byte 33
.byte 10
.byte 0
msg:
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 105
.byte 110
.byte 103
.byte 46
.byte 46
.byte 46
.byte 10
.byte 0
msg0:
.byte 78
.byte 111
.byte 114
.byte 109
.byte 97
.byte 108
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 58
.byte 37
.byte 100
.byte 37
.byte 100
.byte 37
.byte 100
.byte 10
.byte 0
msg1:
.byte 65
.byte 108
.byte 116
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 32
.byte 49
.byte 58
.byte 37
.byte 100
.byte 37
.byte 100
.byte 37
.byte 100
.byte 10
.byte 0
msg2:
.byte 65
.byte 108
.byte 116
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 32
.byte 50
.byte 58
.byte 37
.byte 100
.byte 37
.byte 100
.byte 37
.byte 100
.byte 37
.byte 100
.byte 37
.byte 100
.byte 37
.byte 100
.byte 10
.byte 0
cmm:
.byte 67
.byte 109
.byte 109
.byte 32
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 99
.byte 111
.byte 110
.byte 118
.byte 46
.byte 46
.byte 46
.byte 10
.byte 0
notail:
.byte 110
.byte 111
.byte 116
.byte 97
.byte 105
.byte 108
.byte 32
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 99
.byte 111
.byte 110
.byte 118
.byte 46
.byte 46
.byte 46
.byte 10
.byte 0
.section .text
g:
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l9:
Lproc_body_start_l8:
	leal cmm,%ecx
	movl %eax,4(%esp)
	movl $-24,%eax
	movl %edx,8(%esp)
	leal 24(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	call printf
Ljoin_l28:
	leal msg,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l25:
	movl $0,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je Ljoin_l21
Ljoin_l22:
	jmp Ljoin_l19
Ljoin_l19:
	movl $1,%eax
	cmpl %eax,%ecx
	je Ljoin_l17
Ljoin_l18:
	jmp Ljoin_l15
Ljoin_l15:
	movl $2,%eax
	cmpl %eax,%ecx
	je Ljoin_l13
Ljoin_l14:
	jmp Ljoin_l11
Ljoin_l11:
	movl $10,%eax
	movl 8(%esp),%edx
	addl %eax,%edx
	movl %ecx,%eax
	movl %edx,8(%esp)
	movl %ecx,%edx
	movl %ecx,4(%esp)
	movl $4,%ecx
	movl %ebx,12(%esp)
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl 4(%esp),%ecx
	movl %ecx,(%ebx)
	movl $0,%ecx
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl 8(%esp),%ecx
	movl %ecx,(%ebx)
	movl 12(%esp),%ebx
	leal 24(%esp), %esp
	ret
Ljoin_l13:
	movl $10,%edx
	movl 8(%esp),%eax
	addl %edx,%eax
	movl %eax,8(%esp)
	movl %ecx,%eax
	movl %ecx,%edx
	movl %ecx,4(%esp)
	movl $4,%ecx
	movl %edi,16(%esp)
	leal 24(%esp), %edi
	addl %ecx,%edi
	movl 4(%esp),%ecx
	movl %ecx,(%edi)
	movl $0,%ecx
	leal 24(%esp), %edi
	addl %ecx,%edi
	movl 8(%esp),%ecx
	movl %ecx,(%edi)
	movl 16(%esp),%edi
	leal 24(%esp), %esp
	ret
Ljoin_l17:
	movl $5,%edx
	movl 8(%esp),%eax
	addl %edx,%eax
	movl %eax,8(%esp)
	movl %ecx,%eax
	movl $2,%edx
	movl $3,%ecx
	movl %edi,16(%esp)
	movl $16,%edi
	movl %esi,20(%esp)
	leal 24(%esp), %esi
	addl %edi,%esi
	movl %ecx,(%esi)
	movl $4,%ecx
	movl $12,%esi
	leal 24(%esp), %edi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl $5,%ecx
	movl $8,%edi
	leal 24(%esp), %esi
	addl %edi,%esi
	movl %ecx,(%esi)
	movl $6,%ecx
	movl $4,%esi
	leal 24(%esp), %edi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl $0,%ecx
	leal 24(%esp), %edi
	addl %ecx,%edi
	movl 8(%esp),%ecx
	movl %ecx,(%edi)
	movl 20(%esp),%esi
	movl 16(%esp),%edi
	leal 24(%esp), %esp
	ret
Ljoin_l21:
	movl %ecx,%eax
	movl %ecx,%edx
	movl %ecx,4(%esp)
	movl $4,%ecx
	movl %edi,16(%esp)
	leal 24(%esp), %edi
	addl %ecx,%edi
	movl 4(%esp),%ecx
	movl %ecx,(%edi)
	movl $0,%ecx
	leal 24(%esp), %edi
	addl %ecx,%edi
	movl 8(%esp),%ecx
	movl %ecx,(%edi)
	movl 16(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l34:
.long 0
.section .pcmap
.long Ljoin_l28
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0xffffffe8
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l34
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0x80000000
.section .pcmap
.long Ljoin_l25
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0xffffffe8
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l34
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0x80000000
.section .text
.section .text
g_notail:
	leal -24(%esp), %esp
Linitialize_continuations_l39:
Lproc_body_start_l38:
	leal notail,%ecx
	movl $-24,%edx
	movl %eax,4(%esp)
	leal 24(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
Ljoin_l58:
	leal msg,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l55:
	movl $0,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je Ljoin_l51
Ljoin_l52:
	jmp Ljoin_l49
Ljoin_l49:
	movl $1,%eax
	cmpl %eax,%ecx
	je Ljoin_l47
Ljoin_l48:
	jmp Ljoin_l45
Ljoin_l45:
	movl $2,%eax
	cmpl %eax,%ecx
	je Ljoin_l43
Ljoin_l44:
	jmp Ljoin_l41
Ljoin_l41:
	movl $10,%eax
	leal 24(%esp), %edx
	movl (%edx),%edx
	addl %eax,%edx
	leal 24(%esp), %eax
	movl %edx,(%eax)
	movl %ecx,%eax
	movl %ecx,%edx
	movl %ecx,4(%esp)
	movl $4,%ecx
	movl %ebx,8(%esp)
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl 4(%esp),%ecx
	movl %ecx,(%ebx)
	leal 24(%esp), %ecx
	movl $0,%ebx
	movl %ebp,12(%esp)
	leal 24(%esp), %ebp
	addl %ebx,%ebp
	movl (%ecx),%ebx
	movl %ebx,(%ebp)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	leal 24(%esp), %esp
	ret
Ljoin_l43:
	movl $10,%edx
	leal 24(%esp), %eax
	movl (%eax),%eax
	addl %edx,%eax
	leal 24(%esp), %edx
	movl %eax,(%edx)
	movl %ecx,%eax
	movl %ecx,%edx
	movl %ecx,4(%esp)
	movl $4,%ecx
	movl %edi,16(%esp)
	leal 24(%esp), %edi
	addl %ecx,%edi
	movl 4(%esp),%ecx
	movl %ecx,(%edi)
	leal 24(%esp), %ecx
	movl $0,%edi
	movl %esi,20(%esp)
	leal 24(%esp), %esi
	addl %edi,%esi
	movl (%ecx),%edi
	movl %edi,(%esi)
	movl 20(%esp),%esi
	movl 16(%esp),%edi
	leal 24(%esp), %esp
	ret
Ljoin_l47:
	movl $5,%edx
	leal 24(%esp), %eax
	movl (%eax),%eax
	addl %edx,%eax
	leal 24(%esp), %edx
	movl %eax,(%edx)
	movl %ecx,%eax
	movl $2,%edx
	movl $3,%ecx
	movl %edi,16(%esp)
	movl $16,%edi
	movl %esi,20(%esp)
	leal 24(%esp), %esi
	addl %edi,%esi
	movl %ecx,(%esi)
	movl $4,%ecx
	movl $12,%esi
	leal 24(%esp), %edi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl $5,%ecx
	movl $8,%edi
	leal 24(%esp), %esi
	addl %edi,%esi
	movl %ecx,(%esi)
	movl $6,%ecx
	movl $4,%esi
	leal 24(%esp), %edi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 24(%esp), %ecx
	movl $0,%edi
	leal 24(%esp), %esi
	addl %edi,%esi
	movl (%ecx),%edi
	movl %edi,(%esi)
	movl 20(%esp),%esi
	movl 16(%esp),%edi
	leal 24(%esp), %esp
	ret
Ljoin_l51:
	movl %ecx,%eax
	movl %ecx,%edx
	movl %ecx,4(%esp)
	movl $4,%ecx
	movl %edi,16(%esp)
	leal 24(%esp), %edi
	addl %ecx,%edi
	movl 4(%esp),%ecx
	movl %ecx,(%edi)
	leal 24(%esp), %ecx
	movl $0,%edi
	movl %esi,20(%esp)
	leal 24(%esp), %esi
	addl %edi,%esi
	movl (%ecx),%edi
	movl %edi,(%esi)
	movl 20(%esp),%esi
	movl 16(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l65:
.long 0
.section .pcmap
.long Ljoin_l58
.long Lframe_l66
.section .pcmap_data
Lframe_l66:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l65
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0x80000000
.section .pcmap
.long Ljoin_l55
.long Lframe_l67
.section .pcmap_data
Lframe_l67:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l65
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0x80000000
.section .text
.section .text
f:
	leal -56(%esp), %esp
	leal 56(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l80:
Lproc_body_start_l79:
	movl $0,%ecx
	cmpl %ecx,%eax
	jl Ljoin_l106
Ljoin_l114:
	jmp Ljoin_l107
Ljoin_l106:
	movl $-1,%ecx
	imull %ecx,%eax
	jmp Ljoin_l107
Ljoin_l107:
	movl $2,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l104
Ljoin_l105:
	movl %edx,28(%esp)
	call g_notail
	.byte 0xe9
	.long notail_R95-.-4
	.byte 0xe9
	.long notail_R96-.-4
Ljoin_l97:
	movl $-56,%ecx
	movl %edi,44(%esp)
	leal 56(%esp), %edi
	addl %ecx,%edi
	movl (%edi),%ecx
	jmp Ljoin_l102
notail_R95:
	movl $-56,%ecx
	movl %edi,44(%esp)
	leal 56(%esp), %edi
	addl %ecx,%edi
	movl (%edi),%ecx
	jmp Ljoin_l109
notail_R96:
	movl $-44,%ecx
	movl %edi,44(%esp)
	leal 56(%esp), %edi
	addl %ecx,%edi
	movl (%edi),%ecx
	movl $-48,%edi
	movl %esi,40(%esp)
	leal 56(%esp), %esi
	addl %edi,%esi
	movl (%esi),%edi
	movl $-52,%esi
	movl %ebp,36(%esp)
	leal 56(%esp), %ebp
	addl %esi,%ebp
	movl (%ebp),%ebp
	movl $-56,%esi
	movl %ebx,32(%esp)
	leal 56(%esp), %ebx
	addl %esi,%ebx
	movl (%ebx),%esi
	movl %edi,%ebx
	jmp Ljoin_l108
Ljoin_l104:
	movl $3,%ecx
	movl %edx,28(%esp)
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl %edx,%eax
	call g
	.byte 0xe9
	.long C___R100-.-4
	.byte 0xe9
	.long C___R101-.-4
Ljoin_l103:
	movl $-56,%ecx
	movl %edi,44(%esp)
	leal 56(%esp), %edi
	addl %ecx,%edi
	movl (%edi),%ecx
	jmp Ljoin_l102
Ljoin_l102:
	leal msg0,%edi
	movl %esi,40(%esp)
	movl $-56,%esi
	movl %ebp,36(%esp)
	leal 56(%esp), %ebp
	addl %esi,%ebp
	movl %edi,(%ebp)
	movl $-52,%ebp
	leal 56(%esp), %edi
	addl %ebp,%edi
	movl %eax,(%edi)
	movl $-48,%eax
	leal 56(%esp), %edi
	addl %eax,%edi
	movl %edx,(%edi)
	movl $-44,%edx
	leal 56(%esp), %edi
	addl %edx,%edi
	movl %ecx,(%edi)
	call printf
Ljoin_l92:
	movl $0,%eax
	leal 56(%esp), %ecx
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl 36(%esp),%ebp
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 56(%esp), %esp
	ret
C___R100:
	movl $-56,%ecx
	movl %edi,44(%esp)
	leal 56(%esp), %edi
	addl %ecx,%edi
	movl (%edi),%ecx
	jmp Ljoin_l109
Ljoin_l109:
	leal msg1,%edi
	movl %esi,40(%esp)
	movl $-56,%esi
	movl %ebp,36(%esp)
	leal 56(%esp), %ebp
	addl %esi,%ebp
	movl %edi,(%ebp)
	movl $-52,%ebp
	leal 56(%esp), %edi
	addl %ebp,%edi
	movl %eax,(%edi)
	movl $-48,%eax
	leal 56(%esp), %edi
	addl %eax,%edi
	movl %edx,(%edi)
	movl $-44,%edx
	leal 56(%esp), %edi
	addl %edx,%edi
	movl %ecx,(%edi)
	call printf
Ljoin_l88:
	movl $0,%eax
	leal 56(%esp), %ecx
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl 36(%esp),%ebp
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 56(%esp), %esp
	ret
C___R101:
	movl $-44,%ecx
	movl %ebx,32(%esp)
	leal 56(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $-48,%ebx
	movl %ebp,36(%esp)
	leal 56(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl $-52,%ebp
	movl %esi,40(%esp)
	leal 56(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	movl $-56,%esi
	movl %edi,44(%esp)
	leal 56(%esp), %edi
	addl %esi,%edi
	movl (%edi),%esi
	jmp Ljoin_l108
Ljoin_l108:
	leal msg2,%edi
	movl %ebx,48(%esp)
	movl $-56,%ebx
	movl %eax,52(%esp)
	leal 56(%esp), %eax
	addl %ebx,%eax
	movl %edi,(%eax)
	movl $-52,%eax
	leal 56(%esp), %edi
	addl %eax,%edi
	movl 52(%esp),%eax
	movl %eax,(%edi)
	movl $-48,%eax
	leal 56(%esp), %edi
	addl %eax,%edi
	movl %edx,(%edi)
	movl $-44,%edx
	leal 56(%esp), %edi
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $-40,%ecx
	leal 56(%esp), %edi
	addl %ecx,%edi
	movl 48(%esp),%ebx
	movl %ebx,(%edi)
	movl $-36,%ebx
	leal 56(%esp), %edi
	addl %ebx,%edi
	movl %ebp,(%edi)
	movl $-32,%ebp
	leal 56(%esp), %edi
	addl %ebp,%edi
	movl %esi,(%edi)
	call printf
Ljoin_l84:
	movl $0,%eax
	leal 56(%esp), %ecx
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl 32(%esp),%ebx
	movl 36(%esp),%ebp
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 56(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l115:
.long 0
.section .pcmap
.long notail_R96
.long Lframe_l116
.section .pcmap_data
Lframe_l116:
.long 0xffffffc8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l115
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long C___R101
.long Lframe_l117
.section .pcmap_data
Lframe_l117:
.long 0xffffffc8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l115
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l92
.long Lframe_l118
.section .pcmap_data
Lframe_l118:
.long 0xffffffc8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l115
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l88
.long Lframe_l119
.section .pcmap_data
Lframe_l119:
.long 0xffffffc8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l115
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l84
.long Lframe_l120
.section .pcmap_data
Lframe_l120:
.long 0xffffffc8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l115
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
Linitialize_continuations_l123:
Lproc_body_start_l122:
	movl $0,%eax
	call f
Ljoin_l142:
	movl $1,%eax
	call f
Ljoin_l139:
	movl $2,%eax
	call f
Ljoin_l136:
	movl $3,%eax
	call f
Ljoin_l133:
	movl $4,%eax
	call f
Ljoin_l130:
	movl $5,%eax
	call f
Ljoin_l127:
	movl $0,%eax
	leal 4(%esp), %ecx
	movl $0,%edx
	movl %ebx,(%esp)
	leal 4(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l148:
.long 0
.section .pcmap
.long Ljoin_l142
.long Lframe_l149
.section .pcmap_data
Lframe_l149:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l148
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long Ljoin_l139
.long Lframe_l150
.section .pcmap_data
Lframe_l150:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l148
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long Ljoin_l136
.long Lframe_l151
.section .pcmap_data
Lframe_l151:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l148
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long Ljoin_l133
.long Lframe_l152
.section .pcmap_data
Lframe_l152:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l148
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long Ljoin_l130
.long Lframe_l153
.section .pcmap_data
Lframe_l153:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l148
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long Ljoin_l127
.long Lframe_l154
.section .pcmap_data
Lframe_l154:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l148
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
