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
.section .data
.align 4
funA:
.long funA_fun
funB:
.long funB_fun
_builtin_mlpr_String:
.long funA
.long funB
.section .data
output_msg:
.byte 37
.byte 115
.byte 0
debug_msg:
.byte 73
.byte 39
.byte 109
.byte 32
.byte 97
.byte 116
.byte 32
.byte 108
.byte 105
.byte 110
.byte 101
.byte 32
.byte 37
.byte 100
.byte 46
.byte 46
.byte 46
.byte 10
.byte 0
test_msg:
.byte 116
.byte 101
.byte 115
.byte 116
.byte 32
.byte 100
.byte 111
.byte 110
.byte 101
.byte 10
.byte 0
.section .text
funA_fun:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l7:
.Lproc_body_start_l6:
	leal output_msg,%edx
	movl %eax,8(%esp)
	leal 24(%esp), %eax
	movl %eax,12(%esp)
	movl $-24,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 24(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l11:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l17:
.long 0
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l18
.section .pcmap_data
.Lframe_l18:
.long 0x80000008
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l17
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
funB_fun:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l20:
.Lproc_body_start_l19:
	leal test_msg,%ecx
	movl %eax,(%esp)
	movl %ecx,%eax
	leal 4(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
.section .text
.section .text
l_1_print:
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l30:
.Lproc_body_start_l29:
l_0_print_0:
	leal _builtin_mlpr_String,%edx
	movl %eax,(%esp)
	movl $4,%eax
	movl %eax,4(%esp)
	movl %edx,%eax
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	movl $4,%ecx
	movl %eax,16(%esp)
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl %ecx,20(%esp)
	movl $-44,%ecx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	movl %edx,28(%esp)
	movl 24(%esp),%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l34:
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	movl %eax,28(%esp)
	movl %ecx,%eax
	addl %edx,%eax
	movl (%eax),%eax
	leal 40(%esp), %edx
	movl %ecx,32(%esp)
	movl $0,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	leal 40(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,%edx
	leal 36(%esp), %esp
	jmp *%edx
.section .pcmap_data
.Lstackdata_l41:
.long 0
.section .pcmap
.long .Lcall_successor_l34
.long .Lframe_l42
.section .pcmap_data
.Lframe_l42:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe0
.long .Lstackdata_l41
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l50:
.Lproc_body_start_l49:
	movl $0,%ecx
	movl %eax,(%esp)
	movl %ecx,%eax
	movl %edi,16(%esp)
	movl %esi,12(%esp)
	movl %ebp,8(%esp)
	movl %ebx,4(%esp)
	call l_1_print
.Lcall_successor_l55:
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 12(%esp),%esi
	movl 8(%esp),%ebp
	movl 4(%esp),%ebx
	leal 20(%esp), %esp
	ret
.Lcut_entry_l47:
.Lstart_of_continuation_code_l46:
	movl $-1,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 12(%esp),%esi
	movl 8(%esp),%ebp
	movl 4(%esp),%ebx
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l61:
.long 0
.section .pcmap
.long .Lcall_successor_l55
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x80000004
.long 0xffffffec
.long 0xffffffec
.long .Lstackdata_l61
.long 4
.long 3
.long 0
.long 1
.long 11
.long 0xfffffffc
.long 10
.long 0xfffffff8
.long 9
.long 0xfffffff4
.long 7
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.section .text
