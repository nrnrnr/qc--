.globl x
.globl i
.globl y
.globl main
.globl f1
.globl f2
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
.byte 2
.skip 3, 0
.byte 3
.byte 64
.skip 2, 0
.byte 80
.byte 6
.skip 2, 0
.align 4
i:
.long 16
.align 4
y:
.byte 35
.skip 3, 0
.byte 9
.byte 0
.byte 0
.byte 0
.section .text
main:
	leal -112(%esp), %esp
	nop
	nop
	leal 112(%esp), %ecx
	leal 112(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l3:
	movl $20,%ecx
	nop
	leal i_4,%eax
	movl %eax,44(%esp)
	movl $-112,%eax
	leal 112(%esp), %edx
	addl %eax,%edx
	movl 44(%esp),%eax
	movl %eax,(%edx)
	leal x,%eax
	movl %eax,40(%esp)
	movl $-108,%eax
	leal 112(%esp), %edx
	addl %eax,%edx
	movl 40(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	movl $4,%eax
	leal x,%edx
	addl %eax,%edx
	movsbl (%edx),%eax
	movl %eax,36(%esp)
	movl $-104,%eax
	leal 112(%esp), %edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	leal x,%edx
	addl %eax,%edx
	movl (%edx),%eax
	shll %cl, %eax
	sarl %cl, %eax
	movl $-100,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $28,%eax
	movl %eax,32(%esp)
	movl $16,%ecx
	movl $8,%eax
	leal x,%edx
	addl %eax,%edx
	movl (%edx),%eax
	shll %cl, %eax
	movl 32(%esp),%ecx
	sarl %cl, %eax
	movl $-96,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $29,%eax
	movl %eax,28(%esp)
	movl $25,%ecx
	movl $12,%eax
	leal x,%edx
	addl %eax,%edx
	movl (%edx),%eax
	shll %cl, %eax
	movl 28(%esp),%ecx
	sarl %cl, %eax
	movl $-92,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $13,%ecx
	leal x,%eax
	addl %ecx,%eax
	movsbl (%eax),%eax
	movl $-88,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l20:
	nop
	nop
	nop
	leal y,%eax
	movl (%eax),%eax
	nop
	leal i_10,%ecx
	movl %ecx,52(%esp)
	movl $-112,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl %ecx,(%edx)
	movl $3,%ecx
	movl %eax,48(%esp)
	movl 48(%esp),%edx
	andl %ecx,%edx
	movl %edx,48(%esp)
	movl $-108,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl $15,%edx
	movl $2,%ecx
	shrl %cl, %eax
	movl %eax,108(%esp)
	movl 108(%esp),%eax
	andl %edx,%eax
	movl %eax,108(%esp)
	movl $-104,%ecx
	leal 112(%esp), %eax
	addl %ecx,%eax
	movl 108(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%ecx
	leal y,%eax
	addl %ecx,%eax
	movl $-100,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	call printf
join_l17:
	nop
	nop
	nop
	movl $8,%ecx
	leal x,%eax
	addl %ecx,%eax
	movl $28,%ecx
	movl $61440,%edx
	movl %edx,60(%esp)
	movl $12,%edx
	movl %edx,56(%esp)
	leal i,%edx
	movl (%edx),%edx
	shll %cl, %edx
	sarl %cl, %edx
	movl 56(%esp),%ecx
	shll %cl, %edx
	movl %edx,64(%esp)
	movl 64(%esp),%ecx
	movl 60(%esp),%edx
	andl %edx,%ecx
	movl %ecx,64(%esp)
	movl $-61441,%ecx
	movl (%eax),%edx
	andl %ecx,%edx
	movl 64(%esp),%ecx
	orl %ecx,%edx
	movl %edx,(%eax)
	movl $12,%ecx
	leal x,%eax
	addl %ecx,%eax
	movl $-113,%ecx
	movl (%eax),%edx
	andl %ecx,%edx
	movl %edx,(%eax)
	movl $20,%ecx
	nop
	leal i_4,%eax
	movl %eax,84(%esp)
	movl $-112,%eax
	leal 112(%esp), %edx
	addl %eax,%edx
	movl 84(%esp),%eax
	movl %eax,(%edx)
	leal x,%eax
	movl %eax,80(%esp)
	movl $-108,%eax
	leal 112(%esp), %edx
	addl %eax,%edx
	movl 80(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	movl $4,%eax
	leal x,%edx
	addl %eax,%edx
	movsbl (%edx),%eax
	movl %eax,76(%esp)
	movl $-104,%eax
	leal 112(%esp), %edx
	addl %eax,%edx
	movl 76(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	leal x,%edx
	addl %eax,%edx
	movl (%edx),%eax
	shll %cl, %eax
	sarl %cl, %eax
	movl $-100,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $28,%eax
	movl %eax,72(%esp)
	movl $16,%ecx
	movl $8,%eax
	leal x,%edx
	addl %eax,%edx
	movl (%edx),%eax
	shll %cl, %eax
	movl 72(%esp),%ecx
	sarl %cl, %eax
	movl $-96,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $29,%eax
	movl %eax,68(%esp)
	movl $25,%ecx
	movl $12,%eax
	leal x,%edx
	addl %eax,%edx
	movl (%edx),%eax
	shll %cl, %eax
	movl 68(%esp),%ecx
	sarl %cl, %eax
	movl $-92,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $13,%ecx
	leal x,%eax
	addl %ecx,%eax
	movsbl (%eax),%eax
	movl $-88,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l14:
	nop
	nop
	nop
	leal y,%eax
	movl $2,%ecx
	movl %ecx,88(%esp)
	movl $-4,%ecx
	movl (%eax),%edx
	andl %ecx,%edx
	movl 88(%esp),%ecx
	orl %ecx,%edx
	movl %edx,(%eax)
	leal i,%eax
	movl $4,%ecx
	leal y,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal y,%eax
	movl (%eax),%eax
	nop
	leal i_10,%ecx
	movl %ecx,96(%esp)
	movl $-112,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl 96(%esp),%ecx
	movl %ecx,(%edx)
	movl $3,%ecx
	movl %eax,92(%esp)
	movl 92(%esp),%edx
	andl %ecx,%edx
	movl %edx,92(%esp)
	movl $-108,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl 92(%esp),%ecx
	movl %ecx,(%edx)
	movl $15,%edx
	movl $2,%ecx
	shrl %cl, %eax
	movl %eax,104(%esp)
	movl 104(%esp),%eax
	andl %edx,%eax
	movl %eax,104(%esp)
	movl $-104,%ecx
	leal 112(%esp), %eax
	addl %ecx,%eax
	movl 104(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%ecx
	leal y,%eax
	addl %ecx,%eax
	movl $-100,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	call printf
join_l11:
	nop
	nop
	nop
	nop
	leal x,%eax
	movl $-112,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call f2
join_l8:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 112(%esp), %ecx
	movl %ecx,100(%esp)
	movl $0,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl 100(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 112(%esp), %esp
	ret
f1:
	leal -32(%esp), %esp
	movl $4,%ecx
	leal 32(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	nop
	leal 32(%esp), %ecx
	leal 32(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l29:
	movl $-61,%ecx
	movl 12(%esp),%eax
	movl (%eax),%eax
	andl %ecx,%eax
	movl 12(%esp),%ecx
	movl %eax,(%ecx)
	movl $3,%eax
	movl $0,%ecx
	andl %eax,%ecx
	andl %eax,%ecx
	movl $-4,%eax
	movl 12(%esp),%edx
	movl (%edx),%edx
	andl %eax,%edx
	orl %ecx,%edx
	movl 12(%esp),%eax
	movl %edx,(%eax)
	movl $60,%ecx
	movl 12(%esp),%eax
	movl (%eax),%eax
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l38
join_l39:
	nop
	leal i_32,%eax
	movl $-32,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l37:
	nop
	nop
	nop
	jmp L.30
join_l38:
	jmp L.30
L.30:
	movl $3,%ecx
	movl 12(%esp),%eax
	movl (%eax),%eax
	orl %ecx,%eax
	movl 12(%esp),%ecx
	movl %eax,(%ecx)
	movl $60,%ecx
	movl 12(%esp),%eax
	movl (%eax),%eax
	orl %ecx,%eax
	movl 12(%esp),%ecx
	movl %eax,(%ecx)
	movl 12(%esp),%eax
	movl (%eax),%eax
	nop
	leal i_33,%ecx
	movl %ecx,20(%esp)
	movl $-32,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl $3,%ecx
	movl %eax,16(%esp)
	movl 16(%esp),%edx
	andl %ecx,%edx
	movl %edx,16(%esp)
	movl $-28,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $15,%edx
	movl $2,%ecx
	shrl %cl, %eax
	movl %eax,28(%esp)
	movl 28(%esp),%eax
	andl %edx,%eax
	movl %eax,28(%esp)
	movl $-24,%ecx
	leal 32(%esp), %eax
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call printf
join_l34:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 32(%esp), %ecx
	movl %ecx,24(%esp)
	movl $0,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 32(%esp), %esp
	ret
f2:
	leal -16(%esp), %esp
	movl $4,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	nop
	leal 16(%esp), %ecx
	leal 16(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l48:
	leal i,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l54
join_l55:
	movl $1,%eax
	jmp L.43
join_l54:
	jmp L.42
L.42:
	movl $0,%eax
	jmp L.43
L.43:
	movl $3,%ecx
	andl %ecx,%eax
	andl %ecx,%eax
	movl $-4,%ecx
	movl 4(%esp),%edx
	movl (%edx),%edx
	andl %ecx,%edx
	orl %eax,%edx
	movl 4(%esp),%eax
	movl %edx,(%eax)
	nop
	movl $-16,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call f1
join_l53:
	nop
	nop
	nop
	movl $60,%eax
	movl %eax,8(%esp)
	movl $2,%ecx
	movl $15,%edx
	movl $0,%eax
	andl %edx,%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	andl %ecx,%eax
	movl $-61,%ecx
	movl 4(%esp),%edx
	movl (%edx),%edx
	andl %ecx,%edx
	orl %eax,%edx
	movl 4(%esp),%eax
	movl %edx,(%eax)
	nop
	movl $0,%eax
	leal 16(%esp), %ecx
	movl %ecx,12(%esp)
	movl $0,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	ret
.section .data
i_33:
.byte 112
.byte 45
.byte 62
.byte 97
.byte 32
.byte 61
.byte 32
.byte 48
.byte 120
.byte 37
.byte 120
.byte 44
.byte 32
.byte 112
.byte 45
.byte 62
.byte 98
.byte 32
.byte 61
.byte 32
.byte 48
.byte 120
.byte 37
.byte 120
.byte 10
.byte 0
i_32:
.byte 112
.byte 45
.byte 62
.byte 98
.byte 32
.byte 33
.byte 61
.byte 32
.byte 48
.byte 33
.byte 10
.byte 0
i_10:
.byte 121
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
i_4:
.byte 120
.byte 32
.byte 61
.byte 32
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
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
