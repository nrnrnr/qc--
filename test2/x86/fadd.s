.globl main
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.data
.align 4
x:
.long 0x40400000
y:
.long 0x3e10fcf8
z:
.skip 4, 0
fmt:
.byte 37
.byte 102
.byte 32
.byte 43
.byte 32
.byte 37
.byte 102
.byte 32
.byte 61
.byte 32
.byte 37
.byte 102
.byte 10
.byte 0
.text
main:
	leal -28(%esp), %esp
	nop
	nop
	leal 28(%esp), %ecx
	leal 28(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l3:
	leal y,%eax
	flds (%eax)
	leal x,%eax
	flds (%eax)
	faddp
	leal z,%eax
	fstps (%eax)
	nop
	leal fmt,%eax
	movl $-28,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal x,%eax
	flds (%eax)
	movl $-24,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	leal y,%eax
	flds (%eax)
	movl $-16,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	leal z,%eax
	flds (%eax)
	movl $-8,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	nop
	call printf
join_l7:
	nop
	nop
	nop
	nop
	nop
	leal 28(%esp), %eax
	movl $0,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 28(%esp), %esp
	ret
