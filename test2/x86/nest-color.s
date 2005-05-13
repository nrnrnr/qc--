.globl nest
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
nest:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	movl %edi,8(%esp)
	movl %esi,12(%esp)
	movl %ebp,16(%esp)
	movl %ebx,20(%esp)
.Linitialize_continuations_l10:
	leal .Lcut_entry_l7,%ecx
	leal 32(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 32(%esp), %ecx
	movl $-32,%eax
	addl %eax,%ecx
	leal 32(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lproc_body_start_l9:
	leal 32(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call trace
.Lcall_successor_l15:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 12(%esp),%esi
	movl 16(%esp),%ebp
	movl 20(%esp),%ebx
	leal 32(%esp), %esp
	ret
.Lcut_entry_l7:
.Lstart_of_continuation_code_l6:
	movl $1,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 12(%esp),%esi
	movl 16(%esp),%ebp
	movl 20(%esp),%ebx
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l21:
.long 0
.section .pcmap
.long .Lcall_successor_l15
.long .Lframe_l22
.section .pcmap_data
.Lframe_l22:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l21
.long 4
.long 0
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long inner
.section .pcmap
.long .Lcut_entry_l7
.long .Lframe_l23
.section .pcmap_data
.Lframe_l23:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l21
.long 4
.long 0
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long inner
.section .text
.section .data
outer:
.byte 111
.byte 117
.byte 116
.byte 101
.byte 114
.byte 0
inner:
.byte 105
.byte 110
.byte 110
.byte 101
.byte 114
.byte 0
