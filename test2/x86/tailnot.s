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
	leal -92(%esp), %esp
	leal 92(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 92(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 92(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal -8(%esp), %esp
	leal 100(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,32(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 100(%esp), %edx
	movl %ecx,36(%esp)
	movl $-100,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl $10,%ecx
	leal 100(%esp), %edx
	movl %ecx,40(%esp)
	movl $-96,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	call down
.Lcall_successor_l24:
	leal -8(%esp), %esp
	leal 100(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,44(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 100(%esp), %edx
	movl %ecx,48(%esp)
	movl $-100,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl $47,%ecx
	leal 100(%esp), %edx
	movl %ecx,52(%esp)
	movl $-96,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl %ecx,(%edx)
	call down
.Lcall_successor_l21:
	leal -8(%esp), %esp
	leal 100(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,56(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 100(%esp), %edx
	movl %ecx,60(%esp)
	movl $-100,%ecx
	addl %ecx,%edx
	movl 60(%esp),%ecx
	movl %ecx,(%edx)
	movl $100,%ecx
	leal 100(%esp), %edx
	movl %ecx,64(%esp)
	movl $-96,%ecx
	addl %ecx,%edx
	movl 64(%esp),%ecx
	movl %ecx,(%edx)
	call down
.Lcall_successor_l18:
	movl %eax,%ecx
	movl 36(%esp),%edx
	subl %edx,%ecx
	movl %eax,60(%esp)
	movl $90,%eax
	movl %eax,64(%esp)
	movl %ecx,%eax
	movl $0,%edx
	movl 64(%esp),%ecx
	divl %ecx, %eax
	movl $10,%ecx
	imull %eax,%ecx
	movl %eax,68(%esp)
	movl 36(%esp),%edx
	movl %edx,%eax
	subl %ecx,%eax
.Lbranch_target_l15:
.Lbranch_target_l29:
	movl $3,%ecx
	movl %eax,72(%esp)
	movl 68(%esp),%eax
	cmpl %ecx,%eax
.Lbranch_target_l31:
	jae .Lbranch_target_l28
.L.Lbranch_target_l10_l30:
	movl 48(%esp),%ecx
	jmp .Lbranch_target_l10
.Lbranch_target_l28:
	movl $47,%ecx
	imull %ecx,%eax
	movl 72(%esp),%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l14
.Lbranch_target_l10:
	leal badcmp,%eax
	movl %eax,76(%esp)
	leal 92(%esp), %eax
	movl %eax,80(%esp)
	movl $-92,%eax
	movl %eax,84(%esp)
	movl 80(%esp),%eax
	movl 84(%esp),%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-88,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 92(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	movl $47,%eax
	imull %eax,%ecx
	leal 92(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l9:
	jmp .Lbranch_target_l6
.Lbranch_target_l14:
	leal goodcmp,%eax
	leal 92(%esp), %ecx
	movl $-92,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l13:
.Lbranch_target_l6:
	movl $0,%eax
	leal 92(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 92(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l34:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l24
.long .Lframe_l35
.section .pcmap_data
.Lframe_l35:
.long 0x80000004
.long 0xffffffa4
.long 0xffffffbc
.long .Lstackdata_l34
.long 0
.long 7
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x80000004
.long 0xffffffa4
.long 0xffffffbc
.long .Lstackdata_l34
.long 0
.long 7
.long 0
.long 1
.long 0
.long 0
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x80000004
.long 0xffffffa4
.long 0xffffffbc
.long .Lstackdata_l34
.long 0
.long 7
.long 0
.long 1
.long 0
.long 0
.long 0xffffffc8
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l9
.long .Lframe_l38
.section .pcmap_data
.Lframe_l38:
.long 0x80000004
.long 0xffffffa4
.long 0xffffffbc
.long .Lstackdata_l34
.long 0
.long 7
.long 0
.long 1
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
.long .Lframe_l39
.section .pcmap_data
.Lframe_l39:
.long 0x80000004
.long 0xffffffa4
.long 0xffffffbc
.long .Lstackdata_l34
.long 0
.long 7
.long 0
.long 1
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
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 48(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 48(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l41:
.Lproc_body_start_l40:
.Lbranch_target_l49:
.Lbranch_target_l53:
	cmpl %eax,%ecx
	jb .Lbranch_target_l48
.Lbranch_target_l43:
	leal 48(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	leal 48(%esp), %ecx
	movl %ecx,36(%esp)
	movl $8,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,20(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 56(%esp), %esp
	ret
.Lbranch_target_l48:
	leal -12(%esp), %esp
	movl %eax,16(%esp)
	leal down,%eax
	movl %ecx,20(%esp)
	leal 60(%esp), %ecx
	movl %ecx,24(%esp)
	movl $-60,%ecx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	movl %edx,32(%esp)
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl $1,%ecx
	movl 20(%esp),%edx
	addl %ecx,%edx
	leal 60(%esp), %ecx
	movl %ecx,36(%esp)
	movl $-56,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,44(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	call call3
.Lcall_successor_l47:
	leal 48(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 56(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l55:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l47
.long .Lframe_l56
.section .pcmap_data
.Lframe_l56:
.long 0x8000000c
.long 0xffffffd0
.long 0xffffffe4
.long .Lstackdata_l55
.long 0
.long 4
.long 0
.long 1
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
