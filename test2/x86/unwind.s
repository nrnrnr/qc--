.globl unwind_test
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
unwind_test:
	leal -12(%esp), %esp
Linitialize_continuations_l12:
Lproc_body_start_l11:
	movl %eax,(%esp)
	call g
Ljoin_l17:
	movl $0,%eax
	leal 12(%esp), %edx
	leal 12(%esp), %ecx
	movl %edx,8(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 12(%esp), %esp
	ret
k1_U10:
	movl (%esp),%eax
	leal 12(%esp), %edx
	leal 12(%esp), %ecx
	movl %edx,4(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l23:
.long 0
.section .pcmap
.long Ljoin_l17
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l23
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000007
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff4
.long 0x80000001
.long 0x80000002
.long 0x80000000
.long 0x80000003
.long 0
.long k1_U10
.long 0xfffffff4
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
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l41
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xfffffff4
.long 0x80000000
.section .pcmap
.long k_C29
.long Lframe_l43
.section .pcmap_data
Lframe_l43:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l41
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xfffffff4
.long 0x80000000
.section .text
