.globl main
.globl nested
.globl s
.globl Dy
.globl Dz
.globl Dfunc
.globl f
.globl f1
.globl f2
.globl g
.globl h
.globl h1
.globl h2
.globl set1
.globl set2
.globl sss
.globl rrr
.globl setstatic
.globl gx1
.globl ff1
.globl gg1
.globl hh1
.globl cmp
.globl sort
.globl onearg
.globl ss4
.globl ss3
.globl z
.globl y
.globl x
.globl b
.globl a
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -8(%esp), %esp
	nop
	nop
	leal 8(%esp), %ecx
	leal 8(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l3:
	nop
	movl $0,%eax
	movl $-8,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call exit
join_l8:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 8(%esp), %ecx
	movl %ecx,4(%esp)
	movl $0,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
nested:
	leal -20(%esp), %esp
	movl $4,%ecx
	leal 20(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,16(%esp)
	nop
	leal 20(%esp), %ecx
	movl %ecx,(%esp)
	leal 20(%esp), %ecx
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
	movl 4(%esp),%ecx
	movl 12(%esp),%edx
	movl %ecx,(%edx)
initialize_continuations_l17:
	movl $4,%ecx
	cmpl %ecx,%eax
	jge join_l31
join_l32:
	movl $114,%ecx
	movl 16(%esp),%edx
	cmpl %ecx,%edx
	je join_l30
join_l42:
	jmp L.6
join_l30:
	jmp L.9
join_l31:
	jmp L.6
L.6:
	movl $1,%ecx
	cmpl %ecx,%eax
	jne join_l28
join_l29:
	movl $104,%ecx
	movl 16(%esp),%edx
	cmpl %ecx,%edx
	je join_l26
join_l27:
	movl $105,%ecx
	movl 16(%esp),%edx
	cmpl %ecx,%edx
	je join_l25
join_l41:
	jmp L.8
join_l25:
	jmp L.9
join_l26:
	jmp L.9
join_l28:
	jmp L.8
L.8:
	movl $2,%ecx
	cmpl %ecx,%eax
	jne join_l23
join_l24:
	movl $111,%eax
	movl 16(%esp),%ecx
	cmpl %eax,%ecx
	je join_l21
join_l22:
	movl $121,%eax
	movl 16(%esp),%ecx
	cmpl %eax,%ecx
	jne join_l20
join_l40:
	jmp L.9
join_l20:
	jmp L.3
join_l21:
	jmp L.9
L.9:
	movl 16(%esp),%eax
	jmp L.3
join_l23:
	jmp L.3
L.3:
	nop
	movl $0,%eax
	leal 20(%esp), %ecx
	movl %ecx,8(%esp)
	movl $0,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	ret
s:
	nop
	movl $4,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l45:
L.12:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
.section .data
.align 4
Dy:
.long 0
.skip 4, 0
.align 4
Dz:
.long 1
.skip 4, 0
.section .text
Dfunc:
	nop
	nop
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l56:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
f:
	nop
	nop
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l67:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
f1:
	nop
	nop
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l78:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
f2:
	nop
	movl $4,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l89:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
g:
	nop
	movl $4,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l100:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
h:
	nop
	movl $4,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l111:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
h1:
	nop
	movl $4,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l122:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
h2:
	nop
	nop
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l133:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
.section .data
.align 4
L.23:
.long 1
.section .text
set1:
	nop
	nop
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l144:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
.section .data
.align 4
L.25:
.long 2
.section .text
set2:
	nop
	nop
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l155:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
i_goo:
	nop
	nop
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l166:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
sss:
	nop
	nop
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l177:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
.section .bss
.align 4
L.29:
.skip 4, 0
.section .text
rrr:
	nop
	movl $4,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l188:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
setstatic:
	nop
	nop
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l199:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
gx1:
	leal -16(%esp), %esp
	movl $4,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	nop
	leal 16(%esp), %ecx
	leal 16(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l210:
	nop
	nop
	leal 16(%esp), %eax
	movl $0,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 16(%esp), %esp
	ret
ff1:
	leal -8(%esp), %esp
	movl $4,%ecx
	leal 8(%esp), %eax
	addl %ecx,%eax
	movl $-8,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	movl $12,%ecx
	leal 8(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal 8(%esp), %ecx
	leal 8(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l221:
	nop
	nop
	leal 8(%esp), %eax
	movl $0,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 8(%esp), %esp
	ret
gg1:
	nop
	movl $4,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l232:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
hh1:
	nop
	movl $4,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l243:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
cmp:
	nop
	movl $4,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l254:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
sort:
	nop
	nop
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l265:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
onearg:
	nop
	nop
	nop
	movl %esp,%ecx
	movl %esp,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l276:
	nop
	nop
	movl %esp,%eax
	movl $0,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	ret
.section .bss
.align 4
ss4:
.skip 4, 0
.align 4
i_ss2:
.skip 4, 0
.align 4
i_ss5:
.skip 4, 0
.align 4
ss3:
.skip 4, 0
.align 4
i_ss1:
.skip 4, 0
.align 4
i_yy:
.skip 4, 0
.align 4
z:
.skip 4, 0
.align 4
y:
.skip 4, 0
.align 4
x:
.skip 4, 0
.align 4
b:
.skip 4, 0
.align 4
a:
.skip 4, 0
