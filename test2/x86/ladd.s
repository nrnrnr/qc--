.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	leal -56(%esp), %esp
	movl $4,%eax
	leal 56(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%eax
	leal 56(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $-2147483648,%eax
	movl $-28,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $-24,%edx
	leal 56(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-2147483648,%eax
	movl $-20,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $-16,%edx
	leal 56(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-28,%eax
	leal 56(%esp), %ecx
	addl %eax,%ecx
	movl $-56,%eax
	leal 56(%esp), %edx
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	movl $-20,%edx
	leal 56(%esp), %ecx
	addl %edx,%ecx
	movl $-48,%edx
	leal 56(%esp), %eax
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	call ladd
Ljoin_l11:
	movl $-12,%ecx
	movl %ebx,52(%esp)
	leal 56(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $-8,%eax
	leal 56(%esp), %ebx
	addl %eax,%ebx
	movl %edx,(%ebx)
	leal format,%edx
	movl $-56,%ebx
	leal 56(%esp), %eax
	addl %ebx,%eax
	movl %edx,(%eax)
	movl $-28,%eax
	leal 56(%esp), %edx
	addl %eax,%edx
	movl $-52,%eax
	leal 56(%esp), %ebx
	addl %eax,%ebx
	fildq (%edx)
	fistpq (%ebx)
	movl $-20,%ebx
	leal 56(%esp), %edx
	addl %ebx,%edx
	movl $-44,%ebx
	leal 56(%esp), %eax
	addl %ebx,%eax
	fildq (%edx)
	fistpq (%eax)
	movl $-12,%eax
	leal 56(%esp), %edx
	addl %eax,%edx
	movl $-36,%eax
	leal 56(%esp), %ebx
	addl %eax,%ebx
	fildq (%edx)
	fistpq (%ebx)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $0,%edx
	leal 56(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 52(%esp),%ebx
	leal 56(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l18:
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l19
.section .pcmap_data
Lframe_l19:
.long 0xffffffc8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l18
.long 0x80000008
.long 0x80000005
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
.long 0xffffffe4
.long 0xffffffec
.long 0xfffffff4
.long 0x80000000
.section .pcmap
.long Ljoin_l8
.long Lframe_l20
.section .pcmap_data
Lframe_l20:
.long 0xffffffc8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l18
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xffffffe4
.long 0xffffffec
.long 0xfffffff4
.long 0x80000000
.section .text
.section .data
format:
.byte 115
.byte 117
.byte 109
.byte 32
.byte 111
.byte 102
.byte 32
.byte 37
.byte 48
.byte 49
.byte 54
.byte 108
.byte 108
.byte 120
.byte 10
.byte 97
.byte 110
.byte 100
.byte 32
.byte 32
.byte 32
.byte 32
.byte 37
.byte 48
.byte 49
.byte 54
.byte 108
.byte 108
.byte 120
.byte 10
.byte 105
.byte 115
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 37
.byte 48
.byte 49
.byte 54
.byte 108
.byte 108
.byte 120
.byte 10
.byte 0
