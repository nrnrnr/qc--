.globl words
.globl wordlist
.globl x
.globl y
.globl main
.globl f
.globl g
.globl h
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .data
.align 4
words:
.long 1
.long 2
.long 3
.byte 105
.byte 102
.byte 0
.skip 3, 0
.skip 2, 0
.long 4
.long 5
.skip 4, 0
.byte 102
.byte 111
.byte 114
.skip 3, 0
.skip 2, 0
.long 6
.long 7
.long 8
.byte 101
.byte 108
.byte 115
.byte 101
.byte 0
.skip 1, 0
.skip 2, 0
.long 9
.long 10
.long 11
.byte 119
.byte 104
.byte 105
.byte 108
.byte 101
.skip 1, 0
.skip 2, 0
.long 0
.skip 8, 0
.skip 8, 0
.align 4
wordlist:
.long words
.align 4
x:
.long 1
.long 2
.long 3
.long 4
.long 0
.long 5
.long 6
.skip 12, 0
.long 7
.skip 16, 0
.align 4
y:
.long x
.long x + 0x14
.long x + 0x28
.long 0
.section .text
main:
	leal -20(%esp), %esp
	nop
	movl %ebx,8(%esp)
initialize_continuations_l3:
	movl $0,%ebx
	jmp L.8
L.8:
	leal y,%edx
	movl $2,%ecx
	movl %ebx,%eax
	shll %cl, %eax
	addl %edx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l12
join_l13:
	nop
	nop
	call f
join_l11:
	nop
	nop
	nop
	leal wordlist,%edx
	movl $-20,%ecx
	leal 20(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	nop
	call g
join_l8:
	nop
	nop
	nop
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 8(%esp),%ebx
	leal 20(%esp), %esp
	ret
join_l12:
	jmp L.5
L.5:
	movl $0,%eax
	movl %eax,12(%esp)
	jmp L.12
L.12:
	movl $2,%ecx
	leal y,%edx
	movl %ebx,%eax
	shll %cl, %eax
	addl %edx,%eax
	movl (%eax),%eax
	movl 12(%esp),%edx
	shll %cl, %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l17
join_l18:
	nop
	leal i_14,%eax
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l16:
	nop
	nop
L.6:
	movl $1,%eax
	addl %eax,%ebx
	jmp L.8
join_l17:
	jmp L.9
L.9:
	movl $2,%ecx
	nop
	leal y,%edx
	movl %ebx,%eax
	shll %cl, %eax
	addl %edx,%eax
	movl (%eax),%eax
	movl 12(%esp),%edx
	shll %cl, %edx
	movl %edx,16(%esp)
	movl 16(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,16(%esp)
	movl $-16,%ecx
	leal 20(%esp), %eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal i_13,%eax
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l21:
	nop
	nop
L.10:
	movl $1,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
	jmp L.12
.section .data
.align 4
L.20:
.long i_21
.long i_22
.long i_23
.long i_24
.long 0
.section .text
f:
	leal -12(%esp), %esp
	nop
	movl %ebx,8(%esp)
initialize_continuations_l30:
	leal L.20,%ebx
	jmp L.28
L.28:
	movl (%ebx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l33
join_l34:
	nop
	movl $0,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
join_l33:
	jmp L.25
L.25:
	nop
	movl $-8,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl (%ebx),%ecx
	movl %ecx,(%eax)
	leal i_29,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l37:
	nop
	nop
L.26:
	movl $4,%eax
	addl %eax,%ebx
	jmp L.28
g:
	leal -16(%esp), %esp
	movl $4,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	nop
	movl %ebx,8(%esp)
initialize_continuations_l46:
	jmp L.35
L.35:
	movl 12(%esp),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l52
join_l53:
	nop
	nop
	call h
join_l51:
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
join_l52:
	jmp L.32
L.32:
	movl $0,%ebx
	jmp L.39
L.39:
	movl $3,%eax
	cmpl %eax,%ebx
	jb join_l57
join_l58:
	nop
	leal i_29,%edx
	movl $-16,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $12,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl $-12,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call printf
join_l56:
	nop
	nop
L.33:
	movl $20,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
	jmp L.35
join_l57:
	jmp L.36
L.36:
	nop
	movl $2,%ecx
	movl %ebx,%eax
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl $-12,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal i_40,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l61:
	nop
	nop
L.37:
	movl $1,%eax
	addl %eax,%ebx
	jmp L.39
h:
	leal -120(%esp), %esp
	nop
	movl %ebx,20(%esp)
initialize_continuations_l70:
	movl $0,%ebx
	jmp L.46
L.46:
	movl $5,%eax
	cmpl %eax,%ebx
	jb join_l73
join_l74:
	nop
	movl $0,%eax
	leal 120(%esp), %ecx
	movl $0,%edx
	leal 120(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 20(%esp),%ebx
	leal 120(%esp), %esp
	ret
join_l73:
	jmp L.43
L.43:
	movl $20,%eax
	imull %ebx,%eax
	nop
	leal i_47,%ecx
	movl %ecx,112(%esp)
	leal words,%ecx
	movl %eax,108(%esp)
	movl 108(%esp),%edx
	addl %ecx,%edx
	movl %edx,108(%esp)
	movl 108(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,116(%esp)
	movl $4,%ecx
	movl %ecx,96(%esp)
	leal words,%ecx
	movl %ecx,92(%esp)
	movl 92(%esp),%ecx
	movl %ecx,100(%esp)
	movl 100(%esp),%ecx
	movl 96(%esp),%edx
	addl %edx,%ecx
	movl %ecx,100(%esp)
	movl %eax,104(%esp)
	movl 104(%esp),%ecx
	movl 100(%esp),%edx
	addl %edx,%ecx
	movl %ecx,104(%esp)
	movl 104(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,88(%esp)
	movl 88(%esp),%ecx
	movl %ecx,28(%esp)
	movl $8,%ecx
	movl %ecx,72(%esp)
	leal words,%ecx
	movl %ecx,68(%esp)
	movl 68(%esp),%ecx
	movl %ecx,76(%esp)
	movl 76(%esp),%ecx
	movl 72(%esp),%edx
	addl %edx,%ecx
	movl %ecx,76(%esp)
	movl %eax,80(%esp)
	movl 80(%esp),%ecx
	movl 76(%esp),%edx
	addl %edx,%ecx
	movl %ecx,80(%esp)
	movl $-108,%ecx
	movl %ecx,60(%esp)
	leal 120(%esp), %ecx
	movl %ecx,56(%esp)
	movl 56(%esp),%ecx
	movl %ecx,64(%esp)
	movl 64(%esp),%ecx
	movl 60(%esp),%edx
	addl %edx,%ecx
	movl %ecx,64(%esp)
	movl 80(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,84(%esp)
	movl 84(%esp),%ecx
	movl 64(%esp),%edx
	movl %ecx,(%edx)
	movl $12,%ecx
	movl %ecx,44(%esp)
	leal words,%ecx
	movl %ecx,40(%esp)
	movl 40(%esp),%ecx
	movl %ecx,48(%esp)
	movl 48(%esp),%ecx
	movl 44(%esp),%edx
	addl %edx,%ecx
	movl %ecx,48(%esp)
	movl %eax,52(%esp)
	movl 52(%esp),%eax
	movl 48(%esp),%ecx
	addl %ecx,%eax
	movl %eax,52(%esp)
	movl $-104,%eax
	movl %eax,36(%esp)
	leal 120(%esp), %eax
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl $-112,%eax
	movl %eax,32(%esp)
	leal 120(%esp), %eax
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	movl $-116,%eax
	movl %eax,24(%esp)
	leal 120(%esp), %eax
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 116(%esp),%ecx
	movl %ecx,(%eax)
	movl $-120,%ecx
	leal 120(%esp), %eax
	addl %ecx,%eax
	movl 112(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call printf
join_l77:
	nop
	nop
L.44:
	movl $1,%eax
	addl %eax,%ebx
	jmp L.46
.section .data
i_47:
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
.byte 115
.byte 10
.byte 0
i_40:
.byte 37
.byte 100
.byte 32
.byte 0
i_29:
.byte 37
.byte 115
.byte 10
.byte 0
i_24:
.byte 119
.byte 104
.byte 105
.byte 108
.byte 101
.byte 0
i_23:
.byte 101
.byte 108
.byte 115
.byte 101
.byte 0
i_22:
.byte 102
.byte 111
.byte 114
.byte 0
i_21:
.byte 105
.byte 102
.byte 0
i_14:
.byte 10
.byte 0
i_13:
.byte 32
.byte 37
.byte 100
.byte 0
