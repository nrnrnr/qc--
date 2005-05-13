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
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 4(%esp), %edx
	movl (%edx),%edx
	movl %ebx,(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
.Lbranch_target_l13:
	cmpl %ecx,%eax
	jl .Lbranch_target_l7
.Lbranch_target_l9:
	movl $1,%eax
	leal 4(%esp), %ebx
	movl $4,%ecx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl (%esp),%ebx
	leal 8(%esp), %esp
	ret
.Lbranch_target_l7:
	movl $0,%eax
	leal 4(%esp), %ebx
	movl $4,%ecx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl (%esp),%ebx
	leal 8(%esp), %esp
	ret
.section .text
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
	movl %eax,28(%esp)
	movl %edi,24(%esp)
	movl %esi,20(%esp)
	movl %ebp,16(%esp)
.Linitialize_continuations_l19:
.Lproc_body_start_l18:
	leal -4(%esp), %esp
	movl $987,%eax
	movl $33,%edx
	leal 36(%esp), %ecx
	movl $-36,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call ge
.Lcall_successor_l32:
	movl %eax,%esi
	leal -4(%esp), %esp
	movl $33,%eax
	movl $987,%edx
	leal 36(%esp), %ecx
	movl $-36,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call ge
.Lcall_successor_l29:
	movl %eax,%ebp
	leal -4(%esp), %esp
	movl $987,%eax
	movl $987,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call ge
.Lcall_successor_l26:
	leal answer,%ecx
	leal 32(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 32(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	leal 32(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %ebp,(%ecx)
	leal 32(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l23:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%edi
	movl 20(%esp),%esi
	movl 16(%esp),%ebp
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l38:
.long 0
.section .pcmap
.long .Lcall_successor_l32
.long .Lframe_l39
.section .pcmap_data
.Lframe_l39:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long .Lstackdata_l38
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l29
.long .Lframe_l40
.section .pcmap_data
.Lframe_l40:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long .Lstackdata_l38
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l26
.long .Lframe_l41
.section .pcmap_data
.Lframe_l41:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long .Lstackdata_l38
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff0
.long 0
.long 0
.long 0x4000000a
.long 0x40000009
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l42
.section .pcmap_data
.Lframe_l42:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long .Lstackdata_l38
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff0
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
