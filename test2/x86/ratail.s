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
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	leal 32(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl %edx,(%esp)
	leal 32(%esp), %edx
	movl %edx,4(%esp)
	movl $-4,%edx
	movl %edx,8(%esp)
	movl 4(%esp),%edx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl $10,%edx
	addl %edx,%ecx
	leal 32(%esp), %edx
	movl %edx,16(%esp)
	movl $0,%edx
	movl %edx,20(%esp)
	movl 16(%esp),%edx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal 32(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 24(%esp), %esp
	jmp gt
.section .text
.section .text
gt:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 20(%esp), %ecx
	movl %edx,(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l17:
Lproc_body_start_l16:
	movl %edx,4(%esp)
	movl (%esp),%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	addl %edx,%eax
	leal 20(%esp), %edx
	movl %edx,8(%esp)
	movl $8,%edx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
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
Linitialize_continuations_l28:
Lproc_body_start_l27:
	movl $10,%ecx
	leal 16(%esp), %edx
	movl %edi,8(%esp)
	movl $-16,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl $20,%edi
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call g
Ljoin_l35:
	leal fmt,%edi
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 16(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l32:
	movl $0,%eax
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l42:
.long 0
.section .pcmap
.long Ljoin_l35
.long Lframe_l43
.section .pcmap_data
Lframe_l43:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long Lstackdata_l42
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l32
.long Lframe_l44
.section .pcmap_data
Lframe_l44:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long Lstackdata_l42
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
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
