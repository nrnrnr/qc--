.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.eAGCQPNUHJVGDQHYVDBFFaWcBU
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.eAGCQPNUHJVGDQHYVDBFFaWcBU:
Cmm.global_area:
.skip 4
.section .text
main:
	leal -72(%esp), %esp
	leal 72(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 72(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%edx
Linitialize_continuations_l14:
	leal k_C11,%eax
	movl %ebx,20(%esp)
	leal 72(%esp), %ebx
	movl %ebx,24(%esp)
	movl $-8,%ebx
	movl %ebx,28(%esp)
	movl 24(%esp),%ebx
	movl %ebp,32(%esp)
	movl 28(%esp),%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	leal 72(%esp), %ebx
	movl $-72,%ebp
	addl %ebp,%ebx
	leal 72(%esp), %ebp
	movl $-4,%eax
	addl %eax,%ebp
	movl %ebx,(%ebp)
Lproc_body_start_l13:
	movl $2,%ebx
	cmpl %ebx,%ecx
	ja Ljoin_l45
Ljoin_l46:
	movl $10,%eax
	movl $11,%ebx
	jmp Ljoin_l40
Ljoin_l45:
	movl $4,%ebp
	movl %edx,%ebx
	addl %ebp,%ebx
	leal 72(%esp), %ebp
	movl $-72,%eax
	addl %eax,%ebp
	movl (%ebx),%ebx
	movl %ebx,(%ebp)
	movl %edx,36(%esp)
	call atol
Ljoin_l44:
	movl $8,%ebp
	movl 36(%esp),%ebx
	addl %ebp,%ebx
	leal 72(%esp), %ebp
	movl $-72,%ecx
	addl %ecx,%ebp
	movl (%ebx),%ebx
	movl %ebx,(%ebp)
	movl %eax,40(%esp)
	call atol
Ljoin_l41:
	movl %eax,%ebx
	movl 40(%esp),%eax
	jmp Ljoin_l40
Ljoin_l40:
	movl %eax,40(%esp)
	call tag
Ljoin_l37:
	movl %eax,44(%esp)
	movl %ebx,%eax
	call tag
Ljoin_l34:
	leal tags,%ebp
	leal 72(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl %ebp,(%ecx)
	leal 72(%esp), %ebp
	movl $-68,%ecx
	addl %ecx,%ebp
	movl 40(%esp),%ecx
	movl %ecx,(%ebp)
	leal 72(%esp), %ebp
	movl $-64,%ecx
	addl %ecx,%ebp
	movl 44(%esp),%ecx
	movl %ecx,(%ebp)
	leal 72(%esp), %ebp
	movl $-60,%edx
	addl %edx,%ebp
	movl %ebx,(%ebp)
	leal 72(%esp), %ebx
	movl $-56,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %eax,48(%esp)
	call printf
Ljoin_l31:
	leal 72(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal -4(%esp), %esp
	movl 48(%esp),%eax
	leal 76(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	call tagged_add
Ljoin_l28:
	movl %eax,60(%esp)
	call untag
Ljoin_l25:
	leal sumfmt,%edi
	leal 72(%esp), %esi
	movl $-72,%ebp
	addl %ebp,%esi
	movl %edi,(%esi)
	leal 72(%esp), %edi
	movl $-68,%esi
	addl %esi,%edi
	movl 60(%esp),%esi
	movl %esi,(%edi)
	leal 72(%esp), %edi
	movl $-64,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l22:
	movl $0,%eax
	leal 72(%esp), %edx
	leal 72(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	movl 32(%esp),%ebp
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 72(%esp), %esp
	ret
k_C11:
	leal 72(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	call printf
Ljoin_l18:
	movl $1,%eax
	leal 72(%esp), %edx
	leal 72(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	movl 32(%esp),%ebp
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 72(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l51:
.long 0
.section .pcmap
.long Ljoin_l44
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l41
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l37
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xffffffe0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l34
.long Lframe_l55
.section .pcmap_data
Lframe_l55:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xffffffe0
.long 0x40000007
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l31
.long Lframe_l56
.section .pcmap_data
Lframe_l56:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l28
.long Lframe_l57
.section .pcmap_data
Lframe_l57:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x80000000
.section .pcmap
.long Ljoin_l25
.long Lframe_l58
.section .pcmap_data
Lframe_l58:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x80000000
.section .pcmap
.long Ljoin_l22
.long Lframe_l59
.section .pcmap_data
Lframe_l59:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x80000000
.section .pcmap
.long k_C11
.long Lframe_l60
.section .pcmap_data
Lframe_l60:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x80000000
.section .pcmap
.long Ljoin_l18
.long Lframe_l61
.section .pcmap_data
Lframe_l61:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x80000000
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
