.globl in
.globl main
.globl putd
.globl sort
.globl quick
.globl partition
.globl exchange
.globl xx
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .data
.align 4
in:
.long 10
.long 32
.long 0xffffffff
.long 0x237
.long 3
.long 18
.long 1
.long 0xffffffcd
.long 0x315
.long 0
.section .text
main:
	leal -16(%esp), %esp
	nop
	nop
	leal 16(%esp), %ecx
	leal 16(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,8(%esp)
initialize_continuations_l3:
	nop
	leal in,%edx
	movl $-16,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $10,%edx
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call sort
join_l16:
	nop
	nop
	nop
	movl $0,%ebx
	jmp L.5
L.5:
	movl $10,%eax
	cmpl %eax,%ebx
	jb join_l6
join_l7:
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
join_l6:
	jmp L.2
L.2:
	nop
	leal in,%edx
	movl $2,%ecx
	movl %ebx,%eax
	shll %cl, %eax
	movl %eax,12(%esp)
	movl 12(%esp),%eax
	addl %edx,%eax
	movl %eax,12(%esp)
	movl $-16,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	nop
	call putd
join_l13:
	nop
	nop
	nop
	nop
	movl $10,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call putchar
join_l10:
	nop
	nop
	nop
L.3:
	movl $1,%eax
	addl %eax,%ebx
	jmp L.5
putd:
	leal -12(%esp), %esp
	movl $4,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	nop
	leal 12(%esp), %ecx
	leal 12(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,4(%esp)
initialize_continuations_l25:
	movl $0,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	jge join_l39
join_l40:
	nop
	movl $45,%edx
	movl $-12,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call putchar
join_l38:
	nop
	nop
	nop
	movl 8(%esp),%eax
	negl %eax
	movl %eax,8(%esp)
	jmp L.8
join_l39:
	jmp L.8
L.8:
	movl $10,%ecx
	movl 8(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l34
join_l35:
	nop
	movl $10,%ecx
	movl 8(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl $-12,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call putd
join_l33:
	nop
	nop
	nop
	jmp L.10
join_l34:
	jmp L.10
L.10:
	nop
	movl $48,%ecx
	movl $10,%ebx
	movl 8(%esp),%edx
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ebx, %eax
	addl %ecx,%edx
	movl $-12,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call putchar
join_l30:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 4(%esp),%ebx
	leal 12(%esp), %esp
	ret
sort:
	leal -48(%esp), %esp
	movl $4,%ecx
	leal 48(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,40(%esp)
	nop
	leal 48(%esp), %ecx
	movl %ecx,12(%esp)
	leal 48(%esp), %ecx
	movl %ecx,32(%esp)
	movl 12(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl 32(%esp),%edx
	movl %ecx,(%edx)
initialize_continuations_l49:
	leal xx,%ecx
	movl %eax,(%ecx)
	movl $1,%ecx
	movl 40(%esp),%edx
	subl %ecx,%edx
	movl %edx,44(%esp)
	movl 44(%esp),%ecx
	movl %ecx,40(%esp)
	nop
	movl $-48,%ecx
	movl %ecx,24(%esp)
	leal 48(%esp), %ecx
	movl %ecx,36(%esp)
	movl 24(%esp),%ecx
	movl 36(%esp),%edx
	addl %ecx,%edx
	movl %edx,36(%esp)
	movl 36(%esp),%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl %eax,20(%esp)
	movl $-44,%ecx
	leal 48(%esp), %eax
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl $-40,%ecx
	leal 48(%esp), %eax
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call quick
join_l54:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 48(%esp), %ecx
	movl %ecx,28(%esp)
	movl $0,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 48(%esp), %esp
	ret
quick:
	leal -28(%esp), %esp
	movl $4,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	movl $8,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	movl $12,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	nop
	leal 28(%esp), %ecx
	leal 28(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,12(%esp)
initialize_continuations_l63:
	movl 24(%esp),%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l76
join_l77:
	nop
	movl $0,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	leal 28(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 12(%esp),%ebx
	leal 28(%esp), %esp
	ret
join_l76:
	jmp L.16
L.16:
	nop
	movl $-28,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $-24,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl $-20,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call partition
join_l74:
	nop
	movl %eax,%ebx
	nop
	nop
	movl $-28,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $-24,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%ecx
	movl %ebx,%eax
	subl %ecx,%eax
	movl $-20,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call quick
join_l71:
	nop
	nop
	nop
	nop
	movl $-28,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	addl %eax,%ebx
	movl $-24,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	movl $-20,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call quick
join_l68:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	leal 28(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 12(%esp),%ebx
	leal 28(%esp), %esp
	ret
partition:
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
	movl $12,%ecx
	leal 32(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	nop
	leal 32(%esp), %ecx
	leal 32(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,8(%esp)
initialize_continuations_l86:
	movl $1,%ecx
	movl 20(%esp),%eax
	addl %ecx,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %eax,24(%esp)
	movl $2,%ecx
	movl 24(%esp),%eax
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ebx
	jmp L.22
L.22:
	movl 20(%esp),%eax
	movl 16(%esp),%ecx
	cmpl %eax,%ecx
	jl join_l92
join_l93:
	movl $2,%ecx
	nop
	movl 24(%esp),%eax
	shll %cl, %eax
	movl 12(%esp),%edx
	addl %edx,%eax
	movl $-32,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl 20(%esp),%eax
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl $-28,%edx
	leal 32(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call exchange
join_l91:
	nop
	nop
	nop
	nop
	movl 20(%esp),%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 8(%esp),%ebx
	leal 32(%esp), %esp
	ret
join_l92:
	jmp L.21
L.21:
	movl $1,%ecx
	movl 16(%esp),%eax
	addl %ecx,%eax
	movl %eax,16(%esp)
	jmp L.25
L.25:
	movl $2,%ecx
	movl 16(%esp),%eax
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %ebx,%eax
	jl join_l101
join_l102:
	movl $1,%ecx
	movl 20(%esp),%eax
	subl %ecx,%eax
	movl %eax,20(%esp)
	jmp L.28
L.28:
	movl $2,%ecx
	movl 20(%esp),%eax
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %ebx,%eax
	jg join_l99
join_l100:
	movl 20(%esp),%eax
	movl 16(%esp),%ecx
	cmpl %eax,%ecx
	jge join_l97
join_l98:
	movl $2,%ecx
	nop
	movl 16(%esp),%eax
	shll %cl, %eax
	movl %eax,28(%esp)
	movl 28(%esp),%eax
	movl 12(%esp),%edx
	addl %edx,%eax
	movl %eax,28(%esp)
	movl $-32,%eax
	leal 32(%esp), %edx
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	movl 20(%esp),%eax
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl $-28,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call exchange
join_l96:
	nop
	nop
	nop
	jmp L.30
join_l97:
	jmp L.30
L.30:
	jmp L.22
join_l99:
	jmp L.27
L.27:
	movl $1,%ecx
	movl 20(%esp),%eax
	subl %ecx,%eax
	movl %eax,20(%esp)
	jmp L.28
join_l101:
	jmp L.24
L.24:
	movl $1,%ecx
	movl 16(%esp),%eax
	addl %ecx,%eax
	movl %eax,16(%esp)
	jmp L.25
exchange:
	leal -36(%esp), %esp
	movl $4,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	movl $8,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	nop
	leal 36(%esp), %ecx
	leal 36(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,12(%esp)
initialize_continuations_l111:
	leal xx,%eax
	movl (%eax),%ecx
	movl $4,%ebx
	nop
	leal i_39,%eax
	movl %eax,28(%esp)
	movl $-36,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	movl 16(%esp),%eax
	subl %ecx,%eax
	movl %eax,24(%esp)
	movl 24(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ebx, %eax
	movl %eax,24(%esp)
	movl $-32,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	movl 24(%esp),%eax
	movl %eax,(%edx)
	movl 20(%esp),%eax
	subl %ecx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ebx, %eax
	movl $-28,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call printf
join_l116:
	nop
	nop
	nop
	movl $-4,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl 20(%esp),%eax
	movl (%eax),%eax
	movl 16(%esp),%ecx
	movl %eax,(%ecx)
	movl $-4,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 20(%esp),%ecx
	movl %eax,(%ecx)
	nop
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 12(%esp),%ebx
	leal 36(%esp), %esp
	ret
.section .bss
.align 4
xx:
.skip 4, 0
.section .data
i_39:
.byte 101
.byte 120
.byte 99
.byte 104
.byte 97
.byte 110
.byte 103
.byte 101
.byte 40
.byte 37
.byte 100
.byte 44
.byte 37
.byte 100
.byte 41
.byte 10
.byte 0
