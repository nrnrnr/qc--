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
	nop
initialize_continuations_l3:
	nop
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
stackdata_l13:
.long 0
.section .text
f:
	leal -8(%esp), %esp
	movl $4,%eax
	leal 8(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	nop
initialize_continuations_l16:
	nop
	nop
	call f
join_l24:
	nop
	nop
	nop
	nop
	movl %eax,(%esp)
	call f
join_l21:
	nop
	nop
	movl (%esp),%ecx
	addl %eax,%ecx
	nop
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
stackdata_l31:
.long 0
.section .pcmap
.long join_l24
.long frame_l32
.section .pcmap_data
frame_l32:
.long 0xfffffff8
.long 0x80000004
.long 0x80000000
.long stackdata_l31
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
.long join_l21
.long frame_l33
.section .pcmap_data
frame_l33:
.long 0xfffffff8
.long 0x80000004
.long 0x80000000
.long stackdata_l31
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
	nop
initialize_continuations_l36:
	nop
	nop
	movl %eax,(%esp)
	call f
join_l46:
	nop
	nop
	movl $0,%ecx
	movl (%esp),%edx
	cmpl %ecx,%edx
	je join_l42
join_l43:
	nop
	nop
	movl %eax,4(%esp)
	call f
join_l41:
	nop
	nop
	jmp L.8
join_l42:
	jmp L.7
L.7:
	movl $1,%ecx
	movl %eax,4(%esp)
	movl %ecx,%eax
	jmp L.8
L.8:
	movl 4(%esp),%ecx
	addl %eax,%ecx
	nop
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
stackdata_l53:
.long 0
.section .pcmap
.long join_l46
.long frame_l54
.section .pcmap_data
frame_l54:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long stackdata_l53
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
.long join_l41
.long frame_l55
.section .pcmap_data
frame_l55:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long stackdata_l53
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
	nop
initialize_continuations_l58:
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
	je join_l64
join_l65:
	nop
	nop
	movl %ecx,4(%esp)
	call f
join_l63:
	nop
	nop
	jmp L.15
join_l64:
	jmp L.14
L.14:
	movl $0,%eax
	movl %ecx,4(%esp)
	jmp L.15
L.15:
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
	nop
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
stackdata_l72:
.long 0
.section .pcmap
.long join_l63
.long frame_l73
.section .pcmap_data
frame_l73:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long stackdata_l72
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
	nop
initialize_continuations_l76:
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
	jz join_l83
join_l84:
	movl $0,%edx
	movl 28(%esp),%ebp
	cmpl %edx,%ebp
	je join_l81
join_l82:
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
	jz join_l79
join_l80:
	movl $1,%eax
	jmp L.32
join_l79:
	jmp L.31
join_l81:
	jmp L.31
join_l83:
	jmp L.31
L.31:
	movl $0,%eax
	jmp L.32
L.32:
	leal i,%ebp
	movl %eax,(%ebp)
	nop
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
stackdata_l92:
.long 0
.section .text
f5:
	leal -36(%esp), %esp
	nop
initialize_continuations_l95:
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
	nop
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
stackdata_l105:
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
