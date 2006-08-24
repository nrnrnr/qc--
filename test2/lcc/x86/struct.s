.globl addpoint
.globl canonrect
.globl makepoint
.globl makerect
.globl ptinrect
.globl y
.globl odd
.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
.section .text
addpoint:
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %edx
	movl %eax,(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 44(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l9:
.Lproc_body_start_l8:
	movl %eax,4(%esp)
	movl (%ecx),%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	movl %eax,20(%esp)
	movl %ecx,%eax
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl %eax,24(%esp)
	movl (%eax),%eax
	movl %eax,28(%esp)
	movl 4(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 28(%esp),%ecx
	addl %eax,%ecx
	movl 24(%esp),%eax
	movl %ecx,(%eax)
	movl 16(%esp),%eax
	movl (%eax),%ecx
	movl $4,%eax
	movl %eax,32(%esp)
	movl 16(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	movl (%esp),%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	addl %eax,%ecx
	movl 40(%esp),%eax
	movl %eax,(%ecx)
L.1:
	leal 44(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 44(%esp), %esp
	ret
.section .text
canonrect:
	leal -100(%esp), %esp
	leal 100(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 100(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 100(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l20:
.Lproc_body_start_l19:
.Lbranch_target_l29:
.Lbranch_target_l36:
	movl %eax,(%esp)
	movl (%ecx),%eax
	movl %eax,4(%esp)
	movl $8,%eax
	movl %eax,8(%esp)
	movl %ecx,%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	jge L.11
.Lbranch_target_l28:
	movl 12(%esp),%eax
	movl (%eax),%ecx
.LL.12_l37:
	movl %ecx,%eax
	jmp L.12
L.11:
	movl $8,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.12:
	leal 100(%esp), %ecx
	movl %eax,20(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl 20(%esp),%eax
	movl %eax,(%ecx)
.Lbranch_target_l27:
.Lbranch_target_l35:
	movl $4,%eax
	movl %eax,24(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	movl %eax,28(%esp)
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 28(%esp),%ecx
	cmpl %eax,%ecx
	jge L.15
.Lbranch_target_l26:
	movl $4,%eax
	movl %eax,36(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.16
L.15:
	movl $12,%eax
	movl %eax,32(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.16:
	leal 100(%esp), %ecx
	movl %eax,40(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl 40(%esp),%eax
	movl %eax,(%ecx)
.Lbranch_target_l25:
.Lbranch_target_l34:
	movl 12(%esp),%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl %eax,44(%esp)
	movl 12(%esp),%eax
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 48(%esp),%ecx
	cmpl %eax,%ecx
	jle L.19
.Lbranch_target_l24:
	movl 12(%esp),%eax
	movl (%eax),%ecx
.LL.20_l38:
	movl %ecx,%eax
	jmp L.20
L.19:
	movl $8,%eax
	movl %eax,52(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 52(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.20:
	leal 100(%esp), %ecx
	movl %eax,56(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl 56(%esp),%eax
	movl %eax,(%ecx)
.Lbranch_target_l23:
.Lbranch_target_l33:
	movl $4,%eax
	movl %eax,60(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 60(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	movl %eax,64(%esp)
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 64(%esp),%ecx
	cmpl %eax,%ecx
	jle L.24
.Lbranch_target_l22:
	movl $4,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp L.25
L.24:
	movl $12,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
L.25:
	leal 100(%esp), %ecx
	movl %eax,68(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl 68(%esp),%eax
	movl %eax,(%ecx)
	leal 100(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 100(%esp), %ecx
	movl %eax,72(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,76(%esp)
	movl 72(%esp),%eax
	movl (%esp),%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	movl %eax,80(%esp)
	movl %ecx,%eax
	movl 80(%esp),%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 100(%esp), %ecx
	movl %eax,72(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl %eax,76(%esp)
	movl (%esp),%eax
	addl %ecx,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl (%esp),%ecx
	addl %eax,%ecx
	movl 76(%esp),%eax
	movl %eax,(%ecx)
L.8:
	leal 100(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 100(%esp), %esp
	ret
.section .text
makepoint:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl %eax,(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 36(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l45:
.Lproc_body_start_l44:
	movl %eax,4(%esp)
	leal 36(%esp), %eax
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl %eax,20(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl (%esp),%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	addl %eax,%ecx
	movl 24(%esp),%eax
	movl %eax,(%ecx)
L.37:
	leal 36(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 36(%esp), %esp
	ret
.section .text
makerect:
	leal -68(%esp), %esp
	leal 68(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 68(%esp), %edx
	movl %eax,8(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 68(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l56:
.Lproc_body_start_l55:
	movl %eax,12(%esp)
	movl (%ecx),%eax
	movl %eax,16(%esp)
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 68(%esp), %ecx
	movl %eax,20(%esp)
	movl $-32,%eax
	addl %eax,%ecx
	movl 16(%esp),%eax
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl 12(%esp),%eax
	movl (%eax),%ecx
	movl $4,%eax
	movl %eax,24(%esp)
	movl 12(%esp),%eax
	movl %ecx,16(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl %eax,20(%esp)
	movl $-32,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl 16(%esp),%eax
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal 68(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl %eax,16(%esp)
	movl $-32,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 68(%esp), %ecx
	movl %eax,20(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl 16(%esp),%eax
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal 68(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl %eax,16(%esp)
	movl $-32,%eax
	addl %eax,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 68(%esp), %ecx
	movl %eax,20(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl 16(%esp),%eax
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal 68(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 68(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 68(%esp), %ecx
	movl %eax,28(%esp)
	movl $-64,%eax
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,32(%esp)
	call canonrect
.Lcall_successor_l60:
L.43:
	leal 68(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l67:
.long 2
.long 0xffffffe0
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l60
.long .Lframe_l68
.section .pcmap_data
.Lframe_l68:
.long 0x80000004
.long 0xffffffbc
.long 0xffffffdc
.long .Lstackdata_l67
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
ptinrect:
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l70:
.Lproc_body_start_l69:
	movl %eax,(%esp)
	movl (%eax),%eax
.Lbranch_target_l78:
.Lbranch_target_l85:
	movl %eax,4(%esp)
	movl (%ecx),%eax
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	jl L.52
.Lbranch_target_l77:
.Lbranch_target_l84:
	movl $8,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	jge L.52
.Lbranch_target_l76:
	movl $4,%eax
	movl (%esp),%ecx
	addl %eax,%ecx
	movl (%ecx),%ecx
.Lbranch_target_l75:
.Lbranch_target_l83:
	movl %eax,16(%esp)
	movl 8(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	jl L.52
.Lbranch_target_l74:
.Lbranch_target_l82:
	movl $12,%eax
	movl %eax,24(%esp)
	movl 8(%esp),%eax
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	jge L.52
.Lbranch_target_l73:
	movl $1,%eax
	jmp L.53
L.52:
	movl $0,%eax
L.53:
	leal 40(%esp), %ecx
	movl %ecx,28(%esp)
	movl $0,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,36(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %esp
	ret
.section .text
.section .data
y:
.byte 97
.byte 98
.byte 0
.section .text
odd:
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l92:
.Lproc_body_start_l91:
	movsbl (%eax),%edx
	movl %eax,8(%esp)
	leal 40(%esp), %eax
	movl %eax,12(%esp)
	movl $-4,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl %eax,24(%esp)
	movl %edx,%eax
	movl 24(%esp),%ecx
	movb %al,(%ecx)
	movl $1,%eax
	movl 8(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movsbl (%edx),%eax
	movl $2,%edx
	addl %edx,%ecx
	movsbl (%ecx),%ecx
	leal 40(%esp), %edx
	movl %eax,28(%esp)
	movl $-4,%eax
	addl %eax,%edx
	movl $1,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movb %al,(%edx)
	leal 40(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl $2,%edx
	addl %edx,%eax
	movl %eax,32(%esp)
	movl %ecx,%eax
	movl 32(%esp),%ecx
	movb %al,(%ecx)
	leal i_61,%eax
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l97:
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l104:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l97
.long .Lframe_l105
.section .pcmap_data
.Lframe_l105:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffec
.long .Lstackdata_l104
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
.align 4
i_66:
.long 0
.long 0
.align 4
i_67:
.long 0x140
.long 0x140
.align 4
i_68:
.long 0xffffffff
.long 0xffffffff
.long 1
.long 1
.long 20
.long 0x12c
.long 0x1f4
.long 0x190
.section .text
main:
	leal -260(%esp), %esp
	leal 260(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l107:
.Lproc_body_start_l106:
	leal i_66,%ecx
	movl (%ecx),%ecx
	leal i_66,%edx
	movl %eax,20(%esp)
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 260(%esp), %edx
	movl %eax,24(%esp)
	movl $-92,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 260(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal i_67,%eax
	movl (%eax),%eax
	leal i_67,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,28(%esp)
	movl $-84,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	leal 260(%esp), %eax
	movl $-84,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal i_68,%eax
	movl (%eax),%eax
	leal i_68,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,28(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	leal 260(%esp), %eax
	movl $-148,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal i_68,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal i_68,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,28(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	leal 260(%esp), %eax
	movl $-148,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal i_68,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal i_68,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,28(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl $16,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	leal 260(%esp), %eax
	movl $-148,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal i_68,%eax
	movl $24,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal i_68,%ecx
	movl $28,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,28(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl $24,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	leal 260(%esp), %eax
	movl $-148,%edx
	addl %edx,%eax
	movl $28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-10,%eax
	leal 260(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	leal 260(%esp), %edx
	movl %eax,32(%esp)
	movl $-260,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 260(%esp), %eax
	movl $-256,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-252,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call makepoint
.Lcall_successor_l149:
	leal 260(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 260(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,28(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	leal 260(%esp), %eax
	movl $-60,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-260,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 260(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-256,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 260(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-252,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call addpoint
.Lcall_successor_l146:
	movl $10,%eax
	leal 260(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	leal 260(%esp), %edx
	movl %eax,36(%esp)
	movl $-260,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 260(%esp), %eax
	movl $-256,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-252,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call makepoint
.Lcall_successor_l143:
	leal 260(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 260(%esp), %ecx
	movl $-92,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,28(%esp)
	movl $-36,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	leal 260(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-260,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 260(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-256,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 260(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-252,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call addpoint
.Lcall_successor_l140:
	leal 260(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-260,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 260(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-256,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 260(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-252,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call makerect
.Lcall_successor_l137:
	movl $0,%eax
L.72:
.Lbranch_target_l117:
.Lbranch_target_l153:
	movl $4,%ecx
	cmpl %ecx,%eax
	jb L.69
.Lbranch_target_l116:
	leal y,%eax
	movsbl (%eax),%eax
	leal 260(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movb %al,(%ecx)
	leal y,%eax
	movl $1,%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
	leal y,%ecx
	movl $2,%edx
	addl %edx,%ecx
	movsbl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,28(%esp)
	movl $-4,%eax
	addl %eax,%edx
	movl $1,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movb %al,(%edx)
	leal 260(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl $2,%edx
	addl %edx,%eax
	movl %eax,108(%esp)
	movl %ecx,%eax
	movl 108(%esp),%ecx
	movb %al,(%ecx)
	leal 260(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-260,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call odd
.Lcall_successor_l115:
	movl $0,%eax
	leal 260(%esp), %ecx
	movl $-260,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call exit
.Lcall_successor_l112:
	movl $0,%eax
	leal 260(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 260(%esp), %esp
	ret
L.69:
	movl $3,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal 260(%esp), %ecx
	movl %eax,40(%esp)
	movl $-100,%eax
	addl %eax,%ecx
	leal 260(%esp), %eax
	movl %eax,44(%esp)
	movl $-148,%eax
	movl %eax,48(%esp)
	movl 44(%esp),%eax
	movl %ecx,52(%esp)
	movl 48(%esp),%ecx
	addl %ecx,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 260(%esp), %ecx
	movl %eax,56(%esp)
	movl $-148,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	addl %ecx,%edx
	leal 260(%esp), %eax
	movl $-252,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-256,%ecx
	addl %ecx,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call makepoint
.Lcall_successor_l134:
	leal i_73,%eax
	movl $3,%ecx
	movl %eax,60(%esp)
	movl 40(%esp),%edx
	movl %edx,%eax
	shll %cl, %eax
	leal 260(%esp), %ecx
	movl %eax,64(%esp)
	movl $-148,%eax
	addl %eax,%ecx
	movl 64(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	leal 260(%esp), %ecx
	movl %eax,68(%esp)
	movl $-100,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 260(%esp), %eax
	movl %eax,72(%esp)
	movl $-252,%eax
	movl %eax,76(%esp)
	movl 72(%esp),%eax
	movl %ecx,80(%esp)
	movl 76(%esp),%ecx
	addl %ecx,%eax
	movl 80(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-256,%ecx
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l131:
	leal 260(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 260(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,28(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	leal 260(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 260(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,28(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	leal 260(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 260(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,28(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	leal 260(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-260,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 260(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl $-256,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call ptinrect
.Lcall_successor_l128:
.Lbranch_target_l125:
.Lbranch_target_l154:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne L.76
.Lbranch_target_l124:
	leal i_78,%eax
	leal 260(%esp), %ecx
	movl $-260,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l123:
L.76:
	leal i_79,%eax
	leal 260(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %eax,84(%esp)
	movl $-116,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 260(%esp), %edx
	movl %eax,88(%esp)
	movl $-116,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 260(%esp), %edx
	movl %eax,92(%esp)
	movl $-116,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	leal 260(%esp), %eax
	movl %eax,96(%esp)
	movl $-244,%eax
	movl %eax,100(%esp)
	movl 96(%esp),%eax
	movl %ecx,104(%esp)
	movl 100(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	movl 92(%esp),%ecx
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-252,%ecx
	addl %ecx,%eax
	movl 88(%esp),%ecx
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-256,%ecx
	addl %ecx,%eax
	movl 104(%esp),%ecx
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	movl 84(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l120:
L.70:
	movl $1,%eax
	movl 40(%esp),%ecx
	addl %eax,%ecx
.LL.72_l155:
	movl %ecx,%eax
	jmp L.72
.section .pcmap_data
.Lstackdata_l159:
.long 14
.long 0xffffff6c
.long 0xffffff8c
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffd4
.long 0xffffffdc
.long 0xffffffe4
.long 0xffffffec
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l149
.long .Lframe_l160
.section .pcmap_data
.Lframe_l160:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
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
.long .Lcall_successor_l146
.long .Lframe_l161
.section .pcmap_data
.Lframe_l161:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
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
.long .Lcall_successor_l143
.long .Lframe_l162
.section .pcmap_data
.Lframe_l162:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
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
.long .Lcall_successor_l140
.long .Lframe_l163
.section .pcmap_data
.Lframe_l163:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
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
.long .Lcall_successor_l137
.long .Lframe_l164
.section .pcmap_data
.Lframe_l164:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
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
.long .Lcall_successor_l115
.long .Lframe_l165
.section .pcmap_data
.Lframe_l165:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
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
.long .Lcall_successor_l112
.long .Lframe_l166
.section .pcmap_data
.Lframe_l166:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
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
.long .Lcall_successor_l134
.long .Lframe_l167
.section .pcmap_data
.Lframe_l167:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
.long 0
.long 7
.long 0
.long 1
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l131
.long .Lframe_l168
.section .pcmap_data
.Lframe_l168:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
.long 0
.long 7
.long 0
.long 1
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l128
.long .Lframe_l169
.section .pcmap_data
.Lframe_l169:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
.long 0
.long 7
.long 0
.long 1
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l123
.long .Lframe_l170
.section .pcmap_data
.Lframe_l170:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
.long 0
.long 7
.long 0
.long 1
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l120
.long .Lframe_l171
.section .pcmap_data
.Lframe_l171:
.long 0x80000004
.long 0xfffffefc
.long 0xffffff10
.long .Lstackdata_l159
.long 0
.long 7
.long 0
.long 1
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
i_79:
.byte 119
.byte 105
.byte 116
.byte 104
.byte 105
.byte 110
.byte 32
.byte 91
.byte 37
.byte 100
.byte 44
.byte 37
.byte 100
.byte 59
.byte 32
.byte 37
.byte 100
.byte 44
.byte 37
.byte 100
.byte 93
.byte 10
.byte 0
i_78:
.byte 110
.byte 111
.byte 116
.byte 32
.byte 0
i_73:
.byte 40
.byte 37
.byte 100
.byte 44
.byte 37
.byte 100
.byte 41
.byte 32
.byte 105
.byte 115
.byte 32
.byte 0
i_61:
.byte 37
.byte 115
.byte 10
.byte 0
