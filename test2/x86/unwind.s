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
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l12:
Lproc_body_start_l11:
	movl %ecx,4(%esp)
	movl %eax,(%esp)
	call g
Ljoin_l17:
	movl $0,%eax
	leal 8(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
k1_U10:
	movl (%esp),%eax
	leal 8(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l23:
.long 0
.section .pcmap
.long Ljoin_l17
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long Lstackdata_l23
.long 0
.long 1
.long 0
.long 7
.long 0xfffffff8
.long 1
.long 2
.long 1
.long k1_U10
.long 0xfffffff8
.long 0
.long 3
.section .text
.section .text
g:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l32:
	leal k_C29,%ecx
	leal 32(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	leal 32(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lproc_body_start_l31:
	leal 32(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
	movl %ebx,8(%esp)
	call do_unwind
Lpostcall_l36:
k_C29:
	movl $1,%eax
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	movl 16(%esp),%esi
	movl 20(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l41:
.long 0
.section .pcmap
.long Lpostcall_l36
.long Lframe_l42
.section .pcmap_data
Lframe_l42:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l41
.long 4
.long 0
.long 0
.long 1
.long 7
.long 0xffffffe8
.long 9
.long 0xffffffec
.long 10
.long 0xfffffff0
.long 11
.long 0xfffffff4
.long 0
.section .pcmap
.long k_C29
.long Lframe_l43
.section .pcmap_data
Lframe_l43:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l41
.long 4
.long 0
.long 0
.long 1
.long 7
.long 0xffffffe8
.long 9
.long 0xffffffec
.long 10
.long 0xfffffff0
.long 11
.long 0xfffffff4
.long 0
.section .text
