.globl cmm_threadfun
.globl run_thread
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
.section .data
.align 4
comeback:
.skip 4, 0
.section .text
run_thread:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,16(%esp)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
	movl %ebp,4(%esp)
	movl %ebx,(%esp)
.Linitialize_continuations_l11:
	leal .Lcut_entry_l8,%edx
	leal 28(%esp), %ecx
	movl $-8,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	leal 28(%esp), %ecx
	movl $-4,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
.Lproc_body_start_l10:
	leal 28(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	leal comeback,%edx
	movl %ecx,(%edx)
	movl $4,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%eax),%eax
	movl %ecx, %esp; jmp *%eax
.Lcut_entry_l8:
.Lstart_of_continuation_code_l7:
	movl %edx,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	movl 4(%esp),%ebp
	movl (%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l19:
.long 0
.section .pcmap
.long .Lcut_entry_l8
.long .Lframe_l20
.section .pcmap_data
.Lframe_l20:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l19
.long 4
.long 2
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
.long 0x40000006
.long 0
.section .text
.section .text
cmm_threadfun:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
.Linitialize_continuations_l22:
.Lproc_body_start_l21:
	leal 12(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $10,%ecx
	leal 12(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call fib
.Lcall_successor_l25:
	movl %eax,%edx
	leal comeback,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal comeback,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl %ecx, %esp; jmp *%eax
.section .pcmap_data
.Lstackdata_l32:
.long 0
.section .pcmap
.long .Lcall_successor_l25
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l32
.long 4
.long 2
.long 0
.long 1
.long 11
.long 0
.long 10
.long 0
.long 9
.long 0
.long 7
.long 0
.long 0
.long 0
.long 0
.section .text
