.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
.align 4
init_stack:
.skip 4, 0
sp_str:
.byte 115
.byte 117
.byte 109
.byte 58
.byte 32
.byte 37
.byte 100
.byte 10
.byte 112
.byte 114
.byte 111
.byte 100
.byte 117
.byte 99
.byte 116
.byte 58
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
total_str:
.byte 84
.byte 111
.byte 116
.byte 97
.byte 108
.byte 58
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
stack_address:
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 100
.byte 97
.byte 116
.byte 97
.byte 32
.byte 100
.byte 105
.byte 102
.byte 102
.byte 101
.byte 114
.byte 101
.byte 110
.byte 99
.byte 101
.byte 58
.byte 32
.byte 37
.byte 120
.byte 10
.byte 0
.section .text
sp2:
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l7:
Lproc_body_start_l6:
	movl $0,%edx
	movl %eax,(%esp)
	leal init_stack,%eax
	movl %edx,(%eax)
	movl (%esp),%eax
	movl $1,%edx
	movl %ecx,4(%esp)
	leal 16(%esp), %ecx
	movl %ebx,8(%esp)
	movl $-4,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $1,%ecx
	leal 16(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl 8(%esp),%ebx
	leal 16(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	jmp sp2_help
.section .text
.section .text
sp2_help:
	leal -60(%esp), %esp
	leal 60(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl %eax,8(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 60(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l19:
Lproc_body_start_l18:
	movl %ecx,12(%esp)
	movl $1,%ecx
	movl %eax,16(%esp)
	movl $2,%eax
	movl %edx,20(%esp)
	movl $3,%edx
	movl %ebx,24(%esp)
	movl $4,%ebx
	movl %ebp,28(%esp)
	movl $5,%ebp
	movl %esi,32(%esp)
	movl $6,%esi
	movl %edi,36(%esp)
	movl $7,%edi
	movl %ecx,40(%esp)
	leal init_stack,%ecx
	movl (%ecx),%ecx
	movl %eax,44(%esp)
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l28
Ljoin_l29:
	leal 60(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal init_stack,%ecx
	movl %eax,(%ecx)
	jmp Ljoin_l26
Ljoin_l28:
	leal stack_address,%eax
	leal 60(%esp), %ecx
	movl %ebx,48(%esp)
	movl $-60,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal init_stack,%ecx
	movl (%ecx),%ebx
	subl %ebx,%eax
	leal 60(%esp), %ebx
	movl $-56,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,52(%esp)
	call printf
Ljoin_l27:
	movl 52(%esp),%edx
	movl 48(%esp),%ebx
	jmp Ljoin_l26
Ljoin_l26:
	movl 40(%esp),%eax
	movl 44(%esp),%ecx
	addl %ecx,%eax
	addl %edx,%eax
	addl %ebx,%eax
	addl %ebp,%eax
	addl %esi,%eax
	addl %edi,%eax
	movl $1,%eax
	movl 8(%esp),%edi
	cmpl %eax,%edi
	je Ljoin_l22
Ljoin_l23:
	movl $1,%eax
	movl %edi,%esi
	subl %eax,%esi
	movl %esi,%eax
	movl 12(%esp),%esi
	addl %edi,%esi
	leal 60(%esp), %ebp
	movl $4,%ebx
	addl %ebx,%ebp
	movl %esi,(%ebp)
	movl 16(%esp),%ebp
	imull %edi,%ebp
	leal 60(%esp), %edi
	movl $8,%esi
	addl %esi,%edi
	movl %ebp,(%edi)
	movl 24(%esp),%ebx
	movl 28(%esp),%ebp
	movl 32(%esp),%esi
	movl 36(%esp),%edi
	leal 60(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal 60(%esp), %esp
	jmp sp2_help
Ljoin_l22:
	movl 12(%esp),%eax
	movl 16(%esp),%edx
	leal 60(%esp), %ecx
	movl $8,%edi
	addl %edi,%ecx
	movl 20(%esp),%edi
	movl %edi,(%ecx)
	movl 24(%esp),%ebx
	movl 28(%esp),%ebp
	movl 32(%esp),%esi
	movl 36(%esp),%edi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l35:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l27
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0xffffffc4
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l35
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffe8
.long 0xffffffcc
.long 0xffffffd0
.long 0xffffffd4
.long 0xffffffec
.long 0xfffffff0
.long 0xfffffff8
.long 0xfffffff4
.long 0x40000009
.long 0x4000000a
.long 0x4000000b
.long 0
.long 0x80000000
.section .text
.section .text
tail_from_c:
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 60(%esp), %ecx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 60(%esp), %ecx
	movl %edx,16(%esp)
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 60(%esp), %ecx
	movl %eax,20(%esp)
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 60(%esp), %ecx
	movl %edx,24(%esp)
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 60(%esp), %ecx
	movl %eax,28(%esp)
	movl $24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 60(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l39:
Lproc_body_start_l38:
	movl %eax,32(%esp)
	movl 12(%esp),%eax
	movl %ecx,40(%esp)
	movl %edx,36(%esp)
	call sp2
Ljoin_l49:
	movl 16(%esp),%ecx
	movl %ebx,44(%esp)
	movl 20(%esp),%ebx
	addl %ebx,%ecx
	movl 24(%esp),%ebx
	addl %ebx,%ecx
	movl 28(%esp),%ebx
	addl %ebx,%ecx
	movl 36(%esp),%ebx
	addl %ebx,%ecx
	movl 32(%esp),%ebx
	addl %ebx,%ecx
	leal sp_str,%ebx
	movl %ebp,48(%esp)
	leal 60(%esp), %ebp
	movl %esi,52(%esp)
	movl $-60,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	leal 60(%esp), %ebx
	movl $-56,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	leal 60(%esp), %eax
	movl $-52,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	movl %ecx,56(%esp)
	call printf
Ljoin_l46:
	leal total_str,%eax
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	call printf
Ljoin_l43:
	movl $0,%eax
	leal 60(%esp), %ecx
	movl $24,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	movl 44(%esp),%ebx
	movl 48(%esp),%ebp
	movl 52(%esp),%esi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l54:
.long 0
.section .pcmap
.long Ljoin_l49
.long Lframe_l55
.section .pcmap_data
Lframe_l55:
.long 0xffffffc4
.long 0x8000001c
.long 0xffffffec
.long Lstackdata_l54
.long 0x80000008
.long 0x8000000a
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
.long 0xffffffd4
.long 0xffffffd8
.long 0xffffffdc
.long 0xffffffe0
.long 0xffffffe8
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l46
.long Lframe_l56
.section .pcmap_data
Lframe_l56:
.long 0xffffffc4
.long 0x8000001c
.long 0xffffffec
.long Lstackdata_l54
.long 0x80000008
.long 0x8000000a
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0xfffffff8
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
.long 0xfffffffc
.long 0x80000000
.section .pcmap
.long Ljoin_l43
.long Lframe_l57
.section .pcmap_data
Lframe_l57:
.long 0xffffffc4
.long 0x8000001c
.long 0xffffffec
.long Lstackdata_l54
.long 0x80000008
.long 0x8000000a
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0xfffffff8
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
.long 0x80000000
.section .text
.section .text
main:
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 32(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l60:
Lproc_body_start_l59:
	movl $7,%eax
	movl $1,%edx
	leal 32(%esp), %ecx
	movl %ebx,(%esp)
	movl $-24,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $2,%ecx
	leal 32(%esp), %edx
	movl $-20,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $3,%ecx
	leal 32(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $4,%ecx
	leal 32(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $5,%ecx
	leal 32(%esp), %edx
	movl $-8,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $6,%ecx
	leal 32(%esp), %edx
	movl $-4,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl (%esp),%ebx
	leal 32(%esp), %ecx
	leal 32(%esp), %edx
	movl %ecx,4(%esp)
	movl $-28,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	jmp tail_from_c
.section .text
