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
ge:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	cmpl %edx,%eax
	jl .Ljoin_l9
.Ljoin_l8:
	movl $1,%eax
	leal 20(%esp), %edx
	movl %edx,12(%esp)
	movl $4,%edx
	movl %edx,16(%esp)
	movl 12(%esp),%edx
	movl %ecx,8(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 24(%esp), %esp
	ret
.Ljoin_l9:
	movl $0,%eax
	leal 20(%esp), %edx
	movl %edx,(%esp)
	movl $4,%edx
	movl %edx,4(%esp)
	movl (%esp),%edx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 24(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l19:
.Lproc_body_start_l18:
	leal -4(%esp), %esp
	movl $987,%eax
	movl $33,%edx
	movl %edi,20(%esp)
	leal 48(%esp), %edi
	movl %edi,24(%esp)
	movl $-48,%edi
	movl %edi,28(%esp)
	movl 24(%esp),%edi
	movl %esi,32(%esp)
	movl 28(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %ecx,36(%esp)
	call ge
.Ljoin_l32:
	leal -4(%esp), %esp
	movl $33,%edi
	movl %eax,40(%esp)
	movl %edi,%eax
	movl $987,%edi
	leal 48(%esp), %esi
	movl $-48,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call ge
.Ljoin_l29:
	leal -4(%esp), %esp
	movl $987,%edi
	movl %eax,44(%esp)
	movl %edi,%eax
	movl $987,%edi
	leal 48(%esp), %esi
	movl $-48,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call ge
.Ljoin_l26:
	leal answer,%edi
	leal 44(%esp), %esi
	movl $-44,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 44(%esp), %edi
	movl $-40,%esi
	addl %esi,%edi
	movl 36(%esp),%esi
	movl %esi,(%edi)
	leal 44(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	leal 44(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call printf
.Ljoin_l23:
	movl $0,%eax
	leal 44(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l38:
.long 0
.section .pcmap
.long .Ljoin_l32
.long .Lframe_l39
.section .pcmap_data
.Lframe_l39:
.long 0x80000004
.long 0xffffffd4
.long 0xfffffff4
.long .Lstackdata_l38
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l29
.long .Lframe_l40
.section .pcmap_data
.Lframe_l40:
.long 0x80000004
.long 0xffffffd4
.long 0xfffffff4
.long .Lstackdata_l38
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe4
.long 0
.long 0
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l26
.long .Lframe_l41
.section .pcmap_data
.Lframe_l41:
.long 0x80000004
.long 0xffffffd4
.long 0xfffffff4
.long .Lstackdata_l38
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe4
.long 0
.long 0
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0
.section .pcmap
.long .Ljoin_l23
.long .Lframe_l42
.section .pcmap_data
.Lframe_l42:
.long 0x80000004
.long 0xffffffd4
.long 0xfffffff4
.long .Lstackdata_l38
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
answer:
.byte 57
.byte 56
.byte 55
.byte 32
.byte 62
.byte 61
.byte 32
.byte 51
.byte 51
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 32
.byte 51
.byte 51
.byte 32
.byte 62
.byte 61
.byte 32
.byte 57
.byte 56
.byte 55
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 32
.byte 57
.byte 56
.byte 55
.byte 32
.byte 62
.byte 61
.byte 32
.byte 57
.byte 56
.byte 55
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
