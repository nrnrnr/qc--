.globl x
.globl main
.globl print
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .data
.align 4
x:
.long 1
.long 2
.long 3
.long 4
.section .text
main:
	leal -452(%esp), %esp
	nop
	nop
	leal 452(%esp), %ecx
	leal 452(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l3:
	nop
	leal i_2,%eax
	movl $-452,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call print
join_l23:
	nop
	nop
	nop
	nop
	leal i_3,%eax
	movl $-452,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i_4,%eax
	movl $-448,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call print
join_l20:
	nop
	nop
	nop
	nop
	leal i_5,%eax
	movl $-452,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $3,%eax
	movl $-448,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $10,%eax
	movl $-444,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call print
join_l17:
	nop
	nop
	nop
	nop
	leal i_6,%eax
	movl $-452,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i_7,%eax
	movl $-448,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i_8,%eax
	movl $-444,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-440,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $10,%eax
	movl $-436,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call print
join_l14:
	nop
	nop
	nop
	nop
	leal i_9,%eax
	movl $-452,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i_7,%eax
	movl $-448,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i_8,%eax
	movl $-444,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal f_10,%eax
	movl $-440,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	movl $10,%eax
	movl $-432,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call print
join_l11:
	nop
	nop
	nop
	leal x,%eax
	movl (%eax),%ecx
	movl %ecx,348(%esp)
	movl $4,%ecx
	movl %eax,28(%esp)
	movl 28(%esp),%edx
	addl %ecx,%edx
	movl %edx,28(%esp)
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,352(%esp)
	movl $-96,%ecx
	movl %ecx,36(%esp)
	leal 452(%esp), %ecx
	movl %ecx,32(%esp)
	movl 32(%esp),%ecx
	movl %ecx,40(%esp)
	movl 40(%esp),%ecx
	movl 36(%esp),%edx
	addl %edx,%ecx
	movl %ecx,40(%esp)
	movl 40(%esp),%ecx
	movl 348(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl %ecx,48(%esp)
	movl $-96,%ecx
	movl %ecx,44(%esp)
	leal 452(%esp), %ecx
	movl 44(%esp),%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	addl %edx,%ecx
	movl 352(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,348(%esp)
	movl $12,%ecx
	movl %eax,52(%esp)
	movl 52(%esp),%edx
	addl %ecx,%edx
	movl %edx,52(%esp)
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,352(%esp)
	movl $8,%ecx
	movl %ecx,68(%esp)
	movl $-96,%ecx
	movl %ecx,60(%esp)
	leal 452(%esp), %ecx
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
	movl 348(%esp),%edx
	movl %edx,(%ecx)
	movl $12,%ecx
	movl %ecx,80(%esp)
	movl $-96,%ecx
	movl %ecx,76(%esp)
	leal 452(%esp), %ecx
	movl 76(%esp),%edx
	addl %edx,%ecx
	movl 80(%esp),%edx
	addl %edx,%ecx
	movl 352(%esp),%edx
	movl %edx,(%ecx)
	movl (%eax),%ecx
	movl %ecx,348(%esp)
	movl $4,%ecx
	movl %eax,84(%esp)
	movl 84(%esp),%edx
	addl %ecx,%edx
	movl %edx,84(%esp)
	movl 84(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,352(%esp)
	movl $-80,%ecx
	movl %ecx,92(%esp)
	leal 452(%esp), %ecx
	movl %ecx,88(%esp)
	movl 88(%esp),%ecx
	movl %ecx,96(%esp)
	movl 96(%esp),%ecx
	movl 92(%esp),%edx
	addl %edx,%ecx
	movl %ecx,96(%esp)
	movl 96(%esp),%ecx
	movl 348(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl %ecx,104(%esp)
	movl $-80,%ecx
	movl %ecx,100(%esp)
	leal 452(%esp), %ecx
	movl 100(%esp),%edx
	addl %edx,%ecx
	movl 104(%esp),%edx
	addl %edx,%ecx
	movl 352(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,348(%esp)
	movl $12,%ecx
	movl %eax,108(%esp)
	movl 108(%esp),%edx
	addl %ecx,%edx
	movl %edx,108(%esp)
	movl 108(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,352(%esp)
	movl $8,%ecx
	movl %ecx,124(%esp)
	movl $-80,%ecx
	movl %ecx,116(%esp)
	leal 452(%esp), %ecx
	movl %ecx,112(%esp)
	movl 112(%esp),%ecx
	movl %ecx,120(%esp)
	movl 120(%esp),%ecx
	movl 116(%esp),%edx
	addl %edx,%ecx
	movl %ecx,120(%esp)
	movl 120(%esp),%ecx
	movl %ecx,128(%esp)
	movl 128(%esp),%ecx
	movl 124(%esp),%edx
	addl %edx,%ecx
	movl %ecx,128(%esp)
	movl 128(%esp),%ecx
	movl 348(%esp),%edx
	movl %edx,(%ecx)
	movl $12,%ecx
	movl %ecx,136(%esp)
	movl $-80,%ecx
	movl %ecx,132(%esp)
	leal 452(%esp), %ecx
	movl 132(%esp),%edx
	addl %edx,%ecx
	movl 136(%esp),%edx
	addl %edx,%ecx
	movl 352(%esp),%edx
	movl %edx,(%ecx)
	movl (%eax),%ecx
	movl %ecx,348(%esp)
	movl $4,%ecx
	movl %eax,140(%esp)
	movl 140(%esp),%edx
	addl %ecx,%edx
	movl %edx,140(%esp)
	movl 140(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,352(%esp)
	movl $-64,%ecx
	movl %ecx,148(%esp)
	leal 452(%esp), %ecx
	movl %ecx,144(%esp)
	movl 144(%esp),%ecx
	movl %ecx,152(%esp)
	movl 152(%esp),%ecx
	movl 148(%esp),%edx
	addl %edx,%ecx
	movl %ecx,152(%esp)
	movl 152(%esp),%ecx
	movl 348(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl %ecx,160(%esp)
	movl $-64,%ecx
	movl %ecx,156(%esp)
	leal 452(%esp), %ecx
	movl 156(%esp),%edx
	addl %edx,%ecx
	movl 160(%esp),%edx
	addl %edx,%ecx
	movl 352(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,348(%esp)
	movl $12,%ecx
	movl %eax,164(%esp)
	movl 164(%esp),%edx
	addl %ecx,%edx
	movl %edx,164(%esp)
	movl 164(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,352(%esp)
	movl $8,%ecx
	movl %ecx,180(%esp)
	movl $-64,%ecx
	movl %ecx,172(%esp)
	leal 452(%esp), %ecx
	movl %ecx,168(%esp)
	movl 168(%esp),%ecx
	movl %ecx,176(%esp)
	movl 176(%esp),%ecx
	movl 172(%esp),%edx
	addl %edx,%ecx
	movl %ecx,176(%esp)
	movl 176(%esp),%ecx
	movl %ecx,184(%esp)
	movl 184(%esp),%ecx
	movl 180(%esp),%edx
	addl %edx,%ecx
	movl %ecx,184(%esp)
	movl 184(%esp),%ecx
	movl 348(%esp),%edx
	movl %edx,(%ecx)
	movl $12,%ecx
	movl %ecx,192(%esp)
	movl $-64,%ecx
	movl %ecx,188(%esp)
	leal 452(%esp), %ecx
	movl 188(%esp),%edx
	addl %edx,%ecx
	movl 192(%esp),%edx
	addl %edx,%ecx
	movl 352(%esp),%edx
	movl %edx,(%ecx)
	movl (%eax),%ecx
	movl %ecx,348(%esp)
	movl $4,%ecx
	movl %eax,196(%esp)
	movl 196(%esp),%edx
	addl %ecx,%edx
	movl %edx,196(%esp)
	movl 196(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,352(%esp)
	movl $-48,%ecx
	movl %ecx,204(%esp)
	leal 452(%esp), %ecx
	movl %ecx,200(%esp)
	movl 200(%esp),%ecx
	movl %ecx,208(%esp)
	movl 208(%esp),%ecx
	movl 204(%esp),%edx
	addl %edx,%ecx
	movl %ecx,208(%esp)
	movl 208(%esp),%ecx
	movl 348(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl %ecx,216(%esp)
	movl $-48,%ecx
	movl %ecx,212(%esp)
	leal 452(%esp), %ecx
	movl 212(%esp),%edx
	addl %edx,%ecx
	movl 216(%esp),%edx
	addl %edx,%ecx
	movl 352(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,348(%esp)
	movl $12,%ecx
	movl %eax,220(%esp)
	movl 220(%esp),%edx
	addl %ecx,%edx
	movl %edx,220(%esp)
	movl 220(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,352(%esp)
	movl $8,%ecx
	movl %ecx,236(%esp)
	movl $-48,%ecx
	movl %ecx,228(%esp)
	leal 452(%esp), %ecx
	movl %ecx,224(%esp)
	movl 224(%esp),%ecx
	movl %ecx,232(%esp)
	movl 232(%esp),%ecx
	movl 228(%esp),%edx
	addl %edx,%ecx
	movl %ecx,232(%esp)
	movl 232(%esp),%ecx
	movl %ecx,240(%esp)
	movl 240(%esp),%ecx
	movl 236(%esp),%edx
	addl %edx,%ecx
	movl %ecx,240(%esp)
	movl 240(%esp),%ecx
	movl 348(%esp),%edx
	movl %edx,(%ecx)
	movl $12,%ecx
	movl %ecx,248(%esp)
	movl $-48,%ecx
	movl %ecx,244(%esp)
	leal 452(%esp), %ecx
	movl 244(%esp),%edx
	addl %edx,%ecx
	movl 248(%esp),%edx
	addl %edx,%ecx
	movl 352(%esp),%edx
	movl %edx,(%ecx)
	movl (%eax),%ecx
	movl %ecx,348(%esp)
	movl $4,%ecx
	movl %eax,252(%esp)
	movl 252(%esp),%edx
	addl %ecx,%edx
	movl %edx,252(%esp)
	movl 252(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,352(%esp)
	movl $-32,%ecx
	movl %ecx,260(%esp)
	leal 452(%esp), %ecx
	movl %ecx,256(%esp)
	movl 256(%esp),%ecx
	movl %ecx,264(%esp)
	movl 264(%esp),%ecx
	movl 260(%esp),%edx
	addl %edx,%ecx
	movl %ecx,264(%esp)
	movl 264(%esp),%ecx
	movl 348(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl %ecx,272(%esp)
	movl $-32,%ecx
	movl %ecx,268(%esp)
	leal 452(%esp), %ecx
	movl 268(%esp),%edx
	addl %edx,%ecx
	movl 272(%esp),%edx
	addl %edx,%ecx
	movl 352(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,348(%esp)
	movl $12,%ecx
	movl %eax,276(%esp)
	movl 276(%esp),%edx
	addl %ecx,%edx
	movl %edx,276(%esp)
	movl 276(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,352(%esp)
	movl $8,%ecx
	movl %ecx,292(%esp)
	movl $-32,%ecx
	movl %ecx,284(%esp)
	leal 452(%esp), %ecx
	movl %ecx,280(%esp)
	movl 280(%esp),%ecx
	movl %ecx,288(%esp)
	movl 288(%esp),%ecx
	movl 284(%esp),%edx
	addl %edx,%ecx
	movl %ecx,288(%esp)
	movl 288(%esp),%ecx
	movl %ecx,296(%esp)
	movl 296(%esp),%ecx
	movl 292(%esp),%edx
	addl %edx,%ecx
	movl %ecx,296(%esp)
	movl 296(%esp),%ecx
	movl 348(%esp),%edx
	movl %edx,(%ecx)
	movl $12,%ecx
	movl %ecx,304(%esp)
	movl $-32,%ecx
	movl %ecx,300(%esp)
	leal 452(%esp), %ecx
	movl 300(%esp),%edx
	addl %edx,%ecx
	movl 304(%esp),%edx
	addl %edx,%ecx
	movl 352(%esp),%edx
	movl %edx,(%ecx)
	movl (%eax),%ecx
	movl %ecx,348(%esp)
	movl $4,%ecx
	movl %eax,308(%esp)
	movl 308(%esp),%edx
	addl %ecx,%edx
	movl %edx,308(%esp)
	movl 308(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,352(%esp)
	movl $-16,%ecx
	movl %ecx,316(%esp)
	leal 452(%esp), %ecx
	movl %ecx,312(%esp)
	movl 312(%esp),%ecx
	movl %ecx,320(%esp)
	movl 320(%esp),%ecx
	movl 316(%esp),%edx
	addl %edx,%ecx
	movl %ecx,320(%esp)
	movl 320(%esp),%ecx
	movl 348(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl %ecx,328(%esp)
	movl $-16,%ecx
	movl %ecx,324(%esp)
	leal 452(%esp), %ecx
	movl 324(%esp),%edx
	addl %edx,%ecx
	movl 328(%esp),%edx
	addl %edx,%ecx
	movl 352(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,348(%esp)
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,352(%esp)
	movl $8,%eax
	movl %eax,336(%esp)
	movl $-16,%eax
	movl %eax,332(%esp)
	leal 452(%esp), %eax
	movl 332(%esp),%ecx
	addl %ecx,%eax
	movl 336(%esp),%ecx
	addl %ecx,%eax
	movl 348(%esp),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl %eax,340(%esp)
	movl $-16,%ecx
	leal 452(%esp), %eax
	addl %ecx,%eax
	movl 340(%esp),%ecx
	addl %ecx,%eax
	movl 352(%esp),%ecx
	movl %ecx,(%eax)
	nop
	leal i_11,%eax
	movl $-452,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-96,%ecx
	leal 452(%esp), %eax
	addl %ecx,%eax
	movl $-448,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-80,%ecx
	leal 452(%esp), %eax
	addl %ecx,%eax
	movl $-444,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-64,%ecx
	leal 452(%esp), %eax
	addl %ecx,%eax
	movl $-440,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-48,%ecx
	leal 452(%esp), %eax
	addl %ecx,%eax
	movl $-436,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-32,%ecx
	leal 452(%esp), %eax
	addl %ecx,%eax
	movl $-432,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-16,%ecx
	leal 452(%esp), %eax
	addl %ecx,%eax
	movl $-428,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call print
join_l8:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 452(%esp), %ecx
	movl %ecx,344(%esp)
	movl $0,%ecx
	leal 452(%esp), %edx
	addl %ecx,%edx
	movl 344(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 452(%esp), %esp
	ret
print:
	leal -192(%esp), %esp
	movl $4,%ecx
	leal 192(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	nop
	leal 192(%esp), %ecx
	leal 192(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,20(%esp)
initialize_continuations_l32:
	nop
	movl $-192,%ecx
	leal 192(%esp), %eax
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call __builtin_next_arg
join_l74:
	nop
	nop
	movl %eax,%ebx
	jmp L.25
L.25:
	movl 24(%esp),%eax
	movsbl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l35
join_l36:
	nop
	movl $0,%eax
	leal 192(%esp), %ecx
	movl $0,%edx
	leal 192(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 20(%esp),%ebx
	leal 192(%esp), %esp
	ret
join_l35:
	jmp L.22
L.22:
	movl 24(%esp),%eax
	movsbl (%eax),%eax
	movl $37,%ecx
	cmpl %ecx,%eax
	jne join_l70
join_l71:
	movl $1,%ecx
	movl 24(%esp),%eax
	addl %ecx,%eax
	movl %eax,24(%esp)
	movsbl (%eax),%edx
	movl $115,%eax
	cmpl %eax,%edx
	je join_l68
join_l69:
	cmpl %eax,%edx
	jg join_l67
join_l81:
	jmp L.46
L.46:
	movl $98,%eax
	cmpl %eax,%edx
	jl join_l65
join_l66:
	movl $102,%eax
	cmpl %eax,%edx
	jg join_l63
join_l64:
	movl $392,%eax
	leal i_48,%ecx
	movl %ecx,148(%esp)
	movl 148(%esp),%ecx
	subl %eax,%ecx
	movl %ecx,148(%esp)
	movl $2,%ecx
	movl %edx,%eax
	shll %cl, %eax
	movl 148(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp *%eax
L.21:
	nop
	nop
	leal 192(%esp), %edx
	movl $0,%ecx
	leal 192(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl 20(%esp),%ebx
	leal 192(%esp), %esp
	ret
L.44:
	movl $8,%eax
	addl %eax,%ebx
	nop
	movl $-8,%ecx
	movl %ebx,%eax
	addl %ecx,%eax
	movl $-188,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal i_45,%eax
	movl $-192,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l45:
	nop
	nop
	nop
	jmp L.27
L.38:
	movl $4,%eax
	addl %eax,%ebx
	nop
	movl $-4,%ecx
	movl %ebx,%eax
	addl %ecx,%eax
	movl $-188,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal i_39,%eax
	movl $-192,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l54:
	nop
	nop
	nop
	jmp L.27
L.36:
	movl $4,%eax
	addl %eax,%ebx
	nop
	movl $-4,%ecx
	movl %ebx,%eax
	addl %ecx,%eax
	movsbl (%eax),%eax
	movl $-188,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i_37,%eax
	movl $-192,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l57:
	nop
	nop
	nop
	jmp L.27
L.31:
	movl $16,%eax
	addl %eax,%ebx
	movl $-16,%ecx
	movl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-12,%edx
	movl %ebx,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,172(%esp)
	movl $-16,%ecx
	movl %ecx,28(%esp)
	leal 192(%esp), %ecx
	movl %ecx,152(%esp)
	movl 28(%esp),%ecx
	movl 152(%esp),%edx
	addl %ecx,%edx
	movl %edx,152(%esp)
	movl 152(%esp),%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	movl %eax,32(%esp)
	movl $-16,%ecx
	leal 192(%esp), %eax
	addl %ecx,%eax
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl 172(%esp),%ecx
	movl %ecx,(%eax)
	movl $-8,%ecx
	movl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-4,%edx
	movl %ebx,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,172(%esp)
	movl $8,%ecx
	movl %ecx,40(%esp)
	movl $-16,%ecx
	movl %ecx,36(%esp)
	leal 192(%esp), %ecx
	movl %ecx,156(%esp)
	movl 36(%esp),%ecx
	movl 156(%esp),%edx
	addl %ecx,%edx
	movl %edx,156(%esp)
	movl 156(%esp),%ecx
	movl %ecx,160(%esp)
	movl 40(%esp),%ecx
	movl 160(%esp),%edx
	addl %ecx,%edx
	movl %edx,160(%esp)
	movl 160(%esp),%ecx
	movl %eax,(%ecx)
	movl $12,%eax
	movl %eax,44(%esp)
	movl $-16,%ecx
	leal 192(%esp), %eax
	addl %ecx,%eax
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl 172(%esp),%ecx
	movl %ecx,(%eax)
	nop
	leal i_32,%eax
	movl $-16,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,164(%esp)
	movl $4,%ecx
	movl %ecx,144(%esp)
	movl $-16,%ecx
	movl %ecx,140(%esp)
	leal 192(%esp), %ecx
	movl 140(%esp),%edx
	addl %edx,%ecx
	movl 144(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,168(%esp)
	movl $8,%ecx
	movl %ecx,132(%esp)
	movl $-16,%ecx
	movl %ecx,124(%esp)
	leal 192(%esp), %ecx
	movl %ecx,120(%esp)
	movl 120(%esp),%ecx
	movl %ecx,128(%esp)
	movl 128(%esp),%ecx
	movl 124(%esp),%edx
	addl %edx,%ecx
	movl %ecx,128(%esp)
	movl 128(%esp),%ecx
	movl %ecx,136(%esp)
	movl 136(%esp),%ecx
	movl 132(%esp),%edx
	addl %edx,%ecx
	movl %ecx,136(%esp)
	movl 136(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,116(%esp)
	movl 116(%esp),%ecx
	movl %ecx,64(%esp)
	movl $12,%ecx
	movl %ecx,104(%esp)
	movl $-16,%ecx
	movl %ecx,96(%esp)
	leal 192(%esp), %ecx
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
	movl $-176,%ecx
	movl %ecx,84(%esp)
	leal 192(%esp), %ecx
	movl %ecx,80(%esp)
	movl 80(%esp),%ecx
	movl %ecx,88(%esp)
	movl 88(%esp),%ecx
	movl 84(%esp),%edx
	addl %edx,%ecx
	movl %ecx,88(%esp)
	movl 108(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,112(%esp)
	movl 112(%esp),%ecx
	movl 88(%esp),%edx
	movl %ecx,(%edx)
	movl $-180,%ecx
	movl %ecx,72(%esp)
	leal 192(%esp), %ecx
	movl %ecx,68(%esp)
	movl 68(%esp),%ecx
	movl %ecx,76(%esp)
	movl 76(%esp),%ecx
	movl 72(%esp),%edx
	addl %edx,%ecx
	movl %ecx,76(%esp)
	movl 76(%esp),%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	movl $-184,%ecx
	movl %ecx,56(%esp)
	leal 192(%esp), %ecx
	movl %ecx,52(%esp)
	movl 52(%esp),%ecx
	movl %ecx,60(%esp)
	movl 60(%esp),%ecx
	movl 56(%esp),%edx
	addl %edx,%ecx
	movl %ecx,60(%esp)
	movl 60(%esp),%ecx
	movl 168(%esp),%edx
	movl %edx,(%ecx)
	movl $-188,%ecx
	movl %ecx,48(%esp)
	leal 192(%esp), %ecx
	movl 48(%esp),%edx
	addl %edx,%ecx
	movl 164(%esp),%edx
	movl %edx,(%ecx)
	movl $-192,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l60:
	nop
	nop
	nop
	jmp L.27
join_l63:
	jmp L.28
join_l65:
	jmp L.28
join_l67:
	jmp L.47
L.47:
	movl $119,%eax
	cmpl %eax,%edx
	je join_l61
join_l62:
	jmp L.28
L.28:
	nop
	movl 24(%esp),%eax
	movsbl (%eax),%eax
	movl $-188,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i_37,%eax
	movl $-192,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l42:
	nop
	nop
	nop
	jmp L.27
join_l61:
	jmp L.40
L.40:
	movl $4,%eax
	addl %eax,%ebx
	nop
	movl $-4,%ecx
	movl %ebx,%eax
	addl %ecx,%eax
	movswl (%eax),%eax
	movl $-188,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i_41,%eax
	movl $-192,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l51:
	nop
	nop
	nop
	jmp L.27
join_l68:
	jmp L.42
L.42:
	movl $4,%eax
	addl %eax,%ebx
	nop
	movl $-4,%ecx
	movl %ebx,%eax
	addl %ecx,%eax
	movl $-188,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal i_43,%eax
	movl $-192,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l48:
	nop
	nop
	nop
	jmp L.27
join_l70:
	jmp L.26
L.26:
	nop
	movl 24(%esp),%eax
	movsbl (%eax),%eax
	movl $-188,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i_37,%eax
	movl $-192,%ecx
	leal 192(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l39:
	nop
	nop
	nop
	jmp L.27
L.27:
	jmp L.23
L.23:
	movl $1,%ecx
	movl 24(%esp),%eax
	addl %ecx,%eax
	movl %eax,24(%esp)
	jmp L.25
.section .data
.align 4
i_48:
.long L.31
.long L.36
.long L.38
.long L.28
.long L.44
.section .text
.section .data
i_45:
.byte 37
.byte 102
.byte 0
i_43:
.byte 37
.byte 115
.byte 0
i_41:
.byte 37
.byte 120
.byte 0
i_39:
.byte 37
.byte 100
.byte 0
i_37:
.byte 37
.byte 99
.byte 0
i_32:
.byte 123
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 125
.byte 0
i_11:
.byte 37
.byte 98
.byte 32
.byte 37
.byte 98
.byte 32
.byte 37
.byte 98
.byte 32
.byte 37
.byte 98
.byte 32
.byte 37
.byte 98
.byte 32
.byte 37
.byte 98
.byte 10
.byte 0
.align 4
f_10:
.long 0
.long 0x40140000
i_9:
.byte 37
.byte 115
.byte 37
.byte 115
.byte 32
.byte 37
.byte 102
.byte 37
.byte 99
.byte 0
i_8:
.byte 115
.byte 116
.byte 0
i_7:
.byte 116
.byte 101
.byte 0
i_6:
.byte 37
.byte 115
.byte 37
.byte 115
.byte 32
.byte 37
.byte 119
.byte 37
.byte 99
.byte 0
i_5:
.byte 116
.byte 101
.byte 115
.byte 116
.byte 32
.byte 37
.byte 100
.byte 37
.byte 99
.byte 0
i_4:
.byte 50
.byte 0
i_3:
.byte 116
.byte 101
.byte 115
.byte 116
.byte 32
.byte 37
.byte 115
.byte 10
.byte 0
i_2:
.byte 116
.byte 101
.byte 115
.byte 116
.byte 32
.byte 49
.byte 10
.byte 0
