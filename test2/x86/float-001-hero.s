.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.NKZfaaEdeFZVBMDSIVLbEeKXbI
.section .data
/* memory for global registers */
Cmm.globalsig.NKZfaaEdeFZVBMDSIVLbEeKXbI:
Cmm.global_area:
.skip 1
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
x:
.long 0x54411744
.long 0x400921fb
.section .text
main:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	leal x,%ecx
	leal 24(%esp), %edx
	movl %eax,20(%esp)
	movl $-12,%eax
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	leal fmt,%eax
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 24(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 24(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
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
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l14
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.section .text
.section .data
fmt:
.byte 97
.byte 32
.byte 104
.byte 97
.byte 110
.byte 100
.byte 45
.byte 119
.byte 114
.byte 105
.byte 116
.byte 116
.byte 101
.byte 110
.byte 32
.byte 108
.byte 105
.byte 116
.byte 101
.byte 114
.byte 97
.byte 108
.byte 32
.byte 112
.byte 105
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 108
.byte 103
.byte 10
.byte 0
