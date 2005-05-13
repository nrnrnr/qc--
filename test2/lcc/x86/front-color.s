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
	movl %eax,4(%esp)
.Linitialize_continuations_l26:
.Lproc_body_start_l25:
	movl $0,%eax
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call exit
.Lcall_successor_l31:
	movl $0,%eax
	leal 8(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
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
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 4(%esp), %edx
	movl (%edx),%edx
	movl %edx,(%esp)
.Linitialize_continuations_l41:
.Lproc_body_start_l40:
.Lbranch_target_l57:
	movl $4,%edx
	cmpl %edx,%eax
	jge L.6
.Lbranch_target_l48:
.Lbranch_target_l52:
	movl $114,%edx
	cmpl %edx,%ecx
	je L.9
L.6:
.Lbranch_target_l58:
	movl $1,%edx
	cmpl %edx,%eax
	jne L.8
.Lbranch_target_l47:
.Lbranch_target_l53:
	movl $104,%edx
	cmpl %edx,%ecx
	je L.9
.Lbranch_target_l46:
.Lbranch_target_l54:
	movl $105,%edx
	cmpl %edx,%ecx
	je L.9
L.8:
.Lbranch_target_l59:
	movl $2,%edx
	cmpl %edx,%eax
	jne L.3
.Lbranch_target_l45:
.Lbranch_target_l55:
	movl $111,%eax
	cmpl %eax,%ecx
	je L.9
.Lbranch_target_l44:
.Lbranch_target_l56:
	movl $121,%eax
	cmpl %eax,%ecx
	jne L.3
L.9:
	movl %ecx,%eax
L.3:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text
s:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l66:
.Lproc_body_start_l65:
L.12:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
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
.Linitialize_continuations_l77:
.Lproc_body_start_l76:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
f:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l88:
.Lproc_body_start_l87:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
f1:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l99:
.Lproc_body_start_l98:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
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
.Linitialize_continuations_l110:
.Lproc_body_start_l109:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
g:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l121:
.Lproc_body_start_l120:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
h:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l132:
.Lproc_body_start_l131:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
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
.Linitialize_continuations_l143:
.Lproc_body_start_l142:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
h2:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l154:
.Lproc_body_start_l153:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
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
.Linitialize_continuations_l165:
.Lproc_body_start_l164:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
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
.Linitialize_continuations_l176:
.Lproc_body_start_l175:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
i_goo:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l187:
.Lproc_body_start_l186:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
sss:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l198:
.Lproc_body_start_l197:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
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
.Linitialize_continuations_l209:
.Lproc_body_start_l208:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
setstatic:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l220:
.Lproc_body_start_l219:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
gx1:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 16(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l231:
.Lproc_body_start_l230:
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 16(%esp), %esp
	ret
.section .text
ff1:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal 8(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l242:
.Lproc_body_start_l241:
	leal 8(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
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
.Linitialize_continuations_l253:
.Lproc_body_start_l252:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
hh1:
	movl %esp,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l264:
.Lproc_body_start_l263:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
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
.Linitialize_continuations_l275:
.Lproc_body_start_l274:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
sort:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l286:
.Lproc_body_start_l285:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text
onearg:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l297:
.Lproc_body_start_l296:
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
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
