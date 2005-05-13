.globl unwind_test
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
unwind_test:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,(%esp)
	movl %ebx,4(%esp)
.Linitialize_continuations_l12:
.Lproc_body_start_l11:
	call g
.Lcall_successor_l17:
	movl $0,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%ebx
	leal 12(%esp), %esp
	ret
.Lunwind_entry_l10:
.Lstart_of_continuation_code_l8:
	movl 8(%esp),%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%ebx
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l23:
.long 0
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l24
.section .pcmap_data
.Lframe_l24:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff4
.long .Lstackdata_l23
.long 1
.long 1
.long 0
.long 7
.long 7
.long 0xfffffff8
.long 0xfffffffc
.long 1
.long 2
.long 1
.long .Lunwind_entry_l10
.long 0xfffffff4
.long 0
.long 3
.section .text
.section .text
g:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	movl %edi,16(%esp)
	movl %esi,12(%esp)
	movl %ebp,8(%esp)
	movl %ebx,4(%esp)
.Linitialize_continuations_l32:
	leal .Lcut_entry_l29,%ecx
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
.Lproc_body_start_l31:
	leal 32(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call do_unwind
.Lcall_successor_l36:
	int $3
.Lcut_entry_l29:
.Lstart_of_continuation_code_l28:
	movl $1,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 12(%esp),%esi
	movl 8(%esp),%ebp
	movl 4(%esp),%ebx
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l41:
.long 0
.section .pcmap
.long .Lcall_successor_l36
.long .Lframe_l42
.section .pcmap_data
.Lframe_l42:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff4
.long .Lstackdata_l41
.long 4
.long 0
.long 0
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
.long 0xffffffe8
.long 7
.long 0xffffffe4
.long 0
.section .pcmap
.long .Lcut_entry_l29
.long .Lframe_l43
.section .pcmap_data
.Lframe_l43:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff4
.long .Lstackdata_l41
.long 4
.long 0
.long 0
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
.long 0xffffffe8
.long 7
.long 0xffffffe4
.long 0
.section .text
