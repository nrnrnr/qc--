.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
no:
.byte 110
.byte 111
.byte 32
yes:
.byte 111
.byte 118
.byte 101
.byte 114
.byte 102
.byte 108
.byte 111
.byte 119
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
plus:
.byte 43
.byte 0
mul:
.byte 42
.byte 0
mulu:
.byte 60
.byte 109
.byte 117
.byte 108
.byte 117
.byte 62
.byte 0
sub:
.byte 45
.byte 0
div:
.byte 47
.byte 0
.section .text
test_ovrfl:
	leal -36(%esp), %esp
	movl %eax,28(%esp)
	movl $4,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,32(%esp)
	nop
	leal 36(%esp), %eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	movl %ebx,20(%esp)
initialize_continuations_l3:
	movl 28(%esp),%ecx
	movl 32(%esp),%eax
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl 32(%esp),%edx
	addl %edx,%eax
	jo join_l39
join_l40:
	nop
	leal no,%eax
	movl $-36,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-32,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %edx,(%eax)
	leal plus,%eax
	movl $-28,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-24,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 32(%esp),%edx
	movl %edx,(%eax)
	movl $-20,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	nop
	call printf
join_l34:
	nop
	nop
	jmp join_l37
join_l39:
	nop
	leal yes,%eax
	movl $-36,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-32,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %edx,(%eax)
	leal plus,%eax
	movl $-28,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-24,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 32(%esp),%edx
	movl %edx,(%eax)
	movl $-20,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	nop
	call printf
join_l38:
	nop
	nop
	jmp join_l37
join_l37:
	movl 32(%esp),%ecx
	movl 28(%esp),%eax
	imull %eax,%ecx
	movl 28(%esp),%eax
	movl 32(%esp),%edx
	imull %edx,%eax
	jo join_l30
join_l31:
	nop
	leal no,%eax
	movl $-36,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-32,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %edx,(%eax)
	leal mul,%eax
	movl $-28,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-24,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 32(%esp),%edx
	movl %edx,(%eax)
	movl $-20,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	nop
	call printf
join_l25:
	nop
	nop
	jmp join_l28
join_l30:
	nop
	leal yes,%eax
	movl $-36,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-32,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %edx,(%eax)
	leal mul,%eax
	movl $-28,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-24,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 32(%esp),%edx
	movl %edx,(%eax)
	movl $-20,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	nop
	call printf
join_l29:
	nop
	nop
	jmp join_l28
join_l28:
	movl 28(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 32(%esp),%ecx
	idivl %ecx, %eax
	movl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 32(%esp),%ebx
	idivl %ebx, %eax
	jo join_l21
join_l22:
	nop
	leal no,%eax
	movl $-36,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-32,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %edx,(%eax)
	leal div,%eax
	movl $-28,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-24,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 32(%esp),%edx
	movl %edx,(%eax)
	movl $-20,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	nop
	call printf
join_l16:
	nop
	nop
	jmp join_l19
join_l21:
	nop
	leal yes,%eax
	movl $-36,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-32,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %edx,(%eax)
	leal div,%eax
	movl $-28,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-24,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 32(%esp),%edx
	movl %edx,(%eax)
	movl $-20,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	nop
	call printf
join_l20:
	nop
	nop
	jmp join_l19
join_l19:
	movl 28(%esp),%ecx
	movl 32(%esp),%eax
	subl %eax,%ecx
	movl 28(%esp),%eax
	movl 32(%esp),%edx
	subl %edx,%eax
	jo join_l12
join_l13:
	nop
	leal no,%eax
	movl $-36,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-32,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %edx,(%eax)
	leal sub,%eax
	movl $-28,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-24,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 32(%esp),%edx
	movl %edx,(%eax)
	movl $-20,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	nop
	call printf
join_l7:
	nop
	nop
	jmp join_l10
join_l12:
	nop
	leal yes,%eax
	movl $-36,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-32,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %edx,(%eax)
	leal sub,%eax
	movl $-28,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-24,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl 32(%esp),%edx
	movl %edx,(%eax)
	movl $-20,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	nop
	call printf
join_l11:
	nop
	nop
	jmp join_l10
join_l10:
	nop
	movl $4,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	movl 20(%esp),%ebx
	leal 40(%esp), %esp
	ret
.section .text
main:
	leal -60(%esp), %esp
	movl $4,%ecx
	leal 60(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 60(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
initialize_continuations_l48:
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $1,%ecx
	movl %ecx,4(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l94:
	nop
	nop
	leal -4(%esp), %esp
	movl $1,%eax
	movl $2147483647,%ecx
	movl %ecx,8(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l91:
	nop
	nop
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $1,%ecx
	movl %ecx,12(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l88:
	nop
	nop
	leal -4(%esp), %esp
	movl $1,%eax
	movl $-2147483648,%ecx
	movl %ecx,16(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l85:
	nop
	nop
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-1,%ecx
	movl %ecx,20(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l82:
	nop
	nop
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $2147483647,%ecx
	movl %ecx,24(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l79:
	nop
	nop
	leal -4(%esp), %esp
	movl $-1,%eax
	movl $-2147483648,%ecx
	movl %ecx,28(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l76:
	nop
	nop
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $2,%ecx
	movl %ecx,32(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l73:
	nop
	nop
	leal -4(%esp), %esp
	movl $2,%eax
	movl $2147483647,%ecx
	movl %ecx,36(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l70:
	nop
	nop
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $2,%ecx
	movl %ecx,40(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l67:
	nop
	nop
	leal -4(%esp), %esp
	movl $2,%eax
	movl $-2147483648,%ecx
	movl %ecx,44(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l64:
	nop
	nop
	leal -4(%esp), %esp
	movl $2147483647,%eax
	movl $-2,%ecx
	movl %ecx,48(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l61:
	nop
	nop
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $2147483647,%ecx
	movl %ecx,52(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l58:
	nop
	nop
	leal -4(%esp), %esp
	movl $-2147483648,%eax
	movl $-2,%ecx
	movl %ecx,56(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l55:
	nop
	nop
	leal -4(%esp), %esp
	movl $-2,%eax
	movl $-2147483648,%ecx
	movl %ecx,60(%esp)
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 60(%esp),%ecx
	movl %ecx,(%edx)
	nop
	call test_ovrfl
join_l52:
	nop
	nop
	nop
	movl $0,%eax
	leal 60(%esp), %esp
	ret
