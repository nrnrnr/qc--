.globl addpoint
.globl canonrect
.globl makepoint
.globl makerect
.globl ptinrect
.globl y
.globl odd
.globl main
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
addpoint:
	leal -68(%esp), %esp
	movl $4,%ecx
	leal 68(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,52(%esp)
	movl $12,%ecx
	leal 68(%esp), %edx
	movl %edx,8(%esp)
	movl 8(%esp),%edx
	addl %ecx,%edx
	movl %edx,8(%esp)
	movl 8(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,56(%esp)
	nop
	leal 68(%esp), %ecx
	movl %ecx,16(%esp)
	leal 68(%esp), %ecx
	movl %ecx,12(%esp)
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,20(%esp)
	movl 20(%esp),%ecx
	movl 12(%esp),%edx
	movl %ecx,(%edx)
initialize_continuations_l3:
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,28(%esp)
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,24(%esp)
	movl 24(%esp),%ecx
	movl %ecx,32(%esp)
	movl 32(%esp),%ecx
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl %ecx,32(%esp)
	movl 32(%esp),%ecx
	movl 52(%esp),%edx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl %ecx,36(%esp)
	movl 36(%esp),%ecx
	movl %ecx,(%esp)
	movl 52(%esp),%ecx
	movl %ecx,40(%esp)
	movl 40(%esp),%ecx
	movl (%esp),%edx
	addl %edx,%ecx
	movl %ecx,40(%esp)
	movl 40(%esp),%ecx
	movl %ecx,4(%esp)
	movl 56(%esp),%ecx
	movl (%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,44(%esp)
	movl 4(%esp),%ecx
	movl (%ecx),%ecx
	movl 44(%esp),%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %ecx,(%edx)
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,64(%esp)
	movl $4,%ecx
	movl %ecx,48(%esp)
	movl 52(%esp),%ecx
	movl %ecx,60(%esp)
	movl 48(%esp),%ecx
	movl 60(%esp),%edx
	addl %ecx,%edx
	movl %edx,60(%esp)
	movl 60(%esp),%ecx
	movl (%ecx),%edx
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
L.1:
	nop
	nop
	leal 68(%esp), %eax
	movl $0,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 68(%esp), %esp
	ret
canonrect:
	leal -240(%esp), %esp
	movl $4,%ecx
	leal 240(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 240(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,172(%esp)
	nop
	leal 240(%esp), %ecx
	movl %ecx,(%esp)
	leal 240(%esp), %edx
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
initialize_continuations_l14:
	movl 172(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,196(%esp)
	movl $8,%ecx
	movl %ecx,12(%esp)
	movl 172(%esp),%ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl 12(%esp),%edx
	addl %edx,%ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	movl 196(%esp),%edx
	cmpl %ecx,%edx
	jge join_l22
join_l23:
	movl 172(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,176(%esp)
	jmp L.12
join_l22:
	jmp L.11
L.11:
	movl $8,%ecx
	movl 172(%esp),%edx
	movl %edx,20(%esp)
	movl 20(%esp),%edx
	addl %ecx,%edx
	movl %edx,20(%esp)
	movl 20(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,176(%esp)
	jmp L.12
L.12:
	movl $-16,%ecx
	movl %ecx,28(%esp)
	leal 240(%esp), %ecx
	movl %ecx,24(%esp)
	movl 24(%esp),%ecx
	movl %ecx,32(%esp)
	movl 32(%esp),%ecx
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl %ecx,32(%esp)
	movl 32(%esp),%ecx
	movl 176(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl 172(%esp),%edx
	movl %edx,36(%esp)
	movl 36(%esp),%edx
	addl %ecx,%edx
	movl %edx,36(%esp)
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,200(%esp)
	movl $12,%ecx
	movl %ecx,44(%esp)
	movl 172(%esp),%ecx
	movl %ecx,48(%esp)
	movl 48(%esp),%ecx
	movl 44(%esp),%edx
	addl %edx,%ecx
	movl %ecx,48(%esp)
	movl 48(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,40(%esp)
	movl 40(%esp),%ecx
	movl 200(%esp),%edx
	cmpl %ecx,%edx
	jge join_l20
join_l21:
	movl $4,%ecx
	movl 172(%esp),%edx
	movl %edx,168(%esp)
	movl 168(%esp),%edx
	addl %ecx,%edx
	movl %edx,168(%esp)
	movl 168(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,180(%esp)
	jmp L.16
join_l20:
	jmp L.15
L.15:
	movl $12,%ecx
	movl 172(%esp),%edx
	movl %edx,52(%esp)
	movl 52(%esp),%edx
	addl %ecx,%edx
	movl %edx,52(%esp)
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,180(%esp)
	jmp L.16
L.16:
	movl $4,%ecx
	movl %ecx,68(%esp)
	movl $-16,%ecx
	movl %ecx,60(%esp)
	leal 240(%esp), %ecx
	movl %ecx,56(%esp)
	movl 56(%esp),%ecx
	movl %ecx,64(%esp)
	movl 64(%esp),%ecx
	movl 60(%esp),%edx
	addl %edx,%ecx
	movl %ecx,64(%esp)
	movl 64(%esp),%ecx
	movl %ecx,72(%esp)
	movl 72(%esp),%ecx
	movl 68(%esp),%edx
	addl %edx,%ecx
	movl %ecx,72(%esp)
	movl 72(%esp),%ecx
	movl 180(%esp),%edx
	movl %edx,(%ecx)
	movl 172(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,204(%esp)
	movl $8,%ecx
	movl %ecx,80(%esp)
	movl 172(%esp),%ecx
	movl %ecx,84(%esp)
	movl 84(%esp),%ecx
	movl 80(%esp),%edx
	addl %edx,%ecx
	movl %ecx,84(%esp)
	movl 84(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,76(%esp)
	movl 76(%esp),%ecx
	movl 204(%esp),%edx
	cmpl %ecx,%edx
	jle join_l18
join_l19:
	movl 172(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,184(%esp)
	jmp L.20
join_l18:
	jmp L.19
L.19:
	movl $8,%ecx
	movl 172(%esp),%edx
	movl %edx,88(%esp)
	movl 88(%esp),%edx
	addl %ecx,%edx
	movl %edx,88(%esp)
	movl 88(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,184(%esp)
	jmp L.20
L.20:
	movl $8,%ecx
	movl %ecx,104(%esp)
	movl $-16,%ecx
	movl %ecx,96(%esp)
	leal 240(%esp), %ecx
	movl %ecx,92(%esp)
	movl 92(%esp),%ecx
	movl %ecx,100(%esp)
	movl 100(%esp),%ecx
	movl 96(%esp),%edx
	addl %edx,%ecx
	movl %ecx,100(%esp)
	movl 100(%esp),%ecx
	movl %ecx,108(%esp)
	movl 108(%esp),%ecx
	movl 104(%esp),%edx
	addl %edx,%ecx
	movl %ecx,108(%esp)
	movl 108(%esp),%ecx
	movl 184(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl 172(%esp),%edx
	movl %edx,112(%esp)
	movl 112(%esp),%edx
	addl %ecx,%edx
	movl %edx,112(%esp)
	movl 112(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,208(%esp)
	movl $12,%ecx
	movl %ecx,120(%esp)
	movl 172(%esp),%ecx
	movl %ecx,124(%esp)
	movl 124(%esp),%ecx
	movl 120(%esp),%edx
	addl %edx,%ecx
	movl %ecx,124(%esp)
	movl 124(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,116(%esp)
	movl 116(%esp),%ecx
	movl 208(%esp),%edx
	cmpl %ecx,%edx
	jle join_l16
join_l17:
	movl $4,%ecx
	movl 172(%esp),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,220(%esp)
	jmp L.25
join_l16:
	jmp L.24
L.24:
	movl $12,%ecx
	movl 172(%esp),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,220(%esp)
	jmp L.25
L.25:
	movl $12,%ecx
	movl %ecx,132(%esp)
	movl $-16,%ecx
	movl %ecx,128(%esp)
	leal 240(%esp), %ecx
	movl %ecx,212(%esp)
	movl 128(%esp),%ecx
	movl 212(%esp),%edx
	addl %ecx,%edx
	movl %edx,212(%esp)
	movl 212(%esp),%ecx
	movl %ecx,216(%esp)
	movl 132(%esp),%ecx
	movl 216(%esp),%edx
	addl %ecx,%edx
	movl %edx,216(%esp)
	movl 216(%esp),%ecx
	movl 220(%esp),%edx
	movl %edx,(%ecx)
	movl $-16,%ecx
	leal 240(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,188(%esp)
	movl $4,%ecx
	movl %ecx,140(%esp)
	movl $-16,%ecx
	movl %ecx,136(%esp)
	leal 240(%esp), %ecx
	movl 136(%esp),%edx
	addl %edx,%ecx
	movl 140(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,192(%esp)
	movl 188(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%ecx
	movl %eax,144(%esp)
	movl 144(%esp),%edx
	addl %ecx,%edx
	movl %edx,144(%esp)
	movl 144(%esp),%ecx
	movl 192(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%ecx
	movl %ecx,148(%esp)
	movl $-16,%ecx
	leal 240(%esp), %edx
	addl %ecx,%edx
	movl 148(%esp),%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,188(%esp)
	movl $12,%ecx
	movl %ecx,156(%esp)
	movl $-16,%ecx
	movl %ecx,152(%esp)
	leal 240(%esp), %ecx
	movl 152(%esp),%edx
	addl %edx,%ecx
	movl 156(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,192(%esp)
	movl $8,%ecx
	movl %ecx,160(%esp)
	movl %eax,164(%esp)
	movl 164(%esp),%ecx
	movl 160(%esp),%edx
	addl %edx,%ecx
	movl %ecx,164(%esp)
	movl 164(%esp),%ecx
	movl 188(%esp),%edx
	movl %edx,(%ecx)
	movl $12,%ecx
	addl %ecx,%eax
	movl 192(%esp),%ecx
	movl %ecx,(%eax)
L.8:
	nop
	nop
	leal 240(%esp), %eax
	movl $0,%ecx
	leal 240(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 240(%esp), %esp
	ret
makepoint:
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,44(%esp)
	movl $12,%ecx
	leal 72(%esp), %edx
	movl %edx,(%esp)
	movl (%esp),%edx
	addl %ecx,%edx
	movl %edx,(%esp)
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,48(%esp)
	nop
	leal 72(%esp), %ecx
	movl %ecx,8(%esp)
	leal 72(%esp), %ecx
	movl %ecx,4(%esp)
	movl 8(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,12(%esp)
	movl 12(%esp),%ecx
	movl 4(%esp),%edx
	movl %ecx,(%edx)
initialize_continuations_l33:
	movl $-8,%ecx
	movl %ecx,20(%esp)
	leal 72(%esp), %ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl %ecx,24(%esp)
	movl 24(%esp),%ecx
	movl 20(%esp),%edx
	addl %edx,%ecx
	movl %ecx,24(%esp)
	movl 24(%esp),%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl %ecx,32(%esp)
	movl $-8,%ecx
	movl %ecx,28(%esp)
	leal 72(%esp), %ecx
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	movl $-8,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,60(%esp)
	movl $4,%ecx
	movl %ecx,40(%esp)
	movl $-8,%ecx
	movl %ecx,36(%esp)
	leal 72(%esp), %ecx
	movl %ecx,52(%esp)
	movl 36(%esp),%ecx
	movl 52(%esp),%edx
	addl %ecx,%edx
	movl %edx,52(%esp)
	movl 52(%esp),%ecx
	movl %ecx,56(%esp)
	movl 40(%esp),%ecx
	movl 56(%esp),%edx
	addl %ecx,%edx
	movl %edx,56(%esp)
	movl 56(%esp),%ecx
	movl (%ecx),%edx
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
L.37:
	nop
	nop
	leal 72(%esp), %eax
	movl $0,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 72(%esp), %esp
	ret
makerect:
	leal -136(%esp), %esp
	movl $4,%ecx
	leal 136(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,92(%esp)
	movl $12,%ecx
	leal 136(%esp), %edx
	movl %edx,12(%esp)
	movl 12(%esp),%edx
	addl %ecx,%edx
	movl %edx,12(%esp)
	movl 12(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,96(%esp)
	nop
	leal 136(%esp), %ecx
	movl %ecx,20(%esp)
	leal 136(%esp), %ecx
	movl %ecx,16(%esp)
	movl 20(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,24(%esp)
	movl 24(%esp),%ecx
	movl 16(%esp),%edx
	movl %ecx,(%edx)
	movl %ebx,8(%esp)
initialize_continuations_l44:
	movl 92(%esp),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	movl %edx,28(%esp)
	movl 92(%esp),%edx
	movl 28(%esp),%ebx
	addl %ebx,%edx
	movl (%edx),%edx
	movl %edx,100(%esp)
	movl $-32,%edx
	movl %edx,36(%esp)
	leal 136(%esp), %edx
	movl %edx,32(%esp)
	movl 32(%esp),%edx
	movl %edx,40(%esp)
	movl 40(%esp),%edx
	movl 36(%esp),%ebx
	addl %ebx,%edx
	movl %edx,40(%esp)
	movl 40(%esp),%edx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl %ecx,48(%esp)
	movl $-32,%ecx
	movl %ecx,44(%esp)
	leal 136(%esp), %ecx
	movl 44(%esp),%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	addl %edx,%ecx
	movl 100(%esp),%edx
	movl %edx,(%ecx)
	movl 96(%esp),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	movl 96(%esp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl %edx,100(%esp)
	movl $8,%edx
	movl %edx,56(%esp)
	movl $-32,%edx
	movl %edx,52(%esp)
	leal 136(%esp), %edx
	movl 52(%esp),%ebx
	addl %ebx,%edx
	movl 56(%esp),%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $12,%ecx
	movl %ecx,60(%esp)
	movl $-32,%edx
	leal 136(%esp), %ecx
	addl %edx,%ecx
	movl 60(%esp),%edx
	addl %edx,%ecx
	movl 100(%esp),%edx
	movl %edx,(%ecx)
	movl $-32,%edx
	leal 136(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	movl %edx,64(%esp)
	movl $-32,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	movl 64(%esp),%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl %edx,100(%esp)
	movl $-16,%edx
	movl %edx,68(%esp)
	leal 136(%esp), %edx
	movl 68(%esp),%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl %ecx,72(%esp)
	movl $-16,%edx
	leal 136(%esp), %ecx
	addl %edx,%ecx
	movl 72(%esp),%edx
	addl %edx,%ecx
	movl 100(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%ecx
	movl $-32,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $12,%edx
	movl %edx,76(%esp)
	movl $-32,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	movl 76(%esp),%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl %edx,100(%esp)
	movl $8,%edx
	movl %edx,84(%esp)
	movl $-16,%edx
	movl %edx,80(%esp)
	leal 136(%esp), %edx
	movl 80(%esp),%ebx
	addl %ebx,%edx
	movl 84(%esp),%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $12,%ecx
	movl %ecx,88(%esp)
	movl $-16,%edx
	leal 136(%esp), %ecx
	addl %edx,%ecx
	movl 88(%esp),%edx
	addl %edx,%ecx
	movl 100(%esp),%edx
	movl %edx,(%ecx)
	nop
	movl $-136,%edx
	leal 136(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-16,%ecx
	leal 136(%esp), %eax
	addl %ecx,%eax
	movl $-132,%edx
	leal 136(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call canonrect
join_l48:
	nop
	nop
	nop
L.43:
	nop
	nop
	leal 136(%esp), %edx
	movl $0,%ecx
	leal 136(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl 8(%esp),%ebx
	leal 136(%esp), %esp
	ret
ptinrect:
	leal -40(%esp), %esp
	movl $4,%ecx
	leal 40(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,32(%esp)
	nop
	leal 40(%esp), %ecx
	movl %ecx,(%esp)
	leal 40(%esp), %edx
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
initialize_continuations_l57:
	movl (%eax),%ecx
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	movl 36(%esp),%edx
	cmpl %ecx,%edx
	jl join_l66
join_l67:
	movl $8,%ecx
	movl %ecx,24(%esp)
	movl 32(%esp),%ecx
	movl %ecx,28(%esp)
	movl 28(%esp),%ecx
	movl 24(%esp),%edx
	addl %edx,%ecx
	movl %ecx,28(%esp)
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,20(%esp)
	movl 20(%esp),%ecx
	movl 36(%esp),%edx
	cmpl %ecx,%edx
	jge join_l64
join_l65:
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%ecx
	movl 32(%esp),%eax
	movl %eax,16(%esp)
	movl 16(%esp),%eax
	addl %edx,%eax
	movl %eax,16(%esp)
	movl 16(%esp),%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jl join_l62
join_l63:
	movl $12,%eax
	movl 32(%esp),%edx
	addl %eax,%edx
	movl (%edx),%eax
	cmpl %eax,%ecx
	jge join_l60
join_l61:
	movl $1,%eax
	jmp L.53
join_l60:
	jmp L.52
join_l62:
	jmp L.52
join_l64:
	jmp L.52
join_l66:
	jmp L.52
L.52:
	movl $0,%eax
	jmp L.53
L.53:
	nop
	leal 40(%esp), %ecx
	movl %ecx,12(%esp)
	movl $0,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 40(%esp), %esp
	ret
.section .data
y:
.byte 97
.byte 98
.byte 0
.section .text
odd:
	leal -48(%esp), %esp
	movl $4,%ecx
	leal 48(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	nop
	leal 48(%esp), %eax
	leal 48(%esp), %edx
	movl (%eax),%eax
	movl %eax,(%edx)
initialize_continuations_l77:
	movsbl (%ecx),%eax
	movl %eax,40(%esp)
	movl $-4,%eax
	movl %eax,8(%esp)
	leal 48(%esp), %eax
	movl %eax,28(%esp)
	movl 8(%esp),%eax
	movl 28(%esp),%edx
	addl %eax,%edx
	movl %edx,28(%esp)
	movl 40(%esp),%eax
	movl 28(%esp),%edx
	movb %al,(%edx)
	movl $1,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movsbl (%eax),%eax
	movl %eax,40(%esp)
	movl $2,%eax
	addl %eax,%ecx
	movsbl (%ecx),%ecx
	movl $1,%eax
	movl %eax,16(%esp)
	movl $-4,%eax
	movl %eax,12(%esp)
	leal 48(%esp), %eax
	movl %eax,32(%esp)
	movl 12(%esp),%eax
	movl 32(%esp),%edx
	addl %eax,%edx
	movl %edx,32(%esp)
	movl 32(%esp),%eax
	movl %eax,36(%esp)
	movl 16(%esp),%eax
	movl 36(%esp),%edx
	addl %eax,%edx
	movl %edx,36(%esp)
	movl 40(%esp),%eax
	movl 36(%esp),%edx
	movb %al,(%edx)
	movl $2,%eax
	movl %eax,20(%esp)
	movl $-4,%eax
	leal 48(%esp), %edx
	addl %eax,%edx
	movl 20(%esp),%eax
	addl %eax,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	nop
	leal i_61,%eax
	movl $-48,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-4,%ecx
	leal 48(%esp), %eax
	addl %ecx,%eax
	movl $-44,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l82:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 48(%esp), %ecx
	movl %ecx,24(%esp)
	movl $0,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 48(%esp), %esp
	ret
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
	leal -440(%esp), %esp
	nop
	nop
	leal 440(%esp), %ecx
	leal 440(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,20(%esp)
initialize_continuations_l91:
	leal i_66,%eax
	movl (%eax),%eax
	movl $4,%edx
	leal i_66,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $-92,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-92,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	leal i_67,%eax
	movl (%eax),%eax
	movl $4,%edx
	leal i_67,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $-84,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-84,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	leal i_68,%eax
	movl (%eax),%eax
	movl $4,%edx
	leal i_68,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $-148,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-148,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $8,%ecx
	leal i_68,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%edx
	leal i_68,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	movl %edx,24(%esp)
	movl $-148,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	movl 24(%esp),%edx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $12,%eax
	movl $-148,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $16,%ecx
	leal i_68,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $20,%edx
	leal i_68,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	movl %edx,28(%esp)
	movl $-148,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	movl 28(%esp),%edx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $20,%eax
	movl $-148,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $24,%ecx
	leal i_68,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $28,%edx
	leal i_68,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	movl %edx,32(%esp)
	movl $-148,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	movl 32(%esp),%edx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $28,%eax
	movl $-148,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $-10,%eax
	nop
	movl $-76,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl $-440,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-436,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-432,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call makepoint
join_l133:
	nop
	nop
	nop
	movl $-84,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	movl $-84,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $-60,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-60,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	nop
	movl $-68,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-440,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-60,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-436,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-76,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-432,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call addpoint
join_l130:
	nop
	nop
	nop
	movl $10,%eax
	nop
	movl $-52,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl $-440,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-436,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-432,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call makepoint
join_l127:
	nop
	nop
	nop
	movl $-92,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	movl $-92,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $-36,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-36,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	nop
	movl $-44,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-440,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-36,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-436,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-52,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-432,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call addpoint
join_l124:
	nop
	nop
	nop
	nop
	movl $-116,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-440,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-68,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-436,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-44,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-432,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call makerect
join_l121:
	nop
	nop
	nop
	movl $0,%eax
	movl %eax,288(%esp)
	jmp L.72
L.72:
	movl $4,%eax
	movl 288(%esp),%ecx
	cmpl %eax,%ecx
	jb join_l100
join_l101:
	leal y,%eax
	movsbl (%eax),%eax
	movl $-4,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movb %al,(%ecx)
	movl $1,%ecx
	leal y,%eax
	addl %ecx,%eax
	movsbl (%eax),%eax
	movl $2,%edx
	leal y,%ecx
	addl %edx,%ecx
	movsbl (%ecx),%ecx
	movl $1,%edx
	movl %edx,248(%esp)
	movl $-4,%ebx
	leal 440(%esp), %edx
	addl %ebx,%edx
	movl 248(%esp),%ebx
	addl %ebx,%edx
	movb %al,(%edx)
	movl $2,%eax
	movl $-4,%ebx
	leal 440(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	nop
	movl $-4,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-440,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call odd
join_l99:
	nop
	nop
	nop
	nop
	movl $0,%edx
	movl $-440,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call exit
join_l96:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 440(%esp), %ecx
	movl $0,%edx
	leal 440(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 20(%esp),%ebx
	leal 440(%esp), %esp
	ret
join_l100:
	jmp L.69
L.69:
	movl $3,%ecx
	movl 288(%esp),%eax
	shll %cl, %eax
	nop
	movl $-100,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %ecx,252(%esp)
	movl $-148,%ecx
	movl %ecx,72(%esp)
	leal 440(%esp), %ecx
	movl 72(%esp),%edx
	addl %edx,%ecx
	movl %eax,76(%esp)
	movl 76(%esp),%edx
	addl %ecx,%edx
	movl %edx,76(%esp)
	movl 76(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,256(%esp)
	movl $4,%ecx
	movl %ecx,56(%esp)
	movl $-148,%ecx
	movl %ecx,48(%esp)
	leal 440(%esp), %ecx
	movl %ecx,44(%esp)
	movl 44(%esp),%ecx
	movl %ecx,52(%esp)
	movl 52(%esp),%ecx
	movl 48(%esp),%edx
	addl %edx,%ecx
	movl %ecx,52(%esp)
	movl 52(%esp),%ecx
	movl %ecx,60(%esp)
	movl 60(%esp),%ecx
	movl 56(%esp),%edx
	addl %edx,%ecx
	movl %ecx,60(%esp)
	movl %eax,64(%esp)
	movl 64(%esp),%eax
	movl 60(%esp),%ecx
	addl %ecx,%eax
	movl %eax,64(%esp)
	movl $-432,%eax
	movl %eax,40(%esp)
	leal 440(%esp), %eax
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,68(%esp)
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	movl $-436,%eax
	movl %eax,36(%esp)
	leal 440(%esp), %eax
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl 256(%esp),%ecx
	movl %ecx,(%eax)
	movl $-440,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl 252(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call makepoint
join_l118:
	nop
	nop
	nop
	nop
	leal i_73,%eax
	movl $-148,%edx
	leal 440(%esp), %ecx
	movl %ecx,104(%esp)
	movl 104(%esp),%ecx
	addl %edx,%ecx
	movl %ecx,104(%esp)
	movl $3,%ecx
	movl 288(%esp),%edx
	shll %cl, %edx
	movl 104(%esp),%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,260(%esp)
	movl $4,%ecx
	movl %ecx,92(%esp)
	movl $-100,%ecx
	movl %ecx,88(%esp)
	leal 440(%esp), %ecx
	movl 88(%esp),%edx
	addl %edx,%ecx
	movl %ecx,96(%esp)
	movl 96(%esp),%ecx
	movl 92(%esp),%edx
	addl %edx,%ecx
	movl %ecx,96(%esp)
	movl $-432,%ecx
	movl %ecx,84(%esp)
	leal 440(%esp), %ecx
	movl 84(%esp),%edx
	addl %edx,%ecx
	movl 96(%esp),%edx
	movl (%edx),%edx
	movl %edx,100(%esp)
	movl 100(%esp),%edx
	movl %edx,(%ecx)
	movl $-436,%ecx
	movl %ecx,80(%esp)
	leal 440(%esp), %ecx
	movl 80(%esp),%edx
	addl %edx,%ecx
	movl 260(%esp),%edx
	movl %edx,(%ecx)
	movl $-440,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call printf
join_l115:
	nop
	nop
	nop
	movl $-100,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	movl %ecx,108(%esp)
	movl $-100,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl 108(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $-28,%edx
	movl %edx,112(%esp)
	leal 440(%esp), %edx
	movl %edx,264(%esp)
	movl 112(%esp),%edx
	movl 264(%esp),%ebx
	addl %edx,%ebx
	movl %ebx,264(%esp)
	movl 264(%esp),%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl %eax,116(%esp)
	movl $-28,%edx
	leal 440(%esp), %eax
	addl %edx,%eax
	movl 116(%esp),%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-116,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	movl %ecx,120(%esp)
	movl $-116,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl 120(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $-20,%edx
	movl %edx,124(%esp)
	leal 440(%esp), %edx
	movl %edx,268(%esp)
	movl 124(%esp),%edx
	movl 268(%esp),%ebx
	addl %edx,%ebx
	movl %ebx,268(%esp)
	movl 268(%esp),%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl %eax,128(%esp)
	movl $-20,%edx
	leal 440(%esp), %eax
	addl %edx,%eax
	movl 128(%esp),%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $8,%ecx
	movl $-116,%edx
	leal 440(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	movl %ecx,132(%esp)
	movl $-116,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl 132(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	movl %edx,140(%esp)
	movl $-20,%edx
	movl %edx,136(%esp)
	leal 440(%esp), %edx
	movl %edx,272(%esp)
	movl 136(%esp),%edx
	movl 272(%esp),%ebx
	addl %edx,%ebx
	movl %ebx,272(%esp)
	movl 272(%esp),%edx
	movl %edx,276(%esp)
	movl 140(%esp),%edx
	movl 276(%esp),%ebx
	addl %edx,%ebx
	movl %ebx,276(%esp)
	movl 276(%esp),%edx
	movl %eax,(%edx)
	movl $12,%eax
	movl %eax,144(%esp)
	movl $-20,%edx
	leal 440(%esp), %eax
	addl %edx,%eax
	movl 144(%esp),%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	nop
	movl $-28,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-440,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-20,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl $-436,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call ptinrect
join_l112:
	nop
	nop
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l108
join_l109:
	nop
	leal i_78,%edx
	movl $-440,%ecx
	leal 440(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call printf
join_l107:
	nop
	nop
	nop
	jmp L.76
join_l108:
	jmp L.76
L.76:
	nop
	leal i_79,%eax
	movl $-116,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,280(%esp)
	movl $4,%ecx
	movl %ecx,244(%esp)
	movl $-116,%ecx
	movl %ecx,240(%esp)
	leal 440(%esp), %ecx
	movl 240(%esp),%edx
	addl %edx,%ecx
	movl 244(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,284(%esp)
	movl $8,%ecx
	movl %ecx,232(%esp)
	movl $-116,%ecx
	movl %ecx,224(%esp)
	leal 440(%esp), %ecx
	movl %ecx,220(%esp)
	movl 220(%esp),%ecx
	movl %ecx,228(%esp)
	movl 228(%esp),%ecx
	movl 224(%esp),%edx
	addl %edx,%ecx
	movl %ecx,228(%esp)
	movl 228(%esp),%ecx
	movl %ecx,236(%esp)
	movl 236(%esp),%ecx
	movl 232(%esp),%edx
	addl %edx,%ecx
	movl %ecx,236(%esp)
	movl 236(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,216(%esp)
	movl 216(%esp),%ecx
	movl %ecx,164(%esp)
	movl $12,%ecx
	movl %ecx,204(%esp)
	movl $-116,%ecx
	movl %ecx,196(%esp)
	leal 440(%esp), %ecx
	movl %ecx,192(%esp)
	movl 192(%esp),%ecx
	movl %ecx,200(%esp)
	movl 200(%esp),%ecx
	movl 196(%esp),%edx
	addl %edx,%ecx
	movl %ecx,200(%esp)
	movl 200(%esp),%ecx
	movl %ecx,208(%esp)
	movl 208(%esp),%ecx
	movl 204(%esp),%edx
	addl %edx,%ecx
	movl %ecx,208(%esp)
	movl $-424,%ecx
	movl %ecx,184(%esp)
	leal 440(%esp), %ecx
	movl %ecx,180(%esp)
	movl 180(%esp),%ecx
	movl %ecx,188(%esp)
	movl 188(%esp),%ecx
	movl 184(%esp),%edx
	addl %edx,%ecx
	movl %ecx,188(%esp)
	movl 208(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,212(%esp)
	movl 212(%esp),%ecx
	movl 188(%esp),%edx
	movl %ecx,(%edx)
	movl $-428,%ecx
	movl %ecx,172(%esp)
	leal 440(%esp), %ecx
	movl %ecx,168(%esp)
	movl 168(%esp),%ecx
	movl %ecx,176(%esp)
	movl 176(%esp),%ecx
	movl 172(%esp),%edx
	addl %edx,%ecx
	movl %ecx,176(%esp)
	movl 176(%esp),%ecx
	movl 164(%esp),%edx
	movl %edx,(%ecx)
	movl $-432,%ecx
	movl %ecx,156(%esp)
	leal 440(%esp), %ecx
	movl %ecx,152(%esp)
	movl 152(%esp),%ecx
	movl %ecx,160(%esp)
	movl 160(%esp),%ecx
	movl 156(%esp),%edx
	addl %edx,%ecx
	movl %ecx,160(%esp)
	movl 160(%esp),%ecx
	movl 284(%esp),%edx
	movl %edx,(%ecx)
	movl $-436,%ecx
	movl %ecx,148(%esp)
	leal 440(%esp), %ecx
	movl 148(%esp),%edx
	addl %edx,%ecx
	movl 280(%esp),%edx
	movl %edx,(%ecx)
	movl $-440,%edx
	leal 440(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call printf
join_l104:
	nop
	nop
	nop
L.70:
	movl $1,%ecx
	movl 288(%esp),%eax
	addl %ecx,%eax
	movl %eax,288(%esp)
	jmp L.72
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
