.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
fmt:
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 10
.section .text
main:
	leal -44(%esp), %esp
initialize_continuations_l3:
	leal fmt,%eax
	movl $-44,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $1,%eax
	movl $-40,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2,%eax
	movl $-36,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $3,%eax
	movl $-32,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-28,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $5,%eax
	movl $-24,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $6,%eax
	movl $-20,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $7,%eax
	movl $-16,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $8,%eax
	movl $-12,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $9,%eax
	movl $-8,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $10,%eax
	movl $-4,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
join_l7:
	leal 44(%esp), %esp
	ret
.section .pcmap_data
stackdata_l14:
.long 0
.section .pcmap
.long join_l7
.long frame_l15
.section .pcmap_data
frame_l15:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long stackdata_l14
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.section .text
