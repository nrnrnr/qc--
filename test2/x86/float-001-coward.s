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
.long 0xffffffffffffffff
.section .data
.align 8
x:
.long 0x54411744
.long 0x400921fb
.section .text
main:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal x,%ecx
	leal 28(%esp), %edx
	movl %edi,20(%esp)
	movl $-16,%edi
	addl %edi,%edx
	fildq (%ecx)
	fistpq (%edx)
	leal fmt,%edi
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 28(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	leal 28(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	movl %eax,24(%esp)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%edi
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l15:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l16
.section .pcmap_data
Lframe_l16:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
.long Lstackdata_l15
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0xfffffff0
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
