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
.section .text
main:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %eax
	movl (%eax),%eax
	movl %eax,28(%esp)
	movl %edi,24(%esp)
	movl %esi,20(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal -8(%esp), %esp
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%edx
	leal 44(%esp), %ecx
	movl $-44,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	movl $10,%edx
	leal 44(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call down
.Lcall_successor_l20:
	movl %eax,%esi
	leal -8(%esp), %esp
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%ecx
	leal 44(%esp), %edi
	movl $-44,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $100,%ecx
	leal 44(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call down
.Lcall_successor_l17:
.Lbranch_target_l24:
	cmpl %eax,%esi
	je .Lbranch_target_l14
.Lbranch_target_l10:
	leal pbad,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $10,%ecx
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 36(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	movl $100,%edx
	leal 36(%esp), %ecx
	movl $-24,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l9:
	jmp .Lbranch_target_l6
.Lbranch_target_l14:
	leal pgood,%ecx
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $10,%ecx
	leal 36(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $100,%ecx
	leal 36(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l13:
.Lbranch_target_l6:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%edi
	movl 20(%esp),%esi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l27:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff8
.long .Lstackdata_l27
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff8
.long .Lstackdata_l27
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l9
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff8
.long .Lstackdata_l27
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l13
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff8
.long .Lstackdata_l27
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
down:
	leal -20(%esp), %esp
	movl %eax,(%esp)
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 20(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%edx
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %ebp,4(%esp)
	movl %ebx,8(%esp)
.Linitialize_continuations_l33:
.Lproc_body_start_l32:
.Lbranch_target_l41:
	cmpl %edx,%ecx
	jb .Lbranch_target_l37
.Lbranch_target_l35:
	leal 20(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl (%esp),%eax
	subl %ecx,%eax
	leal 20(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%ebp
	movl 8(%esp),%ebx
	leal 28(%esp), %esp
	ret
.Lbranch_target_l37:
	leal down,%eax
	leal 20(%esp), %ebp
	movl $0,%ebx
	addl %ebx,%ebp
	movl (%esp),%ebx
	movl %ebx,(%ebp)
	movl $1,%ebx
	addl %ebx,%ecx
	leal 20(%esp), %ebp
	movl $4,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	leal 20(%esp), %ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl 4(%esp),%ebp
	movl 8(%esp),%ebx
	leal 20(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	jmp call3
.section .text
.section .data
pgood:
.byte 116
.byte 97
.byte 105
.byte 108
.byte 45
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 105
.byte 110
.byte 100
.byte 105
.byte 114
.byte 101
.byte 99
.byte 116
.byte 32
.byte 100
.byte 111
.byte 119
.byte 110
.byte 32
.byte 37
.byte 100
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 117
.byte 115
.byte 101
.byte 115
.byte 32
.byte 115
.byte 97
.byte 109
.byte 101
.byte 32
.byte 115
.byte 112
.byte 97
.byte 99
.byte 101
.byte 32
.byte 97
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 10
.byte 0
pbad:
.byte 117
.byte 104
.byte 45
.byte 111
.byte 104
.byte 33
.byte 32
.byte 116
.byte 97
.byte 105
.byte 108
.byte 45
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 105
.byte 110
.byte 100
.byte 105
.byte 114
.byte 101
.byte 99
.byte 116
.byte 32
.byte 100
.byte 111
.byte 119
.byte 110
.byte 32
.byte 37
.byte 100
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 117
.byte 115
.byte 101
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 98
.byte 121
.byte 116
.byte 101
.byte 115
.byte 32
.byte 111
.byte 102
.byte 32
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 10
.byte 97
.byte 110
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 117
.byte 115
.byte 101
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 98
.byte 121
.byte 116
.byte 101
.byte 115
.byte 32
.byte 111
.byte 102
.byte 32
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 10
.byte 0
