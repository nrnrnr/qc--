.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
w:
.long 5
.long 6
.long 7
.long 8
x:
.long 1
.long 2
.long 3
.long 4
y:
.long 0
.long 0
.long 0
.long 0
z:
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
msg:
.byte 37
.byte 100
.byte 32
.byte 0
nl:
.byte 10
.byte 0
.section .text
print:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl %eax,8(%esp)
	movl $0,%eax
	jmp loop
loop:
	movl %edx,12(%esp)
	leal 28(%esp), %edx
	movl %ecx,16(%esp)
	movl $-24,%ecx
	addl %ecx,%edx
	movl %ebx,20(%esp)
	movl 8(%esp),%ecx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	leal msg,%edx
	leal 28(%esp), %ebx
	movl $-28,%ecx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl %eax,24(%esp)
	call printf
Ljoin_l14:
	movl $1,%eax
	movl 24(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	movl 8(%esp),%edx
	addl %eax,%edx
	movl 12(%esp),%eax
	cmpl %eax,%ecx
	jb Ljoin_l10
Ljoin_l11:
	leal nl,%eax
	leal 28(%esp), %ebx
	movl $-28,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l9:
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl 20(%esp),%ebx
	leal 32(%esp), %esp
	ret
Ljoin_l10:
	jmp Ljoin_l18
Ljoin_l18:
	movl %edx,8(%esp)
	movl %eax,%edx
	movl %ecx,%eax
	movl 20(%esp),%ebx
	movl 16(%esp),%ecx
	jmp loop
.section .pcmap_data
Lstackdata_l21:
.long 0
.section .pcmap
.long Ljoin_l14
.long Lframe_l22
.section .pcmap_data
Lframe_l22:
.long 0xffffffe4
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l21
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0xfffffff0
.long 0xfffffffc
.long 0x80000000
.section .pcmap
.long Ljoin_l9
.long Lframe_l23
.section .pcmap_data
Lframe_l23:
.long 0xffffffe4
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l21
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
.section .text
main:
	leal -12(%esp), %esp
Linitialize_continuations_l26:
Lproc_body_start_l25:
	leal -4(%esp), %esp
	leal y,%eax
	movl $4,%ecx
	leal 16(%esp), %edx
	movl %ebx,4(%esp)
	movl $-16,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call print
Ljoin_l42:
	leal w,%eax
	leal y,%ecx
	movl %esi,4(%esp)
	movl %eax,%esi
	movl %edi,8(%esp)
	movl %ecx,%edi
	movl $16,%ecx
	rep movsb
	leal -4(%esp), %esp
	leal y,%eax
	movl $4,%ecx
	leal 16(%esp), %esi
	movl $-16,%edi
	addl %edi,%esi
	movl %ecx,(%esi)
	call print
Ljoin_l39:
	leal -4(%esp), %esp
	leal z,%eax
	movl $8,%ecx
	leal 16(%esp), %edx
	movl $-16,%esi
	addl %esi,%edx
	movl %ecx,(%edx)
	call print
Ljoin_l36:
	leal x,%esi
	leal z,%edi
	movl $32,%ecx
	rep movsb
	leal -4(%esp), %esp
	leal z,%eax
	movl $8,%ecx
	leal 16(%esp), %esi
	movl $-16,%edi
	addl %edi,%esi
	movl %ecx,(%esi)
	call print
Ljoin_l33:
	leal -4(%esp), %esp
	leal w,%eax
	movl $20,%ecx
	leal 16(%esp), %edx
	movl $-16,%esi
	addl %esi,%edx
	movl %ecx,(%edx)
	call print
Ljoin_l30:
	movl $0,%eax
	leal 12(%esp), %ecx
	leal 12(%esp), %edx
	movl $0,%esi
	addl %esi,%edx
	movl (%ecx),%esi
	movl %esi,(%edx)
	movl (%esp),%ebx
	movl 4(%esp),%esi
	movl 8(%esp),%edi
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l48:
.long 0
.section .pcmap
.long Ljoin_l42
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l48
.long 0x80000008
.long 0x80000000
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
.long 0x80000000
.section .pcmap
.long Ljoin_l39
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l48
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xfffffffc
.long 0x80000000
.section .pcmap
.long Ljoin_l36
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l48
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xfffffffc
.long 0x80000000
.section .pcmap
.long Ljoin_l33
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l48
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xfffffffc
.long 0x80000000
.section .pcmap
.long Ljoin_l30
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l48
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xfffffffc
.long 0x80000000
.section .text
