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
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l8:
.Lproc_body_start_l7:
	leal cmm,%edx
	movl %eax,4(%esp)
	leal 64(%esp), %eax
	movl %eax,8(%esp)
	movl $-64,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l26:
	leal msg,%eax
	leal 64(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l23:
.Lbranch_target_l20:
.Lbranch_target_l32:
	movl $0,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l19
.Lbranch_target_l17:
.Lbranch_target_l31:
	movl $1,%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l16
.Lbranch_target_l14:
.Lbranch_target_l30:
	movl $2,%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l13
.Lbranch_target_l11:
	int $3
.Lbranch_target_l13:
	movl $10,%eax
	movl 16(%esp),%edx
	addl %eax,%edx
	movl %ecx,%eax
	movl %edx,16(%esp)
	movl %ecx,%edx
	leal 64(%esp), %ecx
	movl %ecx,56(%esp)
	movl $4,%ecx
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	movl %ebx,28(%esp)
	movl 60(%esp),%ebx
	addl %ebx,%ecx
	movl 4(%esp),%ebx
	movl %ebx,(%ecx)
	leal 64(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 16(%esp),%ebx
	movl %ebx,(%ecx)
	movl 28(%esp),%ebx
	leal 64(%esp), %esp
	ret
.Lbranch_target_l16:
	movl $5,%eax
	movl 16(%esp),%edx
	addl %eax,%edx
	movl %ecx,%eax
	movl $2,%ecx
	movl %edx,16(%esp)
	movl %ecx,%edx
	movl $3,%ecx
	movl %ecx,32(%esp)
	leal 64(%esp), %ecx
	movl %ecx,36(%esp)
	movl $16,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %ebx,28(%esp)
	movl 40(%esp),%ebx
	addl %ebx,%ecx
	movl 32(%esp),%ebx
	movl %ebx,(%ecx)
	movl $4,%ecx
	leal 64(%esp), %ebx
	movl %ecx,44(%esp)
	movl $12,%ecx
	addl %ecx,%ebx
	movl 44(%esp),%ecx
	movl %ecx,(%ebx)
	movl $5,%ecx
	leal 64(%esp), %ebx
	movl %ecx,48(%esp)
	movl $8,%ecx
	addl %ecx,%ebx
	movl 48(%esp),%ecx
	movl %ecx,(%ebx)
	movl $6,%ecx
	leal 64(%esp), %ebx
	movl %ecx,52(%esp)
	movl $4,%ecx
	addl %ecx,%ebx
	movl 52(%esp),%ecx
	movl %ecx,(%ebx)
	leal 64(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 16(%esp),%ebx
	movl %ebx,(%ecx)
	movl 28(%esp),%ebx
	leal 64(%esp), %esp
	ret
.Lbranch_target_l19:
	movl %ecx,%eax
	movl %ecx,%edx
	leal 64(%esp), %ecx
	movl %ecx,20(%esp)
	movl $4,%ecx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	movl %ebx,28(%esp)
	movl 24(%esp),%ebx
	addl %ebx,%ecx
	movl 4(%esp),%ebx
	movl %ebx,(%ecx)
	leal 64(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 16(%esp),%ebx
	movl %ebx,(%ecx)
	movl 28(%esp),%ebx
	leal 64(%esp), %esp
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
.long 0xffffffc0
.long 0xffffffd0
.long .Lstackdata_l35
.long 0
.long 1
.long 0
.long 1
.long 0xffffffc4
.long 0
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd0
.long .Lstackdata_l35
.long 0
.long 1
.long 0
.long 1
.long 0xffffffc4
.long 0
.section .text
.section .text
g_notail:
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l39:
.Lproc_body_start_l38:
	leal notail,%edx
	movl %eax,4(%esp)
	leal 64(%esp), %eax
	movl %eax,8(%esp)
	movl $-64,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l57:
	leal msg,%eax
	leal 64(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l54:
.Lbranch_target_l51:
.Lbranch_target_l63:
	movl $0,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l50
.Lbranch_target_l48:
.Lbranch_target_l62:
	movl $1,%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l47
.Lbranch_target_l45:
.Lbranch_target_l61:
	movl $2,%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l44
.Lbranch_target_l42:
	int $3
.Lbranch_target_l44:
	movl $10,%eax
	movl 16(%esp),%edx
	addl %eax,%edx
	movl %ecx,%eax
	movl %edx,16(%esp)
	movl %ecx,%edx
	leal 64(%esp), %ecx
	movl %ecx,56(%esp)
	movl $4,%ecx
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	movl %ebx,28(%esp)
	movl 60(%esp),%ebx
	addl %ebx,%ecx
	movl 4(%esp),%ebx
	movl %ebx,(%ecx)
	leal 64(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 16(%esp),%ebx
	movl %ebx,(%ecx)
	movl 28(%esp),%ebx
	leal 64(%esp), %esp
	ret
.Lbranch_target_l47:
	movl $5,%eax
	movl 16(%esp),%edx
	addl %eax,%edx
	movl %ecx,%eax
	movl $2,%ecx
	movl %edx,16(%esp)
	movl %ecx,%edx
	movl $3,%ecx
	movl %ecx,32(%esp)
	leal 64(%esp), %ecx
	movl %ecx,36(%esp)
	movl $16,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %ebx,28(%esp)
	movl 40(%esp),%ebx
	addl %ebx,%ecx
	movl 32(%esp),%ebx
	movl %ebx,(%ecx)
	movl $4,%ecx
	leal 64(%esp), %ebx
	movl %ecx,44(%esp)
	movl $12,%ecx
	addl %ecx,%ebx
	movl 44(%esp),%ecx
	movl %ecx,(%ebx)
	movl $5,%ecx
	leal 64(%esp), %ebx
	movl %ecx,48(%esp)
	movl $8,%ecx
	addl %ecx,%ebx
	movl 48(%esp),%ecx
	movl %ecx,(%ebx)
	movl $6,%ecx
	leal 64(%esp), %ebx
	movl %ecx,52(%esp)
	movl $4,%ecx
	addl %ecx,%ebx
	movl 52(%esp),%ecx
	movl %ecx,(%ebx)
	leal 64(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 16(%esp),%ebx
	movl %ebx,(%ecx)
	movl 28(%esp),%ebx
	leal 64(%esp), %esp
	ret
.Lbranch_target_l50:
	movl %ecx,%eax
	movl %ecx,%edx
	leal 64(%esp), %ecx
	movl %ecx,20(%esp)
	movl $4,%ecx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	movl %ebx,28(%esp)
	movl 24(%esp),%ebx
	addl %ebx,%ecx
	movl 4(%esp),%ebx
	movl %ebx,(%ecx)
	leal 64(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 16(%esp),%ebx
	movl %ebx,(%ecx)
	movl 28(%esp),%ebx
	leal 64(%esp), %esp
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
.long 0xffffffc0
.long 0xffffffd0
.long .Lstackdata_l67
.long 0
.long 1
.long 0
.long 1
.long 0xffffffc4
.long 0
.section .pcmap
.long .Lcall_successor_l54
.long .Lframe_l69
.section .pcmap_data
.Lframe_l69:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd0
.long .Lstackdata_l67
.long 0
.long 1
.long 0
.long 1
.long 0xffffffc4
.long 0
.section .text
.section .text
f:
	leal -92(%esp), %esp
	leal 92(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l83:
.Lproc_body_start_l82:
.Lbranch_target_l111:
.Lbranch_target_l116:
	movl $0,%edx
	cmpl %edx,%eax
	jl .Lbranch_target_l110
	jmp .Lbranch_target_l109
.Lbranch_target_l110:
	movl $-1,%edx
	imull %edx,%eax
.Lbranch_target_l109:
.Lbranch_target_l115:
	movl $2,%edx
	cmpl %edx,%eax
	jg .Lbranch_target_l108
.Lbranch_target_l102:
	movl %ecx,32(%esp)
	call g_notail
	.byte 0xe9
	.long .Lreturn_entry_l99-.-4
	.byte 0xe9
	.long .Lreturn_entry_l100-.-4
.Lcall_successor_l101:
	leal 92(%esp), %ecx
	movl %eax,36(%esp)
	movl $-92,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp .Lbranch_target_l96
.Lreturn_entry_l99:
	leal 92(%esp), %ecx
	movl %eax,36(%esp)
	movl $-92,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp .Lstart_of_continuation_code_l73
.Lreturn_entry_l100:
	leal 92(%esp), %ecx
	movl %eax,36(%esp)
	movl $-80,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 92(%esp), %ecx
	movl %eax,40(%esp)
	movl $-84,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 92(%esp), %ecx
	movl %eax,44(%esp)
	movl $-88,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 92(%esp), %ecx
	movl %eax,48(%esp)
	movl $-92,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp .Lstart_of_continuation_code_l79
.Lbranch_target_l108:
	movl $3,%edx
	movl %edx,28(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	idivl %ecx, %eax
	movl %edx,%eax
	call g
	.byte 0xe9
	.long .Lreturn_entry_l105-.-4
	.byte 0xe9
	.long .Lreturn_entry_l106-.-4
.Lcall_successor_l107:
	leal 92(%esp), %ecx
	movl %eax,36(%esp)
	movl $-92,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
.Lbranch_target_l96:
	leal msg0,%ecx
	movl %eax,40(%esp)
	leal 92(%esp), %eax
	movl %eax,80(%esp)
	movl $-92,%eax
	movl %eax,84(%esp)
	movl 80(%esp),%eax
	movl %ecx,88(%esp)
	movl 84(%esp),%ecx
	addl %ecx,%eax
	movl 88(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-88,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 92(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l95:
	leal 92(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %esp
	ret
.Lreturn_entry_l105:
	leal 92(%esp), %ecx
	movl %eax,36(%esp)
	movl $-92,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
.Lstart_of_continuation_code_l73:
	leal msg1,%ecx
	movl %eax,40(%esp)
	leal 92(%esp), %eax
	movl %eax,68(%esp)
	movl $-92,%eax
	movl %eax,72(%esp)
	movl 68(%esp),%eax
	movl %ecx,76(%esp)
	movl 72(%esp),%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-88,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 92(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l91:
	leal 92(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %esp
	ret
.Lreturn_entry_l106:
	leal 92(%esp), %ecx
	movl %eax,36(%esp)
	movl $-80,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 92(%esp), %ecx
	movl %eax,40(%esp)
	movl $-84,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 92(%esp), %ecx
	movl %eax,44(%esp)
	movl $-88,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 92(%esp), %ecx
	movl %eax,48(%esp)
	movl $-92,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
.Lstart_of_continuation_code_l79:
	leal msg2,%ecx
	movl %eax,52(%esp)
	leal 92(%esp), %eax
	movl %eax,56(%esp)
	movl $-92,%eax
	movl %eax,60(%esp)
	movl 56(%esp),%eax
	movl %ecx,64(%esp)
	movl 60(%esp),%ecx
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-88,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 92(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l87:
	leal 92(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l118:
.long 0
.section .pcmap
.long .Lcall_successor_l101
.long .Lframe_l119
.section .pcmap_data
.Lframe_l119:
.long 0x80000004
.long 0xffffffa4
.long 0xffffffc4
.long .Lstackdata_l118
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
.long .Lcall_successor_l107
.long .Lframe_l120
.section .pcmap_data
.Lframe_l120:
.long 0x80000004
.long 0xffffffa4
.long 0xffffffc4
.long .Lstackdata_l118
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
.long .Lcall_successor_l95
.long .Lframe_l121
.section .pcmap_data
.Lframe_l121:
.long 0x80000004
.long 0xffffffa4
.long 0xffffffc4
.long .Lstackdata_l118
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
.long .Lcall_successor_l91
.long .Lframe_l122
.section .pcmap_data
.Lframe_l122:
.long 0x80000004
.long 0xffffffa4
.long 0xffffffc4
.long .Lstackdata_l118
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
.long .Lcall_successor_l87
.long .Lframe_l123
.section .pcmap_data
.Lframe_l123:
.long 0x80000004
.long 0xffffffa4
.long 0xffffffc4
.long .Lstackdata_l118
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
.Linitialize_continuations_l125:
.Lproc_body_start_l124:
	movl $0,%ecx
	movl %eax,(%esp)
	movl %ecx,%eax
	call f
.Lcall_successor_l144:
	movl $1,%eax
	call f
.Lcall_successor_l141:
	movl $2,%eax
	call f
.Lcall_successor_l138:
	movl $3,%eax
	call f
.Lcall_successor_l135:
	movl $4,%eax
	call f
.Lcall_successor_l132:
	movl $5,%eax
	call f
.Lcall_successor_l129:
	movl $0,%eax
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l150:
.long 0
.section .pcmap
.long .Lcall_successor_l144
.long .Lframe_l151
.section .pcmap_data
.Lframe_l151:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l150
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l141
.long .Lframe_l152
.section .pcmap_data
.Lframe_l152:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l150
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l138
.long .Lframe_l153
.section .pcmap_data
.Lframe_l153:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l150
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l135
.long .Lframe_l154
.section .pcmap_data
.Lframe_l154:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l150
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l132
.long .Lframe_l155
.section .pcmap_data
.Lframe_l155:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l150
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l129
.long .Lframe_l156
.section .pcmap_data
.Lframe_l156:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l150
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
