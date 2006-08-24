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
.Lbranch_target_l51:
.Lbranch_target_l62:
	movl %eax,(%esp)
	movl $4,%eax
	movl %ecx,4(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
.Lbranch_target_l64:
	jge .LL.6_l63
.Lbranch_target_l50:
.Lbranch_target_l61:
	movl $114,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je L.9
	jmp L.6
.LL.6_l63:
	movl 4(%esp),%ecx
L.6:
.Lbranch_target_l49:
.Lbranch_target_l60:
	movl $1,%eax
	movl (%esp),%ecx
	cmpl %eax,%ecx
.Lbranch_target_l66:
	jne .LL.8_l65
.Lbranch_target_l48:
.Lbranch_target_l59:
	movl $104,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je L.9
.Lbranch_target_l47:
.Lbranch_target_l58:
	movl $105,%eax
	cmpl %eax,%ecx
	je L.9
	jmp L.8
.LL.8_l65:
	movl 4(%esp),%ecx
L.8:
.Lbranch_target_l46:
.Lbranch_target_l57:
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
	movl (%eax),%ecx
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l73:
.Lproc_body_start_l72:
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
.Linitialize_continuations_l84:
.Lproc_body_start_l83:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
f:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l95:
.Lproc_body_start_l94:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
f1:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l106:
.Lproc_body_start_l105:
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
.Linitialize_continuations_l117:
.Lproc_body_start_l116:
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
.Linitialize_continuations_l128:
.Lproc_body_start_l127:
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
.Linitialize_continuations_l139:
.Lproc_body_start_l138:
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
.Linitialize_continuations_l150:
.Lproc_body_start_l149:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
h2:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l161:
.Lproc_body_start_l160:
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
.Linitialize_continuations_l172:
.Lproc_body_start_l171:
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
.Linitialize_continuations_l183:
.Lproc_body_start_l182:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
i_goo:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l194:
.Lproc_body_start_l193:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
sss:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l205:
.Lproc_body_start_l204:
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
.Linitialize_continuations_l216:
.Lproc_body_start_l215:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
setstatic:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l227:
.Lproc_body_start_l226:
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
.Linitialize_continuations_l238:
.Lproc_body_start_l237:
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
.Linitialize_continuations_l249:
.Lproc_body_start_l248:
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
.Linitialize_continuations_l260:
.Lproc_body_start_l259:
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
.Linitialize_continuations_l271:
.Lproc_body_start_l270:
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
.Linitialize_continuations_l282:
.Lproc_body_start_l281:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
sort:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l293:
.Lproc_body_start_l292:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
onearg:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l304:
.Lproc_body_start_l303:
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
