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
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l11:
	leal .Lcut_entry_l8,%edx
	movl %eax,(%esp)
	leal 40(%esp), %eax
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lproc_body_start_l10:
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal comeback,%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	movl (%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl (%ecx),%ecx
	movl %edi,28(%esp)
	movl %esi,24(%esp)
	movl %ebp,20(%esp)
	movl %ebx,16(%esp)
	movl %eax, %esp; jmp *%ecx
.Lcut_entry_l8:
.Lstart_of_continuation_code_l7:
	movl %edx,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%edi
	movl 24(%esp),%esi
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	leal 40(%esp), %esp
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
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l19
.long 4
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 7
.long 0xffffffe8
.long 0
.long 0
.long 0
.section .text
.section .text
cmm_threadfun:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l22:
.Lproc_body_start_l21:
	leal 12(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl $10,%eax
	leal 12(%esp), %edx
	movl $-8,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %ecx,8(%esp)
	call fib
.Lcall_successor_l25:
	movl %eax,%edx
	leal comeback,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal comeback,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl %eax, %esp; jmp *%ecx
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
