.globl sp1
.globl sp2
.globl sp3
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
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
initialize_continuations_l17:
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
	leal -64(%esp), %esp
	movl %eax,4(%esp)
	movl $4,%ecx
	leal 64(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%esp)
	movl $8,%ecx
	leal 64(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,60(%esp)
	nop
	leal 64(%esp), %eax
	movl (%eax),%eax
	movl %eax,56(%esp)
initialize_continuations_l28:
	movl $1,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je join_l31
join_l32:
	nop
	movl $1,%ecx
	movl 4(%esp),%eax
	movl %eax,48(%esp)
	movl 48(%esp),%eax
	subl %ecx,%eax
	movl %eax,48(%esp)
	movl 48(%esp),%eax
	movl (%esp),%ecx
	movl %ecx,44(%esp)
	movl 44(%esp),%ecx
	movl 4(%esp),%edx
	addl %edx,%ecx
	movl %ecx,44(%esp)
	movl $4,%ecx
	movl %ecx,36(%esp)
	leal 64(%esp), %ecx
	movl %ecx,32(%esp)
	movl 32(%esp),%ecx
	movl %ecx,40(%esp)
	movl 40(%esp),%ecx
	movl 36(%esp),%edx
	addl %edx,%ecx
	movl %ecx,40(%esp)
	movl 44(%esp),%ecx
	movl 40(%esp),%edx
	movl %ecx,(%edx)
	movl 60(%esp),%ecx
	movl %ecx,28(%esp)
	movl 28(%esp),%ecx
	movl 4(%esp),%edx
	imull %edx,%ecx
	movl %ecx,28(%esp)
	movl $8,%ecx
	movl %ecx,24(%esp)
	leal 64(%esp), %ecx
	movl 24(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	leal 64(%esp), %edx
	movl %edx,52(%esp)
	movl 52(%esp),%edx
	addl %ecx,%edx
	movl %edx,52(%esp)
	movl 52(%esp),%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	leal 64(%esp), %esp
	jmp sp2_help
join_l31:
	nop
	movl (%esp),%eax
	movl $12,%ecx
	movl %ecx,12(%esp)
	leal 64(%esp), %ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl 12(%esp),%edx
	addl %edx,%ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%ecx
	leal 64(%esp), %edx
	movl %edx,20(%esp)
	movl 20(%esp),%edx
	addl %ecx,%edx
	movl %edx,20(%esp)
	movl 20(%esp),%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %esp
	ret
sp3:
	leal -44(%esp), %esp
	nop
	leal 44(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,40(%esp)
initialize_continuations_l41:
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
	je join_l43
join_l44:
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
join_l43:
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
