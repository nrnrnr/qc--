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
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl %edi,20(%esp)
	movl %eax,%edi
	addl %ecx,%edi
	movl %edi,24(%esp)
	movl %eax,%edi
	addl %ecx,%edi
	jo Ljoin_l44
Ljoin_l45:
	leal no,%edi
	movl %edi,28(%esp)
	leal 76(%esp), %edi
	movl %edi,32(%esp)
	movl $-76,%edi
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	movl %esi,40(%esp)
	movl 36(%esp),%esi
	addl %esi,%edi
	movl 28(%esp),%esi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal plus,%edi
	leal 76(%esp), %esi
	movl %edi,44(%esp)
	movl $-68,%edi
	addl %edi,%esi
	movl 44(%esp),%edi
	movl %edi,(%esi)
	leal 76(%esp), %edi
	movl $-64,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 76(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	movl %edx,56(%esp)
	movl %eax,48(%esp)
	movl %ecx,52(%esp)
	call printf
Ljoin_l39:
	jmp Ljoin_l42
Ljoin_l44:
	leal yes,%edi
	movl %edi,60(%esp)
	leal 76(%esp), %edi
	movl %edi,64(%esp)
	movl $-76,%edi
	movl %edi,68(%esp)
	movl 64(%esp),%edi
	movl %esi,40(%esp)
	movl 68(%esp),%esi
	addl %esi,%edi
	movl 60(%esp),%esi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal plus,%edi
	leal 76(%esp), %esi
	movl %edi,72(%esp)
	movl $-68,%edi
	addl %edi,%esi
	movl 72(%esp),%edi
	movl %edi,(%esi)
	leal 76(%esp), %edi
	movl $-64,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 76(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	movl %edx,56(%esp)
	movl %eax,48(%esp)
	movl %ecx,52(%esp)
	call printf
Ljoin_l43:
	jmp Ljoin_l42
Ljoin_l42:
	movl 52(%esp),%edi
	movl %edi,%esi
	movl 48(%esp),%eax
	imull %eax,%esi
	movl %eax,%ecx
	imull %edi,%ecx
	jo Ljoin_l35
Ljoin_l36:
	leal no,%ecx
	leal 76(%esp), %edx
	movl $-76,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 76(%esp), %edi
	movl $-72,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal mul,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-64,%ecx
	addl %ecx,%edi
	movl 52(%esp),%ecx
	movl %ecx,(%edi)
	leal 76(%esp), %edi
	movl $-60,%edx
	addl %edx,%edi
	movl %esi,(%edi)
	call printf
Ljoin_l30:
	jmp Ljoin_l33
Ljoin_l35:
	leal yes,%ecx
	leal 76(%esp), %edx
	movl $-76,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 76(%esp), %edi
	movl $-72,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal mul,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-64,%ecx
	addl %ecx,%edi
	movl 52(%esp),%ecx
	movl %ecx,(%edi)
	leal 76(%esp), %edi
	movl $-60,%edx
	addl %edx,%edi
	movl %esi,(%edi)
	call printf
Ljoin_l34:
	jmp Ljoin_l33
Ljoin_l33:
	movl $0,%edi
	movl 52(%esp),%esi
	cmpl %edi,%esi
	jne Ljoin_l50
Ljoin_l52:
	movl 48(%esp),%eax
	jmp Ljoin_l27
Ljoin_l50:
	movl $-2147483648,%edi
	movl 48(%esp),%eax
	cmpl %edi,%eax
	je Ljoin_l49
Ljoin_l55:
	jmp Ljoin_l26
Ljoin_l49:
	movl $-1,%edi
	cmpl %edi,%esi
	je Ljoin_l27
Ljoin_l56:
	jmp Ljoin_l26
Ljoin_l26:
	movl %eax,%edx
	sarl $31, %edx
	idivl %esi, %eax
	movl %eax,%edi
	movl 48(%esp),%eax
	jmp Ljoin_l25
Ljoin_l27:
	movl $99999,%edi
	jmp Ljoin_l25
Ljoin_l25:
	movl $-2147483648,%ecx
	cmpl %ecx,%eax
	je Ljoin_l51
Ljoin_l57:
	jmp Ljoin_l24
Ljoin_l51:
	movl $-1,%ecx
	cmpl %ecx,%esi
	je Ljoin_l23
Ljoin_l58:
	jmp Ljoin_l24
Ljoin_l24:
	leal no,%ecx
	leal 76(%esp), %edx
	movl %edi,24(%esp)
	movl $-76,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 76(%esp), %edi
	movl $-72,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal div,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-64,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-60,%ecx
	addl %ecx,%edi
	movl 24(%esp),%ecx
	movl %ecx,(%edi)
	call printf
Ljoin_l18:
	jmp Ljoin_l21
Ljoin_l23:
	leal yes,%ecx
	leal 76(%esp), %edx
	movl %edi,24(%esp)
	movl $-76,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 76(%esp), %edi
	movl $-72,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal div,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-64,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-60,%ecx
	addl %ecx,%edi
	movl 24(%esp),%ecx
	movl %ecx,(%edi)
	call printf
Ljoin_l22:
	jmp Ljoin_l21
Ljoin_l21:
	movl 48(%esp),%edi
	movl %edi,%eax
	subl %esi,%eax
	movl %edi,%ecx
	subl %esi,%ecx
	jo Ljoin_l14
Ljoin_l15:
	leal no,%ecx
	leal 76(%esp), %edx
	movl $-76,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 76(%esp), %edi
	movl $-72,%ecx
	addl %ecx,%edi
	movl 48(%esp),%ecx
	movl %ecx,(%edi)
	leal sub,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-64,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l9:
	jmp Ljoin_l12
Ljoin_l14:
	leal yes,%ecx
	leal 76(%esp), %edx
	movl $-76,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 76(%esp), %edi
	movl $-72,%ecx
	addl %ecx,%edi
	movl 48(%esp),%ecx
	movl %ecx,(%edi)
	leal sub,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-64,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l13:
	jmp Ljoin_l12
Ljoin_l12:
	leal 76(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl %ecx,(%edx)
	movl 40(%esp),%esi
	movl 20(%esp),%edi
	leal 80(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l59:
.long 0
.section .pcmap
.long Ljoin_l39
.long Lframe_l60
.section .pcmap_data
Lframe_l60:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffec
.long Lstackdata_l59
.long 2
.long 3
.long 0
.long 1
.long 10
.long 0xffffffdc
.long 11
.long 0xffffffc8
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.section .pcmap
.long Ljoin_l43
.long Lframe_l61
.section .pcmap_data
Lframe_l61:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffec
.long Lstackdata_l59
.long 2
.long 3
.long 0
.long 1
.long 10
.long 0xffffffdc
.long 11
.long 0xffffffc8
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.section .pcmap
.long Ljoin_l30
.long Lframe_l62
.section .pcmap_data
Lframe_l62:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffec
.long Lstackdata_l59
.long 2
.long 3
.long 0
.long 1
.long 10
.long 0xffffffdc
.long 11
.long 0xffffffc8
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.section .pcmap
.long Ljoin_l34
.long Lframe_l63
.section .pcmap_data
Lframe_l63:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffec
.long Lstackdata_l59
.long 2
.long 3
.long 0
.long 1
.long 10
.long 0xffffffdc
.long 11
.long 0xffffffc8
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.section .pcmap
.long Ljoin_l18
.long Lframe_l64
.section .pcmap_data
Lframe_l64:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffec
.long Lstackdata_l59
.long 2
.long 3
.long 0
.long 1
.long 10
.long 0xffffffdc
.long 11
.long 0xffffffc8
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.section .pcmap
.long Ljoin_l22
.long Lframe_l65
.section .pcmap_data
Lframe_l65:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffec
.long Lstackdata_l59
.long 2
.long 3
.long 0
.long 1
.long 10
.long 0xffffffdc
.long 11
.long 0xffffffc8
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l66
.section .pcmap_data
Lframe_l66:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffec
.long Lstackdata_l59
.long 2
.long 3
.long 0
.long 1
.long 10
.long 0xffffffdc
.long 11
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l13
.long Lframe_l67
.section .pcmap_data
Lframe_l67:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffec
.long Lstackdata_l59
.long 2
.long 3
.long 0
.long 1
.long 10
.long 0xffffffdc
.long 11
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 20(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l70:
Lproc_body_start_l69:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $1,%edx
	movl %edi,4(%esp)
	leal 24(%esp), %edi
	movl %edi,8(%esp)
	movl $-24,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %ecx,20(%esp)
	call test_ovrfl
Ljoin_l119:
	leal -4(%esp), %esp
	movl $1,%eax
	movl $2147483647,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l116:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $1,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l113:
	leal -4(%esp), %esp
	movl $1,%eax
	movl $-2147483648,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l110:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-1,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l107:
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $2147483647,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l104:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $-1,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l101:
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $-2147483648,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l98:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $2,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l95:
	leal -4(%esp), %esp
	movl $2,%eax
	movl $2147483647,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l92:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $2,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l89:
	leal -4(%esp), %esp
	movl $2,%eax
	movl $-2147483648,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l86:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-2,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l83:
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $2147483647,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l80:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $-2,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l77:
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $-2147483648,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test_ovrfl
Ljoin_l74:
	movl $0,%eax
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%esi
	movl (%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l125:
.long 0
.section .pcmap
.long Ljoin_l119
.long Lframe_l126
.section .pcmap_data
Lframe_l126:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l116
.long Lframe_l127
.section .pcmap_data
Lframe_l127:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l113
.long Lframe_l128
.section .pcmap_data
Lframe_l128:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l110
.long Lframe_l129
.section .pcmap_data
Lframe_l129:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l107
.long Lframe_l130
.section .pcmap_data
Lframe_l130:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l104
.long Lframe_l131
.section .pcmap_data
Lframe_l131:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l101
.long Lframe_l132
.section .pcmap_data
Lframe_l132:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l98
.long Lframe_l133
.section .pcmap_data
Lframe_l133:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l95
.long Lframe_l134
.section .pcmap_data
Lframe_l134:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l92
.long Lframe_l135
.section .pcmap_data
Lframe_l135:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l89
.long Lframe_l136
.section .pcmap_data
Lframe_l136:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l86
.long Lframe_l137
.section .pcmap_data
Lframe_l137:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l83
.long Lframe_l138
.section .pcmap_data
Lframe_l138:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l80
.long Lframe_l139
.section .pcmap_data
Lframe_l139:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l77
.long Lframe_l140
.section .pcmap_data
Lframe_l140:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l74
.long Lframe_l141
.section .pcmap_data
Lframe_l141:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l125
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .text
