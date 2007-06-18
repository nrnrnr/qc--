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
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal -8(%esp), %esp
	leal 56(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,24(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 56(%esp), %edx
	movl %ecx,28(%esp)
	movl $-56,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl $10,%ecx
	leal 56(%esp), %edx
	movl %ecx,32(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	call down
.Lcall_successor_l14:
	leal -8(%esp), %esp
	leal 56(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,36(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 56(%esp), %edx
	movl %ecx,40(%esp)
	movl $-56,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl $100,%ecx
	leal 56(%esp), %edx
	movl %ecx,44(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	call down
.Lcall_successor_l11:
	leal pcmp,%ecx
	leal 48(%esp), %edx
	movl %eax,40(%esp)
	movl $-48,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $100,%eax
	leal 48(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl 40(%esp),%eax
	movl 28(%esp),%ecx
	subl %ecx,%eax
	leal 48(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $10,%eax
	leal 48(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l8:
	movl $0,%eax
	leal 48(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l20:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l21
.section .pcmap_data
.Lframe_l21:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffe0
.long .Lstackdata_l20
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l22
.section .pcmap_data
.Lframe_l22:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffe0
.long .Lstackdata_l20
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l23
.section .pcmap_data
.Lframe_l23:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffe0
.long .Lstackdata_l20
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
.section .text
down:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 36(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l25:
.Lproc_body_start_l24:
.Lbranch_target_l30:
.Lbranch_target_l34:
	cmpl %eax,%ecx
	jb .Lbranch_target_l29
.Lbranch_target_l27:
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	leal 36(%esp), %ecx
	movl %ecx,24(%esp)
	movl $8,%ecx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	movl %edx,16(%esp)
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
.Lbranch_target_l29:
	movl %eax,4(%esp)
	movl (%esp),%eax
	movl %ecx,8(%esp)
	movl $1,%ecx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	movl %edx,16(%esp)
	movl 12(%esp),%edx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl %ecx,20(%esp)
	movl $4,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal 36(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal down,%ecx
	movl %ecx,%edx
	leal 36(%esp), %esp
	jmp *%edx
.section .text
.section .data
pcmp:
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
.byte 105
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
.byte 100
.byte 101
.byte 101
.byte 112
.byte 101
.byte 114
.byte 32
.byte 116
.byte 104
.byte 97
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
.byte 10
.byte 0
pdown:
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
pdownr:
.byte 118
.byte 97
.byte 108
.byte 117
.byte 101
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 101
.byte 100
.byte 32
.byte 97
.byte 102
.byte 116
.byte 101
.byte 114
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
.byte 105
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
