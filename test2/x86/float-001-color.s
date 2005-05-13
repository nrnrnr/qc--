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
	movl %eax,20(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	leal x,%eax
	leal 24(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal fmt,%eax
	leal 24(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 24(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 24(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 24(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
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
