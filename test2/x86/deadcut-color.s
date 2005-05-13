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
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
	movl %ebp,4(%esp)
	movl %ebx,(%esp)
.Linitialize_continuations_l10:
	leal .Lcut_entry_l7,%ecx
	leal 28(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 28(%esp), %ecx
	movl $-28,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lproc_body_start_l9:
	movl $97,%edx
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ebx
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %ebx, %esp; jmp *%eax
.Lcut_entry_l7:
.Lstart_of_continuation_code_l6:
	movl $0,%eax
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
.Lstackdata_l18:
.long 0
.section .pcmap
.long .Lcut_entry_l7
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l18
.long 4
.long 3
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
.long 0
.long 0
.long 0
.section .text
