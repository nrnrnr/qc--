.globl sp1
.globl sp2
.globl sp3
.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.text
sp1:
	leal -16(%esp), %esp
	movl %eax,12(%esp)
	nop
	leal 16(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl %ebx,4(%esp)
initialize_continuations_l3:
	movl $0,%eax
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
	je join_l9
join_l10:
	nop
	movl $1,%ecx
	movl 12(%esp),%eax
	subl %ecx,%eax
	nop
	call sp1
join_l7:
	nop
	movl $-16,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	nop
	nop
	movl 12(%esp),%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	imull %edx,%ecx
	movl $4,%edx
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $0,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%ebx
	leal 16(%esp), %esp
	ret
join_l9:
	nop
	movl $1,%eax
	movl $1,%ecx
	movl $4,%edx
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $0,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%ebx
	leal 16(%esp), %esp
	ret
sp2:
	leal -40(%esp), %esp
	nop
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,32(%esp)
initialize_continuations_l16:
	nop
	movl $1,%ecx
	movl %ecx,12(%esp)
	movl $-4,%ecx
	movl %ecx,8(%esp)
	leal 40(%esp), %ecx
	movl %ecx,24(%esp)
	movl 8(%esp),%ecx
	movl 24(%esp),%edx
	addl %ecx,%edx
	movl %edx,24(%esp)
	movl 12(%esp),%ecx
	movl 24(%esp),%edx
	movl %ecx,(%edx)
	movl $1,%ecx
	movl %ecx,4(%esp)
	movl $0,%ecx
	movl %ecx,(%esp)
	leal 40(%esp), %ecx
	movl %ecx,20(%esp)
	movl (%esp),%ecx
	movl 20(%esp),%edx
	addl %ecx,%edx
	movl %edx,20(%esp)
	movl 4(%esp),%ecx
	movl 20(%esp),%edx
	movl %ecx,(%edx)
	movl $-8,%ecx
	movl %ecx,28(%esp)
	leal 40(%esp), %ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	jmp sp2_help
sp2_help:
	leal -48(%esp), %esp
	movl %eax,(%esp)
	movl $4,%ecx
	leal 48(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	leal 48(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,40(%esp)
	nop
	leal 48(%esp), %eax
	movl (%eax),%eax
	movl %eax,36(%esp)
initialize_continuations_l26:
	movl $1,%eax
	movl %eax,4(%esp)
	movl 4(%esp),%eax
	movl (%esp),%edx
	cmpl %eax,%edx
	je join_l29
join_l30:
	nop
	movl $1,%eax
	movl %eax,24(%esp)
	movl (%esp),%eax
	movl %eax,28(%esp)
	movl 28(%esp),%eax
	movl 24(%esp),%edx
	subl %edx,%eax
	movl %eax,28(%esp)
	movl 28(%esp),%eax
	movl %ecx,20(%esp)
	movl 20(%esp),%ecx
	movl (%esp),%edx
	addl %edx,%ecx
	movl %ecx,20(%esp)
	movl $4,%ecx
	movl %ecx,16(%esp)
	leal 48(%esp), %ecx
	movl 16(%esp),%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 40(%esp),%ecx
	movl %ecx,12(%esp)
	movl 12(%esp),%ecx
	movl (%esp),%edx
	imull %edx,%ecx
	movl %ecx,12(%esp)
	movl $8,%ecx
	leal 48(%esp), %edx
	movl %edx,44(%esp)
	movl 44(%esp),%edx
	addl %ecx,%edx
	movl %edx,44(%esp)
	movl 12(%esp),%ecx
	movl 44(%esp),%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 48(%esp), %edx
	movl %edx,32(%esp)
	movl 32(%esp),%edx
	addl %ecx,%edx
	movl %edx,32(%esp)
	movl 32(%esp),%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %esp
	jmp sp2_help
join_l29:
	nop
	movl %ecx,%eax
	movl $12,%ecx
	movl %ecx,8(%esp)
	leal 48(%esp), %ecx
	movl 8(%esp),%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	leal 56(%esp), %esp
	ret
sp3:
	leal -44(%esp), %esp
	nop
	leal 44(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,40(%esp)
initialize_continuations_l38:
	movl $1,%ecx
	movl %ecx,28(%esp)
	movl $1,%ecx
	movl %ecx,4(%esp)
	movl 4(%esp),%ecx
	movl %ecx,(%esp)
	jmp loop
loop:
	movl $1,%ecx
	movl %ecx,24(%esp)
	movl 24(%esp),%ecx
	cmpl %ecx,%eax
	je join_l40
join_l41:
	movl 28(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,28(%esp)
	movl (%esp),%ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	imull %eax,%ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl %ecx,(%esp)
	movl $1,%ecx
	movl %ecx,20(%esp)
	movl 20(%esp),%ecx
	subl %ecx,%eax
	jmp loop
join_l40:
	nop
	movl 28(%esp),%eax
	movl $4,%ecx
	movl %ecx,8(%esp)
	leal 44(%esp), %ecx
	movl %ecx,32(%esp)
	movl 8(%esp),%ecx
	movl 32(%esp),%edx
	addl %ecx,%edx
	movl %edx,32(%esp)
	movl (%esp),%ecx
	movl 32(%esp),%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl %ecx,36(%esp)
	leal 44(%esp), %ecx
	movl %ecx,12(%esp)
	movl 12(%esp),%ecx
	movl 36(%esp),%edx
	addl %edx,%ecx
	movl %ecx,12(%esp)
	movl 12(%esp),%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
