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
	leal -36(%esp), %esp
	movl %eax,20(%esp)
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	leal 36(%esp), %eax
	movl (%eax),%eax
	movl %eax,32(%esp)
	movl %ebp,28(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl 20(%esp),%eax
	movl 24(%esp),%ecx
	addl %ecx,%eax
.Lbranch_target_l55:
	movl 20(%esp),%ecx
	movl 24(%esp),%edx
	addl %edx,%ecx
	jo .Lbranch_target_l44
.Lbranch_target_l40:
	leal no,%ecx
	leal 36(%esp), %ebp
	movl $-36,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal plus,%ecx
	leal 36(%esp), %ebp
	movl $-28,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l39:
	jmp .Lbranch_target_l36
.Lbranch_target_l44:
	leal yes,%ecx
	leal 36(%esp), %ebp
	movl $-36,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal plus,%ecx
	leal 36(%esp), %ebp
	movl $-28,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l43:
.Lbranch_target_l36:
	movl 24(%esp),%eax
	movl 20(%esp),%ecx
	imull %ecx,%eax
.Lbranch_target_l48:
	movl 20(%esp),%ecx
	movl 24(%esp),%edx
	imull %edx,%ecx
	jo .Lbranch_target_l35
.Lbranch_target_l31:
	leal no,%ecx
	leal 36(%esp), %ebp
	movl $-36,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal mul,%ecx
	leal 36(%esp), %ebp
	movl $-28,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l30:
	jmp .Lbranch_target_l27
.Lbranch_target_l35:
	leal yes,%ecx
	leal 36(%esp), %ebp
	movl $-36,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal mul,%ecx
	leal 36(%esp), %ebp
	movl $-28,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l34:
.Lbranch_target_l27:
.Lbranch_target_l51:
	movl $0,%ecx
	movl 24(%esp),%eax
	cmpl %ecx,%eax
	jne .Lbranch_target_l50
	jmp .Lbranch_target_l25
.Lbranch_target_l50:
	movl $-2147483648,%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l49
	jmp .Lbranch_target_l26
.Lbranch_target_l49:
	movl $-1,%ecx
	movl 24(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l25
.Lbranch_target_l26:
	movl 20(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 24(%esp),%ecx
	idivl %ecx, %eax
	jmp .Lbranch_target_l24
.Lbranch_target_l25:
	movl $99999,%eax
.Lbranch_target_l24:
.Lbranch_target_l53:
	movl $-2147483648,%edx
	movl 20(%esp),%ecx
	cmpl %edx,%ecx
	je .Lbranch_target_l52
	jmp .Lbranch_target_l19
.Lbranch_target_l52:
	movl $-1,%edx
	movl 24(%esp),%ecx
	cmpl %edx,%ecx
	je .Lbranch_target_l23
.Lbranch_target_l19:
	leal no,%ecx
	leal 36(%esp), %ebp
	movl $-36,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal div,%ecx
	leal 36(%esp), %ebp
	movl $-28,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l18:
	jmp .Lbranch_target_l15
.Lbranch_target_l23:
	leal yes,%ecx
	leal 36(%esp), %ebp
	movl $-36,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal div,%ecx
	leal 36(%esp), %ebp
	movl $-28,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l22:
.Lbranch_target_l15:
	movl 20(%esp),%eax
	movl 24(%esp),%ecx
	subl %ecx,%eax
.Lbranch_target_l54:
	movl 20(%esp),%ecx
	movl 24(%esp),%edx
	subl %edx,%ecx
	jo .Lbranch_target_l14
.Lbranch_target_l10:
	leal no,%ecx
	leal 36(%esp), %ebp
	movl $-36,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal sub,%ecx
	leal 36(%esp), %ebp
	movl $-28,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l9:
	jmp .Lbranch_target_l6
.Lbranch_target_l14:
	leal yes,%ecx
	leal 36(%esp), %ebp
	movl $-36,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal sub,%ecx
	leal 36(%esp), %ebp
	movl $-28,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l13:
.Lbranch_target_l6:
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl 28(%esp),%ebp
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l58:
.long 0
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l59
.section .pcmap_data
.Lframe_l59:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l58
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0xfffffff0
.long 0xfffffff4
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l43
.long .Lframe_l60
.section .pcmap_data
.Lframe_l60:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l58
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0xfffffff0
.long 0xfffffff4
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l30
.long .Lframe_l61
.section .pcmap_data
.Lframe_l61:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l58
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0xfffffff0
.long 0xfffffff4
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l34
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l58
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0xfffffff0
.long 0xfffffff4
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l63
.section .pcmap_data
.Lframe_l63:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l58
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0xfffffff0
.long 0xfffffff4
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l22
.long .Lframe_l64
.section .pcmap_data
.Lframe_l64:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l58
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0xfffffff0
.long 0xfffffff4
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l9
.long .Lframe_l65
.section .pcmap_data
.Lframe_l65:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l58
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l13
.long .Lframe_l66
.section .pcmap_data
.Lframe_l66:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l58
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l68:
.Lproc_body_start_l67:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $1,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l117:
	leal -4(%esp), %esp
	movl $1,%eax
	movl $2147483647,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l114:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $1,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l111:
	leal -4(%esp), %esp
	movl $1,%eax
	movl $-2147483648,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l108:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-1,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l105:
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $2147483647,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l102:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $-1,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l99:
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $-2147483648,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l96:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $2,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l93:
	leal -4(%esp), %esp
	movl $2,%eax
	movl $2147483647,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l90:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $2,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l87:
	leal -4(%esp), %esp
	movl $2,%eax
	movl $-2147483648,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l84:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-2,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l81:
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $2147483647,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l78:
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $-2,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l75:
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $-2147483648,%ecx
	leal 12(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call test_ovrfl
.Lcall_successor_l72:
	movl $0,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l123:
.long 0
.section .pcmap
.long .Lcall_successor_l117
.long .Lframe_l124
.section .pcmap_data
.Lframe_l124:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l114
.long .Lframe_l125
.section .pcmap_data
.Lframe_l125:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l111
.long .Lframe_l126
.section .pcmap_data
.Lframe_l126:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l108
.long .Lframe_l127
.section .pcmap_data
.Lframe_l127:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l105
.long .Lframe_l128
.section .pcmap_data
.Lframe_l128:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l102
.long .Lframe_l129
.section .pcmap_data
.Lframe_l129:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l99
.long .Lframe_l130
.section .pcmap_data
.Lframe_l130:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l96
.long .Lframe_l131
.section .pcmap_data
.Lframe_l131:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l93
.long .Lframe_l132
.section .pcmap_data
.Lframe_l132:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l90
.long .Lframe_l133
.section .pcmap_data
.Lframe_l133:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l87
.long .Lframe_l134
.section .pcmap_data
.Lframe_l134:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l84
.long .Lframe_l135
.section .pcmap_data
.Lframe_l135:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l81
.long .Lframe_l136
.section .pcmap_data
.Lframe_l136:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l78
.long .Lframe_l137
.section .pcmap_data
.Lframe_l137:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l75
.long .Lframe_l138
.section .pcmap_data
.Lframe_l138:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l72
.long .Lframe_l139
.section .pcmap_data
.Lframe_l139:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l123
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .text
