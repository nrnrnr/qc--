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
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l7:
.Lproc_body_start_l6:
	movl $0,%ecx
	movl %edx,(%esp)
	leal init_stack,%edx
	movl %ecx,(%edx)
	movl $1,%edx
	leal 16(%esp), %ecx
	movl %edx,4(%esp)
	movl $-4,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl $1,%edx
	leal 16(%esp), %ecx
	movl %edx,8(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	jmp sp2_help
.section .text
.section .text
sp2_help:
	leal -88(%esp), %esp
	leal 88(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 88(%esp), %ecx
	movl %edx,8(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 88(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l19:
.Lproc_body_start_l18:
	movl %edx,12(%esp)
	movl $1,%edx
	movl %edx,16(%esp)
	movl $2,%edx
	movl %edx,20(%esp)
	movl $3,%edx
	movl %edx,24(%esp)
	movl $4,%edx
	movl %edx,28(%esp)
	movl $5,%edx
	movl %edx,32(%esp)
	movl $6,%edx
	movl %edx,36(%esp)
	movl $7,%edx
	movl %edx,40(%esp)
	leal init_stack,%edx
	movl (%edx),%edx
	movl %edx,44(%esp)
	movl $0,%edx
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	cmpl %edx,%ecx
	jne .Ljoin_l28
.Ljoin_l29:
	leal 88(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	leal init_stack,%ecx
	movl %edx,(%ecx)
	jmp .Ljoin_l26
.Ljoin_l28:
	leal stack_address,%ecx
	leal 88(%esp), %edx
	movl %edi,52(%esp)
	movl $-88,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 88(%esp), %edi
	movl $-4,%ecx
	addl %ecx,%edi
	leal init_stack,%ecx
	movl (%ecx),%ecx
	subl %ecx,%edi
	leal 88(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,56(%esp)
	call printf
.Ljoin_l27:
	movl 52(%esp),%edi
	movl 56(%esp),%eax
	jmp .Ljoin_l26
.Ljoin_l26:
	movl 16(%esp),%edx
	movl 20(%esp),%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	addl %ecx,%edx
	movl $1,%edx
	cmpl %edx,%eax
	je .Ljoin_l22
.Ljoin_l23:
	movl $1,%edx
	movl %eax,%ecx
	subl %edx,%ecx
	movl %eax,56(%esp)
	movl %ecx,%eax
	movl 8(%esp),%edx
	movl 56(%esp),%ecx
	addl %ecx,%edx
	movl %edx,60(%esp)
	leal 88(%esp), %edx
	movl %edx,64(%esp)
	movl $4,%edx
	movl %edx,68(%esp)
	movl 64(%esp),%edx
	movl 68(%esp),%ecx
	addl %ecx,%edx
	movl 60(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%edx
	movl 56(%esp),%ecx
	imull %ecx,%edx
	leal 88(%esp), %ecx
	movl %edx,72(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl 72(%esp),%edx
	movl %edx,(%ecx)
	leal 88(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	leal 88(%esp), %esp
	jmp sp2_help
.Ljoin_l22:
	movl 8(%esp),%eax
	movl 12(%esp),%edx
	leal 88(%esp), %ecx
	movl %ecx,76(%esp)
	movl $8,%ecx
	movl %ecx,80(%esp)
	movl 76(%esp),%ecx
	movl %edi,52(%esp)
	movl 80(%esp),%edi
	addl %edi,%ecx
	movl 48(%esp),%edi
	movl %edi,(%ecx)
	movl 52(%esp),%edi
	leal 96(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l35:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Ljoin_l27
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x8000000c
.long 0xffffffa8
.long 0xffffffd8
.long .Lstackdata_l35
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffffdc
.long 0xffffffe0
.long 0xffffffb0
.long 0xffffffb4
.long 0xffffffb8
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
.long 0xffffffd0
.long 0
.long 0
.section .text
.section .text
tail_from_c:
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl %ecx,12(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 64(%esp), %edx
	movl %ecx,16(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 64(%esp), %edx
	movl %ecx,20(%esp)
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 64(%esp), %edx
	movl %ecx,24(%esp)
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 64(%esp), %edx
	movl %ecx,28(%esp)
	movl $24,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 64(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l39:
.Lproc_body_start_l38:
	movl %edx,36(%esp)
	movl %ecx,32(%esp)
	call sp2
.Ljoin_l49:
	movl 12(%esp),%ecx
	movl %edi,40(%esp)
	movl 16(%esp),%edi
	addl %edi,%ecx
	movl 20(%esp),%edi
	addl %edi,%ecx
	movl 24(%esp),%edi
	addl %edi,%ecx
	movl 28(%esp),%edi
	addl %edi,%ecx
	movl 32(%esp),%edi
	addl %edi,%ecx
	leal sp_str,%edi
	movl %edi,44(%esp)
	leal 64(%esp), %edi
	movl %edi,48(%esp)
	movl $-64,%edi
	movl %edi,52(%esp)
	movl 48(%esp),%edi
	movl %esi,56(%esp)
	movl 52(%esp),%esi
	addl %esi,%edi
	movl 44(%esp),%esi
	movl %esi,(%edi)
	leal 64(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 64(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %ecx,60(%esp)
	call printf
.Ljoin_l46:
	leal total_str,%edi
	leal 64(%esp), %esi
	movl $-64,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 64(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl 60(%esp),%esi
	movl %esi,(%edi)
	call printf
.Ljoin_l43:
	movl $0,%eax
	leal 64(%esp), %edx
	movl $24,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 56(%esp),%esi
	movl 40(%esp),%edi
	leal 88(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l54:
.long 0
.section .pcmap
.long .Ljoin_l49
.long .Lframe_l55
.section .pcmap_data
.Lframe_l55:
.long 0x8000001c
.long 0xffffffc0
.long 0xffffffe4
.long .Lstackdata_l54
.long 0
.long 10
.long 0
.long 1
.long 0
.long 0xffffffcc
.long 0xffffffd0
.long 0xffffffd4
.long 0xffffffd8
.long 0xffffffdc
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l46
.long .Lframe_l56
.section .pcmap_data
.Lframe_l56:
.long 0x8000001c
.long 0xffffffc0
.long 0xffffffe4
.long .Lstackdata_l54
.long 2
.long 10
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffe8
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
.long 0
.section .pcmap
.long .Ljoin_l43
.long .Lframe_l57
.section .pcmap_data
.Lframe_l57:
.long 0x8000001c
.long 0xffffffc0
.long 0xffffffe4
.long .Lstackdata_l54
.long 2
.long 10
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffe8
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
	leal -56(%esp), %esp
	leal 56(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 56(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 56(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l60:
.Lproc_body_start_l59:
	movl $7,%eax
	movl $1,%ecx
	movl %edx,(%esp)
	leal 56(%esp), %edx
	movl %edx,4(%esp)
	movl $-20,%edx
	movl %edx,8(%esp)
	movl 4(%esp),%edx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $2,%edx
	leal 56(%esp), %ecx
	movl %edx,16(%esp)
	movl $-16,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl $3,%edx
	leal 56(%esp), %ecx
	movl %edx,20(%esp)
	movl $-12,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%edx
	leal 56(%esp), %ecx
	movl %edx,24(%esp)
	movl $-8,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $5,%edx
	leal 56(%esp), %ecx
	movl %edx,28(%esp)
	movl $-4,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl $6,%edx
	leal 56(%esp), %ecx
	movl %edx,32(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 56(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 32(%esp), %esp
	jmp tail_from_c
.section .text
