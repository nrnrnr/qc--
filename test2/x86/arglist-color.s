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
numbers:
.long 1
.long 2
.long 3
.long 4
.long 5
.long 6
.long 7
.long 8
.long 9
.long 10
ok:
.byte 111
.byte 107
.byte 32
.byte 40
.byte 101
.byte 120
.byte 112
.byte 101
.byte 99
.byte 116
.byte 101
.byte 100
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 114
.byte 101
.byte 99
.byte 101
.byte 105
.byte 118
.byte 101
.byte 100
.byte 32
.byte 37
.byte 100
.byte 41
.byte 10
.section .text
f:
	leal -40(%esp), %esp
	leal 40(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,12(%esp)
	leal 40(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,16(%esp)
	leal 40(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,20(%esp)
	leal 40(%esp), %edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,24(%esp)
	leal 40(%esp), %edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,28(%esp)
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,36(%esp)
	movl %ebx,32(%esp)
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
.Lbranch_target_l45:
	leal numbers,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l36
	jmp .Lbranch_target_l32
.Lbranch_target_l36:
	leal ok,%ecx
	leal 40(%esp), %ebx
	movl $-40,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal 40(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal numbers,%ecx
	leal 40(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l35:
.Lbranch_target_l32:
.Lbranch_target_l40:
	leal numbers,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 12(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l31
	jmp .Lbranch_target_l27
.Lbranch_target_l31:
	leal ok,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l30:
.Lbranch_target_l27:
.Lbranch_target_l41:
	leal numbers,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 16(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l26
	jmp .Lbranch_target_l22
.Lbranch_target_l26:
	leal ok,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l25:
.Lbranch_target_l22:
.Lbranch_target_l42:
	leal numbers,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l21
	jmp .Lbranch_target_l17
.Lbranch_target_l21:
	leal ok,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%ecx
	movl $12,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l20:
.Lbranch_target_l17:
.Lbranch_target_l43:
	leal numbers,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 24(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l16
	jmp .Lbranch_target_l12
.Lbranch_target_l16:
	leal ok,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%ecx
	movl $16,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l15:
.Lbranch_target_l12:
.Lbranch_target_l44:
	leal numbers,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 28(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l11
	jmp .Lbranch_target_l7
.Lbranch_target_l11:
	leal ok,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%ecx
	movl $20,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l10:
.Lbranch_target_l7:
	leal 40(%esp), %eax
	movl $20,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl 32(%esp),%ebx
	leal 60(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l48:
.long 0
.section .pcmap
.long .Lcall_successor_l35
.long .Lframe_l49
.section .pcmap_data
.Lframe_l49:
.long 0x80000018
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l48
.long 1
.long 6
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0
.long 0xffffffe4
.long 0xffffffe8
.long 0xffffffec
.long 0xfffffff0
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l30
.long .Lframe_l50
.section .pcmap_data
.Lframe_l50:
.long 0x80000018
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l48
.long 1
.long 6
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0
.long 0
.long 0xffffffe8
.long 0xffffffec
.long 0xfffffff0
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l25
.long .Lframe_l51
.section .pcmap_data
.Lframe_l51:
.long 0x80000018
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l48
.long 1
.long 6
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0xfffffff0
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l52
.section .pcmap_data
.Lframe_l52:
.long 0x80000018
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l48
.long 1
.long 6
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l15
.long .Lframe_l53
.section .pcmap_data
.Lframe_l53:
.long 0x80000018
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l48
.long 1
.long 6
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l54
.section .pcmap_data
.Lframe_l54:
.long 0x80000018
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l48
.long 1
.long 6
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
g:
	leal -28(%esp), %esp
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,12(%esp)
	leal 28(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,16(%esp)
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,24(%esp)
	movl %ebp,20(%esp)
.Linitialize_continuations_l56:
.Lproc_body_start_l55:
.Lbranch_target_l78:
	leal numbers,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l72
	jmp .Lbranch_target_l68
.Lbranch_target_l72:
	leal ok,%ecx
	leal 28(%esp), %ebp
	movl $-28,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal 28(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal numbers,%ecx
	movl $20,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l71:
.Lbranch_target_l68:
.Lbranch_target_l76:
	leal numbers,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 12(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l67
	jmp .Lbranch_target_l63
.Lbranch_target_l67:
	leal ok,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%ecx
	movl $16,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l66:
.Lbranch_target_l63:
.Lbranch_target_l77:
	leal numbers,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 16(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l62
	jmp .Lbranch_target_l58
.Lbranch_target_l62:
	leal ok,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%ecx
	movl $12,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l61:
.Lbranch_target_l58:
	leal 28(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	movl 20(%esp),%ebp
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l81:
.long 0
.section .pcmap
.long .Lcall_successor_l71
.long .Lframe_l82
.section .pcmap_data
.Lframe_l82:
.long 0x8000000c
.long 0xffffffe4
.long 0xfffffffc
.long .Lstackdata_l81
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0
.long 0xfffffff0
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l66
.long .Lframe_l83
.section .pcmap_data
.Lframe_l83:
.long 0x8000000c
.long 0xffffffe4
.long 0xfffffffc
.long .Lstackdata_l81
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0
.long 0
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l61
.long .Lframe_l84
.section .pcmap_data
.Lframe_l84:
.long 0x8000000c
.long 0xffffffe4
.long 0xfffffffc
.long .Lstackdata_l81
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
.Linitialize_continuations_l86:
.Lproc_body_start_l85:
	leal -20(%esp), %esp
	leal numbers,%eax
	movl (%eax),%eax
	leal numbers,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 28(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal numbers,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 28(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal numbers,%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 28(%esp), %edi
	movl $-20,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal numbers,%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 28(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal numbers,%ecx
	movl $20,%edx
	addl %edx,%ecx
	leal 28(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call f
.Lcall_successor_l93:
	leal -8(%esp), %esp
	leal numbers,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal numbers,%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 16(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal numbers,%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 16(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call g
.Lcall_successor_l90:
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
.Lstackdata_l99:
.long 0
.section .pcmap
.long .Lcall_successor_l93
.long .Lframe_l100
.section .pcmap_data
.Lframe_l100:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l99
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
.long .Lframe_l101
.section .pcmap_data
.Lframe_l101:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l99
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
