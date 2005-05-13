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
.long 0xffffffff
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
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,20(%esp)
	movl %edi,16(%esp)
	movl %esi,12(%esp)
.Linitialize_continuations_l11:
.Lproc_body_start_l10:
	leal 28(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $15,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l72:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $10,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $1,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $16,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l69:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $32,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,(%eax)
	movl $-1,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	movl $2,%eax
	leal 28(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $17,%eax
	leal 28(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
.Lcall_successor_l66:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $3,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $18,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l63:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $567,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $4,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $19,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l60:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $3,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $5,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $20,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l57:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $18,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $6,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $21,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l54:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $1,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $28,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,(%eax)
	movl $-51,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	movl $7,%eax
	leal 28(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $22,%eax
	leal 28(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
.Lcall_successor_l51:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $32,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %esi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $8,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $23,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l48:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $789,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $36,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $9,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $24,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l45:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $49,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $40,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $25,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l42:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Lgbl_80,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $1,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $26,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l39:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Lgbl_83,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $2,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $27,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l36:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Lgbl_86,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $3,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $28,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l33:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Lgbl_89,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $4,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $29,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l30:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Lgbl_92,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $5,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $30,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l27:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Lgbl_95,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $6,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $31,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l24:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Lgbl_98,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $28,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $7,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $32,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l21:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Lgbl_101,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $32,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $8,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $33,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l18:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Lgbl_104,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $36,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $9,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $34,%ecx
	leal 28(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l15:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Lgbl_107,%ecx
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $40,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 12(%esp),%esi
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l78:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l72
.long .Lframe_l79
.section .pcmap_data
.Lframe_l79:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long .Lcall_successor_l69
.long .Lframe_l80
.section .pcmap_data
.Lframe_l80:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long .Lcall_successor_l66
.long .Lframe_l81
.section .pcmap_data
.Lframe_l81:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long initlist_56_gc_data
.section .pcmap
.long .Lcall_successor_l63
.long .Lframe_l82
.section .pcmap_data
.Lframe_l82:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l60
.long .Lframe_l83
.section .pcmap_data
.Lframe_l83:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
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
.long .Lcall_successor_l57
.long .Lframe_l84
.section .pcmap_data
.Lframe_l84:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l54
.long .Lframe_l85
.section .pcmap_data
.Lframe_l85:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l51
.long .Lframe_l86
.section .pcmap_data
.Lframe_l86:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long initlist_56_gc_data
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l87
.section .pcmap_data
.Lframe_l87:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l45
.long .Lframe_l88
.section .pcmap_data
.Lframe_l88:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l42
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l39
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l36
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l33
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l30
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l27
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l24
.long .Lframe_l95
.section .pcmap_data
.Lframe_l95:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
.long 1
.long 11
.long 0xfffffff4
.long 10
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l21
.long .Lframe_l96
.section .pcmap_data
.Lframe_l96:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_56_gc_data
.section .pcmap
.long .Lcall_successor_l15
.long .Lframe_l98
.section .pcmap_data
.Lframe_l98:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long .Lstackdata_l78
.long 2
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
	leal -40(%esp), %esp
	leal 40(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
	movl %edx,24(%esp)
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
.Linitialize_continuations_l100:
.Lproc_body_start_l99:
	leal 40(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 40(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l125:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_113,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l122:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	movl $0,%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
Lloop_start_131:
.Lbranch_target_l129:
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	subl %edx,%eax
	cmpl %eax,%ecx
	jle Lloop_body_132
Lloop_end_116:
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	leal 44(%esp), %esp
	ret
Lloop_body_132:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 40(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $40,%eax
	leal 40(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l119:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_printi
.Lcall_successor_l116:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_121,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l113:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 40(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $42,%eax
	leal 40(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l110:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l107:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_128,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l104:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_131
.section .pcmap_data
.Lstackdata_l132:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l125
.long .Lframe_l133
.section .pcmap_data
.Lframe_l133:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l132
.long 3
.long 19
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long .Lcall_successor_l122
.long .Lframe_l134
.section .pcmap_data
.Lframe_l134:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l132
.long 3
.long 19
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
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
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long .Lcall_successor_l119
.long .Lframe_l135
.section .pcmap_data
.Lframe_l135:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l132
.long 3
.long 19
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
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
.long 0x40000009
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
.long .Lcall_successor_l116
.long .Lframe_l136
.section .pcmap_data
.Lframe_l136:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l132
.long 3
.long 19
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
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
.long 0x40000009
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
.long .Lcall_successor_l113
.long .Lframe_l137
.section .pcmap_data
.Lframe_l137:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l132
.long 3
.long 19
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
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
.long 0x40000009
.long 0
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
.long .Lcall_successor_l110
.long .Lframe_l138
.section .pcmap_data
.Lframe_l138:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l132
.long 3
.long 19
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
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
.long .Lcall_successor_l107
.long .Lframe_l139
.section .pcmap_data
.Lframe_l139:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l132
.long 3
.long 19
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l104
.long .Lframe_l140
.section .pcmap_data
.Lframe_l140:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l132
.long 3
.long 19
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
	leal -48(%esp), %esp
	leal 48(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,12(%esp)
	leal 48(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl (%edx),%edx
	movl %edx,32(%esp)
	movl %edi,28(%esp)
	movl %esi,24(%esp)
	movl %ebp,20(%esp)
	movl %ebx,16(%esp)
.Linitialize_continuations_l142:
.Lproc_body_start_l141:
	leal 48(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 48(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l170:
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne LifTrue_150
LifFalse_151:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-44,%ebp
	addl %ebp,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $50,%edx
	leal 48(%esp), %eax
	movl $-40,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l149:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-44,%esi
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $50,%edx
	leal 48(%esp), %eax
	movl $-40,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l146:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
.Lbranch_target_l169:
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	cmpl %eax,%ebx
	jle .Lbranch_target_l168
.Lbranch_target_l167:
	movl $0,%eax
	jmp .Lbranch_target_l166
.Lbranch_target_l168:
	movl $-1,%eax
.Lbranch_target_l166:
	jmp LifEnd_152
LifTrue_150:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-44,%esi
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $49,%edx
	leal 48(%esp), %eax
	movl $-40,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l158:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 48(%esp), %edi
	movl $-44,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $49,%eax
	leal 48(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l155:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 48(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl %ebp,(%eax)
	call tig_compare_str
.Lcall_successor_l152:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
.Lbranch_target_l165:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l164
.Lbranch_target_l163:
	movl $0,%eax
	jmp .Lbranch_target_l162
.Lbranch_target_l164:
	movl $-1,%eax
.Lbranch_target_l162:
LifEnd_152:
	leal 48(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%edi
	movl 24(%esp),%esi
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	leal 56(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l173:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l149
.long .Lframe_l174
.section .pcmap_data
.Lframe_l174:
.long 0x8000000c
.long 0xffffffd0
.long 0xfffffff0
.long .Lstackdata_l173
.long 4
.long 17
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long 0x40000007
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
.long .Lcall_successor_l146
.long .Lframe_l175
.section .pcmap_data
.Lframe_l175:
.long 0x8000000c
.long 0xffffffd0
.long 0xfffffff0
.long .Lstackdata_l173
.long 4
.long 17
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
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
.long .Lcall_successor_l158
.long .Lframe_l176
.section .pcmap_data
.Lframe_l176:
.long 0x8000000c
.long 0xffffffd0
.long 0xfffffff0
.long .Lstackdata_l173
.long 4
.long 17
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long 0x40000007
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long lte_134_gc_data
.section .pcmap
.long .Lcall_successor_l155
.long .Lframe_l177
.section .pcmap_data
.Lframe_l177:
.long 0x8000000c
.long 0xffffffd0
.long 0xfffffff0
.long .Lstackdata_l173
.long 4
.long 17
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long lte_134_gc_data
.section .pcmap
.long .Lcall_successor_l152
.long .Lframe_l178
.section .pcmap_data
.Lframe_l178:
.long 0x8000000c
.long 0xffffffd0
.long 0xfffffff0
.long .Lstackdata_l173
.long 4
.long 17
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long 0x40000007
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
	leal -48(%esp), %esp
	leal 48(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,12(%esp)
	leal 48(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl (%edx),%edx
	movl %edx,32(%esp)
	movl %edi,28(%esp)
	movl %esi,24(%esp)
	movl %ebp,20(%esp)
	movl %ebx,16(%esp)
.Linitialize_continuations_l180:
.Lproc_body_start_l179:
	leal 48(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 48(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l208:
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne LifTrue_165
LifFalse_166:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-44,%ebp
	addl %ebp,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $54,%edx
	leal 48(%esp), %eax
	movl $-40,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l187:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-44,%esi
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $54,%edx
	leal 48(%esp), %eax
	movl $-40,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l184:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
.Lbranch_target_l207:
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	cmpl %eax,%ebx
	jg .Lbranch_target_l206
.Lbranch_target_l205:
	movl $0,%eax
	jmp .Lbranch_target_l204
.Lbranch_target_l206:
	movl $-1,%eax
.Lbranch_target_l204:
	jmp LifEnd_167
LifTrue_165:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-44,%esi
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $53,%edx
	leal 48(%esp), %eax
	movl $-40,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l196:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 48(%esp), %edi
	movl $-44,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $53,%eax
	leal 48(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l193:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 48(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl %ebp,(%eax)
	call tig_compare_str
.Lcall_successor_l190:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
.Lbranch_target_l203:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg .Lbranch_target_l202
.Lbranch_target_l201:
	movl $0,%eax
	jmp .Lbranch_target_l200
.Lbranch_target_l202:
	movl $-1,%eax
.Lbranch_target_l200:
LifEnd_167:
	leal 48(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%edi
	movl 24(%esp),%esi
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	leal 56(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l211:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l187
.long .Lframe_l212
.section .pcmap_data
.Lframe_l212:
.long 0x8000000c
.long 0xffffffd0
.long 0xfffffff0
.long .Lstackdata_l211
.long 4
.long 17
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long 0x40000007
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
.long .Lcall_successor_l184
.long .Lframe_l213
.section .pcmap_data
.Lframe_l213:
.long 0x8000000c
.long 0xffffffd0
.long 0xfffffff0
.long .Lstackdata_l211
.long 4
.long 17
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
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
.long .Lcall_successor_l196
.long .Lframe_l214
.section .pcmap_data
.Lframe_l214:
.long 0x8000000c
.long 0xffffffd0
.long 0xfffffff0
.long .Lstackdata_l211
.long 4
.long 17
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long 0x40000007
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long gt_135_gc_data
.section .pcmap
.long .Lcall_successor_l193
.long .Lframe_l215
.section .pcmap_data
.Lframe_l215:
.long 0x8000000c
.long 0xffffffd0
.long 0xfffffff0
.long .Lstackdata_l211
.long 4
.long 17
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long gt_135_gc_data
.section .pcmap
.long .Lcall_successor_l190
.long .Lframe_l216
.section .pcmap_data
.Lframe_l216:
.long 0x8000000c
.long 0xffffffd0
.long 0xfffffff0
.long .Lstackdata_l211
.long 4
.long 17
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long 0x40000007
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
	leal -44(%esp), %esp
	leal 44(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,12(%esp)
	leal 44(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 44(%esp), %edx
	movl (%edx),%edx
	movl %edx,24(%esp)
	movl %edi,20(%esp)
	movl %esi,16(%esp)
.Linitialize_continuations_l218:
.Lproc_body_start_l217:
	leal 44(%esp), %edx
	movl $-16,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 44(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal 44(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 44(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 44(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $60,%eax
	leal 44(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 44(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l231:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 44(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	leal 44(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 44(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 44(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $61,%eax
	leal 44(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 44(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l228:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 44(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 44(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $61,%eax
	leal 44(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 44(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l225:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	addl %eax,%edx
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl $4,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $1,%esi
	addl %esi,%ecx
	movl $4,%esi
	imull %esi,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 44(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 44(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $61,%eax
	leal 44(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 44(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l222:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 44(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $1,%esi
	addl %esi,%ecx
	movl $4,%esi
	imull %esi,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 44(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
	movl 16(%esp),%esi
	leal 52(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l237:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l231
.long .Lframe_l238
.section .pcmap_data
.Lframe_l238:
.long 0x8000000c
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l237
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
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
.long 0x4000000a
.long 0
.long 0
.long exchange_169_gc_data
.section .pcmap
.long .Lcall_successor_l228
.long .Lframe_l239
.section .pcmap_data
.Lframe_l239:
.long 0x8000000c
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l237
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
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
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long exchange_169_gc_data
.section .pcmap
.long .Lcall_successor_l225
.long .Lframe_l240
.section .pcmap_data
.Lframe_l240:
.long 0x8000000c
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l237
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
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
.long exchange_169_gc_data
.section .pcmap
.long .Lcall_successor_l222
.long .Lframe_l241
.section .pcmap_data
.Lframe_l241:
.long 0x8000000c
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l237
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 0
.long 0
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
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,(%esp)
	leal 32(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %edi,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l243:
.Lproc_body_start_l242:
	leal 32(%esp), %edx
	movl $-16,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 32(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
Lloop_start_198:
.Lbranch_target_l262:
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jl Lloop_body_199
Lloop_end_179:
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call exchange_169
.Lcall_successor_l247:
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	leal 40(%esp), %esp
	ret
Lloop_body_199:
Lloop_start_185:
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl $12,%esi
	addl %esi,%ecx
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call lte_134
.Lcall_successor_l256:
.Lbranch_target_l260:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_182
LifFalse_183:
	movl $0,%eax
	jmp LifEnd_184
LifTrue_182:
.Lbranch_target_l266:
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jl .Lbranch_target_l265
.Lbranch_target_l264:
	movl $0,%eax
	jmp .Lbranch_target_l263
.Lbranch_target_l265:
	movl $-1,%eax
.Lbranch_target_l263:
LifEnd_184:
.Lbranch_target_l267:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_186
Lloop_end_180:
Lloop_start_192:
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl $12,%esi
	addl %esi,%ecx
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call gt_135
.Lcall_successor_l253:
.Lbranch_target_l261:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_189
LifFalse_190:
	movl $0,%eax
	jmp LifEnd_191
LifTrue_189:
.Lbranch_target_l271:
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jge .Lbranch_target_l270
.Lbranch_target_l269:
	movl $0,%eax
	jmp .Lbranch_target_l268
.Lbranch_target_l270:
	movl $-1,%eax
.Lbranch_target_l268:
LifEnd_191:
.Lbranch_target_l272:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_193
Lloop_end_187:
.Lbranch_target_l273:
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jl LifTrue_195
LifFalse_196:
	movl $0,%eax
	jmp LifEnd_197
LifTrue_195:
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call exchange_169
.Lcall_successor_l250:
LifEnd_197:
	jmp Lloop_start_198
Lloop_body_193:
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	subl %eax,%ecx
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_192
Lloop_body_186:
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_185
.section .pcmap_data
.Lstackdata_l275:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l247
.long .Lframe_l276
.section .pcmap_data
.Lframe_l276:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l275
.long 2
.long 9
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
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
.long partition_136_gc_data
.section .pcmap
.long .Lcall_successor_l256
.long .Lframe_l277
.section .pcmap_data
.Lframe_l277:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l275
.long 2
.long 9
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
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
.long partition_136_gc_data
.section .pcmap
.long .Lcall_successor_l253
.long .Lframe_l278
.section .pcmap_data
.Lframe_l278:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l275
.long 2
.long 9
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
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
.long partition_136_gc_data
.section .pcmap
.long .Lcall_successor_l250
.long .Lframe_l279
.section .pcmap_data
.Lframe_l279:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l275
.long 2
.long 9
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
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
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,(%esp)
	leal 32(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %edi,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l281:
.Lproc_body_start_l280:
	leal 32(%esp), %edx
	movl $-16,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l295:
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jl LifTrue_202
LifFalse_203:
	movl $0,%eax
	jmp LifEnd_204
LifTrue_202:
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call partition_136
.Lcall_successor_l291:
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl $12,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $1,%esi
	subl %esi,%ecx
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call qsort_137
.Lcall_successor_l288:
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	leal 40(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call qsort_137
.Lcall_successor_l285:
LifEnd_204:
	leal 32(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l297:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l291
.long .Lframe_l298
.section .pcmap_data
.Lframe_l298:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l297
.long 2
.long 6
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
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
.long .Lcall_successor_l288
.long .Lframe_l299
.section .pcmap_data
.Lframe_l299:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l297
.long 2
.long 6
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
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
.long .Lcall_successor_l285
.long .Lframe_l300
.section .pcmap_data
.Lframe_l300:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l297
.long 2
.long 6
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
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
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 16(%esp), %edx
	movl (%edx),%edx
	movl %edx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l302:
.Lproc_body_start_l301:
	leal 16(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	subl %edx,%ecx
	leal 24(%esp), %edi
	movl $-20,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $0,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call qsort_137
.Lcall_successor_l306:
	leal 16(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l311:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l306
.long .Lframe_l312
.section .pcmap_data
.Lframe_l312:
.long 0x80000008
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l311
.long 1
.long 3
.long 2
.long 1
.long 11
.long 0xfffffff0
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
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,12(%esp)
	movl %edi,8(%esp)
	movl %esi,4(%esp)
	movl %ebp,(%esp)
.Linitialize_continuations_l314:
.Lproc_body_start_l313:
	leal 28(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $10,%ecx
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l340:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
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
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_54
Lalc_gc_54:
	call tig_call_gc
.Lcall_successor_l336:
Lalc_55:
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $2,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $4,%eax
	addl %eax,%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
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
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%ebp)
	movl $1,%esi
Linit_start_51:
.Lbranch_target_l341:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_46
Lalc_gc_46:
	call tig_call_gc
.Lcall_successor_l333:
Lalc_47:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl %eax,(%edx)
	leal Lgbl_43,%ecx
	movl $4,%edi
	movl %edx,%eax
	addl %edi,%eax
	movl %ecx,(%eax)
	movl $4,%eax
	movl %esi,%ecx
	imull %eax,%ecx
	movl %ebp,%eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $1,%eax
	addl %eax,%esi
.Lbranch_target_l342:
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	cmpl %eax,%esi
	jle Linit_start_51
Linit_end_52:
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %ebp,(%eax)
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	call initlist_56
.Lcall_successor_l330:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $1,%edx
	leal 32(%esp), %ecx
	movl $-32,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call sort_58
.Lcall_successor_l327:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal Lgbl_207,%edx
	leal 32(%esp), %ecx
	movl $-32,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call print_list_57
.Lcall_successor_l324:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $0,%edx
	leal 32(%esp), %ecx
	movl $-32,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call sort_58
.Lcall_successor_l321:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal Lgbl_208,%edx
	leal 32(%esp), %ecx
	movl $-32,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call print_list_57
.Lcall_successor_l318:
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	movl (%esp),%ebp
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l344:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l336
.long .Lframe_l345
.section .pcmap_data
.Lframe_l345:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l344
.long 3
.long 7
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l333
.long .Lframe_l346
.section .pcmap_data
.Lframe_l346:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l344
.long 3
.long 7
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 0
.long 0
.long 0x4000000a
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l330
.long .Lframe_l347
.section .pcmap_data
.Lframe_l347:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l344
.long 3
.long 7
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l327
.long .Lframe_l348
.section .pcmap_data
.Lframe_l348:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l344
.long 3
.long 7
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l324
.long .Lframe_l349
.section .pcmap_data
.Lframe_l349:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l344
.long 3
.long 7
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l321
.long .Lframe_l350
.section .pcmap_data
.Lframe_l350:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l344
.long 3
.long 7
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l318
.long .Lframe_l351
.section .pcmap_data
.Lframe_l351:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l344
.long 3
.long 7
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
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
