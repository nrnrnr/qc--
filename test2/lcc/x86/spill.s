.globl main
.globl f
.globl f2
.globl f3
.globl f4
.globl f5
.globl x
.globl B
.globl A
.globl n
.globl m
.globl k
.globl j
.globl i
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
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l9:
.Lproc_body_start_l8:
	movl $0,%ecx
	movl %eax,(%esp)
	movl %ecx,%eax
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .text
f:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l22:
.Lproc_body_start_l21:
	movl %eax,(%esp)
	call f
.Ljoin_l30:
	movl %eax,4(%esp)
	call f
.Ljoin_l27:
	movl 4(%esp),%ecx
	addl %eax,%ecx
	movl $0,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l37:
.long 0
.section .pcmap
.long .Ljoin_l30
.long .Lframe_l38
.section .pcmap_data
.Lframe_l38:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffff8
.long .Lstackdata_l37
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l27
.long .Lframe_l39
.section .pcmap_data
.Lframe_l39:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffff8
.long .Lstackdata_l37
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0xfffffffc
.long 0
.long 0
.section .text
f2:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l42:
.Lproc_body_start_l41:
	movl %ecx,(%esp)
	movl %eax,4(%esp)
	call f
.Ljoin_l52:
	movl $0,%ecx
	movl 4(%esp),%edx
	cmpl %ecx,%edx
	je .Ljoin_l48
.Ljoin_l49:
	movl %eax,8(%esp)
	call f
.Ljoin_l47:
	jmp L.8
.Ljoin_l48:
	jmp L.7
L.7:
	movl $1,%ecx
	movl %eax,8(%esp)
	movl %ecx,%eax
	jmp L.8
L.8:
	movl 8(%esp),%ecx
	addl %eax,%ecx
	movl $0,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l59:
.long 0
.section .pcmap
.long .Ljoin_l52
.long .Lframe_l60
.section .pcmap_data
.Lframe_l60:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff4
.long .Lstackdata_l59
.long 0
.long 4
.long 0
.long 1
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l47
.long .Lframe_l61
.section .pcmap_data
.Lframe_l61:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff4
.long .Lstackdata_l59
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0xfffffffc
.long 0
.long 0
.section .text
f3:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 16(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l64:
.Lproc_body_start_l63:
	movl %eax,(%esp)
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $4,%eax
	movl %eax,4(%esp)
	movl %ecx,%eax
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	addl %ecx,%eax
	movl $0,%eax
	movl (%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l70
.Ljoin_l71:
	movl %edx,12(%esp)
	call f
.Ljoin_l69:
	jmp L.15
.Ljoin_l70:
	jmp L.14
L.14:
	movl $0,%eax
	movl %edx,12(%esp)
	jmp L.15
L.15:
	movl 8(%esp),%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l78:
.long 0
.section .pcmap
.long .Ljoin_l69
.long .Lframe_l79
.section .pcmap_data
.Lframe_l79:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l78
.long 0
.long 15
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff8
.long 0
.long 0
.section .text
f4:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l82:
.Lproc_body_start_l81:
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	movl $0,%ecx
	leal i,%ecx
	movl (%ecx),%ecx
	movl $3,%edx
	movl %eax,24(%esp)
	movl %ecx,%eax
	movl %ecx,28(%esp)
	movl %edx,%ecx
	shll %cl, %eax
	leal a,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	leal 36(%esp), %ecx
	movl %eax,32(%esp)
	movl $-36,%eax
	addl %eax,%ecx
	fildq (%edx)
	fistpq (%ecx)
	leal b,%eax
	movl 32(%esp),%ecx
	addl %eax,%ecx
	leal 36(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal f_33,%eax
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 36(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 36(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 36(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	fldl (%eax)
	faddp
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz .Ljoin_l89
.Ljoin_l90:
	movl $0,%eax
	movl 28(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l87
.Ljoin_l88:
	leal 36(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 36(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 36(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz .Ljoin_l85
.Ljoin_l86:
	movl $1,%eax
	jmp L.32
.Ljoin_l85:
	jmp L.31
.Ljoin_l87:
	jmp L.31
.Ljoin_l89:
	jmp L.31
L.31:
	movl $0,%eax
	jmp L.32
L.32:
	leal i,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
.section .text
f5:
	leal -52(%esp), %esp
	leal 52(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l101:
.Lproc_body_start_l100:
	leal x,%ecx
	leal k,%edx
	movl (%edx),%edx
	movl %eax,(%esp)
	leal m,%eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	movl $3,%eax
	movl %eax,8(%esp)
	leal A,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %edx,%eax
	movl %ecx,16(%esp)
	movl 4(%esp),%ecx
	imull %ecx,%eax
	movl %eax,20(%esp)
	movl 8(%esp),%eax
	movl %eax,%ecx
	movl 20(%esp),%eax
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl %eax,24(%esp)
	leal j,%eax
	movl (%eax),%eax
	movl %eax,28(%esp)
	movl 4(%esp),%ecx
	imull %ecx,%eax
	movl %eax,32(%esp)
	movl 8(%esp),%eax
	movl %eax,%ecx
	movl 32(%esp),%eax
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	leal n,%ecx
	movl (%ecx),%ecx
	movl %eax,36(%esp)
	leal B,%eax
	movl (%eax),%eax
	imull %ecx,%edx
	movl %ecx,40(%esp)
	movl %eax,44(%esp)
	movl 8(%esp),%eax
	movl %eax,%ecx
	shll %cl, %edx
	movl 44(%esp),%ecx
	addl %ecx,%edx
	movl 28(%esp),%eax
	movl 40(%esp),%ecx
	imull %ecx,%eax
	movl 8(%esp),%ecx
	shll %cl, %eax
	movl 44(%esp),%ecx
	addl %ecx,%eax
	fldl (%eax)
	fldl (%edx)
	fmulp
	movl 36(%esp),%ecx
	fldl (%ecx)
	movl %eax,48(%esp)
	movl 24(%esp),%eax
	fldl (%eax)
	fmulp
	faddp
	movl 16(%esp),%eax
	fstpl (%eax)
	fldl (%ecx)
	fldl (%edx)
	fmulp
	movl 48(%esp),%ecx
	fldl (%ecx)
	movl 24(%esp),%ecx
	fldl (%ecx)
	fmulp
	fsubp
	fstpl (%eax)
	movl $0,%eax
	leal 52(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
.section .text
.section .bss
.align 4
x:
.skip 8, 0
.align 4
B:
.skip 4, 0
.align 4
A:
.skip 4, 0
.align 4
n:
.skip 4, 0
.align 4
m:
.skip 4, 0
.align 4
k:
.skip 4, 0
.align 4
j:
.skip 4, 0
.align 4
i:
.skip 4, 0
.align 4
b:
.skip 80, 0
.align 4
a:
.skip 80, 0
.section .data
.align 4
f_33:
.long 0
.long 0
