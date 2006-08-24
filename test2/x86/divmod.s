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
divmod:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl %ecx,4(%esp)
	movl %eax,(%esp)
	movl (%esp),%ecx
	movl %ecx,%eax
	movl %edx,8(%esp)
	movl $0,%edx
	movl 4(%esp),%ecx
	divl %ecx, %eax
	movl %eax,12(%esp)
	movl (%esp),%eax
	movl $0,%edx
	divl %ecx, %eax
	movl 12(%esp),%eax
	leal 28(%esp), %ecx
	movl %ecx,16(%esp)
	movl $4,%ecx
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	movl %ebx,24(%esp)
	movl 20(%esp),%ebx
	addl %ebx,%ecx
	movl 8(%esp),%ebx
	movl %ebx,(%ecx)
	movl 24(%esp),%ebx
	leal 32(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -100(%esp), %esp
	leal 100(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 100(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 100(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l14:
.Lproc_body_start_l13:
	movl $987,%ecx
	movl $33,%edx
	leal -4(%esp), %esp
	movl %eax,36(%esp)
	movl %ecx,%eax
	movl %ecx,40(%esp)
	leal 104(%esp), %ecx
	movl %ecx,44(%esp)
	movl $-104,%ecx
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	movl %edx,52(%esp)
	movl 48(%esp),%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	call divmod
.Lcall_successor_l21:
	leal answer,%ecx
	movl %eax,52(%esp)
	leal 100(%esp), %eax
	movl %eax,56(%esp)
	movl $-100,%eax
	movl %eax,60(%esp)
	movl 56(%esp),%eax
	movl %ecx,64(%esp)
	movl 60(%esp),%ecx
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl $-96,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl %eax,68(%esp)
	movl $-92,%eax
	movl %eax,72(%esp)
	movl 68(%esp),%eax
	movl 72(%esp),%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl %eax,76(%esp)
	movl $-88,%eax
	movl %eax,80(%esp)
	movl 76(%esp),%eax
	movl 80(%esp),%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl %eax,84(%esp)
	movl $-84,%eax
	movl %eax,88(%esp)
	movl 84(%esp),%eax
	movl 88(%esp),%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl %eax,92(%esp)
	movl $-76,%eax
	movl %eax,96(%esp)
	movl 92(%esp),%eax
	movl 96(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl 52(%esp),%eax
	movl 48(%esp),%ecx
	imull %ecx,%eax
	addl %edx,%eax
	leal 100(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l18:
	movl $0,%eax
	leal 100(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 100(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l27:
.long 0
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffbc
.long .Lstackdata_l27
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffffc0
.long 0xffffffcc
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffbc
.long .Lstackdata_l27
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
answer:
.byte 37
.byte 100
.byte 32
.byte 100
.byte 105
.byte 118
.byte 32
.byte 37
.byte 100
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 119
.byte 97
.byte 110
.byte 116
.byte 115
.byte 32
.byte 50
.byte 57
.byte 41
.byte 59
.byte 32
.byte 32
.byte 37
.byte 100
.byte 32
.byte 109
.byte 111
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 119
.byte 97
.byte 110
.byte 116
.byte 115
.byte 32
.byte 51
.byte 48
.byte 41
.byte 59
.byte 32
.byte 32
.byte 100
.byte 32
.byte 42
.byte 32
.byte 113
.byte 32
.byte 43
.byte 32
.byte 114
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
