.globl f
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
f:
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	negl %eax
	movl $-99,%edx
	movl %ecx,(%esp)
	leal 16(%esp), %ecx
	movl %ecx,4(%esp)
	movl $0,%ecx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	movl %ebx,12(%esp)
	movl 8(%esp),%ebx
	addl %ebx,%ecx
	movl (%esp),%ebx
	movl %ebx,(%ecx)
	movl 12(%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l14:
.Lproc_body_start_l13:
	movl $-33,%ecx
	movl %eax,12(%esp)
	movl %ecx,%eax
	call f
.Lcall_successor_l21:
	leal fmt,%ecx
	movl %eax,16(%esp)
	leal 32(%esp), %eax
	movl %eax,20(%esp)
	movl $-32,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l18:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
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
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l27
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
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l27
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
fmt:
.byte 100
.byte 117
.byte 97
.byte 108
.byte 45
.byte 114
.byte 101
.byte 115
.byte 117
.byte 108
.byte 116
.byte 32
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 116
.byte 111
.byte 32
.byte 102
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 115
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 101
.byte 120
.byte 112
.byte 101
.byte 99
.byte 116
.byte 101
.byte 100
.byte 32
.byte 51
.byte 51
.byte 44
.byte 32
.byte 45
.byte 57
.byte 57
.byte 41
.byte 10
.byte 0
