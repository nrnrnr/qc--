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
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
.section .text
main:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l26:
.Lproc_body_start_l25:
	movl $0,%ecx
	leal 8(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call exit
.Lcall_successor_l31:
	movl $0,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l38:
.long 0
.section .pcmap
.long .Lcall_successor_l31
.long .Lframe_l39
.section .pcmap_data
.Lframe_l39:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l38
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
nested:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l41:
.Lproc_body_start_l40:
.Lbranch_target_l54:
	movl %eax,(%esp)
	movl $4,%eax
	movl %ecx,4(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jge .LL.6_l60
.Lbranch_target_l48:
.Lbranch_target_l59:
	movl $114,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je L.9
	jmp L.6
.LL.6_l60:
	movl 4(%esp),%ecx
L.6:
.Lbranch_target_l53:
	movl $1,%eax
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne .LL.8_l61
.Lbranch_target_l47:
.Lbranch_target_l58:
	movl $104,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je L.9
.Lbranch_target_l46:
.Lbranch_target_l57:
	movl $105,%eax
	cmpl %eax,%ecx
	je L.9
	jmp L.8
.LL.8_l61:
	movl 4(%esp),%ecx
L.8:
.Lbranch_target_l52:
	movl $2,%eax
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne L.3
.Lbranch_target_l45:
.Lbranch_target_l56:
	movl $111,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je L.9
.Lbranch_target_l44:
.Lbranch_target_l55:
	movl $121,%eax
	cmpl %eax,%ecx
	jne L.3
L.9:
L.3:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl %ecx,8(%esp)
	movl $0,%ecx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	movl %edx,16(%esp)
	movl 12(%esp),%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %esp
	ret
.section .text
s:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l68:
.Lproc_body_start_l67:
L.12:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
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
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l79:
.Lproc_body_start_l78:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
f:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l90:
.Lproc_body_start_l89:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
f1:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l101:
.Lproc_body_start_l100:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
f2:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l112:
.Lproc_body_start_l111:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
g:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l123:
.Lproc_body_start_l122:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
h:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l134:
.Lproc_body_start_l133:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
h1:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l145:
.Lproc_body_start_l144:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
h2:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l156:
.Lproc_body_start_l155:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
.section .data
.align 4
L.23:
.long 1
.section .text
set1:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l167:
.Lproc_body_start_l166:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
.section .data
.align 4
L.25:
.long 2
.section .text
set2:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l178:
.Lproc_body_start_l177:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
i_goo:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l189:
.Lproc_body_start_l188:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
sss:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l200:
.Lproc_body_start_l199:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
.section .bss
.align 4
L.29:
.skip 4, 0
.section .text
rrr:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l211:
.Lproc_body_start_l210:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
setstatic:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l222:
.Lproc_body_start_l221:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
gx1:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l233:
.Lproc_body_start_l232:
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %esp
	ret
.section .text
ff1:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 8(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 8(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l244:
.Lproc_body_start_l243:
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 8(%esp), %esp
	ret
.section .text
gg1:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l255:
.Lproc_body_start_l254:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
hh1:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l266:
.Lproc_body_start_l265:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
cmp:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l277:
.Lproc_body_start_l276:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
sort:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l288:
.Lproc_body_start_l287:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
onearg:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l299:
.Lproc_body_start_l298:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
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
