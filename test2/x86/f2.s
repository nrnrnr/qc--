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
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	fnstcw 16(%esp)
	movzwl 16(%esp),%ecx
	andl $-3073,%ecx
	movl $0,%edx
	shll $10, %edx
	orl %edx,%ecx
	movw %cx,16(%esp)
	fldcw 16(%esp)
	movl $1,%ecx
	movl $-1067450368,%edx
	movl %eax,24(%esp)
	leal 44(%esp), %eax
	movl %eax,28(%esp)
	movl $-24,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 44(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal fmt,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $24,%eax
	movl 36(%esp),%ecx
	movl %ecx,40(%esp)
	movl %eax,%ecx
	movl 40(%esp),%eax
	shll %cl, %eax
	movl $24,%ecx
	shrl %cl, %eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 44(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l14:
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l15
.section .pcmap_data
.Lframe_l15:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l14
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
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
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 97
.byte 110
.byte 100
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
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
