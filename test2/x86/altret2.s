.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
doread:
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl (%eax),%ecx
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $0,%eax
	movl $-40,%edx
	movl %ecx,12(%esp)
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-16,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl $-36,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $10,%ecx
	movl $-32,%edx
	leal 40(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	call read
Ljoin_l16:
	movl $0,%ecx
	cmpl %ecx,%eax
	jl Ljoin_l12
Ljoin_l13:
	movl $0,%ecx
	movl $-40,%edx
	movl %ebx,16(%esp)
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,20(%esp)
	call close
Ljoin_l10:
	movl $5,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl 20(%esp),%eax
	movl $0,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl 16(%esp),%ebx
	leal 40(%esp), %esp
	ret
Ljoin_l12:
	movl $0,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 40(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l22:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l16
.long Lframe_l23
.section .pcmap_data
Lframe_l23:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l22
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
.long Ljoin_l10
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l22
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.section .text
.section .text
main:
	leal -12(%esp), %esp
	movl $4,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l32:
Lproc_body_start_l31:
	call doread
	.byte 0xe9
	.long C___R50-.-4
Ljoin_l51:
	leal success_read,%ecx
	movl $-12,%edx
	movl %ebx,8(%esp)
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-8,%ecx
	leal 12(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l47:
	call doread
	.byte 0xe9
	.long C___R43-.-4
Ljoin_l44:
	leal success_read,%ebx
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-8,%edx
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l40:
	movl $0,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
C___R43:
	movl 8(%esp),%ebx
	jmp Ljoin_l52
C___R50:
	jmp Ljoin_l52
Ljoin_l52:
	leal fail_to_read,%ecx
	movl $-12,%edx
	movl %ebx,8(%esp)
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-8,%ecx
	leal 12(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l36:
	movl $1,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l58:
.long 0
.section .pcmap
.long Ljoin_l51
.long Lframe_l59
.section .pcmap_data
Lframe_l59:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l58
.long 0x80000008
.long 0x80000004
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
.long 0
.section .pcmap
.long Ljoin_l47
.long Lframe_l60
.section .pcmap_data
Lframe_l60:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l58
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l44
.long Lframe_l61
.section .pcmap_data
Lframe_l61:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l58
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l40
.long Lframe_l62
.section .pcmap_data
Lframe_l62:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l58
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l36
.long Lframe_l63
.section .pcmap_data
Lframe_l63:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l58
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
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
.long 0
.long 0
.section .text
.section .data
success_read:
.byte 114
.byte 101
.byte 97
.byte 100
.byte 40
.byte 41
.byte 32
.byte 114
.byte 101
.byte 97
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 98
.byte 121
.byte 116
.byte 101
.byte 115
.byte 10
.byte 0
fail_to_read:
.byte 69
.byte 114
.byte 114
.byte 111
.byte 114
.byte 58
.byte 32
.byte 114
.byte 101
.byte 97
.byte 100
.byte 40
.byte 41
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 101
.byte 100
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
