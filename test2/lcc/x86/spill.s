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
.section .data
.section .text
main:
	leal -4(%esp), %esp
Linitialize_continuations_l9:
Lproc_body_start_l8:
	movl $0,%eax
	leal 4(%esp), %edx
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl (%edx),%edx
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
Linitialize_continuations_l22:
Lproc_body_start_l21:
	call f
Ljoin_l30:
	movl %eax,(%esp)
	call f
Ljoin_l27:
	movl (%esp),%edx
	addl %eax,%edx
	movl $0,%eax
	leal 8(%esp), %edx
	leal 8(%esp), %ecx
	movl %edx,4(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l37:
.long 0
.section .pcmap
.long Ljoin_l30
.long Lframe_l38
.section .pcmap_data
Lframe_l38:
.long 0xfffffff8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l37
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l27
.long Lframe_l39
.section .pcmap_data
Lframe_l39:
.long 0xfffffff8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l37
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xfffffff8
.long 0
.long 0
.section .text
f2:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l42:
Lproc_body_start_l41:
	movl %eax,(%esp)
	call f
Ljoin_l52:
	movl $0,%edx
	movl (%esp),%ecx
	cmpl %edx,%ecx
	je Ljoin_l48
Ljoin_l49:
	movl %eax,4(%esp)
	call f
Ljoin_l47:
	jmp L.8
Ljoin_l48:
	jmp L.7
L.7:
	movl $1,%edx
	movl %eax,4(%esp)
	movl %edx,%eax
	jmp L.8
L.8:
	movl 4(%esp),%edx
	addl %eax,%edx
	movl $0,%eax
	leal 12(%esp), %edx
	leal 12(%esp), %ecx
	movl %edx,8(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l59:
.long 0
.section .pcmap
.long Ljoin_l52
.long Lframe_l60
.section .pcmap_data
Lframe_l60:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l59
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l47
.long Lframe_l61
.section .pcmap_data
Lframe_l61:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l59
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff8
.long 0
.long 0
.section .text
f3:
	leal -12(%esp), %esp
	leal 12(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 12(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l64:
Lproc_body_start_l63:
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
	movl %edx,(%esp)
	movl %ecx,%edx
	addl %eax,%edx
	movl $0,%edx
	movl (%esp),%eax
	cmpl %edx,%eax
	je Ljoin_l70
Ljoin_l71:
	movl %ecx,4(%esp)
	call f
Ljoin_l69:
	jmp L.15
Ljoin_l70:
	jmp L.14
L.14:
	movl $0,%edx
	movl %ecx,4(%esp)
	movl %edx,%eax
	jmp L.15
L.15:
	movl 4(%esp),%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 12(%esp), %edx
	leal 12(%esp), %ecx
	movl %edx,8(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l78:
.long 0
.section .pcmap
.long Ljoin_l69
.long Lframe_l79
.section .pcmap_data
Lframe_l79:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l78
.long 8
.long 15
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
Linitialize_continuations_l82:
Lproc_body_start_l81:
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	leal i,%edx
	movl (%edx),%edx
	movl $3,%ecx
	movl %edx,%eax
	shll %cl, %eax
	leal a,%ecx
	movl %edx,24(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	leal 36(%esp), %ecx
	movl %edx,28(%esp)
	movl $-36,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	fildq (%edx)
	fistpq (%ecx)
	leal b,%edx
	addl %edx,%eax
	leal 36(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal f_33,%edx
	leal 36(%esp), %ecx
	movl $-20,%eax
	addl %eax,%ecx
	fildq (%edx)
	fistpq (%ecx)
	leal 36(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	fldl (%edx)
	leal 36(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	fldl (%edx)
	leal 36(%esp), %edx
	movl $-36,%ecx
	addl %ecx,%edx
	fldl (%edx)
	faddp
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz Ljoin_l89
Ljoin_l90:
	movl $0,%edx
	movl 24(%esp),%ecx
	cmpl %edx,%ecx
	je Ljoin_l87
Ljoin_l88:
	leal 36(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	fldl (%edx)
	leal 36(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	fldl (%edx)
	leal 36(%esp), %edx
	movl $-36,%ecx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz Ljoin_l85
Ljoin_l86:
	movl $1,%edx
	jmp L.32
Ljoin_l85:
	jmp L.31
Ljoin_l87:
	jmp L.31
Ljoin_l89:
	jmp L.31
L.31:
	movl $0,%edx
	jmp L.32
L.32:
	leal i,%ecx
	movl %edx,(%ecx)
	movl $0,%eax
	leal 36(%esp), %edx
	leal 36(%esp), %ecx
	movl %edx,32(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
.section .text
f5:
	leal -44(%esp), %esp
Linitialize_continuations_l101:
Lproc_body_start_l100:
	leal x,%edx
	leal k,%eax
	movl (%eax),%eax
	leal m,%ecx
	movl (%ecx),%ecx
	movl %edx,(%esp)
	movl $3,%edx
	movl %edx,4(%esp)
	leal A,%edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %eax,%edx
	imull %ecx,%edx
	movl %ecx,12(%esp)
	movl 4(%esp),%ecx
	shll %cl, %edx
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl %edx,16(%esp)
	leal j,%edx
	movl (%edx),%edx
	movl %edi,20(%esp)
	movl %edx,%edi
	movl %edx,24(%esp)
	movl 12(%esp),%edx
	imull %edx,%edi
	movl 4(%esp),%ecx
	shll %cl, %edi
	movl 8(%esp),%edx
	addl %edx,%edi
	leal n,%edx
	movl (%edx),%edx
	leal B,%ecx
	movl (%ecx),%ecx
	imull %edx,%eax
	movl %ecx,28(%esp)
	movl 4(%esp),%ecx
	shll %cl, %eax
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl %edx,32(%esp)
	movl 24(%esp),%edx
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	imull %edi,%edx
	movl 4(%esp),%ecx
	shll %cl, %edx
	movl 28(%esp),%ecx
	addl %ecx,%edx
	fldl (%edx)
	fldl (%eax)
	fmulp
	movl 36(%esp),%ecx
	fldl (%ecx)
	movl 16(%esp),%edi
	fldl (%edi)
	fmulp
	faddp
	movl %edx,40(%esp)
	movl (%esp),%edx
	fstpl (%edx)
	fldl (%ecx)
	fldl (%eax)
	fmulp
	movl 40(%esp),%ecx
	fldl (%ecx)
	fldl (%edi)
	fmulp
	fsubp
	fstpl (%edx)
	movl $0,%eax
	leal 44(%esp), %edx
	leal 44(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
	leal 44(%esp), %esp
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
