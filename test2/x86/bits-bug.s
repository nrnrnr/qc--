.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
.align 8
success:
.byte 115
.byte 117
.byte 99
.byte 99
.byte 101
.byte 115
.byte 115
.byte 10
.byte 0
.align 8
failed:
.byte 102
.byte 97
.byte 105
.byte 108
.byte 101
.byte 100
.byte 10
.byte 0
.section .text
main:
	leal -4(%esp), %esp
	movl $4,%eax
	leal 4(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%eax
	leal 4(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l5:
proc_body_start_l4:
	movl $-1420500317,%eax
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call callee
join_l9:
	leal 4(%esp), %eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l16:
.long 0
.section .pcmap
.long join_l9
.long frame_l17
.section .pcmap_data
frame_l17:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l16
.long 0x80000008
.long 0x80000002
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
.section .text
.section .text
callee:
	leal -4(%esp), %esp
	movl $4,%eax
	leal 4(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l20:
proc_body_start_l19:
	movl $-1420500317,%ecx
	cmpl %ecx,%eax
	jne join_l29
join_l30:
	leal success,%eax
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
join_l24:
	leal 4(%esp), %eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
join_l29:
	leal failed,%eax
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
join_l28:
	leal 4(%esp), %eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l37:
.long 0
.section .pcmap
.long join_l28
.long frame_l38
.section .pcmap_data
frame_l38:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l37
.long 0x80000008
.long 0x80000001
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
.section .pcmap
.long join_l24
.long frame_l39
.section .pcmap_data
frame_l39:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l37
.long 0x80000008
.long 0x80000001
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
.section .text
