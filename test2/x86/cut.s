.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
nocut:
.byte 110
.byte 111
.byte 32
.byte 99
.byte 117
.byte 116
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
ret:
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 10
.byte 0
.section .text
main:
	leal -36(%esp), %esp
	movl $4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
initialize_continuations_l11:
	leal k_C8,%ecx
	movl $-8,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-36,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl $-4,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
proc_body_start_l10:
	movl $0,%ecx
	movl $-8,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
	movl %ebx,8(%esp)
	movl %ecx,24(%esp)
	call f
join_l22:
	leal nocut,%edi
	movl $-36,%esi
	leal 36(%esp), %ebx
	addl %esi,%ebx
	movl %edi,(%ebx)
	movl $-32,%ebx
	leal 36(%esp), %edi
	addl %ebx,%edi
	movl 24(%esp),%ebx
	movl %ebx,(%edi)
	call printf
join_l19:
	leal 36(%esp), %eax
	movl $0,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 16(%esp),%esi
	movl 20(%esp),%edi
	leal 36(%esp), %esp
	ret
k_C8:
	movl $3,%eax
	leal nocut,%ecx
	addl %eax,%ecx
	movl $-36,%eax
	leal 36(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $-32,%ecx
	leal 36(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	call printf
join_l15:
	leal 36(%esp), %eax
	movl $0,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 16(%esp),%esi
	movl 20(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
stackdata_l27:
.long 0
.section .pcmap
.long k_C8
.long frame_l28
.section .pcmap_data
frame_l28:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l27
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l22
.long frame_l29
.section .pcmap_data
frame_l29:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l27
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0xfffffff4
.section .pcmap
.long join_l19
.long frame_l30
.section .pcmap_data
frame_l30:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l27
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l15
.long frame_l31
.section .pcmap_data
frame_l31:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l27
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.section .text
.section .text
f:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l35:
proc_body_start_l34:
	movl $-12,%ecx
	movl %eax,4(%esp)
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,8(%esp)
	call g
join_l42:
	leal ret,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
join_l39:
	movl $0,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
stackdata_l48:
.long 0
.section .pcmap
.long join_l42
.long frame_l49
.section .pcmap_data
frame_l49:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffffc
.long stackdata_l48
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
.long join_l39
.long frame_l50
.section .pcmap_data
frame_l50:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffffc
.long stackdata_l48
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
.section .text
g:
	leal -4(%esp), %esp
	movl $4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%eax
initialize_continuations_l54:
proc_body_start_l53:
	call h
join_l61:
	leal ret,%eax
	movl $-4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
join_l58:
	leal 4(%esp), %eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l67:
.long 0
.section .pcmap
.long join_l61
.long frame_l68
.section .pcmap_data
frame_l68:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l67
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
.long join_l58
.long frame_l69
.section .pcmap_data
frame_l69:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l67
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
.section .text
h:
	movl %esp,%ecx
	movl (%ecx),%edx
initialize_continuations_l73:
proc_body_start_l72:
	movl $99,%edx
	movl $4,%edi
	movl %eax,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl (%eax),%esi
	movl %edi, %esp; jmp *%esi
.section .pcmap_data
stackdata_l81:
.long 0
.section .text
