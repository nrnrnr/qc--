.globl main
.globl f
.globl f2
.globl f3
.globl f4
.globl f5
.globl x
.globl B
.globl A
.globl n
.globl m
.globl k
.globl j
.globl i
.globl b
.globl a
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -4(%esp), %esp
	nop
	nop
	leal 4(%esp), %ecx
	leal 4(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l3:
	nop
	movl $0,%eax
	leal 4(%esp), %ecx
	movl %ecx,(%esp)
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
f:
	leal -12(%esp), %esp
	movl $4,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%esp)
	nop
	leal 12(%esp), %ecx
	leal 12(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,8(%esp)
initialize_continuations_l15:
	nop
	nop
	nop
	call f
join_l23:
	nop
	movl %eax,%ebx
	nop
	nop
	nop
	nop
	call f
join_l20:
	nop
	nop
	addl %eax,%ebx
	movl %ebx,(%esp)
	nop
	movl $0,%eax
	leal 12(%esp), %ecx
	movl %ecx,4(%esp)
	movl $0,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
f2:
	leal -8(%esp), %esp
	movl $4,%ecx
	leal 8(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	nop
	leal 8(%esp), %ecx
	leal 8(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,(%esp)
initialize_continuations_l32:
	nop
	nop
	nop
	call f
join_l42:
	nop
	movl %eax,%ebx
	nop
	movl $0,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je join_l38
join_l39:
	nop
	nop
	nop
	call f
join_l37:
	nop
	nop
	jmp L.8
join_l38:
	jmp L.7
L.7:
	movl $1,%eax
	jmp L.8
L.8:
	addl %eax,%ebx
	movl %ebx,4(%esp)
	nop
	movl $0,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl (%esp),%ebx
	leal 8(%esp), %esp
	ret
f3:
	leal -20(%esp), %esp
	movl $4,%ecx
	leal 20(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,16(%esp)
	nop
	leal 20(%esp), %ecx
	movl %ecx,4(%esp)
	leal 20(%esp), %ecx
	movl %ecx,12(%esp)
	movl 4(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	movl 12(%esp),%edx
	movl %ecx,(%edx)
	movl %ebx,(%esp)
	movl %ebp,%ebx
	movl %esi,%esi
initialize_continuations_l51:
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl 16(%esp),%ebp
	movl $4,%edx
	movl %ebp,%ecx
	addl %edx,%ecx
	movl %ecx,16(%esp)
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l57
join_l58:
	nop
	nop
	nop
	call f
join_l56:
	nop
	nop
	jmp L.15
join_l57:
	jmp L.14
L.14:
	movl $0,%eax
	jmp L.15
L.15:
	movl %eax,(%ebp)
	nop
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	leal 20(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%ecx
	movl %ecx,(%ebp)
	movl %ebx,%ebp
	movl (%esp),%ebx
	movl %esi,%esi
	leal 20(%esp), %esp
	ret
f4:
	leal -108(%esp), %esp
	nop
	nop
	leal 108(%esp), %ecx
	leal 108(%esp), %edx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
initialize_continuations_l67:
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	leal i,%ecx
	movl (%ecx),%ecx
	movl %ecx,104(%esp)
	movl $3,%ecx
	movl 104(%esp),%edx
	movl %edx,68(%esp)
	movl 68(%esp),%edx
	shll %cl, %edx
	movl %edx,68(%esp)
	movl 68(%esp),%ecx
	movl %ecx,28(%esp)
	leal a,%ecx
	movl %ecx,76(%esp)
	movl 28(%esp),%ecx
	movl %ecx,36(%esp)
	movl 36(%esp),%ecx
	movl 76(%esp),%edx
	addl %edx,%ecx
	movl %ecx,36(%esp)
	movl $-108,%ecx
	movl %ecx,32(%esp)
	leal 108(%esp), %ecx
	movl %ecx,72(%esp)
	movl 32(%esp),%ecx
	movl 72(%esp),%edx
	addl %ecx,%edx
	movl %edx,72(%esp)
	movl 36(%esp),%ecx
	fildq (%ecx)
	movl 72(%esp),%ecx
	fistpq (%ecx)
	leal b,%ecx
	movl %ecx,84(%esp)
	movl 28(%esp),%ecx
	movl %ecx,44(%esp)
	movl 44(%esp),%ecx
	movl 84(%esp),%edx
	addl %edx,%ecx
	movl %ecx,44(%esp)
	movl $-100,%ecx
	movl %ecx,40(%esp)
	leal 108(%esp), %ecx
	movl %ecx,80(%esp)
	movl 40(%esp),%ecx
	movl 80(%esp),%edx
	addl %ecx,%edx
	movl %edx,80(%esp)
	movl 44(%esp),%ecx
	fildq (%ecx)
	movl 80(%esp),%ecx
	fistpq (%ecx)
	leal f_33,%ecx
	movl %ecx,52(%esp)
	movl $-92,%ecx
	movl %ecx,48(%esp)
	leal 108(%esp), %ecx
	movl %ecx,88(%esp)
	movl 48(%esp),%ecx
	movl 88(%esp),%edx
	addl %ecx,%edx
	movl %edx,88(%esp)
	movl 52(%esp),%ecx
	fildq (%ecx)
	movl 88(%esp),%ecx
	fistpq (%ecx)
	movl $-92,%ecx
	movl %ecx,92(%esp)
	leal 108(%esp), %ecx
	movl %ecx,56(%esp)
	movl 56(%esp),%ecx
	movl 92(%esp),%edx
	addl %edx,%ecx
	movl %ecx,56(%esp)
	movl 56(%esp),%ecx
	fldl (%ecx)
	movl $-100,%ecx
	movl %ecx,96(%esp)
	leal 108(%esp), %ecx
	movl %ecx,60(%esp)
	movl 60(%esp),%ecx
	movl 96(%esp),%edx
	addl %edx,%ecx
	movl %ecx,60(%esp)
	movl 60(%esp),%ecx
	fldl (%ecx)
	movl $-108,%ecx
	movl %ecx,100(%esp)
	leal 108(%esp), %ecx
	movl %ecx,64(%esp)
	movl 64(%esp),%ecx
	movl 100(%esp),%edx
	addl %edx,%ecx
	movl %ecx,64(%esp)
	movl 64(%esp),%ecx
	fldl (%ecx)
	faddp
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz join_l74
join_l75:
	movl $0,%ecx
	movl 104(%esp),%edx
	cmpl %ecx,%edx
	je join_l72
join_l73:
	movl $-92,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-100,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-108,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz join_l70
join_l71:
	movl $1,%eax
	jmp L.32
join_l70:
	jmp L.31
join_l72:
	jmp L.31
join_l74:
	jmp L.31
L.31:
	movl $0,%eax
	jmp L.32
L.32:
	leal i,%ecx
	movl %eax,(%ecx)
	nop
	movl $0,%eax
	leal 108(%esp), %ecx
	movl %ecx,24(%esp)
	movl $0,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 108(%esp), %esp
	ret
f5:
	leal -108(%esp), %esp
	nop
	nop
	leal 108(%esp), %ecx
	leal 108(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l85:
	leal x,%eax
	leal k,%ecx
	movl (%ecx),%ecx
	movl %ecx,96(%esp)
	leal m,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%esp)
	movl $3,%ecx
	movl %ecx,100(%esp)
	leal A,%ecx
	movl %ecx,32(%esp)
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,28(%esp)
	movl 28(%esp),%ecx
	movl %ecx,4(%esp)
	movl 96(%esp),%ecx
	movl %ecx,36(%esp)
	movl 36(%esp),%ecx
	movl (%esp),%edx
	imull %edx,%ecx
	movl %ecx,36(%esp)
	movl 36(%esp),%ecx
	movl %ecx,40(%esp)
	movl 100(%esp),%ecx
	movl 40(%esp),%edx
	shll %cl, %edx
	movl %edx,40(%esp)
	movl 40(%esp),%ecx
	movl %ecx,44(%esp)
	movl 44(%esp),%ecx
	movl 4(%esp),%edx
	addl %edx,%ecx
	movl %ecx,44(%esp)
	movl 44(%esp),%ecx
	movl %ecx,8(%esp)
	leal j,%ecx
	movl %ecx,52(%esp)
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,48(%esp)
	movl 48(%esp),%ecx
	movl %ecx,12(%esp)
	movl 12(%esp),%ecx
	movl %ecx,56(%esp)
	movl 56(%esp),%ecx
	movl (%esp),%edx
	imull %edx,%ecx
	movl %ecx,56(%esp)
	movl 56(%esp),%ecx
	movl %ecx,60(%esp)
	movl 100(%esp),%ecx
	movl 60(%esp),%edx
	shll %cl, %edx
	movl %edx,60(%esp)
	movl 60(%esp),%ecx
	movl %ecx,64(%esp)
	movl 64(%esp),%ecx
	movl 4(%esp),%edx
	addl %edx,%ecx
	movl %ecx,64(%esp)
	movl 64(%esp),%ecx
	movl %ecx,16(%esp)
	leal n,%ecx
	movl %ecx,72(%esp)
	movl 72(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,68(%esp)
	movl 68(%esp),%ecx
	movl %ecx,20(%esp)
	leal B,%ecx
	movl %ecx,80(%esp)
	movl 80(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,76(%esp)
	movl 76(%esp),%ecx
	movl %ecx,24(%esp)
	movl 96(%esp),%edx
	movl 20(%esp),%ecx
	imull %ecx,%edx
	movl 100(%esp),%ecx
	shll %cl, %edx
	movl 24(%esp),%ecx
	addl %ecx,%edx
	movl %edx,104(%esp)
	movl 12(%esp),%ecx
	movl %ecx,84(%esp)
	movl 84(%esp),%ecx
	movl 20(%esp),%edx
	imull %edx,%ecx
	movl %ecx,84(%esp)
	movl 84(%esp),%ecx
	movl %ecx,88(%esp)
	movl 100(%esp),%ecx
	movl 88(%esp),%edx
	shll %cl, %edx
	movl %edx,88(%esp)
	movl 88(%esp),%ecx
	movl 24(%esp),%edx
	addl %edx,%ecx
	fldl (%ecx)
	movl 104(%esp),%edx
	fldl (%edx)
	fmulp
	movl 16(%esp),%edx
	fldl (%edx)
	movl 8(%esp),%edx
	fldl (%edx)
	fmulp
	faddp
	fstpl (%eax)
	movl 16(%esp),%edx
	fldl (%edx)
	movl 104(%esp),%edx
	fldl (%edx)
	fmulp
	fldl (%ecx)
	movl 8(%esp),%ecx
	fldl (%ecx)
	fmulp
	fsubp
	fstpl (%eax)
	nop
	movl $0,%eax
	leal 108(%esp), %ecx
	movl %ecx,92(%esp)
	movl $0,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl 92(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 108(%esp), %esp
	ret
.section .bss
.align 4
x:
.skip 8, 0
.align 4
B:
.skip 4, 0
.align 4
A:
.skip 4, 0
.align 4
n:
.skip 4, 0
.align 4
m:
.skip 4, 0
.align 4
k:
.skip 4, 0
.align 4
j:
.skip 4, 0
.align 4
i:
.skip 4, 0
.align 4
b:
.skip 80, 0
.align 4
a:
.skip 80, 0
.section .data
.align 4
f_33:
.long 0
.long 0
