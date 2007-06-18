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
main:
	leal -60(%esp), %esp
	leal 60(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
.Lbranch_target_l19:
.Lbranch_target_l23:
	movl %eax,16(%esp)
	movl $1,%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	cmpl %eax,%ecx
	ja .Lbranch_target_l18
.Lbranch_target_l14:
	movl $10,%eax
.L.Lbranch_target_l13_l24:
	movl %edx,36(%esp)
	jmp .Lbranch_target_l13
.Lbranch_target_l18:
	movl $4,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	leal 60(%esp), %eax
	movl %eax,24(%esp)
	movl $-60,%eax
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %edx,36(%esp)
	call atol
.Lcall_successor_l17:
.Lbranch_target_l13:
	movl %eax,40(%esp)
	movl 40(%esp),%ecx
	movl %ecx,%eax
	call sp
.Lcall_successor_l12:
	leal fmt,%ecx
	movl %eax,44(%esp)
	leal 60(%esp), %eax
	movl %eax,48(%esp)
	movl $-60,%eax
	movl %eax,52(%esp)
	movl 48(%esp),%eax
	movl %ecx,56(%esp)
	movl 52(%esp),%ecx
	addl %ecx,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l9:
	movl $0,%eax
	leal 60(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l27:
.long 0
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l27
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
.section .pcmap
.long .Lcall_successor_l12
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l27
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l9
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l27
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
.section .data
fmt:
.byte 115
.byte 117
.byte 109
.byte 32
.byte 117
.byte 112
.byte 32
.byte 116
.byte 111
.byte 32
.byte 37
.byte 100
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 112
.byte 114
.byte 111
.byte 100
.byte 117
.byte 99
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
.section .text
sp:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l32:
.Lproc_body_start_l31:
	movl $0,%edx
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
	leal sphelp,%ecx
	movl %ecx,%edx
	leal 20(%esp), %esp
	jmp *%edx
.section .text
.section .text
sphelp:
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
.Linitialize_continuations_l44:
.Lproc_body_start_l43:
.Lbranch_target_l50:
.Lbranch_target_l54:
	movl %eax,4(%esp)
	movl $0,%eax
	movl %ecx,8(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l49
.Lbranch_target_l47:
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
	leal sphelp,%ecx
	movl %ecx,%edx
	leal 48(%esp), %esp
	jmp *%edx
.Lbranch_target_l49:
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
