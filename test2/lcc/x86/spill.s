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
	movl $0,%ecx
	movl %ebx,(%esp)
	leal 4(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l19:
.long 0
.section .text
f:
	leal -8(%esp), %esp
	movl $4,%eax
	leal 8(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l22:
Lproc_body_start_l21:
	call f
Ljoin_l30:
	movl %eax,(%esp)
	call f
Ljoin_l27:
	movl (%esp),%ecx
	addl %eax,%ecx
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
.long 0x80000008
.long 0x80000003
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
.long 0x80000008
.long 0x80000003
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
.long 0
.long 0xfffffff8
.long 0
.section .text
f2:
	leal -12(%esp), %esp
	movl $4,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l42:
Lproc_body_start_l41:
	movl %eax,(%esp)
	call f
Ljoin_l52:
	movl $0,%ecx
	movl (%esp),%edx
	cmpl %ecx,%edx
	je Ljoin_l48
Ljoin_l49:
	movl %eax,4(%esp)
	call f
Ljoin_l47:
	jmp L.8
Ljoin_l48:
	jmp L.7
L.7:
	movl $1,%ecx
	movl %eax,4(%esp)
	movl %ecx,%eax
	jmp L.8
L.8:
	movl 4(%esp),%ecx
	addl %eax,%ecx
	movl $0,%ecx
	movl %ecx,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	movl %ebx,8(%esp)
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
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
.long 0x80000008
.long 0x80000004
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
.long 0xfffffff4
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
.long 0x80000008
.long 0x80000004
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
.long 0
.long 0
.long 0xfffffff8
.long 0
.section .text
f3:
	leal -12(%esp), %esp
	movl $4,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
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
	movl $0,%eax
	movl %ecx,4(%esp)
	jmp L.15
L.15:
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	movl %ebx,8(%esp)
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
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
.long 0x80000008
.long 0x8000000f
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
	movl (%edx),%ecx
	movl $3,%edx
	movl %ebx,24(%esp)
	movl %ecx,%ebx
	movl %ecx,28(%esp)
	movl %edx,%ecx
	shll %cl, %ebx
	leal a,%ecx
	movl %ebx,%edx
	addl %ecx,%edx
	movl $-36,%ecx
	movl %ebp,32(%esp)
	leal 36(%esp), %ebp
	addl %ecx,%ebp
	fildq (%edx)
	fistpq (%ebp)
	leal b,%ebp
	addl %ebp,%ebx
	movl $-28,%ebp
	leal 36(%esp), %edx
	addl %ebp,%edx
	fildq (%ebx)
	fistpq (%edx)
	leal f_33,%edx
	movl $-20,%ebx
	leal 36(%esp), %ebp
	addl %ebx,%ebp
	fildq (%edx)
	fistpq (%ebp)
	movl $-20,%ebp
	leal 36(%esp), %edx
	addl %ebp,%edx
	fldl (%edx)
	movl $-28,%edx
	leal 36(%esp), %ebp
	addl %edx,%ebp
	fldl (%ebp)
	movl $-36,%ebp
	leal 36(%esp), %edx
	addl %ebp,%edx
	fldl (%edx)
	faddp
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz Ljoin_l89
Ljoin_l90:
	movl $0,%edx
	movl 28(%esp),%ebp
	cmpl %edx,%ebp
	je Ljoin_l87
Ljoin_l88:
	movl $-20,%edx
	leal 36(%esp), %ebp
	addl %edx,%ebp
	fldl (%ebp)
	movl $-28,%ebp
	leal 36(%esp), %edx
	addl %ebp,%edx
	fldl (%edx)
	movl $-36,%edx
	leal 36(%esp), %ebp
	addl %edx,%ebp
	fldl (%ebp)
	fsubp
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz Ljoin_l85
Ljoin_l86:
	movl $1,%eax
	jmp L.32
Ljoin_l85:
	jmp L.31
Ljoin_l87:
	jmp L.31
Ljoin_l89:
	jmp L.31
L.31:
	movl $0,%eax
	jmp L.32
L.32:
	leal i,%ebp
	movl %eax,(%ebp)
	movl $0,%eax
	leal 36(%esp), %ebp
	movl $0,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl (%ebp),%edx
	movl %edx,(%ebx)
	movl 32(%esp),%ebp
	movl 24(%esp),%ebx
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l98:
.long 0
.section .text
f5:
	leal -36(%esp), %esp
Linitialize_continuations_l101:
Lproc_body_start_l100:
	leal x,%edx
	leal k,%eax
	movl (%eax),%ecx
	leal m,%eax
	movl (%eax),%eax
	movl %ebx,(%esp)
	movl $3,%ebx
	movl %ebp,4(%esp)
	leal A,%ebp
	movl (%ebp),%ebp
	movl %esi,8(%esp)
	movl %ecx,%esi
	imull %eax,%esi
	movl %ecx,12(%esp)
	movl %ebx,%ecx
	shll %cl, %esi
	addl %ebp,%esi
	leal j,%ecx
	movl (%ecx),%ecx
	movl %edi,16(%esp)
	movl %ecx,%edi
	imull %eax,%edi
	movl %ecx,20(%esp)
	movl %ebx,%ecx
	shll %cl, %edi
	addl %ebp,%edi
	leal n,%ebp
	movl (%ebp),%ecx
	leal B,%ebp
	movl (%ebp),%eax
	movl 12(%esp),%ebp
	imull %ecx,%ebp
	movl %ecx,24(%esp)
	movl %ebx,%ecx
	shll %cl, %ebp
	addl %eax,%ebp
	movl 20(%esp),%ecx
	movl %edx,28(%esp)
	movl 24(%esp),%edx
	imull %edx,%ecx
	movl %ecx,32(%esp)
	movl %ebx,%ecx
	movl 32(%esp),%ebx
	shll %cl, %ebx
	addl %eax,%ebx
	fldl (%ebx)
	fldl (%ebp)
	fmulp
	fldl (%edi)
	fldl (%esi)
	fmulp
	faddp
	movl 28(%esp),%eax
	fstpl (%eax)
	fldl (%edi)
	fldl (%ebp)
	fmulp
	fldl (%ebx)
	fldl (%esi)
	fmulp
	fsubp
	fstpl (%eax)
	movl $0,%eax
	leal 36(%esp), %esi
	movl $0,%ebx
	leal 36(%esp), %ebp
	addl %ebx,%ebp
	movl (%esi),%ebx
	movl %ebx,(%ebp)
	movl 4(%esp),%ebp
	movl (%esp),%ebx
	movl 8(%esp),%esi
	movl 16(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l111:
.long 0
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
