.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .text
p:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $3,%eax
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 8(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 8(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 8(%esp), %esp
	ret
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
	movl %eax,16(%esp)
.Linitialize_continuations_l14:
.Lproc_body_start_l13:
	call p
.Lcall_successor_l21:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	fstps (%eax)
	leal answer,%eax
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
.Lcall_successor_l18:
	movl $0,%eax
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l27:
.long 0
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l27
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff8
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l27
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff8
.long 0
.section .text
.section .data
answer:
.byte 73
.byte 110
.byte 116
.byte 101
.byte 103
.byte 101
.byte 114
.byte 32
.byte 51
.byte 32
.byte 99
.byte 111
.byte 110
.byte 118
.byte 101
.byte 114
.byte 116
.byte 115
.byte 32
.byte 116
.byte 111
.byte 32
.byte 102
.byte 108
.byte 111
.byte 97
.byte 116
.byte 105
.byte 110
.byte 103
.byte 45
.byte 112
.byte 111
.byte 105
.byte 110
.byte 116
.byte 32
.byte 37
.byte 52
.byte 46
.byte 50
.byte 108
.byte 102
.byte 10
.byte 0
