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
.section .data
.section .text
main:
	leal -8(%esp), %esp
Linitialize_continuations_l27:
Lproc_body_start_l26:
	movl $0,%eax
	movl $-8,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call exit
Ljoin_l32:
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
Lstackdata_l39:
.long 0
.section .pcmap
.long Ljoin_l32
.long Lframe_l40
.section .pcmap_data
Lframe_l40:
.long 0xfffffff8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l39
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
Linitialize_continuations_l43:
Lproc_body_start_l42:
	movl $4,%eax
	cmpl %eax,%edx
	jge Ljoin_l57
Ljoin_l58:
	movl $114,%eax
	cmpl %eax,%ecx
	je Ljoin_l56
Ljoin_l68:
	jmp L.6
Ljoin_l56:
	jmp L.9
Ljoin_l57:
	jmp L.6
L.6:
	movl $1,%eax
	cmpl %eax,%edx
	jne Ljoin_l54
Ljoin_l55:
	movl $104,%eax
	cmpl %eax,%ecx
	je Ljoin_l52
Ljoin_l53:
	movl $105,%eax
	cmpl %eax,%ecx
	je Ljoin_l51
Ljoin_l67:
	jmp L.8
Ljoin_l51:
	jmp L.9
Ljoin_l52:
	jmp L.9
Ljoin_l54:
	jmp L.8
L.8:
	movl $2,%eax
	cmpl %eax,%edx
	jne Ljoin_l49
Ljoin_l50:
	movl $111,%eax
	cmpl %eax,%ecx
	je Ljoin_l47
Ljoin_l48:
	movl $121,%eax
	cmpl %eax,%ecx
	jne Ljoin_l46
Ljoin_l66:
	jmp L.9
Ljoin_l46:
	jmp L.3
Ljoin_l47:
	jmp L.9
L.9:
	jmp L.3
Ljoin_l49:
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
Lstackdata_l69:
.long 0
.section .text
s:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l72:
Lproc_body_start_l71:
L.12:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l81:
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
Linitialize_continuations_l84:
Lproc_body_start_l83:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l93:
.long 0
.section .text
f:
Linitialize_continuations_l96:
Lproc_body_start_l95:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l105:
.long 0
.section .text
f1:
Linitialize_continuations_l108:
Lproc_body_start_l107:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l117:
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
Linitialize_continuations_l120:
Lproc_body_start_l119:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l129:
.long 0
.section .text
g:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l132:
Lproc_body_start_l131:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l141:
.long 0
.section .text
h:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l144:
Lproc_body_start_l143:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l153:
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
Linitialize_continuations_l156:
Lproc_body_start_l155:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l165:
.long 0
.section .text
h2:
Linitialize_continuations_l168:
Lproc_body_start_l167:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l177:
.long 0
.section .text
.section .data
.align 4
L.23:
.long 1
.section .text
set1:
Linitialize_continuations_l180:
Lproc_body_start_l179:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l189:
.long 0
.section .text
.section .data
.align 4
L.25:
.long 2
.section .text
set2:
Linitialize_continuations_l192:
Lproc_body_start_l191:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l201:
.long 0
.section .text
i_goo:
Linitialize_continuations_l204:
Lproc_body_start_l203:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l213:
.long 0
.section .text
sss:
Linitialize_continuations_l216:
Lproc_body_start_l215:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l225:
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
Linitialize_continuations_l228:
Lproc_body_start_l227:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l237:
.long 0
.section .text
setstatic:
Linitialize_continuations_l240:
Lproc_body_start_l239:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l249:
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
Linitialize_continuations_l252:
Lproc_body_start_l251:
	leal 16(%esp), %eax
	movl $0,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l261:
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
Linitialize_continuations_l264:
Lproc_body_start_l263:
	leal 8(%esp), %eax
	movl $0,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l273:
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
Linitialize_continuations_l276:
Lproc_body_start_l275:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l285:
.long 0
.section .text
hh1:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l288:
Lproc_body_start_l287:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l297:
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
Linitialize_continuations_l300:
Lproc_body_start_l299:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l309:
.long 0
.section .text
sort:
Linitialize_continuations_l312:
Lproc_body_start_l311:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l321:
.long 0
.section .text
onearg:
Linitialize_continuations_l324:
Lproc_body_start_l323:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l333:
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
