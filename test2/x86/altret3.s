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
.section .text
read_:
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 44(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l7:
.Lproc_body_start_l6:
	movl %eax,16(%esp)
	leal 44(%esp), %eax
	movl %eax,20(%esp)
	movl $-44,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,32(%esp)
	call read
.Lcall_successor_l18:
.Lbranch_target_l22:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg .Lbranch_target_l15
.Lbranch_target_l13:
.Lbranch_target_l23:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l12
.Lbranch_target_l10:
	movl $5,%eax
	movl 32(%esp),%ecx
	addl %eax,%ecx
	leal errno,%eax
	movl (%eax),%eax
	leal 44(%esp), %edx
	movl %ecx,32(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	leal 52(%esp), %esp
	ret
.Lbranch_target_l12:
	leal 44(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %esp
	ret
.Lbranch_target_l15:
	movl $10,%ecx
	movl 32(%esp),%edx
	addl %ecx,%edx
	leal 44(%esp), %ecx
	movl %ecx,36(%esp)
	movl $8,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,32(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l26:
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l27
.section .pcmap_data
.Lframe_l27:
.long 0x8000000c
.long 0xffffffd4
.long 0xfffffff4
.long .Lstackdata_l26
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
open_:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l29:
.Lproc_body_start_l28:
	movl %eax,8(%esp)
	leal 36(%esp), %eax
	movl %eax,12(%esp)
	movl $-36,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 36(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,24(%esp)
	call open
.Lcall_successor_l37:
.Lbranch_target_l41:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge .Lbranch_target_l34
.Lbranch_target_l32:
	leal errno,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %esp
	ret
.Lbranch_target_l34:
	movl $5,%ecx
	movl 24(%esp),%edx
	addl %ecx,%edx
	leal 36(%esp), %ecx
	movl %ecx,28(%esp)
	movl $4,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,24(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l44:
.long 0
.section .pcmap
.long .Lcall_successor_l37
.long .Lframe_l45
.section .pcmap_data
.Lframe_l45:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l44
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
	leal -132(%esp), %esp
	leal 132(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 132(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l59:
.Lproc_body_start_l58:
	movl %eax,12(%esp)
	movl $0,%eax
L:
	movl %eax,16(%esp)
	movl $1,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%eax
.Lbranch_target_l84:
	movl 12(%esp),%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l80
.Lbranch_target_l78:
	leal -4(%esp), %esp
	movl %eax,20(%esp)
	movl $4,%eax
	movl 20(%esp),%ecx
	imull %ecx,%eax
	movl %eax,44(%esp)
	movl 28(%esp),%eax
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	movl %ecx,48(%esp)
	leal 136(%esp), %ecx
	movl %ecx,52(%esp)
	movl $-136,%ecx
	movl %ecx,56(%esp)
	movl 52(%esp),%ecx
	movl %edx,40(%esp)
	movl 56(%esp),%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	call open_
	.byte 0xe9
	.long .Lreturn_entry_l76-.-4
.Lcall_successor_l77:
loop:
	leal -8(%esp), %esp
	movl %eax,64(%esp)
	movl 64(%esp),%ecx
	movl %ecx,%eax
	leal 140(%esp), %edx
	movl $-52,%ecx
	addl %ecx,%edx
	leal 140(%esp), %ecx
	movl %ecx,68(%esp)
	movl $-140,%ecx
	movl %ecx,72(%esp)
	movl 68(%esp),%ecx
	movl %edx,76(%esp)
	movl 72(%esp),%edx
	addl %edx,%ecx
	movl 76(%esp),%edx
	movl %edx,(%ecx)
	movl $50,%ecx
	leal 140(%esp), %edx
	movl %ecx,80(%esp)
	movl $-136,%ecx
	addl %ecx,%edx
	movl 80(%esp),%ecx
	movl %ecx,(%edx)
	call read_
	.byte 0xe9
	.long .Lreturn_entry_l71-.-4
	.byte 0xe9
	.long .Lreturn_entry_l72-.-4
.Lcall_successor_l73:
	movl $1,%ecx
	leal 132(%esp), %edx
	movl %eax,76(%esp)
	movl $-132,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 132(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	leal 132(%esp), %ecx
	movl $-128,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 132(%esp), %eax
	movl $-124,%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	call write
.Lcall_successor_l68:
.Lloop_l87:
	movl 56(%esp),%eax
	jmp loop
.Lreturn_entry_l71:
.Lstart_of_continuation_code_l49:
.LL_l86:
	movl 36(%esp),%edx
	movl 24(%esp),%ecx
	movl 16(%esp),%eax
	jmp L
.Lreturn_entry_l72:
	jmp .Lstart_of_continuation_code_l55
.Lreturn_entry_l76:
.Lstart_of_continuation_code_l55:
	leal errcode,%ecx
	leal 132(%esp), %edx
	movl %eax,76(%esp)
	movl $-132,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 132(%esp), %eax
	movl $-128,%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l65:
	leal aread,%eax
	leal 132(%esp), %ecx
	movl $-132,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call perror
.Lcall_successor_l62:
.LL_l85:
	movl 36(%esp),%edx
	movl 24(%esp),%ecx
	movl 16(%esp),%eax
	jmp L
.Lbranch_target_l80:
	movl $0,%eax
	leal 132(%esp), %ecx
	movl %ecx,28(%esp)
	movl $0,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,36(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 132(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l90:
.long 1
.long 0xffffffcc
.section .pcmap
.long .Lcall_successor_l77
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x80000004
.long 0xffffff7c
.long 0xffffffa0
.long .Lstackdata_l90
.long 0
.long 5
.long 0
.long 1
.long 0xffffff88
.long 0xffffff94
.long 0xffffff8c
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l73
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000004
.long 0xffffff7c
.long 0xffffffa0
.long .Lstackdata_l90
.long 0
.long 5
.long 0
.long 1
.long 0xffffff88
.long 0xffffff94
.long 0xffffff8c
.long 0xffffffb4
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l68
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x80000004
.long 0xffffff7c
.long 0xffffffa0
.long .Lstackdata_l90
.long 0
.long 5
.long 0
.long 1
.long 0xffffff88
.long 0xffffff94
.long 0xffffff8c
.long 0xffffffb4
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l65
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x80000004
.long 0xffffff7c
.long 0xffffffa0
.long .Lstackdata_l90
.long 0
.long 5
.long 0
.long 1
.long 0xffffff88
.long 0xffffff94
.long 0xffffff8c
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l62
.long .Lframe_l95
.section .pcmap_data
.Lframe_l95:
.long 0x80000004
.long 0xffffff7c
.long 0xffffffa0
.long .Lstackdata_l90
.long 0
.long 5
.long 0
.long 1
.long 0xffffff88
.long 0xffffff94
.long 0xffffff8c
.long 0
.long 0
.long 0
.section .text
.section .data
errcode:
.byte 69
.byte 114
.byte 114
.byte 111
.byte 114
.byte 32
.byte 99
.byte 111
.byte 100
.byte 101
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
aread:
.byte 97
.byte 108
.byte 116
.byte 114
.byte 101
.byte 97
.byte 100
.byte 0
