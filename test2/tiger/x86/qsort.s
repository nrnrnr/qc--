.globl tiger_main
.globl Cmm.global_area
.globl Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ:
Cmm.global_area:
.skip 4
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffffffffffff
.section .data
.align 4
Lgbl_43:
.long 0
.byte 0
Lgbl_207:
.long 14
.byte 115
.byte 111
.byte 114
.byte 116
.byte 101
.byte 100
.byte 32
.byte 98
.byte 121
.byte 32
.byte 110
.byte 97
.byte 109
.byte 101
.byte 0
Lgbl_104:
.long 6
.byte 78
.byte 111
.byte 114
.byte 109
.byte 97
.byte 110
.byte 0
Lgbl_98:
.long 4
.byte 79
.byte 109
.byte 114
.byte 105
.byte 0
Lgbl_107:
.long 4
.byte 77
.byte 105
.byte 107
.byte 101
.byte 0
Lgbl_208:
.long 13
.byte 115
.byte 111
.byte 114
.byte 116
.byte 101
.byte 100
.byte 32
.byte 98
.byte 121
.byte 32
.byte 110
.byte 117
.byte 109
.byte 0
Lgbl_113:
.long 3
.byte 32
.byte 58
.byte 10
.byte 0
Lgbl_95:
.long 5
.byte 68
.byte 97
.byte 118
.byte 105
.byte 100
.byte 0
Lgbl_80:
.long 4
.byte 80
.byte 97
.byte 117
.byte 108
.byte 0
Lgbl_121:
.long 1
.byte 9
.byte 0
Lgbl_128:
.long 1
.byte 10
.byte 0
Lgbl_86:
.long 4
.byte 74
.byte 111
.byte 97
.byte 111
.byte 0
Lgbl_83:
.long 6
.byte 83
.byte 116
.byte 117
.byte 97
.byte 114
.byte 116
.byte 0
Lgbl_89:
.long 5
.byte 75
.byte 101
.byte 118
.byte 105
.byte 110
.byte 0
Lgbl_101:
.long 9
.byte 75
.byte 97
.byte 116
.byte 104
.byte 108
.byte 101
.byte 101
.byte 101
.byte 110
.byte 0
Lgbl_92:
.long 3
.byte 75
.byte 105
.byte 109
.byte 0
.section .text
initlist_56:
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l12:
Lproc_body_start_l11:
	leal 44(%esp), %edx
	movl %edi,12(%esp)
	movl $-4,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	leal 44(%esp), %edx
	movl %edi,16(%esp)
	movl $-44,%edi
	addl %edi,%edx
	movl (%eax),%edi
	movl %edi,(%edx)
	movl $0,%edi
	leal 44(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl $15,%edi
	leal 44(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl %ecx,20(%esp)
	call tig_bounds_check
Ljoin_l73:
	leal Cmm.global_area,%edi
	movl 16(%esp),%eax
	movl %eax,(%edi)
	movl $10,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $1,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $16,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l70:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	movl $32,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %edi,(%eax)
	movl $-1,%edi
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 44(%esp), %edx
	movl %edi,24(%esp)
	movl $-44,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $2,%edi
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl $17,%edi
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,28(%esp)
	call tig_bounds_check
Ljoin_l67:
	leal Cmm.global_area,%edi
	movl 28(%esp),%eax
	movl %eax,(%edi)
	leal 44(%esp), %edi
	movl $-4,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $8,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $12,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl 24(%esp),%eax
	movl %eax,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $3,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $18,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l64:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	movl $567,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $19,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l61:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	movl $3,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $5,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $20,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l58:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	movl $18,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $6,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $21,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l55:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	movl $1,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $28,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %edi,(%eax)
	movl $-51,%edi
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 44(%esp), %edx
	movl %edi,32(%esp)
	movl $-44,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $7,%edi
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl $22,%edi
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,36(%esp)
	call tig_bounds_check
Ljoin_l52:
	leal Cmm.global_area,%edi
	movl 36(%esp),%eax
	movl %eax,(%edi)
	leal 44(%esp), %edi
	movl $-4,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $8,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $32,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl 32(%esp),%eax
	movl %eax,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $8,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $23,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l49:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	movl $789,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $36,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $9,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $24,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l46:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	movl $49,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $40,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $25,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l43:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Lgbl_80,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $1,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $26,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l40:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Lgbl_83,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $2,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $27,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l37:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Lgbl_86,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $3,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $28,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l34:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Lgbl_89,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $29,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l31:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Lgbl_92,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $5,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $30,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l28:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Lgbl_95,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $6,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $31,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l25:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Lgbl_98,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $28,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $7,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $32,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l22:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Lgbl_101,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $32,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $8,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $33,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l19:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Lgbl_104,%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $36,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $9,%eax
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $34,%eax
	leal 44(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
Ljoin_l16:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	leal Lgbl_107,%edx
	leal 44(%esp), %ecx
	movl $-4,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl $8,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl $40,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl $0,%eax
	leal 44(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l79:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l73
.long Lframe_l80
.section .pcmap_data
Lframe_l80:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l70
.long Lframe_l81
.section .pcmap_data
Lframe_l81:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l67
.long Lframe_l82
.section .pcmap_data
Lframe_l82:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l64
.long Lframe_l83
.section .pcmap_data
Lframe_l83:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l61
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l58
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l55
.long Lframe_l86
.section .pcmap_data
Lframe_l86:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l52
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l49
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l46
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l43
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l40
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l37
.long Lframe_l92
.section .pcmap_data
Lframe_l92:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l34
.long Lframe_l93
.section .pcmap_data
Lframe_l93:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l31
.long Lframe_l94
.section .pcmap_data
Lframe_l94:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l28
.long Lframe_l95
.section .pcmap_data
Lframe_l95:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l25
.long Lframe_l96
.section .pcmap_data
Lframe_l96:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l22
.long Lframe_l97
.section .pcmap_data
Lframe_l97:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l19
.long Lframe_l98
.section .pcmap_data
Lframe_l98:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l16
.long Lframe_l99
.section .pcmap_data
Lframe_l99:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe8
.long Lstackdata_l79
.long 1
.long 44
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .text
.section .data
initlist_56_gc_data:
.long 1
.long 1
.long 44
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
print_list_57:
	leal -52(%esp), %esp
	leal 52(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l102:
Lproc_body_start_l101:
	movl %edi,12(%esp)
	leal 52(%esp), %edi
	movl %edi,16(%esp)
	movl $-12,%edi
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	movl %esi,24(%esp)
	movl 20(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 52(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 52(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 52(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	movl %edx,28(%esp)
	call tig_print
Ljoin_l129:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_113,%esi
	leal 52(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l126:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl $0,%edx
	leal 52(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $8,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	jmp Lloop_start_131
Lloop_start_131:
	leal 52(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 52(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl $1,%edi
	subl %edi,%ecx
	cmpl %ecx,%edx
	jle Ljoin_l122
Ljoin_l123:
	jmp Lloop_end_116
Lloop_end_116:
	movl $0,%eax
	leal 52(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%esi
	movl 12(%esp),%edi
	leal 56(%esp), %esp
	ret
Ljoin_l122:
	jmp Lloop_body_132
Lloop_body_132:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 52(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %edi,32(%esp)
	movl $-48,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $40,%edi
	leal 52(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 52(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_bounds_check
Ljoin_l121:
	leal Cmm.global_area,%edi
	movl %esi,(%edi)
	leal 52(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 52(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 52(%esp), %esi
	movl $-52,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call tig_printi
Ljoin_l118:
	leal Cmm.global_area,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_121,%esi
	leal 52(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l115:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 52(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %edi,36(%esp)
	movl $-48,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $42,%edi
	leal 52(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 52(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_bounds_check
Ljoin_l112:
	leal Cmm.global_area,%edi
	movl %esi,(%edi)
	leal 52(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 52(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal 52(%esp), %esi
	movl $-52,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call tig_print
Ljoin_l109:
	leal Cmm.global_area,%edi
	movl 36(%esp),%esi
	movl %esi,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_128,%esi
	leal 52(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l106:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 52(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	leal 52(%esp), %esi
	movl $-12,%edx
	addl %edx,%esi
	movl $8,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	jmp Lloop_start_131
.section .pcmap_data
Lstackdata_l135:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l129
.long Lframe_l136
.section .pcmap_data
Lframe_l136:
.long 0x80000008
.long 0xffffffcc
.long 0xffffffe8
.long Lstackdata_l135
.long 2
.long 19
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l126
.long Lframe_l137
.section .pcmap_data
Lframe_l137:
.long 0x80000008
.long 0xffffffcc
.long 0xffffffe8
.long Lstackdata_l135
.long 2
.long 19
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l121
.long Lframe_l138
.section .pcmap_data
Lframe_l138:
.long 0x80000008
.long 0xffffffcc
.long 0xffffffe8
.long Lstackdata_l135
.long 2
.long 19
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l118
.long Lframe_l139
.section .pcmap_data
Lframe_l139:
.long 0x80000008
.long 0xffffffcc
.long 0xffffffe8
.long Lstackdata_l135
.long 2
.long 19
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l115
.long Lframe_l140
.section .pcmap_data
Lframe_l140:
.long 0x80000008
.long 0xffffffcc
.long 0xffffffe8
.long Lstackdata_l135
.long 2
.long 19
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l112
.long Lframe_l141
.section .pcmap_data
Lframe_l141:
.long 0x80000008
.long 0xffffffcc
.long 0xffffffe8
.long Lstackdata_l135
.long 2
.long 19
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l109
.long Lframe_l142
.section .pcmap_data
Lframe_l142:
.long 0x80000008
.long 0xffffffcc
.long 0xffffffe8
.long Lstackdata_l135
.long 2
.long 19
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l106
.long Lframe_l143
.section .pcmap_data
Lframe_l143:
.long 0x80000008
.long 0xffffffcc
.long 0xffffffe8
.long Lstackdata_l135
.long 2
.long 19
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long print_list_57_gc_data
.section .text
.section .data
print_list_57_gc_data:
.long 3
.long 1
.long 1
.long 0
.long 19
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
lte_134:
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l146:
Lproc_body_start_l145:
	movl %edi,16(%esp)
	leal 76(%esp), %edi
	movl %edi,20(%esp)
	movl $-12,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	jne Ljoin_l163
Ljoin_l164:
	jmp LifFalse_151
LifFalse_151:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl %edi,32(%esp)
	movl $-72,%edi
	addl %edi,%ecx
	movl (%eax),%edi
	movl %edi,(%ecx)
	movl $50,%edi
	leal 76(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 76(%esp), %edi
	movl $-76,%eax
	addl %eax,%edi
	movl %esi,(%edi)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l153:
	leal Cmm.global_area,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 76(%esp), %edx
	movl %edi,40(%esp)
	movl $-72,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $50,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-76,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_bounds_check
Ljoin_l150:
	leal Cmm.global_area,%edx
	movl %esi,(%edx)
	leal 76(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 76(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $8,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl $1,%edi
	addl %edi,%ecx
	movl $4,%edi
	imull %edi,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl 40(%esp),%ecx
	cmpl %edx,%ecx
	jle Ljoin_l169
Ljoin_l170:
	movl $0,%eax
	jmp Ljoin_l168
Ljoin_l169:
	movl $-1,%eax
	jmp Ljoin_l168
Ljoin_l168:
	jmp LifEnd_152
Ljoin_l163:
	jmp LifTrue_150
LifTrue_150:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl %edi,44(%esp)
	movl $-12,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	leal 76(%esp), %edi
	movl %edi,48(%esp)
	movl $-72,%edi
	movl %edi,52(%esp)
	movl 48(%esp),%edi
	movl %esi,56(%esp)
	movl 52(%esp),%esi
	addl %esi,%edi
	movl (%ecx),%esi
	movl %esi,(%edi)
	movl $49,%edi
	leal 76(%esp), %esi
	movl $-68,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 76(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l162:
	leal Cmm.global_area,%edi
	movl 56(%esp),%esi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 76(%esp), %edx
	movl %edi,60(%esp)
	movl $-72,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $49,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-76,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_bounds_check
Ljoin_l159:
	leal Cmm.global_area,%edi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal 76(%esp), %esi
	movl $-72,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 76(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl 60(%esp),%esi
	movl %esi,(%edi)
	call tig_compare_str
Ljoin_l156:
	leal Cmm.global_area,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jle Ljoin_l172
Ljoin_l173:
	movl $0,%eax
	jmp Ljoin_l171
Ljoin_l172:
	movl $-1,%eax
	jmp Ljoin_l171
Ljoin_l171:
	jmp LifEnd_152
LifEnd_152:
	leal 76(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l176:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l153
.long Lframe_l177
.section .pcmap_data
Lframe_l177:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffd8
.long Lstackdata_l176
.long 2
.long 17
.long 2
.long 1
.long 10
.long 0xffffffd0
.long 11
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long lte_134_gc_data
.section .pcmap
.long Ljoin_l150
.long Lframe_l178
.section .pcmap_data
Lframe_l178:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffd8
.long Lstackdata_l176
.long 2
.long 17
.long 2
.long 1
.long 10
.long 0xffffffd0
.long 11
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long lte_134_gc_data
.section .pcmap
.long Ljoin_l162
.long Lframe_l179
.section .pcmap_data
Lframe_l179:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffd8
.long Lstackdata_l176
.long 2
.long 17
.long 2
.long 1
.long 10
.long 0xffffffd0
.long 11
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long lte_134_gc_data
.section .pcmap
.long Ljoin_l159
.long Lframe_l180
.section .pcmap_data
Lframe_l180:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffd8
.long Lstackdata_l176
.long 2
.long 17
.long 2
.long 1
.long 10
.long 0xffffffd0
.long 11
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long lte_134_gc_data
.section .pcmap
.long Ljoin_l156
.long Lframe_l181
.section .pcmap_data
Lframe_l181:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffd8
.long Lstackdata_l176
.long 2
.long 17
.long 2
.long 1
.long 10
.long 0xffffffd0
.long 11
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long lte_134_gc_data
.section .text
.section .data
lte_134_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 17
.long 1
.long 0
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
gt_135:
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l184:
Lproc_body_start_l183:
	movl %edi,16(%esp)
	leal 76(%esp), %edi
	movl %edi,20(%esp)
	movl $-12,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	jne Ljoin_l201
Ljoin_l202:
	jmp LifFalse_166
LifFalse_166:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl %edi,32(%esp)
	movl $-72,%edi
	addl %edi,%ecx
	movl (%eax),%edi
	movl %edi,(%ecx)
	movl $54,%edi
	leal 76(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 76(%esp), %edi
	movl $-76,%eax
	addl %eax,%edi
	movl %esi,(%edi)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l191:
	leal Cmm.global_area,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 76(%esp), %edx
	movl %edi,40(%esp)
	movl $-72,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $54,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-76,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_bounds_check
Ljoin_l188:
	leal Cmm.global_area,%edx
	movl %esi,(%edx)
	leal 76(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 76(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $8,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl $1,%edi
	addl %edi,%ecx
	movl $4,%edi
	imull %edi,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl 40(%esp),%ecx
	cmpl %edx,%ecx
	jg Ljoin_l207
Ljoin_l208:
	movl $0,%eax
	jmp Ljoin_l206
Ljoin_l207:
	movl $-1,%eax
	jmp Ljoin_l206
Ljoin_l206:
	jmp LifEnd_167
Ljoin_l201:
	jmp LifTrue_165
LifTrue_165:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl %edi,44(%esp)
	movl $-12,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	leal 76(%esp), %edi
	movl %edi,48(%esp)
	movl $-72,%edi
	movl %edi,52(%esp)
	movl 48(%esp),%edi
	movl %esi,56(%esp)
	movl 52(%esp),%esi
	addl %esi,%edi
	movl (%ecx),%esi
	movl %esi,(%edi)
	movl $53,%edi
	leal 76(%esp), %esi
	movl $-68,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 76(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l200:
	leal Cmm.global_area,%edi
	movl 56(%esp),%esi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 76(%esp), %edx
	movl %edi,60(%esp)
	movl $-72,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $53,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-76,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_bounds_check
Ljoin_l197:
	leal Cmm.global_area,%edi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal 76(%esp), %esi
	movl $-72,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 76(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl 60(%esp),%esi
	movl %esi,(%edi)
	call tig_compare_str
Ljoin_l194:
	leal Cmm.global_area,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jg Ljoin_l210
Ljoin_l211:
	movl $0,%eax
	jmp Ljoin_l209
Ljoin_l210:
	movl $-1,%eax
	jmp Ljoin_l209
Ljoin_l209:
	jmp LifEnd_167
LifEnd_167:
	leal 76(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l214:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l191
.long Lframe_l215
.section .pcmap_data
Lframe_l215:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffd8
.long Lstackdata_l214
.long 2
.long 17
.long 2
.long 1
.long 10
.long 0xffffffd0
.long 11
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long gt_135_gc_data
.section .pcmap
.long Ljoin_l188
.long Lframe_l216
.section .pcmap_data
Lframe_l216:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffd8
.long Lstackdata_l214
.long 2
.long 17
.long 2
.long 1
.long 10
.long 0xffffffd0
.long 11
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long gt_135_gc_data
.section .pcmap
.long Ljoin_l200
.long Lframe_l217
.section .pcmap_data
Lframe_l217:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffd8
.long Lstackdata_l214
.long 2
.long 17
.long 2
.long 1
.long 10
.long 0xffffffd0
.long 11
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long gt_135_gc_data
.section .pcmap
.long Ljoin_l197
.long Lframe_l218
.section .pcmap_data
Lframe_l218:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffd8
.long Lstackdata_l214
.long 2
.long 17
.long 2
.long 1
.long 10
.long 0xffffffd0
.long 11
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long gt_135_gc_data
.section .pcmap
.long Ljoin_l194
.long Lframe_l219
.section .pcmap_data
Lframe_l219:
.long 0x8000000c
.long 0xffffffb4
.long 0xffffffd8
.long Lstackdata_l214
.long 2
.long 17
.long 2
.long 1
.long 10
.long 0xffffffd0
.long 11
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long gt_135_gc_data
.section .text
.section .data
gt_135_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 17
.long 1
.long 0
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
exchange_169:
	leal -56(%esp), %esp
	leal 56(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 56(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 56(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l222:
Lproc_body_start_l221:
	movl %edi,16(%esp)
	leal 56(%esp), %edi
	movl %edi,20(%esp)
	movl $-16,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 56(%esp), %ecx
	movl %edi,32(%esp)
	movl $-52,%edi
	addl %edi,%ecx
	movl (%eax),%edi
	movl %edi,(%ecx)
	movl $60,%edi
	leal 56(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 56(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	movl %esi,(%edi)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l235:
	leal Cmm.global_area,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	leal 56(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl $12,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $61,%eax
	leal 56(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l232:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $61,%eax
	leal 56(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l229:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	leal 56(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $61,%eax
	leal 56(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l226:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	leal 56(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	leal 56(%esp), %ecx
	movl $-16,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $8,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	movl $4,%esi
	imull %esi,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $0,%eax
	leal 56(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 64(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l241:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l235
.long Lframe_l242
.section .pcmap_data
Lframe_l242:
.long 0x8000000c
.long 0xffffffc8
.long 0xffffffec
.long Lstackdata_l241
.long 2
.long 12
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe8
.long 0
.long 0
.long exchange_169_gc_data
.section .pcmap
.long Ljoin_l232
.long Lframe_l243
.section .pcmap_data
Lframe_l243:
.long 0x8000000c
.long 0xffffffc8
.long 0xffffffec
.long Lstackdata_l241
.long 2
.long 12
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long exchange_169_gc_data
.section .pcmap
.long Ljoin_l229
.long Lframe_l244
.section .pcmap_data
Lframe_l244:
.long 0x8000000c
.long 0xffffffc8
.long 0xffffffec
.long Lstackdata_l241
.long 2
.long 12
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long exchange_169_gc_data
.section .pcmap
.long Ljoin_l226
.long Lframe_l245
.section .pcmap_data
Lframe_l245:
.long 0x8000000c
.long 0xffffffc8
.long 0xffffffec
.long Lstackdata_l241
.long 2
.long 12
.long 2
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long exchange_169_gc_data
.section .text
.section .data
exchange_169_gc_data:
.long 4
.long 1
.long 0
.long 0
.long 1
.long 12
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
partition_136:
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 48(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l248:
Lproc_body_start_l247:
	movl %edi,4(%esp)
	leal 48(%esp), %edi
	movl %edi,8(%esp)
	movl $-16,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 48(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%esp),%esi
	movl %esi,(%edi)
	leal 48(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 48(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	leal 48(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	jmp Lloop_start_198
Lloop_start_198:
	leal 48(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 48(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jl Ljoin_l272
Ljoin_l273:
	jmp Lloop_end_179
Lloop_end_179:
	leal -8(%esp), %esp
	leal 56(%esp), %eax
	movl $-16,%edi
	addl %edi,%eax
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	leal 56(%esp), %ecx
	movl %edi,28(%esp)
	movl $-52,%edi
	addl %edi,%ecx
	movl (%esi),%edi
	movl %edi,(%ecx)
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl 28(%esp),%esi
	movl %esi,(%edi)
	movl %edx,32(%esp)
	call exchange_169
Ljoin_l252:
	leal 48(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	leal 48(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 56(%esp), %esp
	ret
Ljoin_l272:
	jmp Lloop_body_199
Lloop_body_199:
	jmp Lloop_start_185
Lloop_start_185:
	leal -8(%esp), %esp
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	leal 56(%esp), %ecx
	movl %edi,36(%esp)
	movl $-52,%edi
	addl %edi,%ecx
	movl (%esi),%edi
	movl %edi,(%ecx)
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl 36(%esp),%esi
	movl %esi,(%edi)
	movl %edx,32(%esp)
	call lte_134
Ljoin_l271:
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l267
Ljoin_l268:
	jmp LifFalse_183
LifFalse_183:
	movl $0,%edi
	jmp LifEnd_184
Ljoin_l267:
	jmp LifTrue_182
LifTrue_182:
	leal 48(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $4,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%esi
	jl Ljoin_l281
Ljoin_l282:
	movl $0,%edi
	jmp Ljoin_l280
Ljoin_l281:
	movl $-1,%edi
	jmp Ljoin_l280
Ljoin_l280:
	jmp LifEnd_184
LifEnd_184:
	movl $0,%esi
	cmpl %esi,%edi
	jne Ljoin_l265
Ljoin_l266:
	jmp Lloop_end_180
Lloop_end_180:
	jmp Lloop_start_192
Lloop_start_192:
	leal -8(%esp), %esp
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%esi),%esi
	movl %esi,(%ecx)
	leal 56(%esp), %esi
	movl $-56,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call gt_135
Ljoin_l264:
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l260
Ljoin_l261:
	jmp LifFalse_190
LifFalse_190:
	movl $0,%edi
	jmp LifEnd_191
Ljoin_l260:
	jmp LifTrue_189
LifTrue_189:
	leal 48(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%esi
	jge Ljoin_l278
Ljoin_l279:
	movl $0,%edi
	jmp Ljoin_l277
Ljoin_l278:
	movl $-1,%edi
	jmp Ljoin_l277
Ljoin_l277:
	jmp LifEnd_191
LifEnd_191:
	movl $0,%esi
	cmpl %esi,%edi
	jne Ljoin_l258
Ljoin_l259:
	jmp Lloop_end_187
Lloop_end_187:
	leal 48(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 48(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jl Ljoin_l256
Ljoin_l257:
	jmp LifFalse_196
LifFalse_196:
	movl $0,%edi
	jmp LifEnd_197
Ljoin_l256:
	jmp LifTrue_195
LifTrue_195:
	leal -8(%esp), %esp
	leal 56(%esp), %eax
	movl $-16,%edi
	addl %edi,%eax
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%esi),%esi
	movl %esi,(%ecx)
	leal 56(%esp), %esi
	movl $-56,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call exchange_169
Ljoin_l255:
	jmp LifEnd_197
LifEnd_197:
	jmp Ljoin_l284
Ljoin_l284:
	movl 24(%esp),%edx
	jmp Lloop_start_198
Ljoin_l258:
	jmp Lloop_body_193
Lloop_body_193:
	leal 48(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	subl %esi,%edi
	leal 48(%esp), %esi
	movl $-16,%edx
	addl %edx,%esi
	movl $8,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	jmp Lloop_start_192
Ljoin_l265:
	jmp Lloop_body_186
Lloop_body_186:
	leal 48(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	leal 48(%esp), %esi
	movl $-16,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	jmp Ljoin_l283
Ljoin_l283:
	movl 24(%esp),%edx
	jmp Lloop_start_185
.section .pcmap_data
Lstackdata_l286:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l252
.long Lframe_l287
.section .pcmap_data
Lframe_l287:
.long 0x8000000c
.long 0xffffffd0
.long 0xffffffe8
.long Lstackdata_l286
.long 2
.long 9
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 11
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long partition_136_gc_data
.section .pcmap
.long Ljoin_l271
.long Lframe_l288
.section .pcmap_data
Lframe_l288:
.long 0x8000000c
.long 0xffffffd0
.long 0xffffffe8
.long Lstackdata_l286
.long 2
.long 9
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 11
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long partition_136_gc_data
.section .pcmap
.long Ljoin_l264
.long Lframe_l289
.section .pcmap_data
Lframe_l289:
.long 0x8000000c
.long 0xffffffd0
.long 0xffffffe8
.long Lstackdata_l286
.long 2
.long 9
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 11
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long partition_136_gc_data
.section .pcmap
.long Ljoin_l255
.long Lframe_l290
.section .pcmap_data
Lframe_l290:
.long 0x8000000c
.long 0xffffffd0
.long 0xffffffe8
.long Lstackdata_l286
.long 2
.long 9
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 11
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long partition_136_gc_data
.section .text
.section .data
partition_136_gc_data:
.long 4
.long 1
.long 0
.long 0
.long 0
.long 9
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
qsort_137:
	leal -52(%esp), %esp
	leal 52(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 52(%esp), %ecx
	movl %edx,(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 52(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l293:
Lproc_body_start_l292:
	movl %edx,4(%esp)
	leal 52(%esp), %edx
	movl %edx,8(%esp)
	movl $-16,%edx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 52(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 52(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 52(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 52(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jl Ljoin_l304
Ljoin_l305:
	jmp LifFalse_203
LifFalse_203:
	movl $0,%eax
	movl %edi,20(%esp)
	movl %esi,32(%esp)
	jmp LifEnd_204
Ljoin_l304:
	jmp LifTrue_202
LifTrue_202:
	leal -8(%esp), %esp
	leal 60(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 60(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl %edi,28(%esp)
	movl $-16,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	leal 60(%esp), %edi
	movl %edi,32(%esp)
	movl $-56,%edi
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	movl %esi,40(%esp)
	movl 36(%esp),%esi
	addl %esi,%edi
	movl (%edx),%esi
	movl %esi,(%edi)
	leal 60(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	call partition_136
Ljoin_l303:
	leal 52(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal -8(%esp), %esp
	leal 60(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 60(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 60(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $1,%ecx
	subl %ecx,%esi
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	leal 60(%esp), %esi
	movl $-60,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call qsort_137
Ljoin_l300:
	leal -8(%esp), %esp
	leal 60(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 60(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	leal 60(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%esi),%esi
	movl %esi,(%ecx)
	leal 60(%esp), %esi
	movl $-60,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call qsort_137
Ljoin_l297:
	jmp LifEnd_204
LifEnd_204:
	leal 52(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 32(%esp),%esi
	movl 20(%esp),%edi
	leal 60(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l310:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l303
.long Lframe_l311
.section .pcmap_data
Lframe_l311:
.long 0x8000000c
.long 0xffffffcc
.long 0xffffffdc
.long Lstackdata_l310
.long 2
.long 6
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long qsort_137_gc_data
.section .pcmap
.long Ljoin_l300
.long Lframe_l312
.section .pcmap_data
Lframe_l312:
.long 0x8000000c
.long 0xffffffcc
.long 0xffffffdc
.long Lstackdata_l310
.long 2
.long 6
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long qsort_137_gc_data
.section .pcmap
.long Ljoin_l297
.long Lframe_l313
.section .pcmap_data
Lframe_l313:
.long 0x8000000c
.long 0xffffffcc
.long 0xffffffdc
.long Lstackdata_l310
.long 2
.long 6
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long qsort_137_gc_data
.section .text
.section .data
qsort_137_gc_data:
.long 4
.long 1
.long 0
.long 0
.long 0
.long 6
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
sort_58:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l316:
Lproc_body_start_l315:
	movl %edi,(%esp)
	leal 28(%esp), %edi
	movl %edi,4(%esp)
	movl $-8,%edi
	movl %edi,8(%esp)
	movl 4(%esp),%edi
	movl %esi,12(%esp)
	movl 8(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 28(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal -8(%esp), %esp
	leal 36(%esp), %eax
	movl $-8,%edi
	addl %edi,%eax
	leal 36(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	subl %esi,%edi
	leal 36(%esp), %esi
	movl $-32,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $0,%edi
	leal 36(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl %edx,24(%esp)
	call qsort_137
Ljoin_l320:
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%esi
	movl (%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l325:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l320
.long Lframe_l326
.section .pcmap_data
Lframe_l326:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l325
.long 2
.long 3
.long 2
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long sort_58_gc_data
.section .text
.section .data
sort_58_gc_data:
.long 2
.long 1
.long 0
.long 3
.long 1
.long 0
.long 0
.section .text
tiger_main:
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l329:
Lproc_body_start_l328:
	leal 32(%esp), %edx
	movl %edi,(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl $10,%edi
	leal 32(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 32(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $2,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%edi
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%edi
	jg Ljoin_l356
Ljoin_l357:
	jmp Lalc_gc_54
Ljoin_l356:
	jmp Lalc_gc_54
Lalc_gc_54:
	movl %ecx,4(%esp)
	call tig_call_gc
Ljoin_l355:
Lalc_55:
	leal 32(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	movl $4,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $2,%eax
	addl %eax,%edi
	movl $4,%eax
	imull %eax,%edi
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $4,%eax
	addl %eax,%edi
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $2,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $1,%eax
	jmp Linit_start_51
Linit_start_51:
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal space_end,%edx
	movl (%edx),%edx
	cmpl %edx,%ecx
	jg Ljoin_l351
Ljoin_l352:
	jmp Lalc_gc_46
Ljoin_l351:
	jmp Lalc_gc_46
Lalc_gc_46:
	movl %eax,8(%esp)
	call tig_call_gc
Ljoin_l350:
Lalc_47:
	movl $12,%ecx
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl %ecx,(%edx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $12,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl %edx,(%eax)
	movl $0,%edx
	movl %edx,(%ecx)
	leal Lgbl_43,%edx
	movl $4,%eax
	movl %edi,12(%esp)
	movl %ecx,%edi
	addl %eax,%edi
	movl %edx,(%edi)
	movl $4,%edi
	movl 8(%esp),%edx
	movl %edx,%eax
	imull %edi,%eax
	movl %esi,16(%esp)
	movl 12(%esp),%edi
	movl %edi,%esi
	addl %eax,%esi
	movl %ecx,(%esi)
	movl $1,%esi
	addl %esi,%edx
	leal 32(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl $4,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $1,%ecx
	addl %ecx,%esi
	cmpl %esi,%edx
	jle Ljoin_l346
Ljoin_l347:
	jmp Linit_end_52
Linit_end_52:
	leal 32(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 32(%esp), %eax
	movl $-12,%edi
	addl %edi,%eax
	call initlist_56
Ljoin_l345:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%edi
	addl %edi,%eax
	movl $1,%edi
	leal 36(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call sort_58
Ljoin_l342:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%edi
	addl %edi,%eax
	leal Lgbl_207,%edi
	leal 36(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call print_list_57
Ljoin_l339:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%edi
	addl %edi,%eax
	movl $0,%edi
	leal 36(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call sort_58
Ljoin_l336:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%edi
	addl %edi,%eax
	leal Lgbl_208,%edi
	leal 36(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call print_list_57
Ljoin_l333:
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl (%esp),%edi
	leal 32(%esp), %esp
	ret
Ljoin_l346:
	jmp Ljoin_l361
Ljoin_l361:
	movl %edx,%eax
	movl 16(%esp),%esi
	jmp Linit_start_51
.section .pcmap_data
Lstackdata_l363:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l355
.long Lframe_l364
.section .pcmap_data
Lframe_l364:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l363
.long 1
.long 7
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l350
.long Lframe_l365
.section .pcmap_data
Lframe_l365:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l363
.long 1
.long 7
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0xffffffe8
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l345
.long Lframe_l366
.section .pcmap_data
Lframe_l366:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l363
.long 2
.long 7
.long 2
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l342
.long Lframe_l367
.section .pcmap_data
Lframe_l367:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l363
.long 2
.long 7
.long 2
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l339
.long Lframe_l368
.section .pcmap_data
Lframe_l368:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l363
.long 2
.long 7
.long 2
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l336
.long Lframe_l369
.section .pcmap_data
Lframe_l369:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l363
.long 2
.long 7
.long 2
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l333
.long Lframe_l370
.section .pcmap_data
Lframe_l370:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l363
.long 2
.long 7
.long 2
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 3
.long 1
.long 0
.long 1
.long 7
.long 1
.long 1
.long 0
.long 1
.long 1
.long 1
.long 0
