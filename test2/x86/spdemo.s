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
.section .text
main:
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%edx
	leal 40(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l6:
.Lproc_body_start_l5:
	movl %edi,16(%esp)
	movl $1,%edi
	cmpl %edi,%ecx
	ja .Ljoin_l18
.Ljoin_l19:
	movl $10,%edi
	jmp .Ljoin_l16
.Ljoin_l18:
	movl $4,%edi
	addl %edi,%edx
	leal 40(%esp), %edi
	movl $-40,%ecx
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl %eax,20(%esp)
	call atol
.Ljoin_l17:
	movl %eax,%edi
	movl 20(%esp),%eax
	jmp .Ljoin_l16
.Ljoin_l16:
	movl %eax,20(%esp)
	movl %edi,%eax
	call sp
.Ljoin_l13:
	leal fmt,%ecx
	movl %edi,24(%esp)
	leal 40(%esp), %edi
	movl %edi,28(%esp)
	movl $-40,%edi
	movl %edi,32(%esp)
	movl 28(%esp),%edi
	movl %esi,36(%esp)
	movl 32(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	leal 40(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 40(%esp), %edi
	movl $-28,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	call printf
.Ljoin_l10:
	movl $0,%eax
	leal 40(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 36(%esp),%esi
	movl 16(%esp),%edi
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l25:
.long 0
.section .pcmap
.long .Ljoin_l17
.long .Lframe_l26
.section .pcmap_data
.Lframe_l26:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffec
.long .Lstackdata_l25
.long 1
.long 5
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l13
.long .Lframe_l27
.section .pcmap_data
.Lframe_l27:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffec
.long .Lstackdata_l25
.long 1
.long 5
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l10
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffec
.long .Lstackdata_l25
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xfffffffc
.long 11
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 115
.byte 117
.byte 109
.byte 32
.byte 117
.byte 112
.byte 32
.byte 116
.byte 111
.byte 32
.byte 37
.byte 100
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 112
.byte 114
.byte 111
.byte 100
.byte 117
.byte 99
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
.section .text
sp:
	leal -24(%esp), %esp
	leal 24(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l31:
.Lproc_body_start_l30:
	movl $0,%ecx
	movl %edx,(%esp)
	leal 24(%esp), %edx
	movl %edx,4(%esp)
	movl $-4,%edx
	movl %edx,8(%esp)
	movl 4(%esp),%edx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%edx
	leal 24(%esp), %ecx
	movl %edx,16(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	jmp sphelp
.section .text
.section .text
sphelp:
	leal -48(%esp), %esp
	leal 48(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 48(%esp), %ecx
	movl %edx,(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l43:
.Lproc_body_start_l42:
	movl %edx,4(%esp)
	movl $0,%edx
	cmpl %edx,%eax
	je .Ljoin_l46
.Ljoin_l47:
	movl $1,%edx
	movl %edx,8(%esp)
	movl %eax,%edx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	subl %ecx,%edx
	movl %eax,16(%esp)
	movl %edx,%eax
	movl (%esp),%edx
	movl 16(%esp),%ecx
	addl %ecx,%edx
	movl %edx,20(%esp)
	leal 48(%esp), %edx
	movl %edx,24(%esp)
	movl $4,%edx
	movl %edx,28(%esp)
	movl 24(%esp),%edx
	movl 28(%esp),%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edx
	movl 16(%esp),%ecx
	imull %ecx,%edx
	leal 48(%esp), %ecx
	movl %edx,32(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 48(%esp), %esp
	jmp sphelp
.Ljoin_l46:
	movl (%esp),%eax
	movl 4(%esp),%edx
	movl %ecx,12(%esp)
	leal 48(%esp), %ecx
	movl %ecx,36(%esp)
	movl $8,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edi,44(%esp)
	movl 40(%esp),%edi
	addl %edi,%ecx
	movl 12(%esp),%edi
	movl %edi,(%ecx)
	movl 44(%esp),%edi
	leal 56(%esp), %esp
	ret
.section .text
