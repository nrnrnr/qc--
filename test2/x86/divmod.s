.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
divmod:
	leal -20(%esp), %esp
	movl $4,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl %ecx,(%esp)
	movl %eax,%ecx
	movl %eax,4(%esp)
	movl %ecx,%eax
	movl %edx,8(%esp)
	movl $0,%edx
	movl (%esp),%ecx
	divl %ecx, %eax
	movl 4(%esp),%edx
	movl %eax,12(%esp)
	movl %edx,%eax
	movl $0,%edx
	divl %ecx, %eax
	movl 12(%esp),%eax
	movl $4,%ecx
	movl %ebx,16(%esp)
	leal 20(%esp), %ebx
	addl %ecx,%ebx
	movl 8(%esp),%ecx
	movl %ecx,(%ebx)
	movl 16(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l13:
.long 0
.section .text
.section .text
main:
	leal -48(%esp), %esp
	movl $4,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l16:
Lproc_body_start_l15:
	movl $987,%eax
	movl $33,%ecx
	leal -4(%esp), %esp
	movl %eax,36(%esp)
	movl $-52,%edx
	movl %ebx,40(%esp)
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %ecx,44(%esp)
	call divmod
Ljoin_l23:
	leal answer,%ecx
	movl $-48,%ebx
	movl %ebp,44(%esp)
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $-44,%ecx
	leal 48(%esp), %ebp
	addl %ecx,%ebp
	movl 32(%esp),%ecx
	movl %ecx,(%ebp)
	movl $-40,%ebp
	leal 48(%esp), %ebx
	addl %ebp,%ebx
	movl 40(%esp),%ebp
	movl %ebp,(%ebx)
	movl $-36,%ebx
	movl %ebp,40(%esp)
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	movl $-32,%ebp
	leal 48(%esp), %ebx
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl $-28,%ecx
	leal 48(%esp), %ebx
	addl %ecx,%ebx
	movl 40(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-24,%ebx
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	movl %edx,(%ebp)
	imull %ecx,%eax
	addl %edx,%eax
	movl $-20,%edx
	leal 48(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l20:
	movl $0,%eax
	movl 44(%esp),%ebp
	movl 36(%esp),%ebx
	leal 48(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l29:
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000006
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
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
.long 0xfffffff0
.long 0xfffffff8
.section .pcmap
.long Ljoin_l20
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000006
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0xfffffffc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
answer:
.byte 37
.byte 100
.byte 32
.byte 100
.byte 105
.byte 118
.byte 32
.byte 37
.byte 100
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 119
.byte 97
.byte 110
.byte 116
.byte 115
.byte 32
.byte 50
.byte 57
.byte 41
.byte 59
.byte 32
.byte 32
.byte 37
.byte 100
.byte 32
.byte 109
.byte 111
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 119
.byte 97
.byte 110
.byte 116
.byte 115
.byte 32
.byte 51
.byte 48
.byte 41
.byte 59
.byte 32
.byte 32
.byte 100
.byte 32
.byte 42
.byte 32
.byte 113
.byte 32
.byte 43
.byte 32
.byte 114
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
