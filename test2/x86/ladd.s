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
	leal 56(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 56(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $-2147483648,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-2147483648,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	leal 56(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 56(%esp), %ecx
	movl $-20,%eax
	addl %eax,%ecx
	leal 56(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	call ladd
Ljoin_l11:
	leal 56(%esp), %ecx
	movl %ebx,52(%esp)
	movl $-12,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal format,%eax
	leal 56(%esp), %edx
	movl $-56,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 56(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	leal 56(%esp), %edx
	movl $-52,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal 56(%esp), %edx
	movl $-20,%eax
	addl %eax,%edx
	leal 56(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	fildq (%edx)
	fistpq (%eax)
	leal 56(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	leal 56(%esp), %edx
	movl $-36,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 56(%esp), %ecx
	leal 56(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
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
