.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
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
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l6:
.Lproc_body_start_l5:
	movl $0,%ecx
	leal init_stack,%edx
	movl %ecx,(%edx)
	movl $1,%ecx
	leal 12(%esp), %edi
	movl $-4,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $1,%ecx
	leal 12(%esp), %edi
	movl $0,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl (%esp),%edi
	leal 12(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	jmp sp2_help
.section .text
.section .text
sp2_help:
	leal -56(%esp), %esp
	movl %eax,8(%esp)
	leal 56(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,32(%esp)
	leal 56(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	leal 56(%esp), %eax
	movl (%eax),%eax
	movl %eax,48(%esp)
	movl %edi,28(%esp)
	movl %esi,36(%esp)
	movl %ebp,40(%esp)
	movl %ebx,44(%esp)
.Linitialize_continuations_l17:
.Lproc_body_start_l16:
	movl $1,%eax
	movl %eax,16(%esp)
	movl $2,%edi
	movl $3,%esi
	movl $4,%ebp
	movl $5,%ebx
	movl $6,%eax
	movl %eax,20(%esp)
	movl $7,%eax
	movl %eax,12(%esp)
.Lbranch_target_l33:
	leal init_stack,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne .Lbranch_target_l28
.Lbranch_target_l24:
	leal 56(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal init_stack,%ecx
	movl %eax,(%ecx)
	jmp .Lbranch_target_l23
.Lbranch_target_l28:
	leal stack_address,%eax
	leal 56(%esp), %edx
	movl $-56,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 56(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal init_stack,%ecx
	movl (%ecx),%ecx
	subl %ecx,%eax
	leal 56(%esp), %edx
	movl $-52,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l27:
.Lbranch_target_l23:
	movl 16(%esp),%eax
	addl %edi,%eax
	addl %esi,%eax
	addl %ebp,%eax
	addl %ebx,%eax
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
.Lbranch_target_l32:
	movl $1,%ecx
	movl 8(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l22
.Lbranch_target_l20:
	movl $1,%ecx
	movl 8(%esp),%eax
	subl %ecx,%eax
	movl 32(%esp),%edx
	movl 8(%esp),%ecx
	addl %ecx,%edx
	leal 56(%esp), %ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl 24(%esp),%edx
	movl 8(%esp),%ecx
	imull %ecx,%edx
	leal 56(%esp), %ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl 28(%esp),%edi
	movl 36(%esp),%esi
	movl 40(%esp),%ebp
	movl 44(%esp),%ebx
	leal 56(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	leal 56(%esp), %esp
	jmp sp2_help
.Lbranch_target_l22:
	movl 32(%esp),%eax
	movl 24(%esp),%edx
	leal 56(%esp), %ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl 48(%esp),%ebx
	movl %ebx,(%ecx)
	movl 28(%esp),%edi
	movl 36(%esp),%esi
	movl 40(%esp),%ebp
	movl 44(%esp),%ebx
	leal 64(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l36:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l27
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x8000000c
.long 0xffffffc8
.long 0xfffffff8
.long .Lstackdata_l36
.long 4
.long 11
.long 0
.long 1
.long 11
.long 0xffffffe4
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0xffffffd0
.long 0xffffffe8
.long 0xffffffe0
.long 0xffffffd8
.long 0x4000000b
.long 0x4000000a
.long 0x40000009
.long 0x40000007
.long 0xffffffdc
.long 0xffffffd4
.long 0
.long 0
.section .text
.section .text
tail_from_c:
	leal -52(%esp), %esp
	leal 52(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,32(%esp)
	leal 52(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,28(%esp)
	leal 52(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,24(%esp)
	leal 52(%esp), %edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,20(%esp)
	leal 52(%esp), %edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,16(%esp)
	leal 52(%esp), %edx
	movl $24,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,12(%esp)
	leal 52(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,48(%esp)
	movl %edi,44(%esp)
	movl %esi,40(%esp)
	movl %ebp,36(%esp)
.Linitialize_continuations_l39:
.Lproc_body_start_l38:
	call sp2
.Lcall_successor_l49:
	movl 32(%esp),%ebp
	movl 28(%esp),%ecx
	addl %ecx,%ebp
	movl 24(%esp),%ecx
	addl %ecx,%ebp
	movl 20(%esp),%ecx
	addl %ecx,%ebp
	movl 16(%esp),%ecx
	addl %ecx,%ebp
	movl 12(%esp),%ecx
	addl %ecx,%ebp
	leal sp_str,%ecx
	leal 52(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 52(%esp), %ecx
	movl $-48,%esi
	addl %esi,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l46:
	leal total_str,%ecx
	leal 52(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl %ebp,(%eax)
	call printf
.Lcall_successor_l43:
	movl $0,%eax
	leal 52(%esp), %ecx
	movl $24,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	movl 44(%esp),%edi
	movl 40(%esp),%esi
	movl 36(%esp),%ebp
	leal 76(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l54:
.long 0
.section .pcmap
.long .Lcall_successor_l49
.long .Lframe_l55
.section .pcmap_data
.Lframe_l55:
.long 0x8000001c
.long 0xffffffcc
.long 0xfffffffc
.long .Lstackdata_l54
.long 3
.long 10
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff0
.long 0
.long 0xffffffec
.long 0xffffffe8
.long 0xffffffe4
.long 0xffffffe0
.long 0xffffffdc
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l46
.long .Lframe_l56
.section .pcmap_data
.Lframe_l56:
.long 0x8000001c
.long 0xffffffcc
.long 0xfffffffc
.long .Lstackdata_l54
.long 3
.long 10
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
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
.long 0x40000009
.long 0
.section .pcmap
.long .Lcall_successor_l43
.long .Lframe_l57
.section .pcmap_data
.Lframe_l57:
.long 0x8000001c
.long 0xffffffcc
.long 0xfffffffc
.long .Lstackdata_l54
.long 3
.long 10
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
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
.long 0
.section .text
.section .text
main:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l59:
.Lproc_body_start_l58:
	movl $7,%eax
	movl $1,%ecx
	leal 28(%esp), %edi
	movl $-20,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $2,%ecx
	leal 28(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $3,%ecx
	leal 28(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $4,%ecx
	leal 28(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $5,%ecx
	leal 28(%esp), %edi
	movl $-4,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $6,%ecx
	leal 28(%esp), %edi
	movl $0,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl (%esp),%edi
	leal 28(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	jmp tail_from_c
.section .text
