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
	leal -48(%esp), %esp
	leal 48(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %eax
	movl (%eax),%eax
	movl %eax,40(%esp)
	movl %edi,36(%esp)
	movl %esi,32(%esp)
	movl %ebp,28(%esp)
	movl %ebx,24(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal -8(%esp), %esp
	leal 56(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%edx
	leal 56(%esp), %ecx
	movl $-56,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $10,%edx
	leal 56(%esp), %ecx
	movl $-52,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call down
.Lcall_successor_l23:
	movl %eax,%esi
	leal -8(%esp), %esp
	leal 56(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%edx
	leal 56(%esp), %ecx
	movl $-56,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $47,%edx
	leal 56(%esp), %ecx
	movl $-52,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call down
.Lcall_successor_l20:
	movl %eax,%ebp
	leal -8(%esp), %esp
	leal 56(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%edx
	leal 56(%esp), %ecx
	movl $-56,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $100,%edx
	leal 56(%esp), %ecx
	movl $-52,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call down
.Lcall_successor_l17:
	movl %eax,%ebx
	movl %ebx,%eax
	subl %esi,%eax
	movl $90,%ecx
	movl $0,%edx
	divl %ecx, %eax
	movl $10,%edx
	imull %eax,%edx
	movl %esi,%ecx
	subl %edx,%ecx
.Lbranch_target_l28:
	movl $3,%edx
	cmpl %edx,%eax
	jae .Lbranch_target_l27
	jmp .Lbranch_target_l10
.Lbranch_target_l27:
	movl $47,%edi
	movl %eax,%edx
	imull %edi,%edx
	addl %ecx,%edx
	cmpl %ebp,%edx
	je .Lbranch_target_l14
.Lbranch_target_l10:
	leal badcmp,%ecx
	leal 48(%esp), %edi
	movl $-48,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 48(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	leal 48(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %ebp,(%ecx)
	leal 48(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal 48(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $47,%ecx
	imull %ecx,%eax
	leal 48(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l9:
	jmp .Lbranch_target_l6
.Lbranch_target_l14:
	leal goodcmp,%ecx
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l13:
.Lbranch_target_l6:
	movl $0,%eax
	leal 48(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	movl 36(%esp),%edi
	movl 32(%esp),%esi
	movl 28(%esp),%ebp
	movl 24(%esp),%ebx
	leal 48(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l31:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000004
.long 0xffffffd0
.long 0xfffffff8
.long .Lstackdata_l31
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 7
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000004
.long 0xffffffd0
.long 0xfffffff8
.long .Lstackdata_l31
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 7
.long 0xffffffe8
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000004
.long 0xffffffd0
.long 0xfffffff8
.long .Lstackdata_l31
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 7
.long 0xffffffe8
.long 0
.long 0
.long 0x4000000a
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l9
.long .Lframe_l35
.section .pcmap_data
.Lframe_l35:
.long 0x80000004
.long 0xffffffd0
.long 0xfffffff8
.long .Lstackdata_l31
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 7
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l13
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x80000004
.long 0xffffffd0
.long 0xfffffff8
.long .Lstackdata_l31
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 7
.long 0xffffffe8
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
	movl %eax,4(%esp)
	movl %ebp,8(%esp)
	movl %ebx,12(%esp)
.Linitialize_continuations_l38:
.Lproc_body_start_l37:
.Lbranch_target_l49:
	cmpl %edx,%ecx
	jb .Lbranch_target_l45
.Lbranch_target_l40:
	leal 20(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl (%esp),%eax
	subl %ecx,%eax
	leal 20(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%ebp
	movl 12(%esp),%ebx
	leal 28(%esp), %esp
	ret
.Lbranch_target_l45:
	leal -12(%esp), %esp
	leal down,%eax
	leal 32(%esp), %ebp
	movl $-32,%ebx
	addl %ebx,%ebp
	movl 12(%esp),%ebx
	movl %ebx,(%ebp)
	movl $1,%ebx
	addl %ebx,%ecx
	leal 32(%esp), %ebp
	movl $-28,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	leal 32(%esp), %ecx
	movl $-24,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call call3
.Lcall_successor_l44:
	leal 20(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%ebp
	movl 12(%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l51:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l44
.long .Lframe_l52
.section .pcmap_data
.Lframe_l52:
.long 0x8000000c
.long 0xffffffec
.long 0xfffffff0
.long .Lstackdata_l51
.long 2
.long 4
.long 0
.long 1
.long 9
.long 0xfffffff4
.long 7
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
goodcmp:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 100
.byte 111
.byte 119
.byte 110
.byte 32
.byte 49
.byte 48
.byte 32
.byte 97
.byte 110
.byte 100
.byte 32
.byte 49
.byte 48
.byte 48
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 112
.byte 114
.byte 101
.byte 100
.byte 105
.byte 99
.byte 116
.byte 115
.byte 32
.byte 52
.byte 55
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 119
.byte 105
.byte 116
.byte 104
.byte 32
.byte 115
.byte 105
.byte 122
.byte 101
.byte 32
.byte 62
.byte 61
.byte 32
.byte 51
.byte 10
.byte 0
badcmp:
.byte 98
.byte 97
.byte 100
.byte 32
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 58
.byte 32
.byte 100
.byte 49
.byte 48
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 100
.byte 52
.byte 55
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 100
.byte 49
.byte 48
.byte 48
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 99
.byte 111
.byte 109
.byte 112
.byte 117
.byte 116
.byte 101
.byte 100
.byte 32
.byte 100
.byte 49
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 100
.byte 52
.byte 55
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
