.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
ge:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 4(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	cmpl %ecx,%eax
	jl Ljoin_l9
Ljoin_l8:
	movl $1,%eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $4,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
Ljoin_l9:
	movl $0,%eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $4,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 28(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l19:
Lproc_body_start_l18:
	leal -4(%esp), %esp
	movl $987,%eax
	movl $33,%ecx
	leal 32(%esp), %edx
	movl %ebx,20(%esp)
	movl $-32,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call ge
Ljoin_l32:
	leal -4(%esp), %esp
	movl $33,%ecx
	movl %eax,24(%esp)
	movl %ecx,%eax
	movl $987,%ecx
	leal 32(%esp), %edx
	movl $-32,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call ge
Ljoin_l29:
	leal -4(%esp), %esp
	movl $987,%ecx
	movl %eax,28(%esp)
	movl %ecx,%eax
	movl $987,%ecx
	leal 32(%esp), %edx
	movl $-32,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call ge
Ljoin_l26:
	leal answer,%ecx
	leal 28(%esp), %edx
	movl $-28,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 28(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l23:
	movl $0,%eax
	leal 28(%esp), %ecx
	leal 28(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 16(%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l38:
.long 0
.section .pcmap
.long Ljoin_l32
.long Lframe_l39
.section .pcmap_data
Lframe_l39:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l38
.long 0x80000008
.long 0x80000005
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l29
.long Lframe_l40
.section .pcmap_data
Lframe_l40:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l38
.long 0x80000008
.long 0x80000005
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l26
.long Lframe_l41
.section .pcmap_data
Lframe_l41:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l38
.long 0x80000008
.long 0x80000005
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l23
.long Lframe_l42
.section .pcmap_data
Lframe_l42:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l38
.long 0x80000008
.long 0x80000005
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
.long 0
.long 0x80000000
.section .text
.section .data
answer:
.byte 57
.byte 56
.byte 55
.byte 32
.byte 62
.byte 61
.byte 32
.byte 51
.byte 51
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 32
.byte 51
.byte 51
.byte 32
.byte 62
.byte 61
.byte 32
.byte 57
.byte 56
.byte 55
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 32
.byte 57
.byte 56
.byte 55
.byte 32
.byte 62
.byte 61
.byte 32
.byte 57
.byte 56
.byte 55
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
