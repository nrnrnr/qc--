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
g:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl %ecx,(%esp)
	leal 36(%esp), %ecx
	movl %ecx,4(%esp)
	movl $-4,%ecx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl $10,%ecx
	addl %ecx,%edx
	leal 36(%esp), %ecx
	movl %ecx,16(%esp)
	movl $0,%ecx
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	movl %edx,24(%esp)
	movl 20(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal gt,%ecx
	movl %ecx,%edx
	leal 28(%esp), %esp
	jmp *%edx
.section .text
.section .text
gt:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 20(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 20(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l16:
.Lproc_body_start_l15:
	movl %eax,4(%esp)
	movl (%esp),%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	addl %ecx,%eax
	leal 20(%esp), %ecx
	movl %ecx,8(%esp)
	movl $8,%ecx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	movl %edx,16(%esp)
	movl 12(%esp),%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l26:
.Lproc_body_start_l25:
	movl $10,%ecx
	leal 16(%esp), %edx
	movl %eax,8(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $20,%eax
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call g
.Lcall_successor_l33:
	leal fmt,%ecx
	leal 16(%esp), %edx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l30:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l40:
.long 0
.section .pcmap
.long .Lcall_successor_l33
.long .Lframe_l41
.section .pcmap_data
.Lframe_l41:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l40
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l30
.long .Lframe_l42
.section .pcmap_data
.Lframe_l42:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l40
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 115
.byte 105
.byte 120
.byte 116
.byte 121
.byte 32
.byte 115
.byte 104
.byte 111
.byte 117
.byte 108
.byte 100
.byte 32
.byte 98
.byte 101
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
