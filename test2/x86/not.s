.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
ge:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	cmpl %edx,%eax
	jl Ljoin_l9
Ljoin_l8:
	movl $1,%eax
	leal 20(%esp), %edx
	movl %edx,12(%esp)
	movl $4,%edx
	movl %edx,16(%esp)
	movl 12(%esp),%edx
	movl %ecx,8(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 24(%esp), %esp
	ret
Ljoin_l9:
	movl $0,%eax
	leal 20(%esp), %edx
	movl %edx,(%esp)
	movl $4,%edx
	movl %edx,4(%esp)
	movl (%esp),%edx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 24(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 28(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l19:
Lproc_body_start_l18:
	leal -4(%esp), %esp
	movl $987,%eax
	movl $33,%ecx
	leal 32(%esp), %edx
	movl %edi,20(%esp)
	movl $-32,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	call ge
Ljoin_l32:
	leal -4(%esp), %esp
	movl $33,%edi
	movl %eax,24(%esp)
	movl %edi,%eax
	movl $987,%edi
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	call ge
Ljoin_l29:
	leal -4(%esp), %esp
	movl $987,%edi
	movl %eax,28(%esp)
	movl %edi,%eax
	movl $987,%edi
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	call ge
Ljoin_l26:
	leal answer,%edi
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 28(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	movl 20(%esp),%ecx
	movl %ecx,(%edi)
	leal 28(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	movl 24(%esp),%ecx
	movl %ecx,(%edi)
	leal 28(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l23:
	movl $0,%eax
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
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
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
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
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
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
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
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
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
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
