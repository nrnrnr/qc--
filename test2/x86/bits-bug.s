.globl main
.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.data
.align 8
success:
.byte 115
.byte 117
.byte 99
.byte 99
.byte 101
.byte 115
.byte 115
.byte 10
.byte 0
.align 8
failed:
.byte 102
.byte 97
.byte 105
.byte 108
.byte 101
.byte 100
.byte 10
.byte 0
.text
main:
	leal -4(%esp), %esp
	movl $4,%ecx
	leal 4(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 4(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal 4(%esp), %eax
	movl (%eax),%ecx
	leal 4(%esp), %eax
	movl %ecx,(%eax)
initialize_continuations_l3:
	nop
	movl $-1420500317,%eax
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call callee
join_l7:
	nop
	nop
	nop
	nop
	nop
	leal 4(%esp), %eax
	movl (%eax),%eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 4(%esp), %esp
	ret
.text
callee:
	leal -4(%esp), %esp
	movl $4,%ecx
	leal 4(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal 4(%esp), %ecx
	movl (%ecx),%edx
	leal 4(%esp), %ecx
	movl %edx,(%ecx)
initialize_continuations_l15:
	movl $-1420500317,%ecx
	cmpl %ecx,%eax
	jne join_l24
join_l25:
	nop
	leal success,%eax
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l19:
	nop
	nop
	nop
	nop
	nop
	leal 4(%esp), %eax
	movl (%eax),%eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 4(%esp), %esp
	ret
join_l24:
	nop
	leal failed,%eax
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l23:
	nop
	nop
	nop
	nop
	nop
	leal 4(%esp), %eax
	movl (%eax),%eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 4(%esp), %esp
	ret
