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
	leal -20(%esp), %esp
	movl %eax,4(%esp)
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl %ebp,12(%esp)
	movl %ebx,16(%esp)
.Linitialize_continuations_l8:
.Lproc_body_start_l7:
	leal cmm,%ecx
	leal 20(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l26:
	leal msg,%ecx
	leal 20(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l23:
.Lbranch_target_l20:
.Lbranch_target_l30:
	movl $0,%ecx
	movl 4(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l19
.Lbranch_target_l17:
.Lbranch_target_l31:
	movl $1,%ecx
	movl 4(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l16
.Lbranch_target_l14:
.Lbranch_target_l32:
	movl $2,%ecx
	movl 4(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l13
.Lbranch_target_l11:
	int $3
.Lbranch_target_l13:
	movl $10,%ecx
	movl 8(%esp),%eax
	addl %ecx,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl 4(%esp),%edx
	leal 20(%esp), %ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl 4(%esp),%ebx
	movl %ebx,(%ecx)
	leal 20(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 8(%esp),%ebx
	movl %ebx,(%ecx)
	movl 12(%esp),%ebp
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
.Lbranch_target_l16:
	movl $5,%ecx
	movl 8(%esp),%eax
	addl %ecx,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl $2,%edx
	movl $3,%ecx
	leal 20(%esp), %ebp
	movl $16,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $4,%ecx
	leal 20(%esp), %ebp
	movl $12,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $5,%ecx
	leal 20(%esp), %ebp
	movl $8,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $6,%ecx
	leal 20(%esp), %ebp
	movl $4,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	leal 20(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 8(%esp),%ebx
	movl %ebx,(%ecx)
	movl 12(%esp),%ebp
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
.Lbranch_target_l19:
	movl 4(%esp),%eax
	movl 4(%esp),%edx
	leal 20(%esp), %ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl 4(%esp),%ebx
	movl %ebx,(%ecx)
	leal 20(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 8(%esp),%ebx
	movl %ebx,(%ecx)
	movl 12(%esp),%ebp
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l35:
.long 0
.section .pcmap
.long .Lcall_successor_l26
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l35
.long 2
.long 1
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffffc
.long 0xfffffff0
.long 0
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l35
.long 2
.long 1
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffffc
.long 0xfffffff0
.long 0
.section .text
.section .text
g_notail:
	leal -20(%esp), %esp
	movl %eax,4(%esp)
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl %ebp,12(%esp)
	movl %ebx,16(%esp)
.Linitialize_continuations_l39:
.Lproc_body_start_l38:
	leal notail,%ecx
	leal 20(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l57:
	leal msg,%ecx
	leal 20(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l54:
.Lbranch_target_l51:
.Lbranch_target_l61:
	movl $0,%ecx
	movl 4(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l50
.Lbranch_target_l48:
.Lbranch_target_l62:
	movl $1,%ecx
	movl 4(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l47
.Lbranch_target_l45:
.Lbranch_target_l63:
	movl $2,%ecx
	movl 4(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l44
.Lbranch_target_l42:
	int $3
.Lbranch_target_l44:
	movl $10,%ecx
	movl 8(%esp),%eax
	addl %ecx,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl 4(%esp),%edx
	leal 20(%esp), %ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl 4(%esp),%ebx
	movl %ebx,(%ecx)
	leal 20(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 8(%esp),%ebx
	movl %ebx,(%ecx)
	movl 12(%esp),%ebp
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
.Lbranch_target_l47:
	movl $5,%ecx
	movl 8(%esp),%eax
	addl %ecx,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl $2,%edx
	movl $3,%ecx
	leal 20(%esp), %ebp
	movl $16,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $4,%ecx
	leal 20(%esp), %ebp
	movl $12,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $5,%ecx
	leal 20(%esp), %ebp
	movl $8,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $6,%ecx
	leal 20(%esp), %ebp
	movl $4,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	leal 20(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 8(%esp),%ebx
	movl %ebx,(%ecx)
	movl 12(%esp),%ebp
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
.Lbranch_target_l50:
	movl 4(%esp),%eax
	movl 4(%esp),%edx
	leal 20(%esp), %ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl 4(%esp),%ebx
	movl %ebx,(%ecx)
	leal 20(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 8(%esp),%ebx
	movl %ebx,(%ecx)
	movl 12(%esp),%ebp
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l67:
.long 0
.section .pcmap
.long .Lcall_successor_l57
.long .Lframe_l68
.section .pcmap_data
.Lframe_l68:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l67
.long 2
.long 1
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffffc
.long 0xfffffff0
.long 0
.section .pcmap
.long .Lcall_successor_l54
.long .Lframe_l69
.section .pcmap_data
.Lframe_l69:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l67
.long 2
.long 1
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffffc
.long 0xfffffff0
.long 0
.section .text
.section .text
f:
	leal -56(%esp), %esp
	leal 56(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,40(%esp)
	movl %edi,36(%esp)
	movl %esi,44(%esp)
	movl %ebp,48(%esp)
	movl %ebx,52(%esp)
.Linitialize_continuations_l83:
.Lproc_body_start_l82:
.Lbranch_target_l115:
	movl $0,%ecx
	cmpl %ecx,%eax
	jl .Lbranch_target_l110
	jmp .Lbranch_target_l109
.Lbranch_target_l110:
	movl $-1,%ecx
	imull %ecx,%eax
.Lbranch_target_l109:
.Lbranch_target_l114:
	movl $2,%ecx
	cmpl %ecx,%eax
	jg .Lbranch_target_l108
.Lbranch_target_l102:
	call g_notail
	.byte 0xe9
	.long .Lreturn_entry_l99-.-4
	.byte 0xe9
	.long .Lreturn_entry_l100-.-4
.Lcall_successor_l101:
	leal 56(%esp), %ecx
	movl $-56,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ecx
	jmp .Lbranch_target_l96
.Lreturn_entry_l99:
	leal 56(%esp), %ecx
	movl $-56,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ecx
	jmp .Lstart_of_continuation_code_l73
.Lreturn_entry_l100:
	leal 56(%esp), %ecx
	movl $-44,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ecx
	leal 56(%esp), %ebx
	movl $-48,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebx
	movl %ebx,32(%esp)
	leal 56(%esp), %ebx
	movl $-52,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebx
	movl %ebx,28(%esp)
	leal 56(%esp), %ebx
	movl $-56,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebx
	jmp .Lstart_of_continuation_code_l79
.Lbranch_target_l108:
	movl $3,%ecx
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl %edx,%eax
	call g
	.byte 0xe9
	.long .Lreturn_entry_l105-.-4
	.byte 0xe9
	.long .Lreturn_entry_l106-.-4
.Lcall_successor_l107:
	leal 56(%esp), %ecx
	movl $-56,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ecx
.Lbranch_target_l96:
	leal msg0,%ebp
	leal 56(%esp), %ebx
	movl $-56,%esi
	addl %esi,%ebx
	movl %ebp,(%ebx)
	leal 56(%esp), %ebx
	movl $-52,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	leal 56(%esp), %eax
	movl $-48,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	leal 56(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l95:
	leal 56(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	movl 36(%esp),%edi
	movl 44(%esp),%esi
	movl 48(%esp),%ebp
	movl 52(%esp),%ebx
	leal 56(%esp), %esp
	ret
.Lreturn_entry_l105:
	leal 56(%esp), %ecx
	movl $-56,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ecx
.Lstart_of_continuation_code_l73:
	leal msg1,%ebp
	leal 56(%esp), %ebx
	movl $-56,%esi
	addl %esi,%ebx
	movl %ebp,(%ebx)
	leal 56(%esp), %ebx
	movl $-52,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	leal 56(%esp), %eax
	movl $-48,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	leal 56(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l91:
	leal 56(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	movl 36(%esp),%edi
	movl 44(%esp),%esi
	movl 48(%esp),%ebp
	movl 52(%esp),%ebx
	leal 56(%esp), %esp
	ret
.Lreturn_entry_l106:
	leal 56(%esp), %ecx
	movl $-44,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ecx
	leal 56(%esp), %ebx
	movl $-48,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebx
	movl %ebx,32(%esp)
	leal 56(%esp), %ebx
	movl $-52,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebx
	movl %ebx,28(%esp)
	leal 56(%esp), %ebx
	movl $-56,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebx
.Lstart_of_continuation_code_l79:
	leal msg2,%ebp
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl %ebp,(%edi)
	leal 56(%esp), %ebp
	movl $-52,%esi
	addl %esi,%ebp
	movl %eax,(%ebp)
	leal 56(%esp), %eax
	movl $-48,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	leal 56(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %ebx,(%eax)
	call printf
.Lcall_successor_l87:
	leal 56(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	movl 36(%esp),%edi
	movl 44(%esp),%esi
	movl 48(%esp),%ebp
	movl 52(%esp),%ebx
	leal 56(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l117:
.long 0
.section .pcmap
.long .Lcall_successor_l101
.long .Lframe_l118
.section .pcmap_data
.Lframe_l118:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l117
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l107
.long .Lframe_l119
.section .pcmap_data
.Lframe_l119:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l117
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l95
.long .Lframe_l120
.section .pcmap_data
.Lframe_l120:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l117
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l91
.long .Lframe_l121
.section .pcmap_data
.Lframe_l121:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l117
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l87
.long .Lframe_l122
.section .pcmap_data
.Lframe_l122:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l117
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffffc
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
	leal 4(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %eax
	movl (%eax),%eax
	movl %eax,(%esp)
.Linitialize_continuations_l124:
.Lproc_body_start_l123:
	movl $0,%eax
	call f
.Lcall_successor_l143:
	movl $1,%eax
	call f
.Lcall_successor_l140:
	movl $2,%eax
	call f
.Lcall_successor_l137:
	movl $3,%eax
	call f
.Lcall_successor_l134:
	movl $4,%eax
	call f
.Lcall_successor_l131:
	movl $5,%eax
	call f
.Lcall_successor_l128:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l149:
.long 0
.section .pcmap
.long .Lcall_successor_l143
.long .Lframe_l150
.section .pcmap_data
.Lframe_l150:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l149
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l140
.long .Lframe_l151
.section .pcmap_data
.Lframe_l151:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l149
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l137
.long .Lframe_l152
.section .pcmap_data
.Lframe_l152:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l149
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l134
.long .Lframe_l153
.section .pcmap_data
.Lframe_l153:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l149
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l131
.long .Lframe_l154
.section .pcmap_data
.Lframe_l154:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l149
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l128
.long .Lframe_l155
.section .pcmap_data
.Lframe_l155:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l149
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
