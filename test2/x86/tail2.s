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
	leal -60(%esp), %esp
	leal 60(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal -8(%esp), %esp
	leal 68(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,28(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 68(%esp), %edx
	movl %ecx,32(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl $10,%ecx
	leal 68(%esp), %edx
	movl %ecx,36(%esp)
	movl $-64,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	call down
.Lcall_successor_l21:
	leal -8(%esp), %esp
	leal 68(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,40(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 68(%esp), %edx
	movl %ecx,44(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl $100,%ecx
	leal 68(%esp), %edx
	movl %ecx,48(%esp)
	movl $-64,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	call down
.Lcall_successor_l18:
.Lbranch_target_l15:
.Lbranch_target_l25:
	movl 32(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l14
.Lbranch_target_l10:
	leal pbad,%edx
	movl %eax,44(%esp)
	leal 60(%esp), %eax
	movl %eax,48(%esp)
	movl $-60,%eax
	movl %eax,52(%esp)
	movl 48(%esp),%eax
	movl 52(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $10,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl $100,%eax
	leal 60(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l9:
	jmp .Lbranch_target_l6
.Lbranch_target_l14:
	leal pgood,%eax
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $10,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $100,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l13:
.Lbranch_target_l6:
	movl $0,%eax
	leal 60(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l28:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd8
.long .Lstackdata_l28
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
.long .Lcall_successor_l18
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd8
.long .Lstackdata_l28
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0xffffffe4
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l9
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd8
.long .Lstackdata_l28
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
.long .Lcall_successor_l13
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd8
.long .Lstackdata_l28
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
	leal -52(%esp), %esp
	leal 52(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 52(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l34:
.Lproc_body_start_l33:
.Lbranch_target_l39:
.Lbranch_target_l43:
	cmpl %eax,%ecx
	jb .Lbranch_target_l38
.Lbranch_target_l36:
	leal 52(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	leal 52(%esp), %ecx
	movl %ecx,36(%esp)
	movl $8,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,20(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
	ret
.Lbranch_target_l38:
	movl %eax,4(%esp)
	leal down,%eax
	movl %ecx,8(%esp)
	leal 52(%esp), %ecx
	movl %ecx,12(%esp)
	movl $0,%ecx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	movl %edx,20(%esp)
	movl 16(%esp),%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl $1,%ecx
	movl 8(%esp),%edx
	addl %ecx,%edx
	leal 52(%esp), %ecx
	movl %ecx,24(%esp)
	movl $4,%ecx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	movl %edx,32(%esp)
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal call3,%ecx
	movl %ecx,%edx
	leal 48(%esp), %esp
	jmp *%edx
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
