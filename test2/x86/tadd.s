.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.eAGCQPNUHJVGDQHYVDBFFaWcBU
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.eAGCQPNUHJVGDQHYVDBFFaWcBU:
Cmm.global_area:
.skip 4
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffffffffffff
.section .text
main:
	leal -84(%esp), %esp
	leal 84(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 84(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%edx
	leal 84(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l14:
	movl %ebx,20(%esp)
	leal k_C11,%ebx
	movl %ebx,24(%esp)
	leal 84(%esp), %ebx
	movl %ebx,28(%esp)
	movl $-8,%ebx
	movl %ebx,32(%esp)
	movl 28(%esp),%ebx
	movl %ebp,36(%esp)
	movl 32(%esp),%ebp
	addl %ebp,%ebx
	movl 24(%esp),%ebp
	movl %ebp,(%ebx)
	leal 84(%esp), %ebx
	movl $-84,%ebp
	addl %ebp,%ebx
	leal 84(%esp), %ebp
	movl %ebx,40(%esp)
	movl $-4,%ebx
	addl %ebx,%ebp
	movl 40(%esp),%ebx
	movl %ebx,(%ebp)
Lproc_body_start_l13:
	movl $2,%ebx
	cmpl %ebx,%ecx
	ja Ljoin_l45
Ljoin_l46:
	movl $10,%ebx
	movl $11,%ebp
	jmp Ljoin_l40
Ljoin_l45:
	movl $4,%ebp
	movl %edx,%ebx
	addl %ebp,%ebx
	leal 84(%esp), %ebp
	movl $-84,%ecx
	addl %ecx,%ebp
	movl (%ebx),%ebx
	movl %ebx,(%ebp)
	movl %eax,44(%esp)
	movl %edx,48(%esp)
	call atol
Ljoin_l44:
	movl $8,%ebx
	movl 48(%esp),%ebp
	addl %ebx,%ebp
	leal 84(%esp), %ebx
	movl $-84,%ecx
	addl %ecx,%ebx
	movl (%ebp),%ebp
	movl %ebp,(%ebx)
	movl %eax,52(%esp)
	call atol
Ljoin_l41:
	movl %eax,%ebp
	movl 44(%esp),%eax
	movl 52(%esp),%ebx
	jmp Ljoin_l40
Ljoin_l40:
	movl %eax,44(%esp)
	movl %ebx,%eax
	call tag
Ljoin_l37:
	movl %eax,56(%esp)
	movl %ebp,%eax
	call tag
Ljoin_l34:
	leal tags,%ecx
	leal 84(%esp), %edx
	movl %ebx,52(%esp)
	movl $-84,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 84(%esp), %ebx
	movl $-80,%ecx
	addl %ecx,%ebx
	movl 52(%esp),%ecx
	movl %ecx,(%ebx)
	leal 84(%esp), %ebx
	movl $-76,%ecx
	addl %ecx,%ebx
	movl 56(%esp),%ecx
	movl %ecx,(%ebx)
	leal 84(%esp), %ebx
	movl $-72,%edx
	addl %edx,%ebx
	movl %ebp,(%ebx)
	leal 84(%esp), %ebx
	movl $-68,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %eax,60(%esp)
	call printf
Ljoin_l31:
	leal 84(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal -4(%esp), %esp
	movl 60(%esp),%eax
	leal 88(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	movl %edi,72(%esp)
	movl %esi,68(%esp)
	call tagged_add
Ljoin_l28:
	movl %eax,72(%esp)
	call untag
Ljoin_l25:
	leal sumfmt,%edi
	leal 84(%esp), %esi
	movl $-84,%ebp
	addl %ebp,%esi
	movl %edi,(%esi)
	leal 84(%esp), %edi
	movl $-80,%esi
	addl %esi,%edi
	movl 72(%esp),%esi
	movl %esi,(%edi)
	leal 84(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l22:
	movl $0,%eax
	leal 84(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	movl 36(%esp),%ebp
	movl 64(%esp),%esi
	movl 68(%esp),%edi
	leal 84(%esp), %esp
	ret
k_C11:
	leal 84(%esp), %edi
	movl $-84,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	call printf
Ljoin_l18:
	movl $1,%eax
	leal 84(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	movl 36(%esp),%ebp
	movl 64(%esp),%esi
	movl 68(%esp),%edi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l51:
.long 0
.section .pcmap
.long Ljoin_l44
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd8
.long Lstackdata_l51
.long 2
.long 9
.long 0
.long 1
.long 7
.long 0xffffffc0
.long 9
.long 0xffffffd0
.long 0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l41
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd8
.long Lstackdata_l51
.long 2
.long 9
.long 0
.long 1
.long 7
.long 0xffffffc0
.long 9
.long 0xffffffd0
.long 0
.long 0
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l37
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd8
.long Lstackdata_l51
.long 2
.long 9
.long 0
.long 1
.long 7
.long 0xffffffc0
.long 9
.long 0xffffffd0
.long 0
.long 0
.long 0x40000007
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l34
.long Lframe_l55
.section .pcmap_data
Lframe_l55:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd8
.long Lstackdata_l51
.long 2
.long 9
.long 0
.long 1
.long 7
.long 0xffffffc0
.long 9
.long 0xffffffd0
.long 0
.long 0
.long 0x40000007
.long 0x40000009
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l31
.long Lframe_l56
.section .pcmap_data
Lframe_l56:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd8
.long Lstackdata_l51
.long 2
.long 9
.long 0
.long 1
.long 7
.long 0xffffffc0
.long 9
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l28
.long Lframe_l57
.section .pcmap_data
Lframe_l57:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd8
.long Lstackdata_l51
.long 4
.long 9
.long 0
.long 1
.long 7
.long 0xffffffc0
.long 9
.long 0xffffffd0
.long 10
.long 0xffffffec
.long 11
.long 0xfffffff0
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
.section .pcmap
.long Ljoin_l25
.long Lframe_l58
.section .pcmap_data
Lframe_l58:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd8
.long Lstackdata_l51
.long 4
.long 9
.long 0
.long 1
.long 7
.long 0xffffffc0
.long 9
.long 0xffffffd0
.long 10
.long 0xffffffec
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.section .pcmap
.long Ljoin_l22
.long Lframe_l59
.section .pcmap_data
Lframe_l59:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd8
.long Lstackdata_l51
.long 4
.long 9
.long 0
.long 1
.long 7
.long 0xffffffc0
.long 9
.long 0xffffffd0
.long 10
.long 0xffffffec
.long 11
.long 0xfffffff0
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
.section .pcmap
.long k_C11
.long Lframe_l60
.section .pcmap_data
Lframe_l60:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd8
.long Lstackdata_l51
.long 4
.long 9
.long 0
.long 1
.long 7
.long 0xffffffc0
.long 9
.long 0xffffffd0
.long 10
.long 0xffffffec
.long 11
.long 0xfffffff0
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
.section .pcmap
.long Ljoin_l18
.long Lframe_l61
.section .pcmap_data
Lframe_l61:
.long 0x80000004
.long 0xffffffac
.long 0xffffffd8
.long Lstackdata_l51
.long 4
.long 9
.long 0
.long 1
.long 7
.long 0xffffffc0
.long 9
.long 0xffffffd0
.long 10
.long 0xffffffec
.long 11
.long 0xfffffff0
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
.section .text
.section .data
tags:
.byte 37
.byte 100
.byte 32
.byte 116
.byte 97
.byte 103
.byte 103
.byte 101
.byte 100
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 97
.byte 110
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 116
.byte 97
.byte 103
.byte 103
.byte 101
.byte 100
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
sumfmt:
.byte 115
.byte 117
.byte 109
.byte 32
.byte 116
.byte 97
.byte 103
.byte 103
.byte 101
.byte 100
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 97
.byte 110
.byte 100
.byte 32
.byte 117
.byte 110
.byte 116
.byte 97
.byte 103
.byte 103
.byte 101
.byte 100
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
overflow:
.byte 97
.byte 100
.byte 100
.byte 105
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 111
.byte 118
.byte 101
.byte 114
.byte 102
.byte 108
.byte 111
.byte 119
.byte 115
.byte 10
.byte 0
.section .text
tagged_add:
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l64:
Lproc_body_start_l63:
	movl %edx,(%esp)
	movl $1,%edx
	movl %edx,4(%esp)
	movl %eax,%edx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	subl %ecx,%edx
	movl (%esp),%ecx
	addl %ecx,%edx
	movl %edx,12(%esp)
	movl $1,%edx
	subl %edx,%eax
	addl %ecx,%eax
	jo Ljoin_l67
Ljoin_l68:
	movl 12(%esp),%eax
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	ret
Ljoin_l67:
	leal overflow,%eax
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	jmp raise
.section .text
.section .text
tag:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l78:
Lproc_body_start_l77:
	movl $1,%ecx
	shll %cl, %eax
	movl $1,%ecx
	addl %ecx,%eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .text
.section .text
untag:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l89:
Lproc_body_start_l88:
	movl $1,%ecx
	sarl %cl, %eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .text
.section .text
raise:
	movl %esp,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l100:
Lproc_body_start_l99:
	movl %eax,%edx
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl %edi, %esp; jmp *%esi
.section .text
