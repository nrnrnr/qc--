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
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,16(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl $1084227584,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call doubleme
.Lcall_successor_l10:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	fstps (%eax)
	leal str,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 20(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l17:
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l18
.section .pcmap_data
.Lframe_l18:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l17
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff8
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l17
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff8
.long 0
.section .text
.section .data
str:
.byte 84
.byte 104
.byte 101
.byte 32
.byte 118
.byte 97
.byte 108
.byte 117
.byte 101
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 101
.byte 100
.byte 32
.byte 119
.byte 97
.byte 115
.byte 32
.byte 37
.byte 102
.byte 32
.byte 40
.byte 115
.byte 104
.byte 111
.byte 117
.byte 108
.byte 100
.byte 32
.byte 98
.byte 101
.byte 32
.byte 49
.byte 48
.byte 46
.byte 48
.byte 41
.byte 10
.byte 0
