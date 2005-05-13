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
	movl %eax,4(%esp)
.Linitialize_continuations_l12:
	leal .Lcut_entry_l9,%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 16(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	leal 16(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lproc_body_start_l11:
	leal 16(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	leal 16(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call do_unwind
.Lcall_successor_l18:
	int $3
.Lunwind_entry_l10:
	jmp .Lstart_of_continuation_code_l8
.Lcut_entry_l9:
.Lstart_of_continuation_code_l8:
	movl $1,%ecx
	leal 16(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call exit
.Lcall_successor_l15:
	int $3
.section .pcmap_data
.Lstackdata_l24:
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l25
.section .pcmap_data
.Lframe_l25:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l24
.long 4
.long 0
.long 0
.long 5
.long 11
.long 0
.long 10
.long 0
.long 9
.long 0
.long 7
.long 0
.long 1
.long 2
.long 0
.long .Lunwind_entry_l10
.long 0xfffffff0
.section .pcmap
.long .Lcut_entry_l9
.long .Lframe_l26
.section .pcmap_data
.Lframe_l26:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l24
.long 4
.long 0
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
.section .pcmap
.long .Lcall_successor_l15
.long .Lframe_l27
.section .pcmap_data
.Lframe_l27:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l24
.long 4
.long 0
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
	movl %eax,4(%esp)
.Linitialize_continuations_l35:
.Lproc_body_start_l34:
	call unwind
.Lcall_successor_l42:
	int $3
.Lunwind_entry_l33:
.Lstart_of_continuation_code_l31:
	leal my_data,%eax
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l39:
	movl $0,%eax
	leal 8(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l48:
.long 0
.section .pcmap
.long .Lcall_successor_l42
.long .Lframe_l49
.section .pcmap_data
.Lframe_l49:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l48
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
.long .Lunwind_entry_l33
.long 0xfffffff8
.long 2
.long 3
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l50
.section .pcmap_data
.Lframe_l50:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l48
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
