.globl main
.globl queens
.globl print
.globl x
.globl rows
.globl down
.globl up
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -40(%esp), %esp
	nop
	nop
	leal 40(%esp), %ecx
	leal 40(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l3:
	movl $0,%eax
	jmp L.2
L.2:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	movl %edx,28(%esp)
	movl $1,%ecx
	movl %ecx,32(%esp)
	leal down,%ecx
	movl %ecx,4(%esp)
	movl 28(%esp),%ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	movl 4(%esp),%edx
	addl %edx,%ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal up,%ecx
	movl %ecx,12(%esp)
	movl 28(%esp),%ecx
	movl 12(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
L.3:
	movl $1,%ecx
	addl %ecx,%eax
	movl $15,%ecx
	cmpl %ecx,%eax
	jl join_l11
join_l12:
	movl $0,%eax
	jmp L.6
L.6:
	movl $1,%ecx
	movl %ecx,20(%esp)
	leal rows,%ecx
	movl %ecx,36(%esp)
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	movl %edx,16(%esp)
	movl 16(%esp),%ecx
	movl 36(%esp),%edx
	addl %edx,%ecx
	movl %ecx,16(%esp)
	movl 20(%esp),%ecx
	movl 16(%esp),%edx
	movl %ecx,(%edx)
L.7:
	movl $1,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	cmpl %ecx,%eax
	jl join_l9
join_l10:
	nop
	movl $0,%eax
	movl $-40,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call queens
join_l8:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 40(%esp), %ecx
	movl %ecx,24(%esp)
	movl $0,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 40(%esp), %esp
	ret
join_l9:
	jmp L.6
join_l11:
	jmp L.2
queens:
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	nop
	leal 72(%esp), %ecx
	leal 72(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,4(%esp)
initialize_continuations_l21:
	movl $0,%ebx
	jmp L.14
L.14:
	movl $2,%ecx
	movl $0,%eax
	movl %eax,60(%esp)
	leal rows,%eax
	movl %eax,12(%esp)
	movl %ebx,%eax
	shll %cl, %eax
	movl 12(%esp),%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl 60(%esp),%edx
	cmpl %edx,%eax
	je join_l38
join_l39:
	movl $28,%eax
	movl %eax,52(%esp)
	leal up,%eax
	movl %eax,56(%esp)
	movl 56(%esp),%eax
	movl 52(%esp),%edx
	addl %edx,%eax
	movl %eax,56(%esp)
	movl %ebx,%eax
	movl 8(%esp),%edx
	subl %edx,%eax
	shll %cl, %eax
	movl 56(%esp),%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl 60(%esp),%edx
	cmpl %edx,%eax
	je join_l36
join_l37:
	leal down,%eax
	movl %eax,48(%esp)
	movl %ebx,%eax
	movl 8(%esp),%edx
	addl %edx,%eax
	shll %cl, %eax
	movl 48(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 60(%esp),%ecx
	cmpl %ecx,%eax
	je join_l34
join_l35:
	movl $2,%eax
	movl %eax,68(%esp)
	movl $0,%eax
	leal down,%ecx
	movl %ecx,44(%esp)
	movl %ebx,%edx
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	shll %cl, %edx
	movl 44(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $28,%ecx
	movl %ecx,36(%esp)
	leal up,%ecx
	movl %ecx,40(%esp)
	movl 40(%esp),%ecx
	movl 36(%esp),%edx
	addl %edx,%ecx
	movl %ecx,40(%esp)
	movl %ebx,%edx
	movl 8(%esp),%ecx
	subl %ecx,%edx
	movl 68(%esp),%ecx
	shll %cl, %edx
	movl 40(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal rows,%ecx
	movl %ecx,32(%esp)
	movl %ebx,%edx
	movl 68(%esp),%ecx
	shll %cl, %edx
	movl 32(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal x,%eax
	movl $2,%ecx
	movl 8(%esp),%edx
	shll %cl, %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $7,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	jne join_l32
join_l33:
	nop
	nop
	nop
	call print
join_l31:
	nop
	nop
	nop
	jmp L.23
join_l32:
	jmp L.22
L.22:
	nop
	movl $1,%ecx
	movl 8(%esp),%eax
	addl %ecx,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call queens
join_l28:
	nop
	nop
	nop
	jmp L.23
L.23:
	movl $2,%eax
	movl %eax,64(%esp)
	movl $1,%eax
	leal down,%ecx
	movl %ecx,28(%esp)
	movl %ebx,%edx
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl 64(%esp),%ecx
	shll %cl, %edx
	movl 28(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $28,%ecx
	movl %ecx,20(%esp)
	leal up,%ecx
	movl %ecx,24(%esp)
	movl 24(%esp),%ecx
	movl 20(%esp),%edx
	addl %edx,%ecx
	movl %ecx,24(%esp)
	movl %ebx,%edx
	movl 8(%esp),%ecx
	subl %ecx,%edx
	movl 64(%esp),%ecx
	shll %cl, %edx
	movl 24(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal rows,%ecx
	movl %ecx,16(%esp)
	movl %ebx,%edx
	movl 64(%esp),%ecx
	shll %cl, %edx
	movl 16(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	jmp L.18
join_l34:
	jmp L.18
join_l36:
	jmp L.18
join_l38:
	jmp L.18
L.18:
L.15:
	movl $1,%eax
	addl %eax,%ebx
	movl $8,%eax
	cmpl %eax,%ebx
	jl join_l24
join_l25:
	nop
	movl $0,%eax
	leal 72(%esp), %ecx
	movl $0,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 4(%esp),%ebx
	leal 72(%esp), %esp
	ret
join_l24:
	jmp L.14
print:
	leal -16(%esp), %esp
	nop
	nop
	leal 16(%esp), %ecx
	leal 16(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,8(%esp)
initialize_continuations_l48:
	movl $0,%ebx
	jmp L.39
L.39:
	nop
	movl $49,%eax
	movl %eax,12(%esp)
	leal x,%edx
	movl $2,%ecx
	movl %ebx,%eax
	shll %cl, %eax
	addl %edx,%eax
	movl (%eax),%eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl $-12,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i_43,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l58:
	nop
	nop
	nop
L.40:
	movl $1,%eax
	addl %eax,%ebx
	movl $8,%eax
	cmpl %eax,%ebx
	jl join_l54
join_l55:
	nop
	leal i_44,%edx
	movl $-16,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call printf
join_l53:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 8(%esp),%ebx
	leal 16(%esp), %esp
	ret
join_l54:
	jmp L.39
.section .bss
.align 4
x:
.skip 32, 0
.align 4
rows:
.skip 32, 0
.align 4
down:
.skip 60, 0
.align 4
up:
.skip 60, 0
.section .data
i_44:
.byte 10
.byte 0
i_43:
.byte 37
.byte 99
.byte 32
.byte 0
