.globl main
.globl f
.globl g
.globl y
.globl x
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -140(%esp), %esp
	nop
	nop
	leal 140(%esp), %ecx
	leal 140(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l3:
	movl $0,%edx
	jmp L.2
L.2:
	movl $0,%eax
	movl %eax,8(%esp)
	jmp L.6
L.6:
	movl $1000,%eax
	imull %edx,%eax
	movl %eax,60(%esp)
	movl 60(%esp),%eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %eax,60(%esp)
	leal x,%eax
	movl %eax,52(%esp)
	movl $4,%ecx
	movl %edx,%eax
	shll %cl, %eax
	movl %eax,56(%esp)
	movl 56(%esp),%eax
	movl 52(%esp),%ecx
	addl %ecx,%eax
	movl %eax,56(%esp)
	movl $2,%ecx
	movl 8(%esp),%eax
	shll %cl, %eax
	movl 56(%esp),%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
L.7:
	movl $1,%eax
	movl 8(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,8(%esp)
	movl $4,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l17
join_l18:
	leal x,%eax
	movl %eax,64(%esp)
	movl $4,%ecx
	movl %edx,%eax
	shll %cl, %eax
	movl %eax,72(%esp)
	movl 72(%esp),%eax
	movl 64(%esp),%ecx
	addl %ecx,%eax
	movl %eax,72(%esp)
	leal y,%eax
	movl %eax,88(%esp)
	movl $2,%ecx
	movl %edx,%eax
	shll %cl, %eax
	movl %eax,68(%esp)
	movl 68(%esp),%eax
	movl 88(%esp),%ecx
	addl %ecx,%eax
	movl %eax,68(%esp)
	movl 72(%esp),%eax
	movl 68(%esp),%ecx
	movl %eax,(%ecx)
L.3:
	movl $1,%eax
	addl %eax,%edx
	movl $3,%eax
	cmpl %eax,%edx
	jl join_l15
join_l16:
	nop
	nop
	nop
	call f
join_l14:
	nop
	nop
	nop
	movl $0,%edx
	jmp L.10
L.10:
	movl $-48,%eax
	leal 140(%esp), %ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,16(%esp)
	movl $4,%ecx
	movl %edx,%eax
	shll %cl, %eax
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl %eax,80(%esp)
	movl 80(%esp),%eax
	movl %eax,84(%esp)
	leal y,%eax
	movl %eax,24(%esp)
	movl $2,%ecx
	movl %edx,20(%esp)
	movl 20(%esp),%eax
	shll %cl, %eax
	movl %eax,20(%esp)
	movl 20(%esp),%eax
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 80(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl %eax,8(%esp)
	jmp L.14
L.14:
	movl $2,%ecx
	movl 8(%esp),%eax
	movl %eax,28(%esp)
	movl 28(%esp),%eax
	shll %cl, %eax
	movl %eax,28(%esp)
	movl 28(%esp),%eax
	movl %eax,12(%esp)
	leal x,%eax
	movl %eax,36(%esp)
	movl $4,%ecx
	movl %edx,32(%esp)
	movl 32(%esp),%eax
	shll %cl, %eax
	movl %eax,32(%esp)
	movl 32(%esp),%eax
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,40(%esp)
	movl 40(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,40(%esp)
	movl 12(%esp),%eax
	movl 84(%esp),%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,44(%esp)
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
L.15:
	movl $1,%eax
	movl 8(%esp),%ecx
	movl %ecx,48(%esp)
	movl 48(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,48(%esp)
	movl 48(%esp),%eax
	movl %eax,8(%esp)
	movl $4,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l11
L.11:
	movl $1,%eax
	addl %eax,%edx
	movl $3,%eax
	cmpl %eax,%edx
	jl join_l9
join_l10:
	nop
	movl $-48,%ecx
	leal 140(%esp), %eax
	addl %ecx,%eax
	movl $-140,%ecx
	leal 140(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal y,%eax
	movl $-136,%ecx
	leal 140(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call g
join_l8:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 140(%esp), %ecx
	movl %ecx,76(%esp)
	movl $0,%ecx
	leal 140(%esp), %edx
	addl %ecx,%edx
	movl 76(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 140(%esp), %esp
	ret
join_l9:
	jmp L.10
join_l11:
	jmp L.14
join_l15:
	jmp L.2
join_l17:
	jmp L.6
f:
	leal -24(%esp), %esp
	nop
	nop
	leal 24(%esp), %ecx
	leal 24(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,8(%esp)
initialize_continuations_l27:
	movl $0,%eax
	movl %eax,12(%esp)
	jmp L.29
L.29:
	movl $0,%ebx
	jmp L.33
L.33:
	nop
	leal x,%eax
	movl $4,%ecx
	movl 12(%esp),%edx
	shll %cl, %edx
	movl %edx,16(%esp)
	movl 16(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,16(%esp)
	movl $2,%ecx
	movl %ebx,%eax
	shll %cl, %eax
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl $-20,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal i_37,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l47:
	nop
	nop
	nop
L.34:
	movl $1,%eax
	addl %eax,%ebx
	movl $4,%eax
	cmpl %eax,%ebx
	jl join_l44
L.30:
	movl $1,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
	movl $3,%eax
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l42
join_l43:
	nop
	leal i_38,%edx
	movl $-24,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call printf
join_l41:
	nop
	nop
	nop
	movl $0,%eax
	movl %eax,12(%esp)
	jmp L.39
L.39:
	movl $0,%ebx
	jmp L.43
L.43:
	movl $2,%ecx
	nop
	leal y,%eax
	movl 12(%esp),%edx
	shll %cl, %edx
	addl %eax,%edx
	movl (%edx),%edx
	movl %ebx,%eax
	shll %cl, %eax
	movl %eax,20(%esp)
	movl 20(%esp),%eax
	addl %edx,%eax
	movl %eax,20(%esp)
	movl $-20,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal i_37,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l38:
	nop
	nop
	nop
L.44:
	movl $1,%eax
	addl %eax,%ebx
	movl $4,%eax
	cmpl %eax,%ebx
	jl join_l35
L.40:
	movl $1,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
	movl $3,%eax
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l33
join_l34:
	nop
	leal i_38,%edx
	movl $-24,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call printf
join_l32:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 8(%esp),%ebx
	leal 24(%esp), %esp
	ret
join_l33:
	jmp L.39
join_l35:
	jmp L.43
join_l42:
	jmp L.29
join_l44:
	jmp L.33
g:
	leal -32(%esp), %esp
	movl $4,%ecx
	leal 32(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl $8,%ecx
	leal 32(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	nop
	leal 32(%esp), %ecx
	leal 32(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,8(%esp)
initialize_continuations_l56:
	movl $0,%eax
	movl %eax,20(%esp)
	jmp L.51
L.51:
	movl $0,%ebx
	jmp L.55
L.55:
	nop
	movl $4,%ecx
	movl 20(%esp),%eax
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl $2,%ecx
	movl %ebx,%edx
	shll %cl, %edx
	movl %edx,24(%esp)
	movl 24(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,24(%esp)
	movl $-28,%ecx
	leal 32(%esp), %eax
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal i_37,%eax
	movl $-32,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l76:
	nop
	nop
	nop
L.56:
	movl $1,%eax
	addl %eax,%ebx
	movl $4,%eax
	cmpl %eax,%ebx
	jl join_l73
L.52:
	movl $1,%ecx
	movl 20(%esp),%eax
	addl %ecx,%eax
	movl %eax,20(%esp)
	movl $3,%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l71
join_l72:
	nop
	leal i_38,%edx
	movl $-32,%ecx
	leal 32(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call printf
join_l70:
	nop
	nop
	nop
	movl $0,%eax
	movl %eax,20(%esp)
	jmp L.59
L.59:
	movl $0,%ebx
	jmp L.63
L.63:
	movl $2,%ecx
	nop
	movl 20(%esp),%eax
	shll %cl, %eax
	movl 16(%esp),%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,28(%esp)
	movl %ebx,%eax
	shll %cl, %eax
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl $-28,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal i_37,%eax
	movl $-32,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l67:
	nop
	nop
	nop
L.64:
	movl $1,%eax
	addl %eax,%ebx
	movl $4,%eax
	cmpl %eax,%ebx
	jl join_l64
L.60:
	movl $1,%ecx
	movl 20(%esp),%eax
	addl %ecx,%eax
	movl %eax,20(%esp)
	movl $3,%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l62
join_l63:
	nop
	leal i_38,%edx
	movl $-32,%ecx
	leal 32(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call printf
join_l61:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 8(%esp),%ebx
	leal 32(%esp), %esp
	ret
join_l62:
	jmp L.59
join_l64:
	jmp L.63
join_l71:
	jmp L.51
join_l73:
	jmp L.55
.section .bss
.align 4
y:
.skip 12, 0
.align 4
x:
.skip 48, 0
.section .data
i_38:
.byte 10
.byte 0
i_37:
.byte 32
.byte 37
.byte 100
.byte 0
