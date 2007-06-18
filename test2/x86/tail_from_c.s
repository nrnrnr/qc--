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
.align 4
init_stack:
.skip 4, 0
sp_str:
.byte 115
.byte 117
.byte 109
.byte 58
.byte 32
.byte 37
.byte 100
.byte 10
.byte 112
.byte 114
.byte 111
.byte 100
.byte 117
.byte 99
.byte 116
.byte 58
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
total_str:
.byte 84
.byte 111
.byte 116
.byte 97
.byte 108
.byte 58
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
stack_address:
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 100
.byte 97
.byte 116
.byte 97
.byte 32
.byte 100
.byte 105
.byte 102
.byte 102
.byte 101
.byte 114
.byte 101
.byte 110
.byte 99
.byte 101
.byte 58
.byte 32
.byte 37
.byte 120
.byte 10
.byte 0
.section .text
sp2:
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l6:
.Lproc_body_start_l5:
	movl $0,%edx
	movl %eax,(%esp)
	leal init_stack,%eax
	movl %edx,(%eax)
	movl (%esp),%eax
	movl $1,%edx
	movl %ecx,4(%esp)
	leal 32(%esp), %ecx
	movl %ecx,8(%esp)
	movl $-4,%ecx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	movl %edx,16(%esp)
	movl 12(%esp),%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl $1,%ecx
	leal 32(%esp), %edx
	movl %ecx,20(%esp)
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal 32(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal sp2_help,%ecx
	movl %ecx,%edx
	leal 24(%esp), %esp
	jmp *%edx
.section .text
.section .text
sp2_help:
	leal -96(%esp), %esp
	leal 96(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 96(%esp), %edx
	movl %eax,8(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 96(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l18:
.Lproc_body_start_l17:
	movl %eax,12(%esp)
	movl $1,%eax
	movl %eax,16(%esp)
	movl $2,%eax
	movl %eax,20(%esp)
	movl $3,%eax
	movl %eax,24(%esp)
	movl $4,%eax
	movl %eax,28(%esp)
	movl $5,%eax
	movl %eax,32(%esp)
	movl $6,%eax
	movl %eax,36(%esp)
	movl $7,%eax
.Lbranch_target_l31:
.Lbranch_target_l36:
	movl %eax,40(%esp)
	leal init_stack,%eax
	movl (%eax),%eax
	movl %eax,44(%esp)
	movl $0,%eax
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	cmpl %eax,%ecx
	jne .Lbranch_target_l30
.Lbranch_target_l26:
	leal 96(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal init_stack,%ecx
	movl %eax,(%ecx)
.L.Lbranch_target_l25_l37:
	movl %edx,60(%esp)
	jmp .Lbranch_target_l25
.Lbranch_target_l30:
	leal stack_address,%eax
	leal 96(%esp), %ecx
	movl %eax,52(%esp)
	movl $-96,%eax
	addl %eax,%ecx
	movl 52(%esp),%eax
	movl %eax,(%ecx)
	leal 96(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal init_stack,%ecx
	movl (%ecx),%ecx
	subl %ecx,%eax
	leal 96(%esp), %ecx
	movl %eax,56(%esp)
	movl $-92,%eax
	addl %eax,%ecx
	movl 56(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,60(%esp)
	call printf
.Lcall_successor_l29:
.Lbranch_target_l25:
	movl 16(%esp),%eax
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	addl %ecx,%eax
.Lbranch_target_l24:
.Lbranch_target_l35:
	movl $1,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l23
.Lbranch_target_l21:
	movl $1,%eax
	movl %ecx,%edx
	subl %eax,%edx
	movl %edx,%eax
	movl 48(%esp),%edx
	addl %ecx,%edx
	leal 96(%esp), %ecx
	movl %ecx,76(%esp)
	movl $4,%ecx
	movl %ecx,80(%esp)
	movl 76(%esp),%ecx
	movl %edx,84(%esp)
	movl 80(%esp),%edx
	addl %edx,%ecx
	movl 84(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ecx
	movl 8(%esp),%edx
	imull %edx,%ecx
	leal 96(%esp), %edx
	movl %ecx,88(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl 88(%esp),%ecx
	movl %ecx,(%edx)
	leal 96(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	leal sp2_help,%ecx
	movl %ecx,%edx
	leal 96(%esp), %esp
	jmp *%edx
.Lbranch_target_l23:
	movl 48(%esp),%eax
	movl 12(%esp),%edx
	leal 96(%esp), %ecx
	movl %ecx,64(%esp)
	movl $8,%ecx
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	movl %ebx,72(%esp)
	movl 68(%esp),%ebx
	addl %ebx,%ecx
	movl 60(%esp),%ebx
	movl %ebx,(%ecx)
	movl 72(%esp),%ebx
	leal 104(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l41:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l29
.long .Lframe_l42
.section .pcmap_data
.Lframe_l42:
.long 0x8000000c
.long 0xffffffa0
.long 0xffffffdc
.long .Lstackdata_l41
.long 0
.long 11
.long 0
.long 1
.long 0xffffffa8
.long 0xffffffd0
.long 0xffffffac
.long 0xffffffb0
.long 0xffffffb4
.long 0xffffffb8
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
.long 0
.long 0
.section .text
.section .text
tail_from_c:
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 64(%esp), %edx
	movl %eax,16(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 64(%esp), %edx
	movl %eax,20(%esp)
	movl $16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 64(%esp), %edx
	movl %eax,24(%esp)
	movl $20,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 64(%esp), %edx
	movl %eax,28(%esp)
	movl $24,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 64(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l44:
.Lproc_body_start_l43:
	movl %eax,32(%esp)
	movl 12(%esp),%eax
	movl %edx,40(%esp)
	movl %ecx,36(%esp)
	call sp2
.Lcall_successor_l54:
	movl 36(%esp),%ecx
	movl %eax,44(%esp)
	movl 16(%esp),%eax
	addl %eax,%ecx
	movl 20(%esp),%eax
	addl %eax,%ecx
	movl 24(%esp),%eax
	addl %eax,%ecx
	movl 28(%esp),%eax
	addl %eax,%ecx
	movl 32(%esp),%eax
	addl %eax,%ecx
	leal sp_str,%eax
	movl %eax,48(%esp)
	leal 64(%esp), %eax
	movl %eax,52(%esp)
	movl $-64,%eax
	movl %eax,56(%esp)
	movl 52(%esp),%eax
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l51:
	leal total_str,%eax
	leal 64(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 64(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l48:
	movl $0,%eax
	leal 64(%esp), %ecx
	movl $24,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 88(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l59:
.long 0
.section .pcmap
.long .Lcall_successor_l54
.long .Lframe_l60
.section .pcmap_data
.Lframe_l60:
.long 0x8000001c
.long 0xffffffc0
.long 0xffffffe8
.long .Lstackdata_l59
.long 0
.long 10
.long 0
.long 1
.long 0
.long 0xffffffe4
.long 0xffffffd0
.long 0xffffffd4
.long 0xffffffd8
.long 0xffffffdc
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l61
.section .pcmap_data
.Lframe_l61:
.long 0x8000001c
.long 0xffffffc0
.long 0xffffffe8
.long .Lstackdata_l59
.long 0
.long 10
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
.long 0
.long 0xfffffffc
.long 0
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x8000001c
.long 0xffffffc0
.long 0xffffffe8
.long .Lstackdata_l59
.long 0
.long 10
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
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -52(%esp), %esp
	leal 52(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l64:
.Lproc_body_start_l63:
	movl $7,%ecx
	movl %eax,(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 52(%esp), %edx
	movl %ecx,4(%esp)
	movl $-20,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl $2,%ecx
	leal 52(%esp), %edx
	movl %ecx,8(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl $3,%ecx
	leal 52(%esp), %edx
	movl %ecx,12(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	leal 52(%esp), %edx
	movl %ecx,16(%esp)
	movl $-8,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $5,%ecx
	leal 52(%esp), %edx
	movl %ecx,20(%esp)
	movl $-4,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl $6,%ecx
	leal 52(%esp), %edx
	movl %ecx,24(%esp)
	movl $0,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal 52(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal tail_from_c,%ecx
	movl %ecx,%edx
	leal 28(%esp), %esp
	jmp *%edx
.section .text
