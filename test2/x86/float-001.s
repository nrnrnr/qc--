.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.NKZfaaEdeFZVBMDSIVLbEeKXbI
.section .data
/* memory for global registers */
Cmm.globalsig.NKZfaaEdeFZVBMDSIVLbEeKXbI:
Cmm.global_area:
.skip 1
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
	movl (%eax),%ecx
	leal 24(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal x,%eax
	leal 24(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal fmt,%ecx
	leal 24(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 24(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 24(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 24(%esp), %ecx
	leal 24(%esp), %edx
	movl %ebx,20(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 20(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l15:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l16
.section .pcmap_data
Lframe_l16:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l15
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff4
.long 0x80000000
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
