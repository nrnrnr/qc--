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
.long 0xffffffffffffffff
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
	leal -140(%esp), %esp
	leal 140(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l16:
	leal j_C13,%ecx
	leal 140(%esp), %edx
	movl %eax,32(%esp)
	movl $-44,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 140(%esp), %eax
	movl $-140,%ecx
	addl %ecx,%eax
	leal 140(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lproc_body_start_l15:
	movl $7,%eax
	movl $4,%ecx
	movl $13,%edx
	movl %eax,36(%esp)
	leal 140(%esp), %eax
	movl %eax,40(%esp)
	movl $-12,%eax
	movl %eax,44(%esp)
	movl 40(%esp),%eax
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $14,%eax
	leal 140(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $15,%eax
	leal 140(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal msg,%eax
	leal 140(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl %edi,64(%esp)
	movl %esi,60(%esp)
	movl %ebp,56(%esp)
	movl %ebx,52(%esp)
	call printf
Ljoin_l24:
	leal 140(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	leal 140(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call rt_check
Ljoin_l21:
	movl 36(%esp),%edx
	movl 48(%esp),%ecx
	addl %ecx,%edx
	leal 140(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebx
	movl 56(%esp),%ebp
	movl 60(%esp),%esi
	movl 64(%esp),%edi
	leal 140(%esp), %esp
	ret
j_C13:
	movl 36(%esp),%edx
	movl 48(%esp),%ecx
	addl %ecx,%edx
	leal 140(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebx
	movl 56(%esp),%ebp
	movl 60(%esp),%esi
	movl 64(%esp),%edi
	leal 140(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l29:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long Ljoin_l24
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0x80000004
.long 0xffffff74
.long 0xffffff94
.long Lstackdata_l29
.long 4
.long 2
.long 2
.long 1
.long 7
.long 0xffffffa8
.long 9
.long 0xffffffac
.long 10
.long 0xffffffb0
.long 11
.long 0xffffffb4
.long 0xffffff98
.long 0xffffffa4
.long 0
.long 0
.long s_lbl
.section .pcmap
.long Ljoin_l21
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0x80000004
.long 0xffffff74
.long 0xffffff94
.long Lstackdata_l29
.long 4
.long 2
.long 2
.long 1
.long 7
.long 0xffffffa8
.long 9
.long 0xffffffac
.long 10
.long 0xffffffb0
.long 11
.long 0xffffffb4
.long 0xffffff98
.long 0xffffffa4
.long 0
.long 0
.long s_lbl
.section .pcmap
.long j_C13
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0x80000004
.long 0xffffff74
.long 0xffffff94
.long Lstackdata_l29
.long 4
.long 2
.long 2
.long 1
.long 7
.long 0xffffffa8
.long 9
.long 0xffffffac
.long 10
.long 0xffffffb0
.long 11
.long 0xffffffb4
.long 0xffffff98
.long 0xffffffa4
.long 0
.long 0
.long s_lbl
.section .text
h:
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l35:
Lproc_body_start_l34:
	movl $23,%ecx
	leal 44(%esp), %edx
	movl %edi,(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl $24,%edi
	leal 44(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl $25,%edi
	leal 44(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,4(%esp)
	call stack_trace
Ljoin_l39:
	leal 44(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl (%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l45:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l39
.long Lframe_l46
.section .pcmap_data
Lframe_l46:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long Lstackdata_l45
.long 1
.long 0
.long 2
.long 1
.long 11
.long 0xffffffd4
.long 0
.long 0
.long h_lbl
.section .text
g:
	leal -88(%esp), %esp
	leal 88(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	leal 88(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 88(%esp), %ecx
	movl %edx,(%esp)
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 88(%esp), %ecx
	movl %edx,4(%esp)
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 88(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l49:
Lproc_body_start_l48:
	movl %edx,8(%esp)
	movl $712173,%edx
	movl %edx,12(%esp)
	leal 88(%esp), %edx
	movl %edx,16(%esp)
	movl $-24,%edx
	movl %edx,20(%esp)
	movl 16(%esp),%edx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $57005,%edx
	leal 88(%esp), %ecx
	movl %edx,28(%esp)
	movl $-24,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl $64206,%edx
	leal 88(%esp), %ecx
	movl %edx,32(%esp)
	movl $-24,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 88(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 88(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 88(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl $10,%edx
	addl %edx,%ecx
	leal 88(%esp), %edx
	movl %edx,36(%esp)
	movl $0,%edx
	movl %edx,40(%esp)
	movl 36(%esp),%edx
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	leal 88(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal 72(%esp), %esp
	jmp gt
.section .text
gt:
	leal -92(%esp), %esp
	leal 92(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 92(%esp), %edx
	movl %ecx,16(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 92(%esp), %edx
	movl %ecx,20(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 92(%esp), %edx
	movl %ecx,24(%esp)
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 92(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l60:
Lproc_body_start_l59:
	movl %edi,28(%esp)
	movl $712173,%edi
	movl %edi,32(%esp)
	leal 92(%esp), %edi
	movl %edi,36(%esp)
	movl $-12,%edi
	movl %edi,40(%esp)
	movl 36(%esp),%edi
	movl %esi,44(%esp)
	movl 40(%esp),%esi
	addl %esi,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	movl $57005,%edi
	leal 92(%esp), %esi
	movl %edi,48(%esp)
	movl $-12,%edi
	addl %edi,%esi
	movl $4,%edi
	addl %edi,%esi
	movl 48(%esp),%edi
	movl %edi,(%esi)
	movl $64206,%edi
	leal 92(%esp), %esi
	movl %edi,52(%esp)
	movl $-12,%edi
	addl %edi,%esi
	movl $8,%edi
	addl %edi,%esi
	movl 52(%esp),%edi
	movl %edi,(%esi)
	leal -16(%esp), %esp
	leal 108(%esp), %edi
	movl $-108,%esi
	addl %esi,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	leal 108(%esp), %edi
	movl $-104,%esi
	addl %esi,%edi
	movl 36(%esp),%esi
	movl %esi,(%edi)
	leal 108(%esp), %edi
	movl $-100,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	leal 108(%esp), %edi
	movl $-96,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl %edx,72(%esp)
	call gp
Ljoin_l64:
	leal 92(%esp), %edx
	movl $16,%ecx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%esi
	movl 28(%esp),%edi
	leal 108(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l69:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l64
.long Lframe_l70
.section .pcmap_data
Lframe_l70:
.long 0x80000014
.long 0xffffffa4
.long 0xffffffdc
.long Lstackdata_l69
.long 2
.long 5
.long 2
.long 1
.long 10
.long 0xffffffd0
.long 11
.long 0xffffffc0
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
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl %eax,8(%esp)
	movl $16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l73:
Lproc_body_start_l72:
	movl %eax,12(%esp)
	movl $2989,%eax
	movl %eax,16(%esp)
	leal 76(%esp), %eax
	movl %eax,20(%esp)
	movl $-12,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $48879,%eax
	leal 76(%esp), %ecx
	movl %eax,32(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $764653,%eax
	leal 76(%esp), %ecx
	movl %eax,36(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl 36(%esp),%eax
	movl %eax,(%ecx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	movl %edx,40(%esp)
	call c_b
Ljoin_l77:
	movl (%esp),%eax
	movl 28(%esp),%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	addl %edx,%eax
	leal 76(%esp), %edx
	movl $16,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebx
	movl 48(%esp),%ebp
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 92(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l83:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l77
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0x80000014
.long 0xffffffb4
.long 0xffffffdc
.long Lstackdata_l83
.long 4
.long 5
.long 2
.long 1
.long 7
.long 0xffffffe0
.long 9
.long 0xffffffe4
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffec
.long 0xffffffb4
.long 0xffffffd0
.long 0xffffffb8
.long 0xffffffbc
.long 0xffffffc0
.long 0
.long 0
.long gp_lbl
.section .text
f:
	leal -108(%esp), %esp
	leal 108(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 108(%esp), %edx
	movl %ecx,32(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 108(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l87:
Lproc_body_start_l86:
	movl %edi,36(%esp)
	movl $5,%edi
	movl %edi,40(%esp)
	movl $1,%edi
	movl %edi,44(%esp)
	leal 108(%esp), %edi
	movl %edi,48(%esp)
	movl $-12,%edi
	movl %edi,52(%esp)
	movl 48(%esp),%edi
	movl %esi,56(%esp)
	movl 52(%esp),%esi
	addl %esi,%edi
	movl 44(%esp),%esi
	movl %esi,(%edi)
	movl $2,%edi
	leal 108(%esp), %esi
	movl %edi,60(%esp)
	movl $-12,%edi
	addl %edi,%esi
	movl $4,%edi
	addl %edi,%esi
	movl 60(%esp),%edi
	movl %edi,(%esi)
	movl $3,%edi
	leal 108(%esp), %esi
	movl %edi,64(%esp)
	movl $-12,%edi
	addl %edi,%esi
	movl $8,%edi
	addl %edi,%esi
	movl 64(%esp),%edi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-108,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 108(%esp), %edi
	movl $-104,%esi
	addl %esi,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	leal 108(%esp), %edi
	movl $-100,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl $10,%edi
	addl %edi,%ecx
	leal 108(%esp), %edi
	movl $-96,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl %edx,68(%esp)
	call g
Ljoin_l94:
	leal f_fmt,%edi
	leal 108(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 108(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %edi,72(%esp)
	movl $-96,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	leal 108(%esp), %edi
	movl $-100,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 108(%esp), %edi
	movl $-104,%eax
	addl %eax,%edi
	movl %esi,(%edi)
	leal 108(%esp), %edi
	movl $-108,%esi
	addl %esi,%edi
	movl 72(%esp),%esi
	movl %esi,(%edi)
	call printf
Ljoin_l91:
	movl 40(%esp),%eax
	leal 108(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl %ecx,(%edx)
	movl 56(%esp),%esi
	movl 36(%esp),%edi
	leal 116(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l100:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l94
.long Lframe_l101
.section .pcmap_data
Lframe_l101:
.long 0x8000000c
.long 0xffffff94
.long 0xffffffd8
.long Lstackdata_l100
.long 2
.long 4
.long 2
.long 1
.long 10
.long 0xffffffcc
.long 11
.long 0xffffffb8
.long 0
.long 0
.long 0
.long 0xffffffbc
.long 0
.long 0
.long f_lbl
.section .pcmap
.long Ljoin_l91
.long Lframe_l102
.section .pcmap_data
Lframe_l102:
.long 0x8000000c
.long 0xffffff94
.long 0xffffffd8
.long Lstackdata_l100
.long 2
.long 4
.long 2
.long 1
.long 10
.long 0xffffffcc
.long 11
.long 0xffffffb8
.long 0
.long 0
.long 0
.long 0xffffffbc
.long 0
.long 0
.long f_lbl
.section .text
main:
	leal -68(%esp), %esp
	leal 68(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 68(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 68(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l105:
Lproc_body_start_l104:
	movl $251636973,%edx
	leal 68(%esp), %eax
	movl %edi,24(%esp)
	movl $-12,%edi
	addl %edi,%eax
	movl %edx,(%eax)
	movl $2989,%edi
	leal 68(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl %edi,(%edx)
	movl $16435934,%edi
	leal 68(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl %edi,(%edx)
	leal -8(%esp), %esp
	movl $10,%eax
	movl $20,%edi
	leal 76(%esp), %edx
	movl %edi,36(%esp)
	movl $-76,%edi
	addl %edi,%edx
	movl 36(%esp),%edi
	movl %edi,(%edx)
	movl $30,%edi
	leal 76(%esp), %edx
	movl %edi,40(%esp)
	movl $-72,%edi
	addl %edi,%edx
	movl 40(%esp),%edi
	movl %edi,(%edx)
	movl %ecx,44(%esp)
	call f
Ljoin_l109:
	movl $5,%edx
	subl %edx,%eax
	leal 68(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%edi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l115:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l109
.long Lframe_l116
.section .pcmap_data
Lframe_l116:
.long 0x80000004
.long 0xffffffbc
.long 0xffffffe0
.long Lstackdata_l115
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
