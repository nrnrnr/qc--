.globl sp1
.globl sp2
.globl sp3
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
sp1:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l9:
.Lproc_body_start_l8:
.Lbranch_target_l18:
.Lbranch_target_l22:
	movl $0,%edx
	cmpl %edx,%eax
	je .Lbranch_target_l17
.Lbranch_target_l15:
	movl $1,%edx
	movl %eax,16(%esp)
	subl %edx,%eax
	movl %ecx,(%esp)
	call sp1
.Lcall_successor_l14:
	movl 16(%esp),%ecx
	addl %ecx,%eax
	imull %ecx,%edx
	leal 28(%esp), %ecx
	movl %ecx,20(%esp)
	movl $0,%ecx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	movl %ebx,12(%esp)
	movl 24(%esp),%ebx
	addl %ebx,%ecx
	movl (%esp),%ebx
	movl %ebx,(%ecx)
	movl 12(%esp),%ebx
	leal 28(%esp), %esp
	ret
.Lbranch_target_l17:
	movl $0,%eax
	movl $1,%edx
	movl %ecx,(%esp)
	leal 28(%esp), %ecx
	movl %ecx,4(%esp)
	movl $0,%ecx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	movl %ebx,12(%esp)
	movl 8(%esp),%ebx
	addl %ebx,%ecx
	movl (%esp),%ebx
	movl %ebx,(%ecx)
	movl 12(%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l24:
.long 0
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l25
.section .pcmap_data
.Lframe_l25:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffe4
.long .Lstackdata_l24
.long 0
.long 3
.long 0
.long 1
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .text
sp2:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l27:
.Lproc_body_start_l26:
	movl $1,%edx
	movl %ecx,(%esp)
	leal 28(%esp), %ecx
	movl %ecx,4(%esp)
	movl $-4,%ecx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl $1,%ecx
	leal 28(%esp), %edx
	movl %ecx,16(%esp)
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal sp2_help,%ecx
	movl %ecx,%edx
	leal 20(%esp), %esp
	jmp *%edx
.section .text
sp2_help:
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 48(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 48(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l39:
.Lproc_body_start_l38:
.Lbranch_target_l45:
.Lbranch_target_l49:
	movl %eax,4(%esp)
	movl $1,%eax
	movl %ecx,8(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l44
.Lbranch_target_l42:
	movl $1,%eax
	movl %eax,28(%esp)
	movl %ecx,%eax
	movl 28(%esp),%ecx
	subl %ecx,%eax
	movl 8(%esp),%ecx
	movl %edx,12(%esp)
	movl (%esp),%edx
	addl %edx,%ecx
	movl %ecx,32(%esp)
	leal 48(%esp), %ecx
	movl %ecx,36(%esp)
	movl $4,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%ecx
	movl (%esp),%edx
	imull %edx,%ecx
	leal 48(%esp), %edx
	movl %ecx,44(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	leal 48(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal sp2_help,%ecx
	movl %ecx,%edx
	leal 48(%esp), %esp
	jmp *%edx
.Lbranch_target_l44:
	movl 8(%esp),%eax
	movl %edx,12(%esp)
	movl 4(%esp),%edx
	leal 48(%esp), %ecx
	movl %ecx,16(%esp)
	movl $8,%ecx
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	movl %ebx,24(%esp)
	movl 20(%esp),%ebx
	addl %ebx,%ecx
	movl 12(%esp),%ebx
	movl %ebx,(%ecx)
	movl 24(%esp),%ebx
	leal 56(%esp), %esp
	ret
.section .text
sp3:
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l56:
.Lproc_body_start_l55:
	movl $1,%edx
	movl %eax,(%esp)
	movl $1,%eax
loop:
.Lbranch_target_l61:
.Lbranch_target_l65:
	movl %eax,4(%esp)
	movl $1,%eax
	movl %ecx,8(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l60
.Lbranch_target_l58:
	addl %ecx,%edx
	movl 4(%esp),%eax
	imull %ecx,%eax
	movl %eax,4(%esp)
	movl $1,%eax
	subl %eax,%ecx
.Lloop_l66:
	movl %ecx,(%esp)
	movl 4(%esp),%eax
	movl 8(%esp),%ecx
	jmp loop
.Lbranch_target_l60:
	movl %edx,%eax
	movl 4(%esp),%edx
	leal 24(%esp), %ecx
	movl %ecx,12(%esp)
	movl $0,%ecx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	movl %ebx,20(%esp)
	movl 16(%esp),%ebx
	addl %ebx,%ecx
	movl 8(%esp),%ebx
	movl %ebx,(%ecx)
	movl 20(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .text
sptest1:
	leal -52(%esp), %esp
	leal 52(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %edx
	movl %eax,20(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 52(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l72:
.Lproc_body_start_l71:
	movl %ecx,28(%esp)
	movl %eax,24(%esp)
	movl 24(%esp),%ecx
	movl %ecx,%eax
	movl %edx,32(%esp)
	movl 20(%esp),%ecx
	call *%ecx
.Lcall_successor_l79:
	leal fmt,%ecx
	movl %eax,36(%esp)
	leal 52(%esp), %eax
	movl %eax,40(%esp)
	movl $-52,%eax
	movl %eax,44(%esp)
	movl 40(%esp),%eax
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l76:
	leal 52(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l84:
.long 0
.section .pcmap
.long .Lcall_successor_l79
.long .Lframe_l85
.section .pcmap_data
.Lframe_l85:
.long 0x8000000c
.long 0xffffffcc
.long 0xffffffec
.long .Lstackdata_l84
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0xffffffe8
.long 0xffffffe4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l76
.long .Lframe_l86
.section .pcmap_data
.Lframe_l86:
.long 0x8000000c
.long 0xffffffcc
.long 0xffffffec
.long .Lstackdata_l84
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
sptest:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l88:
.Lproc_body_start_l87:
	leal -8(%esp), %esp
	leal sp1,%edx
	movl %eax,8(%esp)
	movl %edx,%eax
	leal sp1lbl,%edx
	movl %ecx,12(%esp)
	leal 36(%esp), %ecx
	movl %ecx,16(%esp)
	movl $-36,%ecx
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	movl %edx,24(%esp)
	movl 20(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	call sptest1
.Lcall_successor_l98:
	leal -8(%esp), %esp
	leal sp2,%eax
	leal sp2lbl,%ecx
	leal 36(%esp), %edx
	movl %ecx,28(%esp)
	movl $-36,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	call sptest1
.Lcall_successor_l95:
	leal -8(%esp), %esp
	leal sp3,%eax
	leal sp3lbl,%ecx
	leal 36(%esp), %edx
	movl %ecx,32(%esp)
	movl $-36,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	call sptest1
.Lcall_successor_l92:
	leal 28(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l103:
.long 0
.section .pcmap
.long .Lcall_successor_l98
.long .Lframe_l104
.section .pcmap_data
.Lframe_l104:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffe8
.long .Lstackdata_l103
.long 0
.long 1
.long 0
.long 1
.long 0xffffffe4
.long 0
.section .pcmap
.long .Lcall_successor_l95
.long .Lframe_l105
.section .pcmap_data
.Lframe_l105:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffe8
.long .Lstackdata_l103
.long 0
.long 1
.long 0
.long 1
.long 0xffffffe4
.long 0
.section .pcmap
.long .Lcall_successor_l92
.long .Lframe_l106
.section .pcmap_data
.Lframe_l106:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffe8
.long .Lstackdata_l103
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
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
.Linitialize_continuations_l108:
.Lproc_body_start_l107:
	movl $1,%ecx
	movl %eax,(%esp)
	movl %ecx,%eax
	call sptest
.Lcall_successor_l118:
	movl $4,%eax
	call sptest
.Lcall_successor_l115:
	movl $10,%eax
	call sptest
.Lcall_successor_l112:
	movl $0,%eax
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l124:
.long 0
.section .pcmap
.long .Lcall_successor_l118
.long .Lframe_l125
.section .pcmap_data
.Lframe_l125:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l124
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l115
.long .Lframe_l126
.section .pcmap_data
.Lframe_l126:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l124
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l112
.long .Lframe_l127
.section .pcmap_data
.Lframe_l127:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l124
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
.section .data
sp1lbl:
.byte 115
.byte 112
.byte 49
.byte 0
sp2lbl:
.byte 115
.byte 112
.byte 50
.byte 0
sp3lbl:
.byte 115
.byte 112
.byte 51
.byte 0
fmt:
.byte 37
.byte 115
.byte 40
.byte 37
.byte 100
.byte 41
.byte 32
.byte 61
.byte 61
.byte 32
.byte 40
.byte 37
.byte 100
.byte 44
.byte 32
.byte 37
.byte 100
.byte 41
.byte 10
.byte 0
