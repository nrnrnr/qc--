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
.Linitialize_continuations_l10:
	leal k_C7,%ecx
	leal 32(%esp), %edx
	movl %eax,(%esp)
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
.Lproc_body_start_l9:
	movl $97,%edx
	leal 32(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
	movl %ebx,8(%esp)
	movl 4(%esp),%ecx
	movl %ecx, %esp; jmp *%eax
k_C7:
	movl $0,%eax
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	movl 16(%esp),%esi
	movl 20(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l18:
.long 0
.section .pcmap
.long k_C7
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe0
.long .Lstackdata_l18
.long 4
.long 3
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
.long 0
.long 0
.long 0
.section .text
