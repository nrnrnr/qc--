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
	movl %eax,(%esp)
.Linitialize_continuations_l8:
.Lproc_body_start_l7:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text
f:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%esp)
	leal 16(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
.Linitialize_continuations_l20:
.Lproc_body_start_l19:
	call f
.Lcall_successor_l28:
	movl %eax,12(%esp)
	call f
.Lcall_successor_l25:
	movl 12(%esp),%ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%eax
	movl %eax,(%esp)
	movl $0,%eax
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l35:
.long 0
.section .pcmap
.long .Lcall_successor_l28
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l35
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l25
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l35
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
	movl %eax,(%esp)
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
.Linitialize_continuations_l39:
.Lproc_body_start_l38:
	call f
.Lcall_successor_l48:
	movl %eax,4(%esp)
.Lbranch_target_l52:
	movl $0,%ecx
	movl (%esp),%eax
	cmpl %ecx,%eax
	je L.7
.Lbranch_target_l45:
	call f
.Lcall_successor_l44:
	jmp L.8
L.7:
	movl $1,%eax
L.8:
	movl 4(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,(%esp)
	movl $0,%eax
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l56:
.long 0
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l57
.section .pcmap_data
.Lframe_l57:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l56
.long 0
.long 4
.long 0
.long 1
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l44
.long .Lframe_l58
.section .pcmap_data
.Lframe_l58:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l56
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff8
.long 0
.long 0
.section .text
f3:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 8(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 8(%esp), %edx
	movl (%edx),%edx
	movl %edx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l60:
.Lproc_body_start_l59:
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
	movl %eax,%edi
	movl $4,%edx
	movl %edi,%eax
	addl %edx,%eax
.Lbranch_target_l70:
	movl $0,%eax
	cmpl %eax,%ecx
	je L.14
.Lbranch_target_l66:
	call f
.Lcall_successor_l65:
	jmp L.15
L.14:
	movl $0,%eax
L.15:
	movl %eax,(%edi)
	movl $0,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l74:
.long 0
.section .pcmap
.long .Lcall_successor_l65
.long .Lframe_l75
.section .pcmap_data
.Lframe_l75:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l74
.long 1
.long 15
.long 0
.long 1
.long 11
.long 0xfffffff8
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
.long 0x4000000b
.long 0
.long 0
.section .text
f4:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl (%eax),%eax
	movl %eax,32(%esp)
	movl %edi,28(%esp)
	movl %esi,24(%esp)
.Linitialize_continuations_l77:
.Lproc_body_start_l76:
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	movl $0,%eax
	leal i,%eax
	movl (%eax),%edx
	movl $3,%ecx
	movl %edx,%esi
	shll %cl, %esi
	leal a,%ecx
	movl %esi,%eax
	addl %ecx,%eax
	leal 36(%esp), %edi
	movl $-36,%ecx
	addl %ecx,%edi
	fildq (%eax)
	fistpq (%edi)
	leal b,%eax
	addl %eax,%esi
	leal 36(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	fildq (%esi)
	fistpq (%eax)
	leal f_33,%ecx
	leal 36(%esp), %eax
	movl $-20,%esi
	addl %esi,%eax
	fildq (%ecx)
	fistpq (%eax)
.Lbranch_target_l88:
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
	jz L.31
.Lbranch_target_l82:
.Lbranch_target_l86:
	movl $0,%eax
	cmpl %eax,%edx
	je L.31
.Lbranch_target_l81:
.Lbranch_target_l87:
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
	jz L.31
.Lbranch_target_l80:
	movl $1,%eax
	jmp L.32
L.31:
	movl $0,%eax
L.32:
	leal i,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%edi
	movl 24(%esp),%esi
	leal 36(%esp), %esp
	ret
.section .text
f5:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	movl %edi,16(%esp)
	movl %esi,12(%esp)
	movl %ebp,8(%esp)
	movl %ebx,4(%esp)
.Linitialize_continuations_l95:
.Lproc_body_start_l94:
	leal x,%eax
	movl %eax,(%esp)
	leal k,%eax
	movl (%eax),%edx
	leal m,%eax
	movl (%eax),%ebp
	movl $3,%eax
	movl %eax,%ecx
	leal A,%eax
	movl (%eax),%ebx
	movl %edx,%esi
	imull %ebp,%esi
	shll %cl, %esi
	addl %ebx,%esi
	leal j,%eax
	movl (%eax),%eax
	movl %eax,%edi
	imull %ebp,%edi
	shll %cl, %edi
	addl %ebx,%edi
	leal n,%ebx
	movl (%ebx),%ebp
	leal B,%ebx
	movl (%ebx),%ebx
	imull %ebp,%edx
	shll %cl, %edx
	addl %ebx,%edx
	imull %ebp,%eax
	shll %cl, %eax
	addl %ebx,%eax
	fldl (%eax)
	fldl (%edx)
	fmulp
	fldl (%edi)
	fldl (%esi)
	fmulp
	faddp
	movl (%esp),%ecx
	fstpl (%ecx)
	fldl (%edi)
	fldl (%edx)
	fmulp
	fldl (%eax)
	fldl (%esi)
	fmulp
	fsubp
	movl (%esp),%eax
	fstpl (%eax)
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 12(%esp),%esi
	movl 8(%esp),%ebp
	movl 4(%esp),%ebx
	leal 24(%esp), %esp
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
