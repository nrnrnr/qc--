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
initialize_continuations_l4:
proc_body_start_l3:
	movl $0,%eax
	movl $-8,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call exit
join_l9:
	movl $0,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	movl %ebx,4(%esp)
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 4(%esp),%ebx
	leal 8(%esp), %esp
	ret
.section .pcmap_data
stackdata_l16:
.long 0
.section .pcmap
.long join_l9
.long frame_l17
.section .pcmap_data
frame_l17:
.long 0xfffffff8
.long 0x80000004
.long 0x80000000
.long stackdata_l16
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.section .text
nested:
	leal -4(%esp), %esp
	movl $4,%edx
	leal 4(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	leal 4(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
initialize_continuations_l21:
proc_body_start_l20:
	movl $4,%eax
	cmpl %eax,%edx
	jge join_l35
join_l36:
	movl $114,%eax
	cmpl %eax,%ecx
	je join_l34
join_l46:
	jmp L.6
join_l34:
	jmp L.9
join_l35:
	jmp L.6
L.6:
	movl $1,%eax
	cmpl %eax,%edx
	jne join_l32
join_l33:
	movl $104,%eax
	cmpl %eax,%ecx
	je join_l30
join_l31:
	movl $105,%eax
	cmpl %eax,%ecx
	je join_l29
join_l45:
	jmp L.8
join_l29:
	jmp L.9
join_l30:
	jmp L.9
join_l32:
	jmp L.8
L.8:
	movl $2,%eax
	cmpl %eax,%edx
	jne join_l27
join_l28:
	movl $111,%eax
	cmpl %eax,%ecx
	je join_l25
join_l26:
	movl $121,%eax
	cmpl %eax,%ecx
	jne join_l24
join_l44:
	jmp L.9
join_l24:
	jmp L.3
join_l25:
	jmp L.9
L.9:
	jmp L.3
join_l27:
	jmp L.3
L.3:
	movl $0,%ecx
	movl %ecx,%eax
	leal 4(%esp), %ecx
	movl $0,%edx
	movl %ebx,(%esp)
	leal 4(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l47:
.long 0
.section .text
s:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l51:
proc_body_start_l50:
L.12:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l60:
.long 0
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
initialize_continuations_l64:
proc_body_start_l63:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l73:
.long 0
.section .text
f:
initialize_continuations_l77:
proc_body_start_l76:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l86:
.long 0
.section .text
f1:
initialize_continuations_l90:
proc_body_start_l89:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l99:
.long 0
.section .text
f2:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l103:
proc_body_start_l102:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l112:
.long 0
.section .text
g:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l116:
proc_body_start_l115:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l125:
.long 0
.section .text
h:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l129:
proc_body_start_l128:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l138:
.long 0
.section .text
h1:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l142:
proc_body_start_l141:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l151:
.long 0
.section .text
h2:
initialize_continuations_l155:
proc_body_start_l154:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l164:
.long 0
.section .text
.section .data
.align 4
L.23:
.long 1
.section .text
set1:
initialize_continuations_l168:
proc_body_start_l167:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l177:
.long 0
.section .text
.section .data
.align 4
L.25:
.long 2
.section .text
set2:
initialize_continuations_l181:
proc_body_start_l180:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l190:
.long 0
.section .text
i_goo:
initialize_continuations_l194:
proc_body_start_l193:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l203:
.long 0
.section .text
sss:
initialize_continuations_l207:
proc_body_start_l206:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l216:
.long 0
.section .text
.section .bss
.align 4
L.29:
.skip 4, 0
.section .text
rrr:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l220:
proc_body_start_l219:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l229:
.long 0
.section .text
setstatic:
initialize_continuations_l233:
proc_body_start_l232:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l242:
.long 0
.section .text
gx1:
	leal -16(%esp), %esp
	movl $4,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl $-16,%edx
	leal 16(%esp), %eax
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
initialize_continuations_l246:
proc_body_start_l245:
	leal 16(%esp), %eax
	movl $0,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
stackdata_l255:
.long 1
.long 0xfffffff8
.section .text
ff1:
	leal -8(%esp), %esp
	movl $4,%edx
	leal 8(%esp), %ecx
	addl %edx,%ecx
	movl $-8,%edx
	leal 8(%esp), %eax
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	movl $12,%eax
	leal 8(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l259:
proc_body_start_l258:
	leal 8(%esp), %eax
	movl $0,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
stackdata_l268:
.long 0
.section .text
gg1:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l272:
proc_body_start_l271:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l281:
.long 0
.section .text
hh1:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l285:
proc_body_start_l284:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l294:
.long 0
.section .text
cmp:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l298:
proc_body_start_l297:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l307:
.long 0
.section .text
sort:
initialize_continuations_l311:
proc_body_start_l310:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l320:
.long 0
.section .text
onearg:
initialize_continuations_l324:
proc_body_start_l323:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l333:
.long 0
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
