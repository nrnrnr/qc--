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
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl %edx,(%esp)
	movl %eax,%edx
	movl %eax,4(%esp)
	movl %edx,%eax
	movl $0,%edx
	movl %ecx,8(%esp)
	movl (%esp),%ecx
	divl %ecx, %eax
	movl 4(%esp),%edx
	movl %eax,12(%esp)
	movl %edx,%eax
	movl $0,%edx
	divl %ecx, %eax
	movl 12(%esp),%eax
	leal 20(%esp), %ecx
	movl %ebx,16(%esp)
	movl $4,%ebx
	addl %ebx,%ecx
	movl 8(%esp),%ebx
	movl %ebx,(%ecx)
	movl 16(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l16:
Lproc_body_start_l15:
	movl $987,%eax
	movl $33,%ecx
	leal -4(%esp), %esp
	movl %eax,36(%esp)
	leal 52(%esp), %edx
	movl %ebx,40(%esp)
	movl $-52,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %ecx,44(%esp)
	call divmod
Ljoin_l23:
	leal answer,%ecx
	leal 48(%esp), %ebx
	movl %ebp,44(%esp)
	movl $-48,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	leal 48(%esp), %ecx
	movl $-44,%ebx
	addl %ebx,%ecx
	movl 32(%esp),%ebx
	movl %ebx,(%ecx)
	leal 48(%esp), %ecx
	movl $-40,%ebp
	addl %ebp,%ecx
	movl 40(%esp),%ebp
	movl %ebp,(%ecx)
	leal 48(%esp), %ecx
	movl $-36,%ebp
	addl %ebp,%ecx
	movl %eax,(%ecx)
	leal 48(%esp), %ecx
	movl $-32,%ebp
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	leal 48(%esp), %ecx
	movl $-28,%ebx
	addl %ebx,%ecx
	movl 40(%esp),%ebx
	movl %ebx,(%ecx)
	leal 48(%esp), %ecx
	movl $-24,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	imull %ebx,%eax
	addl %edx,%eax
	leal 48(%esp), %edx
	movl $-20,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l20:
	movl $0,%eax
	leal 48(%esp), %ecx
	leal 48(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 36(%esp),%ebx
	movl 44(%esp),%ebp
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
.long 0x80000001
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
.long 0x80000000
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
.long 0x80000001
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
.long 0x80000000
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
