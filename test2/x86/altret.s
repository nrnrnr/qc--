.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
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
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l9:
.Lproc_body_start_l8:
	leal cmm,%edx
	movl %edi,4(%esp)
	leal 44(%esp), %edi
	movl %edi,8(%esp)
	movl $-44,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %ecx,24(%esp)
	movl %eax,20(%esp)
	call printf
.Ljoin_l28:
	leal msg,%edi
	leal 44(%esp), %esi
	movl $-44,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
.Ljoin_l25:
	movl $0,%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	je .Ljoin_l21
.Ljoin_l22:
	jmp .Ljoin_l19
.Ljoin_l19:
	movl $1,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l17
.Ljoin_l18:
	jmp .Ljoin_l15
.Ljoin_l15:
	movl $2,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l13
.Ljoin_l14:
	jmp .Ljoin_l11
.Ljoin_l11:
	movl $10,%ecx
	movl 24(%esp),%edi
	addl %ecx,%edi
	movl 20(%esp),%edx
	leal 44(%esp), %ecx
	movl $4,%esi
	addl %esi,%ecx
	movl 20(%esp),%esi
	movl %esi,(%ecx)
	leal 44(%esp), %ecx
	movl $0,%esi
	addl %esi,%ecx
	movl %edi,(%ecx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 44(%esp), %esp
	ret
.Ljoin_l13:
	movl $10,%ecx
	movl 24(%esp),%edi
	addl %ecx,%edi
	movl 20(%esp),%edx
	leal 44(%esp), %ecx
	movl $4,%esi
	addl %esi,%ecx
	movl 20(%esp),%esi
	movl %esi,(%ecx)
	leal 44(%esp), %ecx
	movl $0,%esi
	addl %esi,%ecx
	movl %edi,(%ecx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 44(%esp), %esp
	ret
.Ljoin_l17:
	movl $5,%ecx
	movl 24(%esp),%edi
	addl %ecx,%edi
	movl $2,%edx
	movl $3,%ecx
	leal 44(%esp), %esi
	movl %ecx,28(%esp)
	movl $16,%ecx
	addl %ecx,%esi
	movl 28(%esp),%ecx
	movl %ecx,(%esi)
	movl $4,%ecx
	leal 44(%esp), %esi
	movl %ecx,32(%esp)
	movl $12,%ecx
	addl %ecx,%esi
	movl 32(%esp),%ecx
	movl %ecx,(%esi)
	movl $5,%ecx
	leal 44(%esp), %esi
	movl %ecx,36(%esp)
	movl $8,%ecx
	addl %ecx,%esi
	movl 36(%esp),%ecx
	movl %ecx,(%esi)
	movl $6,%ecx
	leal 44(%esp), %esi
	movl %ecx,40(%esp)
	movl $4,%ecx
	addl %ecx,%esi
	movl 40(%esp),%ecx
	movl %ecx,(%esi)
	leal 44(%esp), %ecx
	movl $0,%esi
	addl %esi,%ecx
	movl %edi,(%ecx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 44(%esp), %esp
	ret
.Ljoin_l21:
	movl 20(%esp),%edx
	leal 44(%esp), %ecx
	movl $4,%edi
	addl %edi,%ecx
	movl 20(%esp),%edi
	movl %edi,(%ecx)
	leal 44(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl 24(%esp),%edi
	movl %edi,(%ecx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l34:
.long 0
.section .pcmap
.long .Ljoin_l28
.long .Lframe_l35
.section .pcmap_data
.Lframe_l35:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l34
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0xffffffe8
.long 0
.section .pcmap
.long .Ljoin_l25
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l34
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0xffffffe8
.long 0
.section .text
.section .text
g_notail:
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l39:
.Lproc_body_start_l38:
	leal notail,%edx
	movl %edi,4(%esp)
	leal 44(%esp), %edi
	movl %edi,8(%esp)
	movl $-44,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %ecx,24(%esp)
	movl %eax,20(%esp)
	call printf
.Ljoin_l58:
	leal msg,%edi
	leal 44(%esp), %esi
	movl $-44,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
.Ljoin_l55:
	movl $0,%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	je .Ljoin_l51
.Ljoin_l52:
	jmp .Ljoin_l49
.Ljoin_l49:
	movl $1,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l47
.Ljoin_l48:
	jmp .Ljoin_l45
.Ljoin_l45:
	movl $2,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l43
.Ljoin_l44:
	jmp .Ljoin_l41
.Ljoin_l41:
	movl $10,%ecx
	movl 24(%esp),%edi
	addl %ecx,%edi
	movl 20(%esp),%edx
	leal 44(%esp), %ecx
	movl $4,%esi
	addl %esi,%ecx
	movl 20(%esp),%esi
	movl %esi,(%ecx)
	leal 44(%esp), %ecx
	movl $0,%esi
	addl %esi,%ecx
	movl %edi,(%ecx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 44(%esp), %esp
	ret
.Ljoin_l43:
	movl $10,%ecx
	movl 24(%esp),%edi
	addl %ecx,%edi
	movl 20(%esp),%edx
	leal 44(%esp), %ecx
	movl $4,%esi
	addl %esi,%ecx
	movl 20(%esp),%esi
	movl %esi,(%ecx)
	leal 44(%esp), %ecx
	movl $0,%esi
	addl %esi,%ecx
	movl %edi,(%ecx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 44(%esp), %esp
	ret
.Ljoin_l47:
	movl $5,%ecx
	movl 24(%esp),%edi
	addl %ecx,%edi
	movl $2,%edx
	movl $3,%ecx
	leal 44(%esp), %esi
	movl %ecx,28(%esp)
	movl $16,%ecx
	addl %ecx,%esi
	movl 28(%esp),%ecx
	movl %ecx,(%esi)
	movl $4,%ecx
	leal 44(%esp), %esi
	movl %ecx,32(%esp)
	movl $12,%ecx
	addl %ecx,%esi
	movl 32(%esp),%ecx
	movl %ecx,(%esi)
	movl $5,%ecx
	leal 44(%esp), %esi
	movl %ecx,36(%esp)
	movl $8,%ecx
	addl %ecx,%esi
	movl 36(%esp),%ecx
	movl %ecx,(%esi)
	movl $6,%ecx
	leal 44(%esp), %esi
	movl %ecx,40(%esp)
	movl $4,%ecx
	addl %ecx,%esi
	movl 40(%esp),%ecx
	movl %ecx,(%esi)
	leal 44(%esp), %ecx
	movl $0,%esi
	addl %esi,%ecx
	movl %edi,(%ecx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 44(%esp), %esp
	ret
.Ljoin_l51:
	movl 20(%esp),%edx
	leal 44(%esp), %ecx
	movl $4,%edi
	addl %edi,%ecx
	movl 20(%esp),%edi
	movl %edi,(%ecx)
	leal 44(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl 24(%esp),%edi
	movl %edi,(%ecx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l65:
.long 0
.section .pcmap
.long .Ljoin_l58
.long .Lframe_l66
.section .pcmap_data
.Lframe_l66:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l65
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0xffffffe8
.long 0
.section .pcmap
.long .Ljoin_l55
.long .Lframe_l67
.section .pcmap_data
.Lframe_l67:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l65
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0xffffffe8
.long 0
.section .text
.section .text
f:
	leal -84(%esp), %esp
	leal 84(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l80:
.Lproc_body_start_l79:
	movl $0,%edx
	cmpl %edx,%eax
	jl .Ljoin_l106
.Ljoin_l114:
	jmp .Ljoin_l107
.Ljoin_l106:
	movl $-1,%edx
	imull %edx,%eax
	jmp .Ljoin_l107
.Ljoin_l107:
	movl $2,%edx
	cmpl %edx,%eax
	jg .Ljoin_l104
.Ljoin_l105:
	movl %ecx,36(%esp)
	call g_notail
	.byte 0xe9
	.long notail_R95-.-4
	.byte 0xe9
	.long notail_R96-.-4
.Ljoin_l97:
	leal 84(%esp), %ecx
	movl %edi,32(%esp)
	movl $-84,%edi
	addl %edi,%ecx
	movl (%ecx),%edi
	jmp .Ljoin_l102
notail_R95:
	leal 84(%esp), %ecx
	movl %esi,52(%esp)
	movl $-84,%esi
	addl %esi,%ecx
	movl (%ecx),%esi
	movl %edi,32(%esp)
	movl %esi,%edi
	movl 52(%esp),%esi
	jmp .Ljoin_l109
notail_R96:
	leal 84(%esp), %ecx
	movl %esi,52(%esp)
	movl $-72,%esi
	addl %esi,%ecx
	movl (%ecx),%esi
	leal 84(%esp), %ecx
	movl %esi,40(%esp)
	movl $-76,%esi
	addl %esi,%ecx
	movl (%ecx),%esi
	leal 84(%esp), %ecx
	movl %esi,44(%esp)
	movl $-80,%esi
	addl %esi,%ecx
	movl (%ecx),%esi
	leal 84(%esp), %ecx
	movl %esi,48(%esp)
	movl $-84,%esi
	addl %esi,%ecx
	movl (%ecx),%esi
	movl %edi,32(%esp)
	movl %esi,%edi
	movl 52(%esp),%esi
	jmp .Ljoin_l108
.Ljoin_l104:
	movl $3,%edx
	movl %edx,28(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl %edi,32(%esp)
	movl 28(%esp),%edi
	idivl %edi, %eax
	movl %edx,%eax
	movl %ecx,36(%esp)
	call g
	.byte 0xe9
	.long C___R100-.-4
	.byte 0xe9
	.long C___R101-.-4
.Ljoin_l103:
	leal 84(%esp), %ecx
	movl $-84,%edi
	addl %edi,%ecx
	movl (%ecx),%edi
	jmp .Ljoin_l102
.Ljoin_l102:
	leal msg0,%ecx
	movl %edi,40(%esp)
	leal 84(%esp), %edi
	movl %edi,76(%esp)
	movl $-84,%edi
	movl %edi,80(%esp)
	movl 76(%esp),%edi
	movl %esi,52(%esp)
	movl 80(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 84(%esp), %edi
	movl $-80,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 84(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	leal 84(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	call printf
.Ljoin_l92:
	leal 84(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%esi
	movl 32(%esp),%edi
	leal 84(%esp), %esp
	ret
C___R100:
	leal 84(%esp), %edi
	movl $-84,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	jmp .Ljoin_l109
.Ljoin_l109:
	leal msg1,%ecx
	movl %edi,40(%esp)
	leal 84(%esp), %edi
	movl %edi,68(%esp)
	movl $-84,%edi
	movl %edi,72(%esp)
	movl 68(%esp),%edi
	movl %esi,52(%esp)
	movl 72(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 84(%esp), %edi
	movl $-80,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 84(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	leal 84(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	call printf
.Ljoin_l88:
	leal 84(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%esi
	movl 32(%esp),%edi
	leal 84(%esp), %esp
	ret
C___R101:
	leal 84(%esp), %edi
	movl $-72,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 84(%esp), %ecx
	movl %edi,40(%esp)
	movl $-76,%edi
	addl %edi,%ecx
	movl (%ecx),%edi
	leal 84(%esp), %ecx
	movl %edi,44(%esp)
	movl $-80,%edi
	addl %edi,%ecx
	movl (%ecx),%edi
	leal 84(%esp), %ecx
	movl %edi,48(%esp)
	movl $-84,%edi
	addl %edi,%ecx
	movl (%ecx),%edi
	jmp .Ljoin_l108
.Ljoin_l108:
	leal msg2,%ecx
	movl %edi,56(%esp)
	leal 84(%esp), %edi
	movl %edi,60(%esp)
	movl $-84,%edi
	movl %edi,64(%esp)
	movl 60(%esp),%edi
	movl %esi,52(%esp)
	movl 64(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 84(%esp), %edi
	movl $-80,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 84(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	leal 84(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	leal 84(%esp), %edi
	movl $-68,%esi
	addl %esi,%edi
	movl 44(%esp),%esi
	movl %esi,(%edi)
	leal 84(%esp), %edi
	movl $-64,%esi
	addl %esi,%edi
	movl 48(%esp),%esi
	movl %esi,(%edi)
	leal 84(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl 56(%esp),%esi
	movl %esi,(%edi)
	call printf
.Ljoin_l84:
	leal 84(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%esi
	movl 32(%esp),%edi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l115:
.long 0
.section .pcmap
.long notail_R96
.long .Lframe_l116
.section .pcmap_data
.Lframe_l116:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd0
.long .Lstackdata_l115
.long 0
.long 7
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long C___R101
.long .Lframe_l117
.section .pcmap_data
.Lframe_l117:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd0
.long .Lstackdata_l115
.long 1
.long 7
.long 0
.long 1
.long 11
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l92
.long .Lframe_l118
.section .pcmap_data
.Lframe_l118:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd0
.long .Lstackdata_l115
.long 2
.long 7
.long 0
.long 1
.long 10
.long 0xffffffe0
.long 11
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l88
.long .Lframe_l119
.section .pcmap_data
.Lframe_l119:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd0
.long .Lstackdata_l115
.long 2
.long 7
.long 0
.long 1
.long 10
.long 0xffffffe0
.long 11
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l84
.long .Lframe_l120
.section .pcmap_data
.Lframe_l120:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd0
.long .Lstackdata_l115
.long 2
.long 7
.long 0
.long 1
.long 10
.long 0xffffffe0
.long 11
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 4(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l123:
.Lproc_body_start_l122:
	movl $0,%eax
	movl %ecx,(%esp)
	call f
.Ljoin_l142:
	movl $1,%eax
	call f
.Ljoin_l139:
	movl $2,%eax
	call f
.Ljoin_l136:
	movl $3,%eax
	call f
.Ljoin_l133:
	movl $4,%eax
	call f
.Ljoin_l130:
	movl $5,%eax
	call f
.Ljoin_l127:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l148:
.long 0
.section .pcmap
.long .Ljoin_l142
.long .Lframe_l149
.section .pcmap_data
.Lframe_l149:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l148
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l139
.long .Lframe_l150
.section .pcmap_data
.Lframe_l150:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l148
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l136
.long .Lframe_l151
.section .pcmap_data
.Lframe_l151:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l148
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l133
.long .Lframe_l152
.section .pcmap_data
.Lframe_l152:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l148
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l130
.long .Lframe_l153
.section .pcmap_data
.Lframe_l153:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l148
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l127
.long .Lframe_l154
.section .pcmap_data
.Lframe_l154:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l148
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
