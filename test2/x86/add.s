.globl main
.globl Cmm_globalsig_aQOYZWMPACZAJaMABGMOZeCCPY
.data
/* memory for global registers */
Cmm_globalsig_aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm_global_area:
.data
hello:
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
bye:
.byte 98
.byte 121
.byte 101
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
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	nop
	leal 4(%esp), %ecx
	movl (%ecx),%edx
	leal 4(%esp), %ecx
	movl %edx,(%ecx)
initialize_continuations_l3:
	movl $1,%ecx
	cmpl %ecx,%eax
	jg join_l9
join_l10:
	leal hello,%eax
	jmp join_l8
join_l9:
	leal bye,%eax
	jmp join_l8
join_l8:
	nop
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
