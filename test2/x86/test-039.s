.globl sp1
.globl sp2
.globl sp3
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
sp1:
	leal -20(%esp), %esp
	movl %eax,8(%esp)
	nop
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
initialize_continuations_l3:
	movl $0,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	je join_l9
join_l10:
	nop
	movl $1,%ecx
	movl 8(%esp),%eax
	subl %ecx,%eax
	nop
	call sp1
join_l7:
	nop
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	nop
	nop
	movl 8(%esp),%edx
	addl %edx,%eax
	movl %ecx,12(%esp)
	movl 12(%esp),%ecx
	movl 8(%esp),%edx
	imull %edx,%ecx
	movl %ecx,12(%esp)
	movl $4,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	ret
join_l9:
	nop
	movl $1,%eax
	movl $1,%ecx
	movl %ecx,16(%esp)
	movl $4,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
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
	leal -56(%esp), %esp
	movl %eax,52(%esp)
	movl $4,%ecx
	leal 56(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%esp)
	movl $8,%ecx
	leal 56(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	nop
	leal 56(%esp), %eax
	movl (%eax),%eax
	movl %eax,48(%esp)
initialize_continuations_l28:
	movl $1,%eax
	movl 52(%esp),%ecx
	cmpl %eax,%ecx
	je join_l31
join_l32:
	nop
	movl $1,%ecx
	movl 52(%esp),%eax
	movl %eax,40(%esp)
	movl 40(%esp),%eax
	subl %ecx,%eax
	movl %eax,40(%esp)
	movl 40(%esp),%eax
	movl (%esp),%ecx
	movl %ecx,36(%esp)
	movl 36(%esp),%ecx
	movl 52(%esp),%edx
	addl %edx,%ecx
	movl %ecx,36(%esp)
	movl $4,%ecx
	movl %ecx,28(%esp)
	leal 56(%esp), %ecx
	movl %ecx,24(%esp)
	movl 24(%esp),%ecx
	movl %ecx,32(%esp)
	movl 32(%esp),%ecx
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl %ecx,32(%esp)
	movl 36(%esp),%ecx
	movl 32(%esp),%edx
	movl %ecx,(%edx)
	movl 4(%esp),%ecx
	movl %ecx,20(%esp)
	movl 20(%esp),%ecx
	movl 52(%esp),%edx
	imull %edx,%ecx
	movl %ecx,20(%esp)
	movl $8,%ecx
	movl %ecx,16(%esp)
	leal 56(%esp), %ecx
	movl 16(%esp),%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	leal 56(%esp), %edx
	movl %edx,44(%esp)
	movl 44(%esp),%edx
	addl %ecx,%edx
	movl %edx,44(%esp)
	movl 44(%esp),%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 56(%esp), %esp
	jmp sp2_help
join_l31:
	nop
	movl (%esp),%eax
	movl $12,%ecx
	movl %ecx,8(%esp)
	leal 56(%esp), %ecx
	movl 8(%esp),%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%ecx
	leal 56(%esp), %edx
	movl %edx,12(%esp)
	movl 12(%esp),%edx
	addl %ecx,%edx
	movl %edx,12(%esp)
	movl 12(%esp),%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 64(%esp), %esp
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
