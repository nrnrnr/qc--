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
my_data:
.byte 83
.byte 85
.byte 67
.byte 67
.byte 69
.byte 83
.byte 83
.byte 58
.byte 32
.byte 99
.byte 111
.byte 110
.byte 116
.byte 105
.byte 110
.byte 117
.byte 97
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 114
.byte 101
.byte 97
.byte 99
.byte 104
.byte 101
.byte 100
.byte 10
.byte 0
.section .text
unwind:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l12:
	leal k_C9,%ecx
	leal 16(%esp), %edx
	movl $-8,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	leal 16(%esp), %edx
	movl $-4,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
.Lproc_body_start_l11:
	leal 16(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	leal 16(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,4(%esp)
	call do_unwind
.Lpostcall_l18:
k_U10:
	jmp .Ljoin_l19
k_C9:
	jmp .Ljoin_l19
.Ljoin_l19:
	movl $1,%edi
	leal 16(%esp), %esi
	movl $-16,%ebp
	addl %ebp,%esi
	movl %edi,(%esi)
	call exit
.Lpostcall_l15:
.section .pcmap_data
.Lstackdata_l25:
.long 0
.section .pcmap
.long .Lpostcall_l18
.long .Lframe_l26
.section .pcmap_data
.Lframe_l26:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l25
.long 4
.long 0
.long 0
.long 5
.long 7
.long 0
.long 9
.long 0
.long 10
.long 0
.long 11
.long 0
.long 1
.long 2
.long 0
.long k_U10
.long 0xfffffff0
.section .pcmap
.long k_C9
.long .Lframe_l27
.section .pcmap_data
.Lframe_l27:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l25
.long 4
.long 0
.long 0
.long 1
.long 7
.long 0
.long 9
.long 0
.long 10
.long 0
.long 11
.long 0
.long 0
.section .pcmap
.long .Lpostcall_l15
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l25
.long 4
.long 0
.long 0
.long 1
.long 7
.long 0
.long 9
.long 0
.long 10
.long 0
.long 11
.long 0
.long 0
.section .text
.section .text
main:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l36:
.Lproc_body_start_l35:
	movl %eax,4(%esp)
	call unwind
.Lpostcall_l43:
k_U34:
	leal my_data,%eax
	leal 8(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Ljoin_l40:
	movl $0,%eax
	leal 8(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l49:
.long 0
.section .pcmap
.long .Lpostcall_l43
.long .Lframe_l50
.section .pcmap_data
.Lframe_l50:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l49
.long 0
.long 3
.long 0
.long 7
.long 0
.long 0
.long 0
.long 1
.long 2
.long 1
.long k_U34
.long 0xfffffff8
.long 2
.long 3
.section .pcmap
.long .Ljoin_l40
.long .Lframe_l51
.section .pcmap_data
.Lframe_l51:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l49
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
