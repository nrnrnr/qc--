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
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	leal 72(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l14:
	leal k_C11,%eax
	movl %ecx,20(%esp)
	movl $-8,%ecx
	movl %edx,24(%esp)
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-72,%eax
	leal 72(%esp), %edx
	addl %eax,%edx
	movl $-4,%eax
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
Lproc_body_start_l13:
	movl $2,%ecx
	movl 20(%esp),%edx
	cmpl %ecx,%edx
	ja Ljoin_l45
Ljoin_l46:
	movl $10,%eax
	movl $11,%ecx
	jmp Ljoin_l40
Ljoin_l45:
	movl $4,%eax
	movl 24(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl $-72,%eax
	movl %ebx,28(%esp)
	leal 72(%esp), %ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	movl %ecx,24(%esp)
	call atol
Ljoin_l44:
	movl $8,%ecx
	movl 24(%esp),%edx
	addl %ecx,%edx
	movl $-72,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl %eax,32(%esp)
	call atol
Ljoin_l41:
	movl %eax,%ecx
	movl 28(%esp),%ebx
	movl 32(%esp),%eax
	jmp Ljoin_l40
Ljoin_l40:
	movl %eax,32(%esp)
	movl %ecx,36(%esp)
	call tag
Ljoin_l37:
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	call tag
Ljoin_l34:
	leal tags,%ecx
	movl $-72,%edx
	movl %ebx,28(%esp)
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-68,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl 32(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-64,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl 40(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-60,%ebx
	leal 72(%esp), %edx
	addl %ebx,%edx
	movl 36(%esp),%ebx
	movl %ebx,(%edx)
	movl $-56,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,40(%esp)
	movl %eax,44(%esp)
	call printf
Ljoin_l31:
	movl $-8,%eax
	leal 72(%esp), %ecx
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	movl 44(%esp),%eax
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	movl %ebp,52(%esp)
	call tagged_add
Ljoin_l28:
	movl %eax,60(%esp)
	call untag
Ljoin_l25:
	leal sumfmt,%ecx
	movl $-72,%edx
	leal 72(%esp), %edi
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $-68,%ecx
	leal 72(%esp), %edi
	addl %ecx,%edi
	movl 60(%esp),%ecx
	movl %ecx,(%edi)
	movl $-64,%ecx
	leal 72(%esp), %edi
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l22:
	movl $0,%eax
	leal 72(%esp), %ecx
	movl $0,%edx
	leal 72(%esp), %edi
	addl %edx,%edi
	movl (%ecx),%edx
	movl %edx,(%edi)
	movl 48(%esp),%ebp
	movl 28(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 72(%esp), %esp
	ret
k_C11:
	movl $-72,%eax
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	call printf
Ljoin_l18:
	movl $1,%eax
	leal 72(%esp), %ecx
	movl $0,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 48(%esp),%ebp
	movl 28(%esp),%ebx
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
.long 0xffffffd4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xffffffd0
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
.long 0xffffffd4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xffffffd8
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
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xffffffd8
.long 0xffffffdc
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
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xffffffd8
.long 0xffffffdc
.long 0xffffffe0
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
.long 0xffffffd4
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
.long 0xffffffe0
.long 0xffffffe4
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
.long 0xffffffd4
.long 0x40000009
.long 0xffffffe8
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
.long 0xffffffd4
.long 0x40000009
.long 0xffffffe8
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
.long 0xffffffd4
.long 0x40000009
.long 0xffffffe8
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
.long 0xffffffd4
.long 0x40000009
.long 0xffffffe8
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
.long 0xffffffd4
.long 0x40000009
.long 0xffffffe8
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
	leal -12(%esp), %esp
	movl $4,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l64:
Lproc_body_start_l63:
	movl %eax,(%esp)
	movl $1,%eax
	movl %ecx,8(%esp)
	movl %edx,4(%esp)
	movl (%esp),%edx
	movl %edx,%ecx
	subl %eax,%ecx
	movl 4(%esp),%eax
	addl %eax,%ecx
	movl %eax,4(%esp)
	movl $1,%eax
	subl %eax,%edx
	movl 4(%esp),%eax
	addl %eax,%edx
	jo Ljoin_l67
Ljoin_l68:
	movl %ecx,%eax
	movl $4,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	ret
Ljoin_l67:
	leal overflow,%eax
	movl $4,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	jmp raise
.section .text
.section .text
tag:
	leal -12(%esp), %esp
	leal 12(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l78:
Lproc_body_start_l77:
	movl $1,%edx
	movl %eax,(%esp)
	movl $1,%eax
	movl %ecx,4(%esp)
	movl (%esp),%ecx
	movl %ecx,8(%esp)
	movl %eax,%ecx
	movl 8(%esp),%eax
	shll %cl, %eax
	addl %edx,%eax
	movl $0,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 12(%esp), %esp
	ret
.section .text
.section .text
untag:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l89:
Lproc_body_start_l88:
	movl $1,%edx
	movl %ecx,(%esp)
	movl %edx,%ecx
	sarl %cl, %eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text
.section .text
raise:
	movl %esp,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l100:
Lproc_body_start_l99:
	movl %eax,%edx
	movl $4,%eax
	leal Cmm.global_area,%edi
	movl (%edi),%esi
	addl %eax,%esi
	movl (%esi),%eax
	leal Cmm.global_area,%esi
	movl (%esi),%edi
	movl (%edi),%esi
	movl %eax, %esp; jmp *%esi
.section .text
