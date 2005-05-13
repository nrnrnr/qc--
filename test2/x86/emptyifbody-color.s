.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
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
	movl $1,%eax
	movl $-1067450368,%eax
	leal 12(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 12(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 12(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 12(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
.Lbranch_target_l12:
	movl $1,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l8
.Lbranch_target_l8:
	leal fmt,%eax
	leal 12(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
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
.Lstackdata_l16:
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l17
.section .pcmap_data
.Lframe_l17:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l16
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 68
.byte 105
.byte 115
.byte 106
.byte 117
.byte 110
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 44
.byte 32
.byte 99
.byte 111
.byte 110
.byte 118
.byte 101
.byte 114
.byte 115
.byte 105
.byte 111
.byte 110
.byte 44
.byte 32
.byte 101
.byte 109
.byte 112
.byte 116
.byte 121
.byte 32
.byte 105
.byte 102
.byte 45
.byte 98
.byte 111
.byte 100
.byte 121
.byte 58
.byte 32
.byte 119
.byte 111
.byte 114
.byte 107
.byte 115
.byte 46
.byte 10
.byte 0
