.globl cmm_threadfun
.globl run_thread
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
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
	movl (%eax),%ecx
Linitialize_continuations_l11:
	leal cutback_C8,%eax
	leal 28(%esp), %edx
	movl %ecx,(%esp)
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	leal 28(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
Lproc_body_start_l10:
	leal 28(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	leal comeback,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl (%esp),%edx
	movl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%edx),%ecx
	movl %edi,16(%esp)
	movl %esi,12(%esp)
	movl %ebp,8(%esp)
	movl %ebx,4(%esp)
	movl %eax, %esp; jmp *%ecx
cutback_C8:
	movl %edx,%eax
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl 4(%esp),%ebx
	movl 8(%esp),%ebp
	movl 12(%esp),%esi
	movl 16(%esp),%edi
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l19:
.long 0
.section .pcmap
.long cutback_C8
.long Lframe_l20
.section .pcmap_data
Lframe_l20:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l19
.long 0x80000008
.long 0x80000002
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
.long 0
.long 0
.long 0x80000000
.section .text
.section .text
cmm_threadfun:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l23:
Lproc_body_start_l22:
	leal 12(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl $10,%eax
	leal 12(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,8(%esp)
	call fib
Ljoin_l26:
	movl %eax,%edx
	leal comeback,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal comeback,%ecx
	movl (%ecx),%edi
	movl (%edi),%ecx
	movl %eax, %esp; jmp *%ecx
.section .pcmap_data
Lstackdata_l33:
.long 0
.section .pcmap
.long Ljoin_l26
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l33
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0
.long 0x40000009
.long 0
.long 0x4000000a
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
