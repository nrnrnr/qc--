.globl main
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
initialize_continuations_l4:
proc_body_start_l3:
	movl $1,%ecx
	cmpl %ecx,%eax
	ja join_l10
join_l11:
	leal hello,%eax
	jmp join_l9
join_l10:
	leal bye,%eax
	jmp join_l9
join_l9:
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
join_l8:
	leal 4(%esp), %eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l18:
.long 0
.section .pcmap
.long join_l8
.long frame_l19
.section .pcmap_data
frame_l19:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l18
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
