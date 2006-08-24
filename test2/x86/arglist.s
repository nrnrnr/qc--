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
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl %eax,16(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl %eax,20(%esp)
	movl $16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl %eax,24(%esp)
	movl $20,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
.Lbranch_target_l37:
.Lbranch_target_l46:
	movl %eax,28(%esp)
	leal numbers,%eax
	movl (%eax),%eax
	movl %ecx,32(%esp)
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
.Lbranch_target_l48:
	je .Lbranch_target_l36
.L.Lbranch_target_l32_l47:
	movl %edx,52(%esp)
	jmp .Lbranch_target_l32
.Lbranch_target_l36:
	leal ok,%eax
	movl %eax,36(%esp)
	leal 76(%esp), %eax
	movl %eax,40(%esp)
	movl $-76,%eax
	movl %eax,44(%esp)
	movl 40(%esp),%eax
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%eax
	leal 76(%esp), %ecx
	movl %eax,48(%esp)
	movl $-68,%eax
	addl %eax,%ecx
	movl 48(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,52(%esp)
	call printf
.Lcall_successor_l35:
.Lbranch_target_l32:
.Lbranch_target_l45:
	leal numbers,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 32(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l31
	jmp .Lbranch_target_l27
.Lbranch_target_l31:
	leal ok,%eax
	leal 76(%esp), %edx
	movl %eax,56(%esp)
	movl $-76,%eax
	addl %eax,%edx
	movl 56(%esp),%eax
	movl %eax,(%edx)
	leal 76(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l30:
.Lbranch_target_l27:
.Lbranch_target_l44:
	leal numbers,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 16(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l26
	jmp .Lbranch_target_l22
.Lbranch_target_l26:
	leal ok,%eax
	leal 76(%esp), %edx
	movl %eax,60(%esp)
	movl $-76,%eax
	addl %eax,%edx
	movl 60(%esp),%eax
	movl %eax,(%edx)
	leal 76(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l25:
.Lbranch_target_l22:
.Lbranch_target_l43:
	leal numbers,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l21
	jmp .Lbranch_target_l17
.Lbranch_target_l21:
	leal ok,%eax
	leal 76(%esp), %edx
	movl %eax,64(%esp)
	movl $-76,%eax
	addl %eax,%edx
	movl 64(%esp),%eax
	movl %eax,(%edx)
	leal 76(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l20:
.Lbranch_target_l17:
.Lbranch_target_l42:
	leal numbers,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 24(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l16
	jmp .Lbranch_target_l12
.Lbranch_target_l16:
	leal ok,%eax
	leal 76(%esp), %edx
	movl %eax,68(%esp)
	movl $-76,%eax
	addl %eax,%edx
	movl 68(%esp),%eax
	movl %eax,(%edx)
	leal 76(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $16,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l15:
.Lbranch_target_l12:
.Lbranch_target_l41:
	leal numbers,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 28(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l11
	jmp .Lbranch_target_l7
.Lbranch_target_l11:
	leal ok,%eax
	leal 76(%esp), %edx
	movl %eax,72(%esp)
	movl $-76,%eax
	addl %eax,%edx
	movl 72(%esp),%eax
	movl %eax,(%edx)
	leal 76(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l10:
.Lbranch_target_l7:
	leal 76(%esp), %eax
	movl $20,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	leal 96(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l51:
.long 0
.section .pcmap
.long .Lcall_successor_l35
.long .Lframe_l52
.section .pcmap_data
.Lframe_l52:
.long 0x80000018
.long 0xffffffb4
.long 0xffffffe8
.long .Lstackdata_l51
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0xffffffd4
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
.long 0xffffffd0
.long 0
.section .pcmap
.long .Lcall_successor_l30
.long .Lframe_l53
.section .pcmap_data
.Lframe_l53:
.long 0x80000018
.long 0xffffffb4
.long 0xffffffe8
.long .Lstackdata_l51
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
.long 0xffffffd0
.long 0
.section .pcmap
.long .Lcall_successor_l25
.long .Lframe_l54
.section .pcmap_data
.Lframe_l54:
.long 0x80000018
.long 0xffffffb4
.long 0xffffffe8
.long .Lstackdata_l51
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffffc8
.long 0xffffffcc
.long 0xffffffd0
.long 0
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l55
.section .pcmap_data
.Lframe_l55:
.long 0x80000018
.long 0xffffffb4
.long 0xffffffe8
.long .Lstackdata_l51
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffffcc
.long 0xffffffd0
.long 0
.section .pcmap
.long .Lcall_successor_l15
.long .Lframe_l56
.section .pcmap_data
.Lframe_l56:
.long 0x80000018
.long 0xffffffb4
.long 0xffffffe8
.long .Lstackdata_l51
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd0
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l57
.section .pcmap_data
.Lframe_l57:
.long 0x80000018
.long 0xffffffb4
.long 0xffffffe8
.long .Lstackdata_l51
.long 0
.long 6
.long 0
.long 1
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
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 60(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l59:
.Lproc_body_start_l58:
.Lbranch_target_l76:
.Lbranch_target_l82:
	movl %eax,16(%esp)
	leal numbers,%eax
	movl %eax,20(%esp)
	movl $20,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
.Lbranch_target_l84:
	je .Lbranch_target_l75
.L.Lbranch_target_l71_l83:
	movl %edx,48(%esp)
	jmp .Lbranch_target_l71
.Lbranch_target_l75:
	leal ok,%eax
	movl %eax,32(%esp)
	leal 60(%esp), %eax
	movl %eax,36(%esp)
	movl $-60,%eax
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl %eax,44(%esp)
	movl $-52,%eax
	addl %eax,%ecx
	movl 44(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,48(%esp)
	call printf
.Lcall_successor_l74:
.Lbranch_target_l71:
.Lbranch_target_l81:
	leal numbers,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 28(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l70
	jmp .Lbranch_target_l66
.Lbranch_target_l70:
	leal ok,%eax
	leal 60(%esp), %edx
	movl %eax,52(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl 52(%esp),%eax
	movl %eax,(%edx)
	leal 60(%esp), %eax
	movl $-56,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $16,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l69:
.Lbranch_target_l66:
.Lbranch_target_l80:
	leal numbers,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 16(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l65
	jmp .Lbranch_target_l61
.Lbranch_target_l65:
	leal ok,%eax
	leal 60(%esp), %edx
	movl %eax,56(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl 56(%esp),%eax
	movl %eax,(%edx)
	leal 60(%esp), %eax
	movl $-56,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l64:
.Lbranch_target_l61:
	leal 60(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l87:
.long 0
.section .pcmap
.long .Lcall_successor_l74
.long .Lframe_l88
.section .pcmap_data
.Lframe_l88:
.long 0x8000000c
.long 0xffffffc4
.long 0xfffffff4
.long .Lstackdata_l87
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0xffffffe0
.long 0xffffffd4
.long 0
.section .pcmap
.long .Lcall_successor_l69
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x8000000c
.long 0xffffffc4
.long 0xfffffff4
.long .Lstackdata_l87
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0xffffffd4
.long 0
.section .pcmap
.long .Lcall_successor_l64
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x8000000c
.long 0xffffffc4
.long 0xfffffff4
.long .Lstackdata_l87
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l92:
.Lproc_body_start_l91:
	leal -20(%esp), %esp
	leal numbers,%ecx
	movl (%ecx),%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	leal numbers,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,24(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal numbers,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,28(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal numbers,%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,32(%esp)
	movl $-44,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal numbers,%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,36(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal numbers,%ecx
	movl $20,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,40(%esp)
	movl $-36,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call f
.Lcall_successor_l99:
	leal -8(%esp), %esp
	leal numbers,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal numbers,%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %ecx,32(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal numbers,%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %ecx,36(%esp)
	movl $-36,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call g
.Lcall_successor_l96:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l105:
.long 0
.section .pcmap
.long .Lcall_successor_l99
.long .Lframe_l106
.section .pcmap_data
.Lframe_l106:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe0
.long .Lstackdata_l105
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l96
.long .Lframe_l107
.section .pcmap_data
.Lframe_l107:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe0
.long .Lstackdata_l105
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
