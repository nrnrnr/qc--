.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
w:
.long 5
.long 6
.long 7
.long 8
x:
.long 1
.long 2
.long 3
.long 4
y:
.long 0
.long 0
.long 0
.long 0
z:
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
msg:
.byte 37
.byte 100
.byte 32
.byte 0
nl:
.byte 10
.byte 0
.section .text
print:
	leal -24(%esp), %esp
	movl %eax,16(%esp)
	movl $4,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	nop
	leal 24(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %ebx,8(%esp)
initialize_continuations_l3:
	movl $0,%ebx
	jmp loop
loop:
	nop
	movl $-20,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal msg,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l12:
	nop
	nop
	movl $1,%eax
	addl %eax,%ebx
	movl $4,%ecx
	movl 16(%esp),%eax
	addl %ecx,%eax
	movl %eax,16(%esp)
	movl 20(%esp),%eax
	cmpl %eax,%ebx
	jl join_l8
join_l9:
	nop
	leal nl,%edx
	movl $-24,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call printf
join_l7:
	nop
	nop
	nop
	movl $4,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl 8(%esp),%ebx
	leal 28(%esp), %esp
	ret
join_l8:
	jmp loop
.section .text
main:
	leal -8(%esp), %esp
	nop
	movl %esi,4(%esp)
	movl %edi,(%esp)
initialize_continuations_l20:
	leal -4(%esp), %esp
	leal y,%eax
	movl $4,%esi
	movl $-12,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl %esi,(%ecx)
	nop
	call print
join_l36:
	nop
	nop
	leal w,%esi
	leal y,%edi
	movl $16,%ecx
	rep movsb
	leal -4(%esp), %esp
	leal y,%eax
	movl $4,%esi
	movl $-12,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl %esi,(%ecx)
	nop
	call print
join_l33:
	nop
	nop
	leal -4(%esp), %esp
	leal z,%eax
	movl $8,%esi
	movl $-12,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl %esi,(%ecx)
	nop
	call print
join_l30:
	nop
	nop
	leal x,%esi
	leal z,%edi
	movl $32,%ecx
	rep movsb
	leal -4(%esp), %esp
	leal z,%eax
	movl $8,%esi
	movl $-12,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl %esi,(%ecx)
	nop
	call print
join_l27:
	nop
	nop
	leal -4(%esp), %esp
	leal w,%eax
	movl $20,%esi
	movl $-12,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl %esi,(%ecx)
	nop
	call print
join_l24:
	nop
	nop
	nop
	leal 8(%esp), %edx
	movl $0,%ecx
	leal 8(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl 4(%esp),%esi
	movl (%esp),%edi
	leal 8(%esp), %esp
	ret
