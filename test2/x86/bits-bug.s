.globl main
.globl Cmm.global_area
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
	leal 4(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 4(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl $-1420500317,%eax
	leal 4(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call callee
Ljoin_l9:
	leal 4(%esp), %eax
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l16:
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l17
.section .pcmap_data
Lframe_l17:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l16
.long 0x80000008
.long 0x80000002
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
.long 0x80000000
.section .text
.section .text
callee:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
Linitialize_continuations_l20:
Lproc_body_start_l19:
	movl $-1420500317,%eax
	cmpl %eax,%ecx
	jne Ljoin_l29
Ljoin_l30:
	leal success,%eax
	leal 4(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l24:
	leal 4(%esp), %eax
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
Ljoin_l29:
	leal failed,%eax
	leal 4(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l28:
	leal 4(%esp), %eax
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l37:
.long 0
.section .pcmap
.long Ljoin_l24
.long Lframe_l38
.section .pcmap_data
Lframe_l38:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l37
.long 0x80000008
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l28
.long Lframe_l39
.section .pcmap_data
Lframe_l39:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l37
.long 0x80000008
.long 0x80000001
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
.long 0x80000000
.section .text
