.globl main
.globl f
.globl g
.globl h
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
s_lbl:
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 95
.byte 116
.byte 114
.byte 97
.byte 99
.byte 101
.byte 58
.byte 32
.byte 115
.byte 100
.byte 61
.byte 49
.byte 51
.byte 44
.byte 49
.byte 52
.byte 44
.byte 49
.byte 53
.byte 32
.byte 32
.byte 120
.byte 61
.byte 55
.byte 44
.byte 32
.byte 121
.byte 61
.byte 52
.byte 0
f_lbl:
.byte 102
.byte 32
.byte 97
.byte 114
.byte 103
.byte 115
.byte 61
.byte 49
.byte 48
.byte 46
.byte 46
.byte 51
.byte 48
.byte 32
.byte 115
.byte 100
.byte 61
.byte 49
.byte 44
.byte 50
.byte 44
.byte 51
.byte 32
.byte 120
.byte 61
.byte 53
.byte 0
g_lbl:
.byte 103
.byte 32
.byte 97
.byte 114
.byte 103
.byte 115
.byte 61
.byte 49
.byte 48
.byte 46
.byte 46
.byte 52
.byte 48
.byte 32
.byte 115
.byte 100
.byte 61
.byte 39
.byte 97
.byte 100
.byte 100
.byte 101
.byte 100
.byte 32
.byte 100
.byte 101
.byte 97
.byte 100
.byte 32
.byte 102
.byte 97
.byte 99
.byte 101
.byte 39
.byte 0
gt_lbl:
.byte 103
.byte 116
.byte 32
.byte 97
.byte 114
.byte 103
.byte 115
.byte 61
.byte 49
.byte 48
.byte 46
.byte 46
.byte 53
.byte 48
.byte 32
.byte 115
.byte 100
.byte 61
.byte 39
.byte 97
.byte 100
.byte 100
.byte 101
.byte 100
.byte 32
.byte 100
.byte 101
.byte 97
.byte 100
.byte 32
.byte 102
.byte 97
.byte 99
.byte 101
.byte 39
.byte 0
gp_lbl:
.byte 103
.byte 112
.byte 32
.byte 97
.byte 114
.byte 103
.byte 115
.byte 61
.byte 49
.byte 48
.byte 46
.byte 46
.byte 53
.byte 48
.byte 32
.byte 115
.byte 100
.byte 61
.byte 39
.byte 98
.byte 97
.byte 100
.byte 32
.byte 98
.byte 101
.byte 101
.byte 102
.byte 32
.byte 98
.byte 97
.byte 97
.byte 101
.byte 100
.byte 39
.byte 0
h_lbl:
.byte 104
.byte 32
.byte 115
.byte 100
.byte 61
.byte 50
.byte 51
.byte 44
.byte 50
.byte 52
.byte 44
.byte 50
.byte 53
.byte 0
m_lbl:
.byte 109
.byte 97
.byte 105
.byte 110
.byte 32
.byte 115
.byte 100
.byte 61
.byte 39
.byte 101
.byte 102
.byte 102
.byte 97
.byte 99
.byte 101
.byte 100
.byte 32
.byte 98
.byte 97
.byte 100
.byte 32
.byte 102
.byte 97
.byte 99
.byte 97
.byte 100
.byte 101
.byte 39
.byte 44
.byte 32
.byte 110
.byte 61
.byte 68
.byte 69
.byte 65
.byte 68
.byte 0
msg:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 114
.byte 117
.byte 110
.byte 45
.byte 116
.byte 105
.byte 109
.byte 101
.byte 32
.byte 115
.byte 121
.byte 115
.byte 116
.byte 101
.byte 109
.byte 46
.byte 46
.byte 46
.byte 10
.byte 0
f_fmt:
.byte 99
.byte 111
.byte 117
.byte 110
.byte 116
.byte 105
.byte 110
.byte 103
.byte 32
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 100
.byte 97
.byte 116
.byte 97
.byte 58
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
.section .text
stack_trace:
	leal -108(%esp), %esp
	leal 108(%esp), %eax
	movl (%eax),%eax
	movl %eax,40(%esp)
	movl %edi,44(%esp)
	movl %esi,48(%esp)
	movl %ebp,52(%esp)
	movl %ebx,56(%esp)
.Linitialize_continuations_l16:
	leal .Lcut_entry_l13,%ecx
	leal 108(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 108(%esp), %ecx
	movl $-108,%eax
	addl %eax,%ecx
	leal 108(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lproc_body_start_l15:
	movl $7,%eax
	movl %eax,32(%esp)
	movl $4,%eax
	movl %eax,36(%esp)
	movl $13,%ecx
	leal 108(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $14,%ecx
	leal 108(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $15,%ecx
	leal 108(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal msg,%ecx
	leal 108(%esp), %eax
	movl $-108,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l24:
	leal 108(%esp), %ecx
	movl $-44,%eax
	addl %eax,%ecx
	leal 108(%esp), %eax
	movl $-108,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call rt_check
.Lcall_successor_l21:
	movl 32(%esp),%eax
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl %eax,32(%esp)
	leal 108(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	movl 44(%esp),%edi
	movl 48(%esp),%esi
	movl 52(%esp),%ebp
	movl 56(%esp),%ebx
	leal 108(%esp), %esp
	ret
.Lcut_entry_l13:
.Lstart_of_continuation_code_l12:
	movl 32(%esp),%eax
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl %eax,32(%esp)
	leal 108(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	movl 44(%esp),%edi
	movl 48(%esp),%esi
	movl 52(%esp),%ebp
	movl 56(%esp),%ebx
	leal 108(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l29:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l24
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xffffff94
.long 0xffffffbc
.long .Lstackdata_l29
.long 4
.long 2
.long 2
.long 1
.long 11
.long 0xffffffc0
.long 10
.long 0xffffffc4
.long 9
.long 0xffffffc8
.long 7
.long 0xffffffcc
.long 0xffffffb4
.long 0xffffffb8
.long 0
.long 0
.long s_lbl
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xffffff94
.long 0xffffffbc
.long .Lstackdata_l29
.long 4
.long 2
.long 2
.long 1
.long 11
.long 0xffffffc0
.long 10
.long 0xffffffc4
.long 9
.long 0xffffffc8
.long 7
.long 0xffffffcc
.long 0xffffffb4
.long 0xffffffb8
.long 0
.long 0
.long s_lbl
.section .pcmap
.long .Lcut_entry_l13
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000004
.long 0xffffff94
.long 0xffffffbc
.long .Lstackdata_l29
.long 4
.long 2
.long 2
.long 1
.long 11
.long 0xffffffc0
.long 10
.long 0xffffffc4
.long 9
.long 0xffffffc8
.long 7
.long 0xffffffcc
.long 0xffffffb4
.long 0xffffffb8
.long 0
.long 0
.long s_lbl
.section .text
h:
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl (%eax),%eax
	movl %eax,(%esp)
.Linitialize_continuations_l34:
.Lproc_body_start_l33:
	movl $23,%eax
	leal 44(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $24,%eax
	leal 44(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $25,%eax
	leal 44(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call stack_trace
.Lcall_successor_l38:
	leal 44(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l44:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l38
.long .Lframe_l45
.section .pcmap_data
.Lframe_l45:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd4
.long .Lstackdata_l44
.long 0
.long 0
.long 2
.long 1
.long 0
.long 0
.long h_lbl
.section .text
g:
	leal -56(%esp), %esp
	leal 56(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 56(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,8(%esp)
	leal 56(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,4(%esp)
	leal 56(%esp), %edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 56(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,16(%esp)
	movl %edi,12(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l47:
.Lproc_body_start_l46:
	movl $712173,%ecx
	leal 56(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl $57005,%ecx
	leal 56(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl $64206,%ecx
	leal 56(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 56(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl 8(%esp),%esi
	movl %esi,(%ecx)
	leal 56(%esp), %ecx
	movl $-8,%esi
	addl %esi,%ecx
	movl 4(%esp),%esi
	movl %esi,(%ecx)
	leal 56(%esp), %ecx
	movl $-4,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	movl $10,%esi
	movl %edx,%ecx
	addl %esi,%ecx
	leal 56(%esp), %edx
	movl $0,%esi
	addl %esi,%edx
	movl %ecx,(%edx)
	movl 12(%esp),%edi
	movl (%esp),%esi
	leal 56(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 40(%esp), %esp
	jmp gt
.section .text
gt:
	leal -60(%esp), %esp
	leal 60(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,28(%esp)
	leal 60(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,32(%esp)
	leal 60(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,16(%esp)
	leal 60(%esp), %edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 60(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,36(%esp)
	movl %esi,24(%esp)
	movl %ebp,20(%esp)
.Linitialize_continuations_l57:
.Lproc_body_start_l56:
	movl $712173,%ecx
	leal 60(%esp), %esi
	movl $-12,%ebp
	addl %ebp,%esi
	movl %ecx,(%esi)
	movl $57005,%ecx
	leal 60(%esp), %esi
	movl $-12,%ebp
	addl %ebp,%esi
	movl $4,%ebp
	addl %ebp,%esi
	movl %ecx,(%esi)
	movl $64206,%ecx
	leal 60(%esp), %esi
	movl $-12,%ebp
	addl %ebp,%esi
	movl $8,%ebp
	addl %ebp,%esi
	movl %ecx,(%esi)
	leal -16(%esp), %esp
	leal 76(%esp), %ecx
	movl $-76,%ebp
	addl %ebp,%ecx
	movl 44(%esp),%ebp
	movl %ebp,(%ecx)
	leal 76(%esp), %ecx
	movl $-72,%ebp
	addl %ebp,%ecx
	movl 48(%esp),%ebp
	movl %ebp,(%ecx)
	leal 76(%esp), %ecx
	movl $-68,%ebp
	addl %ebp,%ecx
	movl 32(%esp),%ebp
	movl %ebp,(%ecx)
	leal 76(%esp), %ecx
	movl $-64,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call gp
.Lcall_successor_l61:
	leal 60(%esp), %ecx
	movl $16,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%esi
	movl 20(%esp),%ebp
	leal 76(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l66:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l61
.long .Lframe_l67
.section .pcmap_data
.Lframe_l67:
.long 0x80000014
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l66
.long 2
.long 5
.long 2
.long 1
.long 10
.long 0xffffffdc
.long 9
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long gt_lbl
.section .text
gp:
	leal -76(%esp), %esp
	movl %eax,36(%esp)
	leal 76(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,32(%esp)
	leal 76(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,28(%esp)
	leal 76(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	leal 76(%esp), %eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%esp)
	leal 76(%esp), %eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	movl %edi,16(%esp)
	movl %esi,12(%esp)
	movl %ebp,8(%esp)
	movl %ebx,4(%esp)
.Linitialize_continuations_l69:
.Lproc_body_start_l68:
	movl $2989,%ecx
	leal 76(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $48879,%ecx
	leal 76(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $764653,%ecx
	leal 76(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call c_b
.Lcall_successor_l73:
	movl 36(%esp),%eax
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl $16,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 12(%esp),%esi
	movl 8(%esp),%ebp
	movl 4(%esp),%ebx
	leal 92(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l79:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l73
.long .Lframe_l80
.section .pcmap_data
.Lframe_l80:
.long 0x80000014
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l79
.long 4
.long 5
.long 2
.long 1
.long 11
.long 0xffffffc4
.long 10
.long 0xffffffc0
.long 9
.long 0xffffffbc
.long 7
.long 0xffffffb8
.long 0xffffffd8
.long 0xffffffd4
.long 0xffffffd0
.long 0xffffffc8
.long 0xffffffb4
.long 0
.long 0
.long gp_lbl
.section .text
f:
	leal -76(%esp), %esp
	movl %eax,32(%esp)
	leal 76(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 76(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl (%edx),%edx
	movl %edx,52(%esp)
	movl %edi,48(%esp)
	movl %esi,44(%esp)
	movl %ebp,40(%esp)
	movl %ebx,36(%esp)
.Linitialize_continuations_l82:
.Lproc_body_start_l81:
	movl $5,%ebx
	movl $1,%ebp
	leal 76(%esp), %edx
	movl $-12,%esi
	addl %esi,%edx
	movl %ebp,(%edx)
	movl $2,%ebp
	leal 76(%esp), %edx
	movl $-12,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl %ebp,(%edx)
	movl $3,%ebp
	leal 76(%esp), %edx
	movl $-12,%esi
	addl %esi,%edx
	movl $8,%esi
	addl %esi,%edx
	movl %ebp,(%edx)
	leal 76(%esp), %edx
	movl $-76,%ebp
	addl %ebp,%edx
	movl 32(%esp),%ebp
	movl %ebp,(%edx)
	leal 76(%esp), %edx
	movl $-72,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	leal 76(%esp), %eax
	movl $-68,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $10,%eax
	addl %eax,%ecx
	leal 76(%esp), %eax
	movl $-64,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call g
.Lcall_successor_l89:
	movl %eax,32(%esp)
	leal f_fmt,%ecx
	leal 76(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 76(%esp), %eax
	movl $-12,%ebp
	addl %ebp,%eax
	movl $4,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	leal 76(%esp), %eax
	movl $-12,%esi
	addl %esi,%eax
	movl $8,%esi
	addl %esi,%eax
	leal 76(%esp), %edi
	movl $-64,%esi
	addl %esi,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	leal 76(%esp), %eax
	movl $-68,%esi
	addl %esi,%eax
	movl %ebp,(%eax)
	leal 76(%esp), %eax
	movl $-72,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	leal 76(%esp), %eax
	movl $-76,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l86:
	movl %ebx,%eax
	leal 76(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	movl 48(%esp),%edi
	movl 44(%esp),%esi
	movl 40(%esp),%ebp
	movl 36(%esp),%ebx
	leal 84(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l95:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l89
.long .Lframe_l96
.section .pcmap_data
.Lframe_l96:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffe8
.long .Lstackdata_l95
.long 4
.long 4
.long 2
.long 1
.long 11
.long 0xffffffe4
.long 10
.long 0xffffffe0
.long 9
.long 0xffffffdc
.long 7
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
.long f_lbl
.section .pcmap
.long .Lcall_successor_l86
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffe8
.long .Lstackdata_l95
.long 4
.long 4
.long 2
.long 1
.long 11
.long 0xffffffe4
.long 10
.long 0xffffffe0
.long 9
.long 0xffffffdc
.long 7
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
.long f_lbl
.section .text
main:
	leal -68(%esp), %esp
	leal 68(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %eax
	movl (%eax),%eax
	movl %eax,28(%esp)
	movl %edi,24(%esp)
.Linitialize_continuations_l99:
.Lproc_body_start_l98:
	movl $251636973,%ecx
	leal 68(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $2989,%ecx
	leal 68(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $16435934,%ecx
	leal 68(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	movl $10,%eax
	movl $20,%ecx
	leal 76(%esp), %edi
	movl $-76,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $30,%ecx
	leal 76(%esp), %edi
	movl $-72,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call f
.Lcall_successor_l103:
	movl $5,%ecx
	subl %ecx,%eax
	leal 68(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%edi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l109:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l103
.long .Lframe_l110
.section .pcmap_data
.Lframe_l110:
.long 0x80000004
.long 0xffffffbc
.long 0xffffffd8
.long .Lstackdata_l109
.long 1
.long 3
.long 2
.long 1
.long 11
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long m_lbl
.section .text
