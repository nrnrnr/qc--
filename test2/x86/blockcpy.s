.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
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
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl %edi,8(%esp)
	movl $0,%edi
	jmp loop
loop:
	movl %edi,12(%esp)
	leal 44(%esp), %edi
	movl %edi,16(%esp)
	movl $-40,%edi
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	movl %esi,24(%esp)
	movl 20(%esp),%esi
	addl %esi,%edi
	movl (%eax),%esi
	movl %esi,(%edi)
	leal msg,%edi
	leal 44(%esp), %esi
	movl %edi,28(%esp)
	movl $-44,%edi
	addl %edi,%esi
	movl 28(%esp),%edi
	movl %edi,(%esi)
	movl %edx,40(%esp)
	movl %ecx,36(%esp)
	movl %eax,32(%esp)
	call printf
Ljoin_l14:
	movl $1,%edi
	movl 12(%esp),%esi
	addl %edi,%esi
	movl $4,%edi
	movl 32(%esp),%eax
	addl %edi,%eax
	movl 36(%esp),%edi
	cmpl %edi,%esi
	jb Ljoin_l10
Ljoin_l11:
	leal nl,%edi
	leal 44(%esp), %esi
	movl $-44,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l9:
	leal 44(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%esi
	movl 8(%esp),%edi
	leal 48(%esp), %esp
	ret
Ljoin_l10:
	jmp Ljoin_l18
Ljoin_l18:
	movl %edi,%ecx
	movl %esi,%edi
	movl 24(%esp),%esi
	movl 40(%esp),%edx
	jmp loop
.section .pcmap_data
Lstackdata_l21:
.long 0
.section .pcmap
.long Ljoin_l14
.long Lframe_l22
.section .pcmap_data
Lframe_l22:
.long 0x80000008
.long 0xffffffd4
.long 0xfffffffc
.long Lstackdata_l21
.long 2
.long 3
.long 0
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffdc
.long 0xfffffff4
.long 0xfffffff8
.long 0xffffffe0
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l23
.section .pcmap_data
Lframe_l23:
.long 0x80000008
.long 0xffffffd4
.long 0xfffffffc
.long Lstackdata_l21
.long 2
.long 3
.long 0
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l26:
Lproc_body_start_l25:
	leal -4(%esp), %esp
	leal y,%eax
	movl $4,%edx
	movl %ebp,4(%esp)
	leal 32(%esp), %ebp
	movl %ebp,8(%esp)
	movl $-32,%ebp
	movl %ebp,12(%esp)
	movl 8(%esp),%ebp
	movl %ebx,16(%esp)
	movl 12(%esp),%ebx
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl %ecx,20(%esp)
	call print
Ljoin_l42:
	leal w,%ebp
	leal y,%ebx
	movl %esi,20(%esp)
	movl %ebp,%esi
	movl %edi,24(%esp)
	movl %ebx,%edi
	movl $16,%ecx
	rep movsb
	leal -4(%esp), %esp
	leal y,%eax
	movl $4,%ebp
	leal 32(%esp), %ebx
	movl $-32,%edi
	addl %edi,%ebx
	movl %ebp,(%ebx)
	call print
Ljoin_l39:
	leal -4(%esp), %esp
	leal z,%eax
	movl $8,%ebp
	leal 32(%esp), %ebx
	movl $-32,%edi
	addl %edi,%ebx
	movl %ebp,(%ebx)
	call print
Ljoin_l36:
	leal x,%esi
	leal z,%edi
	movl $32,%ecx
	rep movsb
	leal -4(%esp), %esp
	leal z,%eax
	movl $8,%edi
	leal 32(%esp), %esi
	movl $-32,%ebp
	addl %ebp,%esi
	movl %edi,(%esi)
	call print
Ljoin_l33:
	leal -4(%esp), %esp
	leal w,%eax
	movl $20,%edi
	leal 32(%esp), %esi
	movl $-32,%ebp
	addl %ebp,%esi
	movl %edi,(%esi)
	call print
Ljoin_l30:
	movl $0,%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebx
	movl (%esp),%ebp
	movl 20(%esp),%esi
	movl 24(%esp),%edi
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l48:
.long 0
.section .pcmap
.long Ljoin_l42
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l48
.long 2
.long 0
.long 0
.long 1
.long 7
.long 0xfffffff0
.long 9
.long 0xffffffe4
.long 0
.section .pcmap
.long Ljoin_l39
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l48
.long 4
.long 0
.long 0
.long 1
.long 7
.long 0xfffffff0
.long 9
.long 0xffffffe4
.long 10
.long 0xfffffff8
.long 11
.long 0xfffffffc
.long 0
.section .pcmap
.long Ljoin_l36
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l48
.long 4
.long 0
.long 0
.long 1
.long 7
.long 0xfffffff0
.long 9
.long 0xffffffe4
.long 10
.long 0xfffffff8
.long 11
.long 0xfffffffc
.long 0
.section .pcmap
.long Ljoin_l33
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l48
.long 4
.long 0
.long 0
.long 1
.long 7
.long 0xfffffff0
.long 9
.long 0xffffffe4
.long 10
.long 0xfffffff8
.long 11
.long 0xfffffffc
.long 0
.section .pcmap
.long Ljoin_l30
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l48
.long 4
.long 0
.long 0
.long 1
.long 7
.long 0xfffffff0
.long 9
.long 0xffffffe4
.long 10
.long 0xfffffff8
.long 11
.long 0xfffffffc
.long 0
.section .text
