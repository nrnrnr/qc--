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
.long 0xffffffff
.section .text
main:
	leal -100(%esp), %esp
	leal 100(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 100(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 100(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l14:
	movl %eax,20(%esp)
	leal k_C11,%eax
	movl %eax,24(%esp)
	leal 100(%esp), %eax
	movl %eax,28(%esp)
	movl $-8,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	leal 100(%esp), %ecx
	movl %eax,40(%esp)
	movl $-4,%eax
	addl %eax,%ecx
	movl 40(%esp),%eax
	movl %eax,(%ecx)
.Lproc_body_start_l13:
	movl $2,%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	ja .Ljoin_l45
.Ljoin_l46:
	movl $10,%eax
	movl $11,%ecx
	jmp .Ljoin_l40
.Ljoin_l45:
	movl $4,%eax
	movl %eax,44(%esp)
	movl 36(%esp),%ecx
	movl %ecx,%eax
	movl 44(%esp),%ecx
	addl %ecx,%eax
	leal 100(%esp), %ecx
	movl %eax,48(%esp)
	movl $-100,%eax
	addl %eax,%ecx
	movl 48(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,52(%esp)
	call atol
.Ljoin_l44:
	movl $8,%ecx
	movl 36(%esp),%edx
	addl %ecx,%edx
	leal 100(%esp), %ecx
	movl %eax,56(%esp)
	movl $-100,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call atol
.Ljoin_l41:
	movl %eax,%ecx
	movl 52(%esp),%edx
	movl 56(%esp),%eax
	jmp .Ljoin_l40
.Ljoin_l40:
	movl %eax,56(%esp)
	movl %ecx,60(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	movl %edx,52(%esp)
	call tag
.Ljoin_l37:
	movl %eax,64(%esp)
	movl 60(%esp),%ecx
	movl %ecx,%eax
	call tag
.Ljoin_l34:
	leal tags,%ecx
	leal 100(%esp), %edx
	movl %eax,68(%esp)
	movl $-100,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 100(%esp), %eax
	movl $-96,%ecx
	addl %ecx,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl $-88,%edx
	addl %edx,%eax
	movl 60(%esp),%edx
	movl %edx,(%eax)
	leal 100(%esp), %eax
	movl $-84,%edx
	addl %edx,%eax
	movl 68(%esp),%edx
	movl %edx,(%eax)
	call printf
.Ljoin_l31:
	leal 100(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal -4(%esp), %esp
	movl 68(%esp),%eax
	leal 104(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl 72(%esp),%edx
	movl %edx,(%ecx)
	movl %edi,76(%esp)
	movl %esi,80(%esp)
	movl %ebp,84(%esp)
	movl %ebx,88(%esp)
	call tagged_add
.Ljoin_l28:
	movl %eax,88(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	call untag
.Ljoin_l25:
	leal sumfmt,%ecx
	leal 100(%esp), %edx
	movl $-100,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 100(%esp), %ecx
	movl $-96,%edx
	addl %edx,%ecx
	movl 88(%esp),%edx
	movl %edx,(%ecx)
	leal 100(%esp), %ecx
	movl $-92,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Ljoin_l22:
	movl $0,%eax
	leal 100(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	movl 84(%esp),%ebx
	movl 80(%esp),%ebp
	movl 76(%esp),%esi
	movl 72(%esp),%edi
	leal 100(%esp), %esp
	ret
k_C11:
	leal 100(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Ljoin_l18:
	movl $1,%eax
	leal 100(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	movl 84(%esp),%ebx
	movl 80(%esp),%ebp
	movl 76(%esp),%esi
	movl 72(%esp),%edi
	leal 100(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l51:
.long 0
.section .pcmap
.long .Ljoin_l44
.long .Lframe_l52
.section .pcmap_data
.Lframe_l52:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffd0
.long .Lstackdata_l51
.long 0
.long 9
.long 0
.long 1
.long 0
.long 0xffffffc0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l41
.long .Lframe_l53
.section .pcmap_data
.Lframe_l53:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffd0
.long .Lstackdata_l51
.long 0
.long 9
.long 0
.long 1
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l37
.long .Lframe_l54
.section .pcmap_data
.Lframe_l54:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffd0
.long .Lstackdata_l51
.long 0
.long 9
.long 0
.long 1
.long 0
.long 0
.long 0xffffffd4
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l34
.long .Lframe_l55
.section .pcmap_data
.Lframe_l55:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffd0
.long .Lstackdata_l51
.long 0
.long 9
.long 0
.long 1
.long 0
.long 0
.long 0xffffffd4
.long 0xffffffd8
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l31
.long .Lframe_l56
.section .pcmap_data
.Lframe_l56:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffd0
.long .Lstackdata_l51
.long 0
.long 9
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l28
.long .Lframe_l57
.section .pcmap_data
.Lframe_l57:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffd0
.long .Lstackdata_l51
.long 4
.long 9
.long 0
.long 1
.long 7
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffe4
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
.long .Ljoin_l25
.long .Lframe_l58
.section .pcmap_data
.Lframe_l58:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffd0
.long .Lstackdata_l51
.long 4
.long 9
.long 0
.long 1
.long 7
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffe4
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
.long .Ljoin_l22
.long .Lframe_l59
.section .pcmap_data
.Lframe_l59:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffd0
.long .Lstackdata_l51
.long 4
.long 9
.long 0
.long 1
.long 7
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffe4
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
.long .Lframe_l60
.section .pcmap_data
.Lframe_l60:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffd0
.long .Lstackdata_l51
.long 4
.long 9
.long 0
.long 1
.long 7
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffe4
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
.long .Ljoin_l18
.long .Lframe_l61
.section .pcmap_data
.Lframe_l61:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffd0
.long .Lstackdata_l51
.long 4
.long 9
.long 0
.long 1
.long 7
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffe4
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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l64:
.Lproc_body_start_l63:
	movl %eax,(%esp)
	movl $1,%eax
	movl %eax,4(%esp)
	movl (%esp),%eax
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	subl %ecx,%eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %eax,12(%esp)
	movl $1,%eax
	movl %eax,16(%esp)
	movl (%esp),%eax
	movl 16(%esp),%ecx
	subl %ecx,%eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	jo .Ljoin_l67
.Ljoin_l68:
	movl 12(%esp),%eax
	leal 40(%esp), %ecx
	movl %ecx,20(%esp)
	movl $4,%ecx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	movl %edx,28(%esp)
	movl 24(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
.Ljoin_l67:
	leal overflow,%eax
	leal 40(%esp), %ecx
	movl %ecx,32(%esp)
	movl $4,%ecx
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	movl %edx,28(%esp)
	movl 36(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	jmp raise
.section .text
.section .text
tag:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l78:
.Lproc_body_start_l77:
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
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l89:
.Lproc_body_start_l88:
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
	movl (%esp),%ecx
.Linitialize_continuations_l100:
.Lproc_body_start_l99:
	movl %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl %eax, %esp; jmp *%ecx
.section .text
