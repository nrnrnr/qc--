.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
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
.byte 58
.byte 32
.byte 37
.byte 120
.byte 10
.byte 0
.section .text
sp2:
	leal -12(%esp), %esp
	leal 12(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l7:
Lproc_body_start_l6:
	movl $1,%edx
	movl %ecx,(%esp)
	leal 12(%esp), %ecx
	movl %ebx,4(%esp)
	movl $-4,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $1,%ecx
	leal 12(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl 4(%esp),%ebx
	leal 12(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	jmp sp2_help
.section .text
.section .text
sp2_help:
	leal -56(%esp), %esp
	leal 56(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 56(%esp), %ecx
	movl %eax,8(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 56(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l19:
Lproc_body_start_l18:
	movl %edx,12(%esp)
	movl $1,%edx
	movl %eax,16(%esp)
	movl $2,%eax
	movl %ecx,20(%esp)
	movl $3,%ecx
	movl %ebx,24(%esp)
	movl $4,%ebx
	movl %ebp,28(%esp)
	movl $5,%ebp
	movl %esi,32(%esp)
	movl $6,%esi
	movl %edi,36(%esp)
	movl $7,%edi
	movl %edx,40(%esp)
	leal stack_address,%edx
	movl %eax,44(%esp)
	leal 56(%esp), %eax
	movl %ecx,48(%esp)
	movl $-56,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 56(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	leal 56(%esp), %edx
	movl $-52,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l26:
	movl 40(%esp),%eax
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	addl %ecx,%eax
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
	leal 56(%esp), %ebp
	movl $4,%ebx
	addl %ebx,%ebp
	movl %esi,(%ebp)
	movl 16(%esp),%ebp
	imull %edi,%ebp
	leal 56(%esp), %edi
	movl $8,%esi
	addl %esi,%edi
	movl %ebp,(%edi)
	movl 24(%esp),%ebx
	movl 28(%esp),%ebp
	movl 32(%esp),%esi
	movl 36(%esp),%edi
	leal 56(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 56(%esp), %esp
	jmp sp2_help
Ljoin_l22:
	movl 12(%esp),%eax
	movl 16(%esp),%edx
	leal 56(%esp), %ecx
	movl $8,%edi
	addl %edi,%ecx
	movl 20(%esp),%edi
	movl %edi,(%ecx)
	movl 24(%esp),%ebx
	movl 28(%esp),%ebp
	movl 32(%esp),%esi
	movl 36(%esp),%edi
	leal 64(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l32:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l26
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffc8
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l32
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0xffffffd0
.long 0xffffffd4
.long 0xffffffd8
.long 0xfffffff0
.long 0xfffffff4
.long 0xfffffff8
.long 0x40000007
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
Linitialize_continuations_l36:
Lproc_body_start_l35:
	movl %eax,32(%esp)
	movl 12(%esp),%eax
	movl %ecx,40(%esp)
	movl %edx,36(%esp)
	call sp2
Ljoin_l46:
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
Ljoin_l43:
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
Ljoin_l40:
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
Lstackdata_l51:
.long 0
.section .pcmap
.long Ljoin_l46
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0xffffffc4
.long 0x8000001c
.long 0xffffffec
.long Lstackdata_l51
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
.long Ljoin_l43
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0xffffffc4
.long 0x8000001c
.long 0xffffffec
.long Lstackdata_l51
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
.long Ljoin_l40
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0xffffffc4
.long 0x8000001c
.long 0xffffffec
.long Lstackdata_l51
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
Linitialize_continuations_l57:
Lproc_body_start_l56:
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
