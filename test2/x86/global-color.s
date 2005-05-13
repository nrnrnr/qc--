.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec:
Cmm.global_area:
.skip 4
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .text
main:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 12(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl $99,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal nvalue,%eax
	leal 12(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	leal 12(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call printf
.Lcall_successor_l16:
	leal callincn,%eax
	leal 12(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l13:
	call incn
.Lcall_successor_l10:
	leal nvalue,%eax
	leal 12(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	leal 12(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l22:
.long 0
.section .pcmap
.long .Lcall_successor_l16
.long .Lframe_l23
.section .pcmap_data
.Lframe_l23:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l22
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l13
.long .Lframe_l24
.section .pcmap_data
.Lframe_l24:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l22
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l25
.section .pcmap_data
.Lframe_l25:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l22
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l26
.section .pcmap_data
.Lframe_l26:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l22
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
.section .data
nvalue:
.byte 103
.byte 108
.byte 111
.byte 98
.byte 97
.byte 108
.byte 32
.byte 118
.byte 97
.byte 114
.byte 105
.byte 97
.byte 98
.byte 108
.byte 101
.byte 32
.byte 110
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
callincn:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 101
.byte 120
.byte 116
.byte 101
.byte 114
.byte 110
.byte 97
.byte 108
.byte 32
.byte 102
.byte 117
.byte 110
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 105
.byte 110
.byte 99
.byte 110
.byte 46
.byte 46
.byte 46
.byte 10
.byte 0
