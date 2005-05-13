.globl words
.globl wordlist
.globl x
.globl y
.globl main
.globl f
.globl g
.globl h
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
.section .data
.align 4
words:
.long 1
.long 2
.long 3
.byte 105
.byte 102
.byte 0
.skip 3, 0
.skip 2, 0
.long 4
.long 5
.skip 4, 0
.byte 102
.byte 111
.byte 114
.skip 3, 0
.skip 2, 0
.long 6
.long 7
.long 8
.byte 101
.byte 108
.byte 115
.byte 101
.byte 0
.skip 1, 0
.skip 2, 0
.long 9
.long 10
.long 11
.byte 119
.byte 104
.byte 105
.byte 108
.byte 101
.skip 1, 0
.skip 2, 0
.long 0
.skip 8, 0
.skip 8, 0
.align 4
wordlist:
.long words
.align 4
x:
.long 1
.long 2
.long 3
.long 4
.long 0
.long 5
.long 6
.skip 12, 0
.long 7
.skip 16, 0
.align 4
y:
.long x
.long 0x14 + x
.long 0x28 + x
.long 0
.section .text
main:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
.Linitialize_continuations_l6:
.Lproc_body_start_l5:
	movl $0,%esi
L.8:
.Lbranch_target_l27:
	movl $2,%ecx
	movl %esi,%eax
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne L.5
.Lbranch_target_l15:
	call f
.Lcall_successor_l14:
	leal wordlist,%ecx
	leal 20(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call g
.Lcall_successor_l11:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	leal 20(%esp), %esp
	ret
L.5:
	movl $0,%edi
L.12:
	movl $2,%ecx
.Lbranch_target_l26:
	movl %edi,%eax
	shll %cl, %eax
	movl %esi,%edx
	shll %cl, %edx
	leal y,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne L.9
.Lbranch_target_l19:
	leal i_14,%ecx
	leal 20(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l18:
L.6:
	movl $1,%eax
	addl %eax,%esi
	jmp L.8
L.9:
	movl $2,%ecx
	movl %edi,%edx
	shll %cl, %edx
	movl %esi,%eax
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %eax,%edx
	leal 20(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal i_13,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l22:
L.10:
	movl $1,%eax
	addl %eax,%edi
	jmp L.12
.section .pcmap_data
.Lstackdata_l31:
.long 0
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l31
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l31
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l31
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l22
.long .Lframe_l35
.section .pcmap_data
.Lframe_l35:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l31
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0x4000000b
.long 0x4000000a
.long 0
.long 0
.long 0
.section .text
.section .data
.align 4
L.20:
.long i_21
.long i_22
.long i_23
.long i_24
.long 0
.section .text
f:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l37:
.Lproc_body_start_l36:
	leal L.20,%edi
L.28:
.Lbranch_target_l47:
	movl (%edi),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne L.25
.Lbranch_target_l40:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
L.25:
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%edi),%ecx
	movl %ecx,(%eax)
	leal i_29,%eax
	leal 16(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l43:
L.26:
	movl $4,%eax
	addl %eax,%edi
	jmp L.28
.section .pcmap_data
.Lstackdata_l51:
.long 0
.section .pcmap
.long .Lcall_successor_l43
.long .Lframe_l52
.section .pcmap_data
.Lframe_l52:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l51
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0x4000000b
.long 0
.section .text
g:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	movl %esi,12(%esp)
.Linitialize_continuations_l54:
.Lproc_body_start_l53:
L.35:
.Lbranch_target_l72:
	movl 8(%esp),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne L.32
.Lbranch_target_l60:
	call h
.Lcall_successor_l59:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%esi
	leal 20(%esp), %esp
	ret
L.32:
	movl $0,%esi
L.39:
.Lbranch_target_l71:
	movl $3,%eax
	cmpl %eax,%esi
	jb L.36
.Lbranch_target_l64:
	leal i_29,%ecx
	leal 20(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $12,%eax
	movl 8(%esp),%ecx
	addl %eax,%ecx
	leal 20(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l63:
L.33:
	movl $20,%ecx
	movl 8(%esp),%eax
	addl %ecx,%eax
	movl %eax,8(%esp)
	jmp L.35
L.36:
	movl $2,%ecx
	movl %esi,%edx
	shll %cl, %edx
	movl 8(%esp),%eax
	addl %eax,%edx
	leal 20(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal i_40,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l67:
L.37:
	movl $1,%eax
	addl %eax,%esi
	jmp L.39
.section .pcmap_data
.Lstackdata_l76:
.long 0
.section .pcmap
.long .Lcall_successor_l59
.long .Lframe_l77
.section .pcmap_data
.Lframe_l77:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l76
.long 1
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l63
.long .Lframe_l78
.section .pcmap_data
.Lframe_l78:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l76
.long 1
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 0xfffffff4
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l67
.long .Lframe_l79
.section .pcmap_data
.Lframe_l79:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l76
.long 1
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 0xfffffff4
.long 0x4000000a
.long 0
.section .text
h:
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl (%eax),%eax
	movl %eax,40(%esp)
	movl %edi,36(%esp)
	movl %esi,32(%esp)
	movl %ebp,28(%esp)
	movl %ebx,24(%esp)
.Linitialize_continuations_l81:
.Lproc_body_start_l80:
	movl $0,%ebx
L.46:
.Lbranch_target_l91:
	movl $5,%eax
	cmpl %eax,%ebx
	jb L.43
.Lbranch_target_l84:
	movl $0,%eax
	leal 44(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	movl 36(%esp),%edi
	movl 32(%esp),%esi
	movl 28(%esp),%ebp
	movl 24(%esp),%ebx
	leal 44(%esp), %esp
	ret
L.43:
	movl $20,%ebp
	imull %ebx,%ebp
	leal i_47,%eax
	movl %eax,20(%esp)
	leal words,%ecx
	movl %ebp,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal words,%edx
	movl $4,%eax
	addl %eax,%edx
	movl %ebp,%eax
	addl %edx,%eax
	movl (%eax),%edx
	leal words,%esi
	movl $8,%eax
	addl %eax,%esi
	movl %ebp,%eax
	addl %esi,%eax
	leal 44(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	leal words,%eax
	movl $12,%esi
	addl %esi,%eax
	addl %eax,%ebp
	leal 44(%esp), %eax
	movl $-28,%esi
	addl %esi,%eax
	movl %ebp,(%eax)
	leal 44(%esp), %eax
	movl $-36,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	leal 44(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l87:
L.44:
	movl $1,%eax
	addl %eax,%ebx
	jmp L.46
.section .pcmap_data
.Lstackdata_l95:
.long 0
.section .pcmap
.long .Lcall_successor_l87
.long .Lframe_l96
.section .pcmap_data
.Lframe_l96:
.long 0x80000004
.long 0xffffffd4
.long 0xfffffffc
.long .Lstackdata_l95
.long 4
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff0
.long 7
.long 0xffffffec
.long 0x40000007
.long 0
.long 0
.section .text
.section .data
i_47:
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 115
.byte 10
.byte 0
i_40:
.byte 37
.byte 100
.byte 32
.byte 0
i_29:
.byte 37
.byte 115
.byte 10
.byte 0
i_24:
.byte 119
.byte 104
.byte 105
.byte 108
.byte 101
.byte 0
i_23:
.byte 101
.byte 108
.byte 115
.byte 101
.byte 0
i_22:
.byte 102
.byte 111
.byte 114
.byte 0
i_21:
.byte 105
.byte 102
.byte 0
i_14:
.byte 10
.byte 0
i_13:
.byte 32
.byte 37
.byte 100
.byte 0
