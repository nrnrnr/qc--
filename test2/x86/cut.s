.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.data
nocut:
.byte 110
.byte 111
.byte 32
.byte 99
.byte 117
.byte 116
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
ret:
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 10
.byte 0
.text
main:
	leal -36(%esp), %esp
	movl $4,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal 36(%esp), %ecx
	leal 36(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,20(%esp)
	movl %ebp,16(%esp)
	movl %esi,12(%esp)
	movl %edi,8(%esp)
initialize_continuations_l10:
	leal k_C8,%edx
	movl $-8,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $-36,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl $-4,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl %eax,24(%esp)
	nop
	movl $-8,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	nop
	call f
join_l21:
	nop
	nop
	nop
	nop
	leal nocut,%edx
	movl $-36,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $-32,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call printf
join_l18:
	nop
	nop
	nop
	nop
	nop
	leal 36(%esp), %edx
	movl $0,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl 16(%esp),%ebp
	movl 20(%esp),%ebx
	movl 12(%esp),%esi
	movl 8(%esp),%edi
	leal 36(%esp), %esp
	ret
k_C8:
	nop
	movl %eax,24(%esp)
	nop
	nop
	movl $3,%ecx
	leal nocut,%eax
	addl %ecx,%eax
	movl $-36,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-32,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call printf
join_l14:
	nop
	nop
	nop
	nop
	nop
	leal 36(%esp), %edx
	movl $0,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl 16(%esp),%ebp
	movl 20(%esp),%ebx
	movl 12(%esp),%esi
	movl 8(%esp),%edi
	leal 36(%esp), %esp
	ret
.text
f:
	leal -8(%esp), %esp
	nop
	leal 8(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
initialize_continuations_l28:
	nop
	movl $-8,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call g
join_l35:
	nop
	nop
	nop
	nop
	leal ret,%eax
	movl $-8,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l32:
	nop
	nop
	nop
	nop
	nop
	movl $0,%ecx
	leal 8(%esp), %eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 8(%esp), %esp
	ret
.text
g:
	leal -4(%esp), %esp
	movl $4,%ecx
	leal 4(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal 4(%esp), %ecx
	leal 4(%esp), %edx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
initialize_continuations_l43:
	nop
	nop
	call h
join_l50:
	nop
	nop
	nop
	nop
	leal ret,%eax
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l47:
	nop
	nop
	nop
	nop
	nop
	leal 4(%esp), %eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 4(%esp), %esp
	ret
.text
h:
	nop
	movl %eax,%ecx
	nop
	movl %esp,%eax
	movl (%eax),%eax
initialize_continuations_l58:
	movl $99,%eax
	movl $4,%ebx
	movl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%edx
	movl (%ecx),%ecx
	movl %edx, %esp; jmp *%ecx
