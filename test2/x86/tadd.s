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
	movl (%ecx),%edx
	leal 72(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l14:
	leal k_C11,%ecx
	movl %edx,20(%esp)
	leal 72(%esp), %edx
	movl %eax,24(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 72(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	leal 72(%esp), %edx
	movl $-4,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
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
	leal 72(%esp), %eax
	movl %ebx,28(%esp)
	movl $-72,%ebx
	addl %ebx,%eax
	movl (%edx),%ebx
	movl %ebx,(%eax)
	call atol
Ljoin_l44:
	movl $8,%ecx
	movl 24(%esp),%edx
	addl %ecx,%edx
	leal 72(%esp), %ecx
	movl $-72,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
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
	leal 72(%esp), %edx
	movl %ebx,28(%esp)
	movl $-72,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 72(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %ecx
	movl $-60,%ebx
	addl %ebx,%ecx
	movl 36(%esp),%ebx
	movl %ebx,(%ecx)
	leal 72(%esp), %ecx
	movl $-56,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl %eax,44(%esp)
	call printf
Ljoin_l31:
	leal 72(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal -4(%esp), %esp
	movl 44(%esp),%eax
	leal 76(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	movl %ebp,52(%esp)
	call tagged_add
Ljoin_l28:
	movl %eax,60(%esp)
	call untag
Ljoin_l25:
	leal sumfmt,%ecx
	leal 72(%esp), %edx
	movl $-72,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 72(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l22:
	movl $0,%eax
	leal 72(%esp), %ecx
	leal 72(%esp), %edx
	movl $0,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl 28(%esp),%ebx
	movl 48(%esp),%ebp
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 72(%esp), %esp
	ret
k_C11:
	leal 72(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
Ljoin_l18:
	movl $1,%eax
	leal 72(%esp), %ecx
	leal 72(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 28(%esp),%ebx
	movl 48(%esp),%ebp
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
	leal 12(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 12(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l64:
Lproc_body_start_l63:
	movl %eax,(%esp)
	movl $1,%eax
	movl %edx,8(%esp)
	movl %ecx,4(%esp)
	movl (%esp),%ecx
	movl %ecx,%edx
	subl %eax,%edx
	movl 4(%esp),%eax
	addl %eax,%edx
	movl $1,%eax
	subl %eax,%ecx
	movl 4(%esp),%eax
	addl %eax,%ecx
	jo Ljoin_l67
Ljoin_l68:
	movl %edx,%eax
	leal 12(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	ret
Ljoin_l67:
	leal overflow,%eax
	leal 12(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	jmp raise
.section .text
.section .text
tag:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l78:
Lproc_body_start_l77:
	movl $1,%edx
	movl %ecx,(%esp)
	movl %edx,%ecx
	shll %cl, %eax
	movl $1,%ecx
	addl %ecx,%eax
	leal 4(%esp), %ecx
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
	movl (%edx),%ecx
Linitialize_continuations_l89:
Lproc_body_start_l88:
	movl $1,%edx
	movl %ecx,(%esp)
	movl %edx,%ecx
	sarl %cl, %eax
	leal 4(%esp), %ecx
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
	movl (%ecx),%edx
Linitialize_continuations_l100:
Lproc_body_start_l99:
	movl %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	movl $4,%eax
	addl %eax,%edi
	movl (%edi),%eax
	leal Cmm.global_area,%edi
	movl (%edi),%esi
	movl (%esi),%edi
	movl %eax, %esp; jmp *%edi
.section .text
