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
	movl (%eax),%eax
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $0,%ecx
	leal 40(%esp), %edx
	movl %edi,12(%esp)
	movl $-40,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 40(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	leal 40(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl $10,%edi
	leal 40(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,16(%esp)
	call read
Ljoin_l16:
	movl $0,%edi
	cmpl %edi,%eax
	jl Ljoin_l12
Ljoin_l13:
	movl $0,%edi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,20(%esp)
	call close
Ljoin_l10:
	movl $5,%edx
	movl 16(%esp),%ecx
	addl %edx,%ecx
	movl 20(%esp),%eax
	leal 40(%esp), %edx
	movl $0,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl 12(%esp),%edi
	leal 40(%esp), %esp
	ret
Ljoin_l12:
	leal 40(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%edi
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
.long 0xffffffe8
.long Lstackdata_l22
.long 8
.long 1
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe4
.long 0
.long 0
.section .pcmap
.long Ljoin_l10
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l22
.long 8
.long 1
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffec
.long 0
.section .text
.section .text
main:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 12(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l32:
Lproc_body_start_l31:
	call doread
	.byte 0xe9
	.long C___R50-.-4
Ljoin_l51:
	leal success_read,%ecx
	leal 12(%esp), %edx
	movl %edi,8(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 12(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l47:
	call doread
	.byte 0xe9
	.long C___R43-.-4
Ljoin_l44:
	leal success_read,%edi
	leal 12(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 12(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l40:
	movl $0,%eax
	leal 12(%esp), %edx
	leal 12(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 12(%esp), %esp
	ret
C___R43:
	movl 8(%esp),%edi
	jmp Ljoin_l52
C___R50:
	jmp Ljoin_l52
Ljoin_l52:
	leal fail_to_read,%ecx
	leal 12(%esp), %edx
	movl %edi,8(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 12(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l36:
	movl $1,%eax
	leal 12(%esp), %edx
	leal 12(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l58:
.long 0
.section .pcmap
.long C___R50
.long Lframe_l59
.section .pcmap_data
Lframe_l59:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l58
.long 8
.long 4
.long 0
.long 1
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
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long C___R43
.long Lframe_l61
.section .pcmap_data
Lframe_l61:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l58
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffffc
.long 0
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
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffffc
.long 0
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
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffffc
.long 0
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
