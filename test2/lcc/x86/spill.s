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
.long 0xffffffffffffffff
.section .data
.section .text
main:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l9:
Lproc_body_start_l8:
	movl $0,%eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
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
Linitialize_continuations_l22:
Lproc_body_start_l21:
	movl %eax,(%esp)
	call f
Ljoin_l30:
	movl %eax,4(%esp)
	call f
Ljoin_l27:
	movl 4(%esp),%edx
	addl %eax,%edx
	movl $0,%eax
	leal 8(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
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
.long 0x80000004
.long 0xfffffff8
.long 0xfffffff8
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
.long 0x80000004
.long 0xfffffff8
.long 0xfffffff8
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
Linitialize_continuations_l42:
Lproc_body_start_l41:
	movl %ecx,4(%esp)
	movl %eax,(%esp)
	call f
Ljoin_l52:
	movl $0,%edx
	movl (%esp),%ecx
	cmpl %edx,%ecx
	je Ljoin_l48
Ljoin_l49:
	movl %eax,8(%esp)
	call f
Ljoin_l47:
	jmp L.8
Ljoin_l48:
	jmp L.7
L.7:
	movl $1,%edx
	movl %eax,8(%esp)
	movl %edx,%eax
	jmp L.8
L.8:
	movl 8(%esp),%edx
	addl %eax,%edx
	movl $0,%eax
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
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
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff8
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
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff8
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
.long 0xfffffffc
.long 0
.long 0
.section .text
f3:
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 16(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 16(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l64:
Lproc_body_start_l63:
	movl %edx,(%esp)
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	movl $0,%edx
	movl $4,%edx
	movl %edx,4(%esp)
	movl %ecx,%edx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	addl %ecx,%edx
	movl $0,%edx
	movl (%esp),%ecx
	cmpl %edx,%ecx
	je Ljoin_l70
Ljoin_l71:
	movl %eax,12(%esp)
	call f
Ljoin_l69:
	jmp L.15
Ljoin_l70:
	jmp L.14
L.14:
	movl $0,%edx
	movl %eax,12(%esp)
	movl %edx,%eax
	jmp L.15
L.15:
	movl 8(%esp),%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l78:
.long 0
.section .pcmap
.long Ljoin_l69
.long Lframe_l79
.section .pcmap_data
Lframe_l79:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
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
	leal -68(%esp), %esp
	leal 68(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l82:
Lproc_body_start_l81:
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	leal i,%eax
	movl (%eax),%eax
	movl $3,%ecx
	movl %edx,24(%esp)
	movl %eax,%edx
	shll %cl, %edx
	leal a,%ecx
	movl %ecx,28(%esp)
	movl %edx,%ecx
	movl %edx,32(%esp)
	movl 28(%esp),%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %edx,36(%esp)
	movl $-68,%edx
	movl %edx,40(%esp)
	movl 36(%esp),%edx
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal b,%edx
	movl 32(%esp),%ecx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %edx,48(%esp)
	movl $-60,%edx
	movl %edx,52(%esp)
	movl 48(%esp),%edx
	movl %ecx,56(%esp)
	movl 52(%esp),%ecx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal f_33,%edx
	leal 68(%esp), %ecx
	movl %edx,60(%esp)
	movl $-52,%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	fildq (%edx)
	fistpq (%ecx)
	leal 68(%esp), %edx
	movl $-52,%ecx
	addl %ecx,%edx
	fldl (%edx)
	leal 68(%esp), %edx
	movl $-60,%ecx
	addl %ecx,%edx
	fldl (%edx)
	leal 68(%esp), %edx
	movl $-68,%ecx
	addl %ecx,%edx
	fldl (%edx)
	faddp
	fcompp
	movl %eax,64(%esp)
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz Ljoin_l89
Ljoin_l90:
	movl $0,%edx
	movl 64(%esp),%ecx
	cmpl %edx,%ecx
	je Ljoin_l87
Ljoin_l88:
	leal 68(%esp), %edx
	movl $-52,%ecx
	addl %ecx,%edx
	fldl (%edx)
	leal 68(%esp), %edx
	movl $-60,%ecx
	addl %ecx,%edx
	fldl (%edx)
	leal 68(%esp), %edx
	movl $-68,%ecx
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
	leal 68(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal 68(%esp), %esp
	ret
.section .text
f5:
	leal -52(%esp), %esp
	leal 52(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l101:
Lproc_body_start_l100:
	leal x,%eax
	leal k,%ecx
	movl (%ecx),%ecx
	movl %edx,(%esp)
	leal m,%edx
	movl (%edx),%edx
	movl %edx,4(%esp)
	movl $3,%edx
	movl %edx,8(%esp)
	leal A,%edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %ecx,%edx
	movl %edi,16(%esp)
	movl 4(%esp),%edi
	imull %edi,%edx
	movl %ecx,20(%esp)
	movl 8(%esp),%ecx
	shll %cl, %edx
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl %edx,24(%esp)
	leal j,%edx
	movl (%edx),%edx
	movl %edx,%edi
	movl %edx,28(%esp)
	movl 4(%esp),%edx
	imull %edx,%edi
	movl 8(%esp),%ecx
	shll %cl, %edi
	movl 12(%esp),%edx
	addl %edx,%edi
	leal n,%edx
	movl (%edx),%edx
	leal B,%ecx
	movl (%ecx),%ecx
	movl %edx,32(%esp)
	movl 20(%esp),%edx
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	imull %edi,%edx
	movl %ecx,40(%esp)
	movl 8(%esp),%ecx
	shll %cl, %edx
	movl 40(%esp),%ecx
	addl %ecx,%edx
	movl %edx,44(%esp)
	movl 28(%esp),%edx
	imull %edi,%edx
	movl 8(%esp),%ecx
	shll %cl, %edx
	movl 40(%esp),%ecx
	addl %ecx,%edx
	fldl (%edx)
	movl 44(%esp),%ecx
	fldl (%ecx)
	fmulp
	movl 36(%esp),%edi
	fldl (%edi)
	movl %edx,48(%esp)
	movl 24(%esp),%edx
	fldl (%edx)
	fmulp
	faddp
	fstpl (%eax)
	fldl (%edi)
	fldl (%ecx)
	fmulp
	movl 48(%esp),%ecx
	fldl (%ecx)
	fldl (%edx)
	fmulp
	fsubp
	fstpl (%eax)
	movl $0,%eax
	leal 52(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%edi
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
