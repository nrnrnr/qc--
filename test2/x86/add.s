.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
hello:
.byte 104
.byte 101
.byte 108
.byte 108
.byte 111
.byte 44
.byte 32
.byte 119
.byte 111
.byte 114
.byte 108
.byte 100
.byte 33
.byte 10
.byte 0
bye:
.byte 98
.byte 121
.byte 101
.byte 33
.byte 10
.byte 0
.section .text
main:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 4(%esp), %eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1,%edx
	cmpl %edx,%ecx
	ja Ljoin_l10
Ljoin_l11:
	leal hello,%ecx
	jmp Ljoin_l9
Ljoin_l10:
	leal bye,%ecx
	jmp Ljoin_l9
Ljoin_l9:
	leal 4(%esp), %edx
	movl $-4,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call printf
Ljoin_l8:
	leal 4(%esp), %eax
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l18:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l19
.section .pcmap_data
Lframe_l19:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l18
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
.long 0
.long 0x80000000
.section .text
