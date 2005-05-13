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
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	movl %edi,20(%esp)
	movl %esi,16(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%edx
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	movl $10,%edx
	leal 40(%esp), %ecx
	movl $-36,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call down
.Lcall_successor_l14:
	movl %eax,%esi
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%ecx
	leal 40(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $100,%ecx
	leal 40(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call down
.Lcall_successor_l11:
	leal pcmp,%ecx
	leal 32(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $100,%ecx
	leal 32(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	subl %esi,%eax
	leal 32(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $10,%ecx
	leal 32(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l8:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
	movl 16(%esp),%esi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l20:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l21
.section .pcmap_data
.Lframe_l21:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long .Lstackdata_l20
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l22
.section .pcmap_data
.Lframe_l22:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long .Lstackdata_l20
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l23
.section .pcmap_data
.Lframe_l23:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long .Lstackdata_l20
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
down:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,(%esp)
	leal 20(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %ebp,4(%esp)
	movl %ebx,8(%esp)
.Linitialize_continuations_l25:
.Lproc_body_start_l24:
.Lbranch_target_l33:
	movl (%esp),%edx
	cmpl %ecx,%edx
	jb .Lbranch_target_l29
.Lbranch_target_l27:
	leal 20(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	subl %ecx,%eax
	leal 20(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%ebp
	movl 8(%esp),%ebx
	leal 28(%esp), %esp
	ret
.Lbranch_target_l29:
	movl $1,%ebx
	movl (%esp),%edx
	addl %ebx,%edx
	leal 20(%esp), %ebp
	movl $4,%ebx
	addl %ebx,%ebp
	movl %edx,(%ebp)
	leal 20(%esp), %edx
	movl $8,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl 4(%esp),%ebp
	movl 8(%esp),%ebx
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	jmp down
.section .text
.section .data
pcmp:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 100
.byte 111
.byte 119
.byte 110
.byte 32
.byte 37
.byte 100
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 98
.byte 121
.byte 116
.byte 101
.byte 115
.byte 32
.byte 100
.byte 101
.byte 101
.byte 112
.byte 101
.byte 114
.byte 32
.byte 116
.byte 104
.byte 97
.byte 110
.byte 32
.byte 37
.byte 100
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 10
.byte 0
pdown:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 100
.byte 111
.byte 119
.byte 110
.byte 32
.byte 37
.byte 100
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 117
.byte 115
.byte 101
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 98
.byte 121
.byte 116
.byte 101
.byte 115
.byte 32
.byte 111
.byte 102
.byte 32
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 10
.byte 0
pdownr:
.byte 118
.byte 97
.byte 108
.byte 117
.byte 101
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
.byte 97
.byte 102
.byte 116
.byte 101
.byte 114
.byte 32
.byte 37
.byte 100
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 98
.byte 121
.byte 116
.byte 101
.byte 115
.byte 32
.byte 111
.byte 102
.byte 32
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 10
.byte 0
