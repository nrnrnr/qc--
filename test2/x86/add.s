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
	movl $4,%eax
	leal 4(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1,%ecx
	cmpl %ecx,%eax
	ja Ljoin_l10
Ljoin_l11:
	leal hello,%eax
	jmp Ljoin_l9
Ljoin_l10:
	leal bye,%eax
	jmp Ljoin_l9
Ljoin_l9:
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l8:
	leal 4(%esp), %eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
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
.long 0x80000000
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
.section .text
