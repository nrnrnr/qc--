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
	leal -144(%esp), %esp
	nop
initialize_continuations_l3:
	movl $0,%eax
	jmp L.2
L.2:
	movl $0,%ecx
	movl %ecx,84(%esp)
	jmp L.6
L.6:
	movl $1000,%ecx
	imull %eax,%ecx
	movl %ecx,32(%esp)
	movl 32(%esp),%ecx
	movl 84(%esp),%edx
	addl %edx,%ecx
	movl %ecx,32(%esp)
	leal x,%ecx
	movl %ecx,24(%esp)
	movl $4,%ecx
	movl %eax,20(%esp)
	movl 20(%esp),%edx
	shll %cl, %edx
	movl %edx,20(%esp)
	movl 20(%esp),%ecx
	movl %ecx,28(%esp)
	movl 28(%esp),%ecx
	movl 24(%esp),%edx
	addl %edx,%ecx
	movl %ecx,28(%esp)
	movl $2,%ecx
	movl 84(%esp),%edx
	movl %edx,16(%esp)
	movl 16(%esp),%edx
	shll %cl, %edx
	movl %edx,16(%esp)
	movl 16(%esp),%ecx
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
L.7:
	movl $1,%ecx
	movl 84(%esp),%edx
	addl %ecx,%edx
	movl %edx,84(%esp)
	movl $4,%ecx
	movl 84(%esp),%edx
	cmpl %ecx,%edx
	jl join_l17
join_l18:
	leal x,%ecx
	movl %ecx,36(%esp)
	movl $4,%ecx
	movl %eax,%edx
	shll %cl, %edx
	movl %edx,44(%esp)
	movl 44(%esp),%ecx
	movl 36(%esp),%edx
	addl %edx,%ecx
	movl %ecx,44(%esp)
	leal y,%ecx
	movl %ecx,92(%esp)
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	movl %edx,40(%esp)
	movl 40(%esp),%ecx
	movl 92(%esp),%edx
	addl %edx,%ecx
	movl %ecx,40(%esp)
	movl 44(%esp),%ecx
	movl 40(%esp),%edx
	movl %ecx,(%edx)
L.3:
	movl $1,%ecx
	addl %ecx,%eax
	movl $3,%ecx
	cmpl %ecx,%eax
	jl join_l15
join_l16:
	nop
	nop
	call f
join_l14:
	nop
	nop
	movl $0,%eax
	jmp L.10
L.10:
	movl $-48,%ecx
	leal 144(%esp), %edx
	movl %edx,48(%esp)
	movl 48(%esp),%edx
	addl %ecx,%edx
	movl %edx,48(%esp)
	movl $4,%ecx
	movl %eax,%edx
	shll %cl, %edx
	movl 48(%esp),%ecx
	addl %ecx,%edx
	movl %edx,88(%esp)
	movl 88(%esp),%ecx
	movl %ecx,8(%esp)
	leal y,%ecx
	movl %ecx,56(%esp)
	movl $2,%ecx
	movl %eax,52(%esp)
	movl 52(%esp),%edx
	shll %cl, %edx
	movl %edx,52(%esp)
	movl 52(%esp),%ecx
	movl 56(%esp),%edx
	addl %edx,%ecx
	movl 88(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	movl %ecx,84(%esp)
	jmp L.14
L.14:
	movl $2,%ecx
	movl 84(%esp),%edx
	movl %edx,60(%esp)
	movl 60(%esp),%edx
	shll %cl, %edx
	movl %edx,60(%esp)
	movl 60(%esp),%ecx
	movl %ecx,12(%esp)
	leal x,%ecx
	movl %ecx,68(%esp)
	movl $4,%ecx
	movl %eax,64(%esp)
	movl 64(%esp),%edx
	shll %cl, %edx
	movl %edx,64(%esp)
	movl 64(%esp),%ecx
	movl 68(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,72(%esp)
	movl 72(%esp),%edx
	addl %ecx,%edx
	movl %edx,72(%esp)
	movl 12(%esp),%ecx
	movl 8(%esp),%edx
	addl %edx,%ecx
	movl 72(%esp),%edx
	movl (%edx),%edx
	movl %edx,76(%esp)
	movl 76(%esp),%edx
	movl %edx,(%ecx)
L.15:
	movl $1,%ecx
	movl 84(%esp),%edx
	addl %ecx,%edx
	movl %edx,84(%esp)
	movl $4,%ecx
	movl 84(%esp),%edx
	cmpl %ecx,%edx
	jl join_l11
L.11:
	movl $1,%ecx
	addl %ecx,%eax
	movl $3,%ecx
	cmpl %ecx,%eax
	jl join_l9
join_l10:
	nop
	movl $-48,%ecx
	leal 144(%esp), %eax
	addl %ecx,%eax
	movl $-144,%ecx
	leal 144(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal y,%eax
	movl $-140,%ecx
	leal 144(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call g
join_l8:
	nop
	nop
	nop
	movl $0,%eax
	leal 144(%esp), %ecx
	movl %ecx,80(%esp)
	movl $0,%ecx
	leal 144(%esp), %edx
	addl %ecx,%edx
	movl 80(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 144(%esp), %esp
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
	movl %ebx,8(%esp)
initialize_continuations_l27:
	movl $0,%ebx
	jmp L.29
L.29:
	movl $0,%eax
	movl %eax,12(%esp)
	jmp L.33
L.33:
	nop
	leal x,%edx
	movl $4,%ecx
	movl %ebx,%eax
	shll %cl, %eax
	movl %eax,16(%esp)
	movl 16(%esp),%eax
	addl %edx,%eax
	movl %eax,16(%esp)
	movl $2,%ecx
	movl 12(%esp),%eax
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
L.34:
	movl $1,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
	movl $4,%eax
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l44
L.30:
	movl $1,%eax
	addl %eax,%ebx
	movl $3,%eax
	cmpl %eax,%ebx
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
	movl $0,%ebx
	jmp L.39
L.39:
	movl $0,%eax
	movl %eax,12(%esp)
	jmp L.43
L.43:
	movl $2,%ecx
	nop
	leal y,%edx
	movl %ebx,%eax
	shll %cl, %eax
	addl %edx,%eax
	movl (%eax),%eax
	movl 12(%esp),%edx
	shll %cl, %edx
	movl %edx,20(%esp)
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,20(%esp)
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
L.44:
	movl $1,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
	movl $4,%eax
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l35
L.40:
	movl $1,%eax
	addl %eax,%ebx
	movl $3,%eax
	cmpl %eax,%ebx
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
	movl %ebx,8(%esp)
initialize_continuations_l56:
	movl $0,%ebx
	jmp L.51
L.51:
	movl $0,%eax
	movl %eax,20(%esp)
	jmp L.55
L.55:
	nop
	movl $4,%ecx
	movl %ebx,%eax
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl $2,%ecx
	movl 20(%esp),%edx
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
L.56:
	movl $1,%ecx
	movl 20(%esp),%eax
	addl %ecx,%eax
	movl %eax,20(%esp)
	movl $4,%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l73
L.52:
	movl $1,%eax
	addl %eax,%ebx
	movl $3,%eax
	cmpl %eax,%ebx
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
	movl $0,%ebx
	jmp L.59
L.59:
	movl $0,%eax
	movl %eax,20(%esp)
	jmp L.63
L.63:
	movl $2,%ecx
	nop
	movl %ebx,%eax
	shll %cl, %eax
	movl 16(%esp),%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,28(%esp)
	movl 20(%esp),%eax
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
L.64:
	movl $1,%ecx
	movl 20(%esp),%eax
	addl %ecx,%eax
	movl %eax,20(%esp)
	movl $4,%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l64
L.60:
	movl $1,%eax
	addl %eax,%ebx
	movl $3,%eax
	cmpl %eax,%ebx
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
