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
	movl $-4,%ecx
	movl %ebx,4(%esp)
	leal 12(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $1,%edx
	movl $0,%ebx
	leal 12(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl 4(%esp),%ebx
	movl $-8,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	jmp sp2_help
.section .text
.section .text
sp2_help:
	leal -56(%esp), %esp
	movl $4,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,8(%esp)
	leal 56(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 56(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l19:
Lproc_body_start_l18:
	movl %ecx,12(%esp)
	movl $1,%ecx
	movl %edx,16(%esp)
	movl $2,%edx
	movl %eax,20(%esp)
	movl $3,%eax
	movl %ebx,24(%esp)
	movl $4,%ebx
	movl %ebp,28(%esp)
	movl $5,%ebp
	movl %esi,32(%esp)
	movl $6,%esi
	movl %edi,36(%esp)
	movl $7,%edi
	movl %ecx,40(%esp)
	leal stack_address,%ecx
	movl %edx,44(%esp)
	movl $-56,%edx
	movl %eax,48(%esp)
	leal 56(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-4,%eax
	leal 56(%esp), %ecx
	addl %eax,%ecx
	movl $-52,%eax
	leal 56(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
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
	movl $4,%ebp
	leal 56(%esp), %ebx
	addl %ebp,%ebx
	movl %esi,(%ebx)
	movl 16(%esp),%ebx
	imull %edi,%ebx
	movl $8,%edi
	leal 56(%esp), %esi
	addl %edi,%esi
	movl %ebx,(%esi)
	movl 24(%esp),%ebx
	movl 28(%esp),%ebp
	movl 32(%esp),%esi
	movl 36(%esp),%edi
	movl $0,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal 56(%esp), %esp
	jmp sp2_help
Ljoin_l22:
	movl 12(%esp),%eax
	movl 16(%esp),%edx
	movl $8,%ecx
	leal 56(%esp), %edi
	addl %ecx,%edi
	movl 20(%esp),%ecx
	movl %ecx,(%edi)
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
	movl $4,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,12(%esp)
	leal 60(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	movl %ecx,16(%esp)
	leal 60(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $16,%ecx
	movl %edx,20(%esp)
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $20,%edx
	movl %eax,24(%esp)
	leal 60(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $24,%eax
	movl %ecx,28(%esp)
	leal 60(%esp), %ecx
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
	movl $-60,%ebp
	movl %esi,52(%esp)
	leal 60(%esp), %esi
	addl %ebp,%esi
	movl %ebx,(%esi)
	movl $-56,%ebx
	leal 60(%esp), %esi
	addl %ebx,%esi
	movl %eax,(%esi)
	movl $-52,%eax
	leal 60(%esp), %esi
	addl %eax,%esi
	movl %edx,(%esi)
	movl %ecx,56(%esp)
	call printf
Ljoin_l43:
	leal total_str,%eax
	movl $-60,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-56,%eax
	leal 60(%esp), %edx
	addl %eax,%edx
	movl 56(%esp),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l40:
	movl $0,%eax
	movl $24,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
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
	movl $4,%edx
	leal 32(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%edx
	leal 32(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l57:
Lproc_body_start_l56:
	movl $7,%eax
	movl $1,%edx
	movl $-24,%ecx
	movl %ebx,(%esp)
	leal 32(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $2,%edx
	movl $-20,%ebx
	leal 32(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $3,%ecx
	movl $-16,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $4,%ecx
	movl $-12,%ebx
	leal 32(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $5,%ecx
	movl $-8,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $6,%ecx
	movl $-4,%ebx
	leal 32(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl (%esp),%ebx
	leal 32(%esp), %ecx
	movl $-28,%edx
	movl %ecx,4(%esp)
	leal 32(%esp), %ecx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	jmp tail_from_c
.section .text
