.globl main
.globl my_data
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.data
my_data:
.byte 104
.byte 101
.byte 108
.byte 108
.byte 111
.byte 44
.byte 32
.byte 119
.byte 111
.byte 114
.byte 108
.byte 100
.byte 33
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
	leal my_data,%eax
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
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
