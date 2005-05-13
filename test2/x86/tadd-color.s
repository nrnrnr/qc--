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
	leal -52(%esp), %esp
	leal 52(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,20(%esp)
	leal 52(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,24(%esp)
	movl %edi,28(%esp)
	movl %esi,32(%esp)
	movl %ebp,36(%esp)
	movl %ebx,40(%esp)
.Linitialize_continuations_l14:
	leal .Lcut_entry_l11,%edx
	leal 52(%esp), %ecx
	movl $-8,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	leal 52(%esp), %edx
	movl $-52,%ecx
	addl %ecx,%edx
	leal 52(%esp), %ecx
	movl $-4,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
.Lproc_body_start_l13:
.Lbranch_target_l49:
	movl $2,%ecx
	cmpl %ecx,%eax
	ja .Lbranch_target_l46
.Lbranch_target_l39:
	movl $10,%edi
	movl $11,%esi
	jmp .Lbranch_target_l38
.Lbranch_target_l46:
	movl $4,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	leal 52(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call atol
.Lcall_successor_l45:
	movl %eax,%edi
	movl $8,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	leal 52(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call atol
.Lcall_successor_l42:
	movl %eax,%esi
.Lbranch_target_l38:
	movl %edi,%eax
	call tag
.Lcall_successor_l37:
	movl %eax,%ebx
	movl %esi,%eax
	call tag
.Lcall_successor_l34:
	movl %eax,%ebp
	leal tags,%eax
	leal 52(%esp), %edx
	movl $-52,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 52(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl %ebx,(%eax)
	leal 52(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 52(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %ebp,(%eax)
	call printf
.Lcall_successor_l31:
	leal 52(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal -4(%esp), %esp
	movl %ebx,%eax
	leal 56(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %ebp,(%ecx)
	call tagged_add
.Lcall_successor_l28:
	movl %eax,%ebx
	movl %ebx,%eax
	call untag
.Lcall_successor_l25:
	leal sumfmt,%edx
	leal 52(%esp), %ecx
	movl $-52,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	leal 52(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal 52(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l22:
	movl $0,%eax
	leal 52(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%edi
	movl 32(%esp),%esi
	movl 36(%esp),%ebp
	movl 40(%esp),%ebx
	leal 52(%esp), %esp
	ret
.Lcut_entry_l11:
.Lstart_of_continuation_code_l10:
	leal 52(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l18:
	movl $1,%eax
	leal 52(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%edi
	movl 32(%esp),%esi
	movl 36(%esp),%ebp
	movl 40(%esp),%ebx
	leal 52(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l52:
.long 0
.section .pcmap
.long .Lcall_successor_l45
.long .Lframe_l53
.section .pcmap_data
.Lframe_l53:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l52
.long 4
.long 9
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l42
.long .Lframe_l54
.section .pcmap_data
.Lframe_l54:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l52
.long 4
.long 9
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l37
.long .Lframe_l55
.section .pcmap_data
.Lframe_l55:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l52
.long 4
.long 9
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long 0x4000000b
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l34
.long .Lframe_l56
.section .pcmap_data
.Lframe_l56:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l52
.long 4
.long 9
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long 0x4000000b
.long 0x4000000a
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l31
.long .Lframe_l57
.section .pcmap_data
.Lframe_l57:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l52
.long 4
.long 9
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l28
.long .Lframe_l58
.section .pcmap_data
.Lframe_l58:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l52
.long 4
.long 9
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
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
.long .Lcall_successor_l25
.long .Lframe_l59
.section .pcmap_data
.Lframe_l59:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l52
.long 4
.long 9
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l22
.long .Lframe_l60
.section .pcmap_data
.Lframe_l60:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l52
.long 4
.long 9
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
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
.long .Lcut_entry_l11
.long .Lframe_l61
.section .pcmap_data
.Lframe_l61:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l52
.long 4
.long 9
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000006
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l52
.long 4
.long 9
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
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
	leal -8(%esp), %esp
	movl %eax,%ecx
	leal 8(%esp), %edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%edx
	leal 8(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	movl %ebx,(%esp)
.Linitialize_continuations_l64:
.Lproc_body_start_l63:
	movl $1,%ebx
	movl %ecx,%eax
	subl %ebx,%eax
	addl %edx,%eax
.Lbranch_target_l72:
	movl $1,%ebx
	subl %ebx,%ecx
	addl %edx,%ecx
	jo .Lbranch_target_l68
.Lbranch_target_l66:
	leal 8(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%ebx
	leal 12(%esp), %esp
	ret
.Lbranch_target_l68:
	leal overflow,%eax
	movl (%esp),%ebx
	leal 8(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	jmp raise
.section .text
.section .text
tag:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,(%esp)
.Linitialize_continuations_l78:
.Lproc_body_start_l77:
	movl $1,%ecx
	shll %cl, %eax
	movl $1,%ecx
	addl %ecx,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text
.section .text
untag:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,(%esp)
.Linitialize_continuations_l88:
.Lproc_body_start_l87:
	movl $1,%ecx
	sarl %cl, %eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text
.section .text
raise:
	movl %eax,%edx
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l98:
.Lproc_body_start_l97:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl %ecx, %esp; jmp *%eax
.section .text
