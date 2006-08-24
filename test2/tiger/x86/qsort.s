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
	leal -148(%esp), %esp
	leal 148(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l11:
.Lproc_body_start_l10:
	leal 148(%esp), %edx
	movl %eax,12(%esp)
	movl $-4,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %edx
	movl %eax,16(%esp)
	movl $-4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	leal 148(%esp), %edx
	movl %eax,20(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl 20(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 148(%esp), %edx
	movl %eax,24(%esp)
	movl $-144,%eax
	addl %eax,%edx
	movl 24(%esp),%eax
	movl %eax,(%edx)
	movl $15,%eax
	leal 148(%esp), %edx
	movl %eax,28(%esp)
	movl $-140,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,32(%esp)
	call tig_bounds_check
.Lcall_successor_l72:
	leal Cmm.global_area,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $10,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,36(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $1,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $16,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l69:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $32,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	movl $-1,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 148(%esp), %edx
	movl %eax,40(%esp)
	movl $-4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	leal 148(%esp), %edx
	movl %eax,44(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl 44(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	movl $2,%eax
	leal 148(%esp), %edx
	movl %eax,48(%esp)
	movl $-144,%eax
	addl %eax,%edx
	movl 48(%esp),%eax
	movl %eax,(%edx)
	movl $17,%eax
	leal 148(%esp), %edx
	movl %eax,52(%esp)
	movl $-140,%eax
	addl %eax,%edx
	movl 52(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,56(%esp)
	call tig_bounds_check
.Lcall_successor_l66:
	leal Cmm.global_area,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,60(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $3,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $18,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l63:
	leal Cmm.global_area,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	movl $567,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,64(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $4,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $19,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l60:
	leal Cmm.global_area,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	movl $3,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,68(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $5,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $20,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l57:
	leal Cmm.global_area,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	movl $18,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,72(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $6,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $21,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l54:
	leal Cmm.global_area,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $28,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	movl $-51,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 148(%esp), %edx
	movl %eax,76(%esp)
	movl $-4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	leal 148(%esp), %edx
	movl %eax,80(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl 80(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	movl $7,%eax
	leal 148(%esp), %edx
	movl %eax,84(%esp)
	movl $-144,%eax
	addl %eax,%edx
	movl 84(%esp),%eax
	movl %eax,(%edx)
	movl $22,%eax
	leal 148(%esp), %edx
	movl %eax,88(%esp)
	movl $-140,%eax
	addl %eax,%edx
	movl 88(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,92(%esp)
	call tig_bounds_check
.Lcall_successor_l51:
	leal Cmm.global_area,%eax
	movl 92(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $32,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,96(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $8,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $23,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l48:
	leal Cmm.global_area,%eax
	movl 96(%esp),%ecx
	movl %ecx,(%eax)
	movl $789,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $36,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,100(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $9,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $24,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l45:
	leal Cmm.global_area,%eax
	movl 100(%esp),%ecx
	movl %ecx,(%eax)
	movl $49,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $40,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,104(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $25,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l42:
	leal Cmm.global_area,%eax
	movl 104(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_80,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,108(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $1,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $26,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l39:
	leal Cmm.global_area,%eax
	movl 108(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_83,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,112(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $2,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $27,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l36:
	leal Cmm.global_area,%eax
	movl 112(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_86,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,116(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $3,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $28,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l33:
	leal Cmm.global_area,%eax
	movl 116(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_89,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,120(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $4,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $29,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l30:
	leal Cmm.global_area,%eax
	movl 120(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_92,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,124(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $5,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $30,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l27:
	leal Cmm.global_area,%eax
	movl 124(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_95,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,128(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $6,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $31,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l24:
	leal Cmm.global_area,%eax
	movl 128(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_98,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $28,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,132(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $7,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $32,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l21:
	leal Cmm.global_area,%eax
	movl 132(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_101,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $32,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,136(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $8,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $33,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l18:
	leal Cmm.global_area,%eax
	movl 136(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_104,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $36,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 148(%esp), %edx
	movl %eax,140(%esp)
	movl $-148,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $9,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $34,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
.Lcall_successor_l15:
	leal Cmm.global_area,%eax
	movl 140(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_107,%eax
	leal 148(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $40,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 148(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 148(%esp), %esp
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xffffff7c
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xffffff90
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xffffffa8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xffffffac
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xffffffb0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xffffffb4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffb8
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
.long 1
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
.long 1
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
.long 1
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xfffffff0
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xfffffff4
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
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l78
.long 0
.long 44
.long 2
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
.long 0xfffffff8
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
	leal -112(%esp), %esp
	leal 112(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 112(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l100:
.Lproc_body_start_l99:
	movl %eax,12(%esp)
	leal 112(%esp), %eax
	movl %eax,16(%esp)
	movl $-12,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 112(%esp), %ecx
	movl %eax,28(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 112(%esp), %eax
	movl %eax,32(%esp)
	movl $-112,%eax
	movl %eax,36(%esp)
	movl 32(%esp),%eax
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %edx,44(%esp)
	call tig_print
.Lcall_successor_l126:
	leal Cmm.global_area,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_113,%ecx
	leal 112(%esp), %edx
	movl %eax,48(%esp)
	movl $-112,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l123:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 112(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_131:
.Lbranch_target_l120:
.Lbranch_target_l130:
	leal 112(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 112(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	subl %edx,%ecx
	cmpl %ecx,%eax
	jle Lloop_body_132
Lloop_end_116:
	movl $0,%eax
	leal 112(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 116(%esp), %esp
	ret
Lloop_body_132:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 112(%esp), %edx
	movl %eax,52(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 112(%esp), %edx
	movl %eax,56(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 112(%esp), %eax
	movl %eax,60(%esp)
	movl $-108,%eax
	movl %eax,64(%esp)
	movl 60(%esp),%eax
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $40,%eax
	leal 112(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 112(%esp), %eax
	movl $-112,%ecx
	addl %ecx,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l119:
	leal Cmm.global_area,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 112(%esp), %ecx
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
	leal 112(%esp), %ecx
	movl $-112,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tig_printi
.Lcall_successor_l116:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_121,%ecx
	leal 112(%esp), %edx
	movl %eax,72(%esp)
	movl $-112,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l113:
	leal Cmm.global_area,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 112(%esp), %edx
	movl %eax,76(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 112(%esp), %edx
	movl %eax,80(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 112(%esp), %eax
	movl %eax,84(%esp)
	movl $-108,%eax
	movl %eax,88(%esp)
	movl 84(%esp),%eax
	movl %ecx,92(%esp)
	movl 88(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $42,%eax
	leal 112(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 112(%esp), %eax
	movl $-112,%ecx
	addl %ecx,%eax
	movl 80(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l110:
	leal Cmm.global_area,%eax
	movl 92(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 112(%esp), %ecx
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
	movl $4,%ecx
	addl %ecx,%eax
	leal 112(%esp), %ecx
	movl $-112,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tig_print
.Lcall_successor_l107:
	leal Cmm.global_area,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_128,%ecx
	leal 112(%esp), %edx
	movl %eax,96(%esp)
	movl $-112,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l104:
	leal Cmm.global_area,%eax
	movl 96(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	leal 112(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_131
.section .pcmap_data
.Lstackdata_l133:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l126
.long .Lframe_l134
.section .pcmap_data
.Lframe_l134:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l133
.long 0
.long 19
.long 2
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
.long 0xffffffac
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long .Lcall_successor_l123
.long .Lframe_l135
.section .pcmap_data
.Lframe_l135:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l133
.long 0
.long 19
.long 2
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
.long 0xffffffc0
.long 0
.long 0
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long .Lcall_successor_l119
.long .Lframe_l136
.section .pcmap_data
.Lframe_l136:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l133
.long 0
.long 19
.long 2
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
.long 0xffffffc4
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long .Lcall_successor_l116
.long .Lframe_l137
.section .pcmap_data
.Lframe_l137:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l133
.long 0
.long 19
.long 2
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
.long 0xffffffc4
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
.long .Lframe_l138
.section .pcmap_data
.Lframe_l138:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l133
.long 0
.long 19
.long 2
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
.long print_list_57_gc_data
.section .pcmap
.long .Lcall_successor_l110
.long .Lframe_l139
.section .pcmap_data
.Lframe_l139:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l133
.long 0
.long 19
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
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
.long 0
.long 0
.long print_list_57_gc_data
.section .pcmap
.long .Lcall_successor_l107
.long .Lframe_l140
.section .pcmap_data
.Lframe_l140:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l133
.long 0
.long 19
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l141
.section .pcmap_data
.Lframe_l141:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l133
.long 0
.long 19
.long 2
.long 1
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
	leal -148(%esp), %esp
	leal 148(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 148(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 148(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l143:
.Lproc_body_start_l142:
	movl %eax,16(%esp)
	leal 148(%esp), %eax
	movl %eax,20(%esp)
	movl $-12,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l160:
.Lbranch_target_l172:
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_150
LifFalse_151:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl %eax,92(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl %eax,96(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 148(%esp), %eax
	movl %eax,100(%esp)
	movl $-144,%eax
	movl %eax,104(%esp)
	movl 100(%esp),%eax
	movl %ecx,108(%esp)
	movl 104(%esp),%ecx
	addl %ecx,%eax
	movl 108(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $50,%eax
	leal 148(%esp), %ecx
	movl %eax,112(%esp)
	movl $-140,%eax
	addl %eax,%ecx
	movl 112(%esp),%eax
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 96(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,68(%esp)
	call tig_bounds_check
.Lcall_successor_l150:
	leal Cmm.global_area,%eax
	movl 92(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
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
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 148(%esp), %edx
	movl %eax,116(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 148(%esp), %edx
	movl %eax,120(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 148(%esp), %eax
	movl %eax,124(%esp)
	movl $-144,%eax
	movl %eax,128(%esp)
	movl 124(%esp),%eax
	movl %ecx,132(%esp)
	movl 128(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $50,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 120(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l147:
	leal Cmm.global_area,%eax
	movl 132(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l167:
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
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
	movl 116(%esp),%ecx
	cmpl %eax,%ecx
	jle .Lbranch_target_l166
.Lbranch_target_l165:
	movl $0,%eax
	jmp .Lbranch_target_l164
.Lbranch_target_l166:
	movl $-1,%eax
.Lbranch_target_l164:
	jmp LifEnd_152
LifTrue_150:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,32(%esp)
	leal 148(%esp), %eax
	movl %eax,36(%esp)
	movl $-12,%eax
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl %eax,48(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 148(%esp), %eax
	movl %eax,52(%esp)
	movl $-144,%eax
	movl %eax,56(%esp)
	movl 52(%esp),%eax
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $49,%eax
	leal 148(%esp), %ecx
	movl %eax,64(%esp)
	movl $-140,%eax
	addl %eax,%ecx
	movl 64(%esp),%eax
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,68(%esp)
	call tig_bounds_check
.Lcall_successor_l159:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
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
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 148(%esp), %edx
	movl %eax,72(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 148(%esp), %edx
	movl %eax,76(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 148(%esp), %eax
	movl %eax,80(%esp)
	movl $-144,%eax
	movl %eax,84(%esp)
	movl 80(%esp),%eax
	movl %ecx,88(%esp)
	movl 84(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $49,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l156:
	leal Cmm.global_area,%eax
	movl 88(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
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
	movl $4,%ecx
	addl %ecx,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l153:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l171:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l170
.Lbranch_target_l169:
	movl $0,%eax
	jmp .Lbranch_target_l168
.Lbranch_target_l170:
	movl $-1,%eax
.Lbranch_target_l168:
LifEnd_152:
	leal 148(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 68(%esp),%edx
	movl %edx,(%ecx)
	leal 156(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l175:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l150
.long .Lframe_l176
.section .pcmap_data
.Lframe_l176:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffb0
.long .Lstackdata_l175
.long 0
.long 17
.long 2
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
.long 0xffffffc8
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
.long .Lcall_successor_l147
.long .Lframe_l177
.section .pcmap_data
.Lframe_l177:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffb0
.long .Lstackdata_l175
.long 0
.long 17
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
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
.long lte_134_gc_data
.section .pcmap
.long .Lcall_successor_l159
.long .Lframe_l178
.section .pcmap_data
.Lframe_l178:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffb0
.long .Lstackdata_l175
.long 0
.long 17
.long 2
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
.long 0xffffff8c
.long 0
.long 0
.long 0
.long 0xffffff98
.long 0
.long 0
.long lte_134_gc_data
.section .pcmap
.long .Lcall_successor_l156
.long .Lframe_l179
.section .pcmap_data
.Lframe_l179:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffb0
.long .Lstackdata_l175
.long 0
.long 17
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0xffffffb4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff8c
.long 0
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long lte_134_gc_data
.section .pcmap
.long .Lcall_successor_l153
.long .Lframe_l180
.section .pcmap_data
.Lframe_l180:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffb0
.long .Lstackdata_l175
.long 0
.long 17
.long 2
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
.long 0xffffff8c
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
	leal -148(%esp), %esp
	leal 148(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 148(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 148(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l182:
.Lproc_body_start_l181:
	movl %eax,16(%esp)
	leal 148(%esp), %eax
	movl %eax,20(%esp)
	movl $-12,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l199:
.Lbranch_target_l211:
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_165
LifFalse_166:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl %eax,92(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl %eax,96(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 148(%esp), %eax
	movl %eax,100(%esp)
	movl $-144,%eax
	movl %eax,104(%esp)
	movl 100(%esp),%eax
	movl %ecx,108(%esp)
	movl 104(%esp),%ecx
	addl %ecx,%eax
	movl 108(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $54,%eax
	leal 148(%esp), %ecx
	movl %eax,112(%esp)
	movl $-140,%eax
	addl %eax,%ecx
	movl 112(%esp),%eax
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 96(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,68(%esp)
	call tig_bounds_check
.Lcall_successor_l189:
	leal Cmm.global_area,%eax
	movl 92(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
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
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 148(%esp), %edx
	movl %eax,116(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 148(%esp), %edx
	movl %eax,120(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 148(%esp), %eax
	movl %eax,124(%esp)
	movl $-144,%eax
	movl %eax,128(%esp)
	movl 124(%esp),%eax
	movl %ecx,132(%esp)
	movl 128(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $54,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 120(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l186:
	leal Cmm.global_area,%eax
	movl 132(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l206:
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
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
	movl 116(%esp),%ecx
	cmpl %eax,%ecx
	jg .Lbranch_target_l205
.Lbranch_target_l204:
	movl $0,%eax
	jmp .Lbranch_target_l203
.Lbranch_target_l205:
	movl $-1,%eax
.Lbranch_target_l203:
	jmp LifEnd_167
LifTrue_165:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,32(%esp)
	leal 148(%esp), %eax
	movl %eax,36(%esp)
	movl $-12,%eax
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl %eax,48(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 148(%esp), %eax
	movl %eax,52(%esp)
	movl $-144,%eax
	movl %eax,56(%esp)
	movl 52(%esp),%eax
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $53,%eax
	leal 148(%esp), %ecx
	movl %eax,64(%esp)
	movl $-140,%eax
	addl %eax,%ecx
	movl 64(%esp),%eax
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,68(%esp)
	call tig_bounds_check
.Lcall_successor_l198:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
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
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 148(%esp), %edx
	movl %eax,72(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 148(%esp), %edx
	movl %eax,76(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 148(%esp), %eax
	movl %eax,80(%esp)
	movl $-144,%eax
	movl %eax,84(%esp)
	movl 80(%esp),%eax
	movl %ecx,88(%esp)
	movl 84(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $53,%eax
	leal 148(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l195:
	leal Cmm.global_area,%eax
	movl 88(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
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
	movl $4,%ecx
	addl %ecx,%eax
	leal 148(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l192:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l210:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg .Lbranch_target_l209
.Lbranch_target_l208:
	movl $0,%eax
	jmp .Lbranch_target_l207
.Lbranch_target_l209:
	movl $-1,%eax
.Lbranch_target_l207:
LifEnd_167:
	leal 148(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 68(%esp),%edx
	movl %edx,(%ecx)
	leal 156(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l214:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l189
.long .Lframe_l215
.section .pcmap_data
.Lframe_l215:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffb0
.long .Lstackdata_l214
.long 0
.long 17
.long 2
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
.long 0xffffffc8
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
.long .Lcall_successor_l186
.long .Lframe_l216
.section .pcmap_data
.Lframe_l216:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffb0
.long .Lstackdata_l214
.long 0
.long 17
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
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
.long gt_135_gc_data
.section .pcmap
.long .Lcall_successor_l198
.long .Lframe_l217
.section .pcmap_data
.Lframe_l217:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffb0
.long .Lstackdata_l214
.long 0
.long 17
.long 2
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
.long 0xffffff8c
.long 0
.long 0
.long 0
.long 0xffffff98
.long 0
.long 0
.long gt_135_gc_data
.section .pcmap
.long .Lcall_successor_l195
.long .Lframe_l218
.section .pcmap_data
.Lframe_l218:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffb0
.long .Lstackdata_l214
.long 0
.long 17
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0xffffffb4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff8c
.long 0
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long gt_135_gc_data
.section .pcmap
.long .Lcall_successor_l192
.long .Lframe_l219
.section .pcmap_data
.Lframe_l219:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffb0
.long .Lstackdata_l214
.long 0
.long 17
.long 2
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
.long 0xffffff8c
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
	leal -132(%esp), %esp
	leal 132(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 132(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 132(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l221:
.Lproc_body_start_l220:
	movl %eax,16(%esp)
	leal 132(%esp), %eax
	movl %eax,20(%esp)
	movl $-16,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl %eax,32(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl %eax,36(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 132(%esp), %eax
	movl %eax,40(%esp)
	movl $-128,%eax
	movl %eax,44(%esp)
	movl 40(%esp),%eax
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $60,%eax
	leal 132(%esp), %ecx
	movl %eax,52(%esp)
	movl $-124,%eax
	addl %eax,%ecx
	movl 52(%esp),%eax
	movl %eax,(%ecx)
	leal 132(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,56(%esp)
	call tig_bounds_check
.Lcall_successor_l234:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	leal 132(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 132(%esp), %edx
	movl %eax,60(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 132(%esp), %eax
	movl %eax,64(%esp)
	movl $-128,%eax
	movl %eax,68(%esp)
	movl 64(%esp),%eax
	movl %ecx,72(%esp)
	movl 68(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $61,%eax
	leal 132(%esp), %ecx
	movl $-124,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 132(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l231:
	leal Cmm.global_area,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 132(%esp), %edx
	movl %eax,76(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	leal 132(%esp), %eax
	movl %eax,80(%esp)
	movl $-128,%eax
	movl %eax,84(%esp)
	movl 80(%esp),%eax
	movl %ecx,88(%esp)
	movl 84(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $61,%eax
	leal 132(%esp), %ecx
	movl $-124,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 132(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 88(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l228:
	leal Cmm.global_area,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	leal 132(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 132(%esp), %edx
	movl %eax,92(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	movl 92(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 132(%esp), %edx
	movl %eax,96(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 132(%esp), %eax
	movl %eax,100(%esp)
	movl $-128,%eax
	movl %eax,104(%esp)
	movl 100(%esp),%eax
	movl %ecx,108(%esp)
	movl 104(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $61,%eax
	leal 132(%esp), %ecx
	movl $-124,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 132(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 108(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l225:
	leal Cmm.global_area,%eax
	movl 96(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 132(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 132(%esp), %edx
	movl %eax,112(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	movl 112(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 132(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	leal 140(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l240:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l234
.long .Lframe_l241
.section .pcmap_data
.Lframe_l241:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l240
.long 0
.long 12
.long 2
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
.long 0xffffff9c
.long 0
.long 0
.long exchange_169_gc_data
.section .pcmap
.long .Lcall_successor_l231
.long .Lframe_l242
.section .pcmap_data
.Lframe_l242:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l240
.long 0
.long 12
.long 2
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
.long 0xffffffb8
.long 0
.long 0
.long 0
.long 0
.long exchange_169_gc_data
.section .pcmap
.long .Lcall_successor_l228
.long .Lframe_l243
.section .pcmap_data
.Lframe_l243:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l240
.long 0
.long 12
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long exchange_169_gc_data
.section .pcmap
.long .Lcall_successor_l225
.long .Lframe_l244
.section .pcmap_data
.Lframe_l244:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l240
.long 0
.long 12
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
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
	leal -128(%esp), %esp
	leal 128(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 128(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 128(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l246:
.Lproc_body_start_l245:
	movl %eax,4(%esp)
	leal 128(%esp), %eax
	movl %eax,8(%esp)
	movl $-16,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 128(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 128(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 128(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 128(%esp), %ecx
	movl %eax,20(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl 20(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
Lloop_start_198:
.Lbranch_target_l265:
.Lbranch_target_l282:
	leal 128(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 128(%esp), %ecx
	movl %eax,24(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 24(%esp),%ecx
	cmpl %eax,%ecx
	jl Lloop_body_199
Lloop_end_179:
	leal -8(%esp), %esp
	leal 136(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 136(%esp), %ecx
	movl %ecx,96(%esp)
	movl $-16,%ecx
	movl %ecx,100(%esp)
	movl 96(%esp),%ecx
	movl %edx,44(%esp)
	movl 100(%esp),%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 136(%esp), %edx
	movl %ecx,104(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	leal 136(%esp), %ecx
	movl %ecx,108(%esp)
	movl $-132,%ecx
	movl %ecx,112(%esp)
	movl 108(%esp),%ecx
	movl %edx,116(%esp)
	movl 112(%esp),%edx
	addl %edx,%ecx
	movl 116(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 136(%esp), %ecx
	movl $-136,%edx
	addl %edx,%ecx
	movl 104(%esp),%edx
	movl %edx,(%ecx)
	call exchange_169
.Lcall_successor_l250:
	leal 128(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 128(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 136(%esp), %esp
	ret
Lloop_body_199:
Lloop_start_185:
	leal -8(%esp), %esp
	leal 136(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 136(%esp), %ecx
	movl %ecx,36(%esp)
	movl $-16,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,44(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 136(%esp), %edx
	movl %ecx,48(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	leal 136(%esp), %ecx
	movl %ecx,52(%esp)
	movl $-132,%ecx
	movl %ecx,56(%esp)
	movl 52(%esp),%ecx
	movl %edx,60(%esp)
	movl 56(%esp),%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 136(%esp), %ecx
	movl $-136,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	call lte_134
.Lcall_successor_l264:
.Lbranch_target_l261:
.Lbranch_target_l281:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_182
LifFalse_183:
	movl $0,%eax
	jmp LifEnd_184
LifTrue_182:
.Lbranch_target_l276:
	leal 128(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 128(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jl .Lbranch_target_l275
.Lbranch_target_l274:
	movl $0,%eax
	jmp .Lbranch_target_l273
.Lbranch_target_l275:
	movl $-1,%eax
.Lbranch_target_l273:
LifEnd_184:
.Lbranch_target_l260:
.Lbranch_target_l280:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_186
Lloop_end_180:
Lloop_start_192:
	leal -8(%esp), %esp
	leal 136(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 136(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 136(%esp), %edx
	movl %ecx,64(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	leal 136(%esp), %ecx
	movl %ecx,68(%esp)
	movl $-132,%ecx
	movl %ecx,72(%esp)
	movl 68(%esp),%ecx
	movl %edx,76(%esp)
	movl 72(%esp),%edx
	addl %edx,%ecx
	movl 76(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 136(%esp), %ecx
	movl $-136,%edx
	addl %edx,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	call gt_135
.Lcall_successor_l259:
.Lbranch_target_l256:
.Lbranch_target_l279:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_189
LifFalse_190:
	movl $0,%eax
	jmp LifEnd_191
LifTrue_189:
.Lbranch_target_l272:
	leal 128(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 128(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jge .Lbranch_target_l271
.Lbranch_target_l270:
	movl $0,%eax
	jmp .Lbranch_target_l269
.Lbranch_target_l271:
	movl $-1,%eax
.Lbranch_target_l269:
LifEnd_191:
.Lbranch_target_l255:
.Lbranch_target_l278:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_193
Lloop_end_187:
.Lbranch_target_l254:
.Lbranch_target_l277:
	leal 128(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 128(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jl LifTrue_195
LifFalse_196:
	movl $0,%eax
	jmp LifEnd_197
LifTrue_195:
	leal -8(%esp), %esp
	leal 136(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 136(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 136(%esp), %edx
	movl %ecx,80(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	leal 136(%esp), %ecx
	movl %ecx,84(%esp)
	movl $-132,%ecx
	movl %ecx,88(%esp)
	movl 84(%esp),%ecx
	movl %edx,92(%esp)
	movl 88(%esp),%edx
	addl %edx,%ecx
	movl 92(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 136(%esp), %ecx
	movl $-136,%edx
	addl %edx,%ecx
	movl 80(%esp),%edx
	movl %edx,(%ecx)
	call exchange_169
.Lcall_successor_l253:
LifEnd_197:
.LLloop_start_198_l284:
	movl 36(%esp),%edx
	jmp Lloop_start_198
Lloop_body_193:
	leal 128(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	subl %ecx,%eax
	leal 128(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_192
Lloop_body_186:
	leal 128(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	leal 128(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.LLloop_start_185_l283:
	movl 36(%esp),%edx
	jmp Lloop_start_185
.section .pcmap_data
.Lstackdata_l286:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l250
.long .Lframe_l287
.section .pcmap_data
.Lframe_l287:
.long 0x8000000c
.long 0xffffff80
.long 0xffffffa4
.long .Lstackdata_l286
.long 0
.long 9
.long 2
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
.long partition_136_gc_data
.section .pcmap
.long .Lcall_successor_l264
.long .Lframe_l288
.section .pcmap_data
.Lframe_l288:
.long 0x8000000c
.long 0xffffff80
.long 0xffffffa4
.long .Lstackdata_l286
.long 0
.long 9
.long 2
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
.long partition_136_gc_data
.section .pcmap
.long .Lcall_successor_l259
.long .Lframe_l289
.section .pcmap_data
.Lframe_l289:
.long 0x8000000c
.long 0xffffff80
.long 0xffffffa4
.long .Lstackdata_l286
.long 0
.long 9
.long 2
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
.long partition_136_gc_data
.section .pcmap
.long .Lcall_successor_l253
.long .Lframe_l290
.section .pcmap_data
.Lframe_l290:
.long 0x8000000c
.long 0xffffff80
.long 0xffffffa4
.long .Lstackdata_l286
.long 0
.long 9
.long 2
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
	leal -92(%esp), %esp
	leal 92(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 92(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 92(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l292:
.Lproc_body_start_l291:
	movl %eax,4(%esp)
	leal 92(%esp), %eax
	movl %eax,8(%esp)
	movl $-16,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l303:
.Lbranch_target_l307:
	leal 92(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 92(%esp), %ecx
	movl %eax,20(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	jl LifTrue_202
LifFalse_203:
	movl $0,%eax
.LLifEnd_204_l308:
	movl %edx,32(%esp)
	jmp LifEnd_204
LifTrue_202:
	leal -8(%esp), %esp
	leal 100(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 100(%esp), %ecx
	movl %ecx,32(%esp)
	movl $-16,%ecx
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	movl %edx,40(%esp)
	movl 36(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 100(%esp), %edx
	movl %ecx,44(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	leal 100(%esp), %ecx
	movl %ecx,48(%esp)
	movl $-96,%ecx
	movl %ecx,52(%esp)
	movl 48(%esp),%ecx
	movl %edx,56(%esp)
	movl 52(%esp),%edx
	addl %edx,%ecx
	movl 56(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 100(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	call partition_136
.Lcall_successor_l302:
	leal 92(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 100(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 100(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 100(%esp), %edx
	movl %ecx,60(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $1,%edx
	subl %edx,%ecx
	leal 100(%esp), %edx
	movl %ecx,64(%esp)
	movl $-96,%ecx
	addl %ecx,%edx
	movl 64(%esp),%ecx
	movl %ecx,(%edx)
	leal 100(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	call qsort_137
.Lcall_successor_l299:
	leal -8(%esp), %esp
	leal 100(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 100(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	leal 100(%esp), %edx
	movl %ecx,68(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	leal 100(%esp), %ecx
	movl %ecx,72(%esp)
	movl $-96,%ecx
	movl %ecx,76(%esp)
	movl 72(%esp),%ecx
	movl %edx,80(%esp)
	movl 76(%esp),%edx
	addl %edx,%ecx
	movl 80(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 100(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	movl 68(%esp),%edx
	movl %edx,(%ecx)
	call qsort_137
.Lcall_successor_l296:
LifEnd_204:
	leal 92(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 100(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l310:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l302
.long .Lframe_l311
.section .pcmap_data
.Lframe_l311:
.long 0x8000000c
.long 0xffffffa4
.long 0xffffffc4
.long .Lstackdata_l310
.long 0
.long 6
.long 2
.long 1
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
.long .Lcall_successor_l299
.long .Lframe_l312
.section .pcmap_data
.Lframe_l312:
.long 0x8000000c
.long 0xffffffa4
.long 0xffffffc4
.long .Lstackdata_l310
.long 0
.long 6
.long 2
.long 1
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
.long .Lcall_successor_l296
.long .Lframe_l313
.section .pcmap_data
.Lframe_l313:
.long 0x8000000c
.long 0xffffffa4
.long 0xffffffc4
.long .Lstackdata_l310
.long 0
.long 6
.long 2
.long 1
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
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l315:
.Lproc_body_start_l314:
	movl %eax,(%esp)
	leal 44(%esp), %eax
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 52(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal 52(%esp), %ecx
	movl %ecx,24(%esp)
	movl $-8,%ecx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	movl %edx,32(%esp)
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	subl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,36(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 52(%esp), %edx
	movl %ecx,40(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	call qsort_137
.Lcall_successor_l319:
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l324:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l319
.long .Lframe_l325
.section .pcmap_data
.Lframe_l325:
.long 0x80000008
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l324
.long 0
.long 3
.long 2
.long 1
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
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l327:
.Lproc_body_start_l326:
	leal 60(%esp), %edx
	movl %eax,(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	movl $10,%eax
	leal 60(%esp), %edx
	movl %eax,4(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
.Lbranch_target_l352:
.Lbranch_target_l358:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 60(%esp), %edx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $2,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	movl 8(%esp),%edx
	addl %eax,%edx
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jg Lalc_gc_54
Lalc_gc_54:
	movl %ecx,12(%esp)
	call tig_call_gc
.Lcall_successor_l351:
Lalc_55:
	leal 60(%esp), %eax
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
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl %eax,16(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $2,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	movl 16(%esp),%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $1,%ecx
Linit_start_51:
.Lbranch_target_l348:
.Lbranch_target_l357:
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl %eax,20(%esp)
	movl $12,%eax
	addl %eax,%edx
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jg Lalc_gc_46
Lalc_gc_46:
	movl %ecx,24(%esp)
	call tig_call_gc
.Lcall_successor_l347:
Lalc_47:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl %ecx,(%eax)
	leal Lgbl_43,%ecx
	movl $4,%edx
	movl %eax,28(%esp)
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $4,%eax
	movl 24(%esp),%ecx
	movl %ecx,%edx
	imull %eax,%edx
	movl 20(%esp),%eax
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %edx,(%eax)
	movl $1,%eax
	addl %eax,%ecx
.Lbranch_target_l344:
.Lbranch_target_l356:
	leal 60(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	addl %edx,%eax
	cmpl %eax,%ecx
.Lbranch_target_l360:
	jle .LLinit_start_51_l359
Linit_end_52:
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	call initlist_56
.Lcall_successor_l343:
	leal -4(%esp), %esp
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $1,%ecx
	leal 64(%esp), %edx
	movl %ecx,36(%esp)
	movl $-64,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	call sort_58
.Lcall_successor_l340:
	leal -4(%esp), %esp
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal Lgbl_207,%ecx
	leal 64(%esp), %edx
	movl %ecx,40(%esp)
	movl $-64,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	call print_list_57
.Lcall_successor_l337:
	leal -4(%esp), %esp
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $0,%ecx
	leal 64(%esp), %edx
	movl %ecx,44(%esp)
	movl $-64,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	call sort_58
.Lcall_successor_l334:
	leal -4(%esp), %esp
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal Lgbl_208,%ecx
	leal 64(%esp), %edx
	movl %ecx,48(%esp)
	movl $-64,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	call print_list_57
.Lcall_successor_l331:
	leal 60(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
	ret
.LLinit_start_51_l359:
	movl 20(%esp),%eax
	jmp Linit_start_51
.section .pcmap_data
.Lstackdata_l362:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l351
.long .Lframe_l363
.section .pcmap_data
.Lframe_l363:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l362
.long 0
.long 7
.long 2
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l347
.long .Lframe_l364
.section .pcmap_data
.Lframe_l364:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l362
.long 0
.long 7
.long 2
.long 1
.long 0
.long 0
.long 0xffffffdc
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l343
.long .Lframe_l365
.section .pcmap_data
.Lframe_l365:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l362
.long 0
.long 7
.long 2
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l340
.long .Lframe_l366
.section .pcmap_data
.Lframe_l366:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l362
.long 0
.long 7
.long 2
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l337
.long .Lframe_l367
.section .pcmap_data
.Lframe_l367:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l362
.long 0
.long 7
.long 2
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l334
.long .Lframe_l368
.section .pcmap_data
.Lframe_l368:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l362
.long 0
.long 7
.long 2
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l331
.long .Lframe_l369
.section .pcmap_data
.Lframe_l369:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l362
.long 0
.long 7
.long 2
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
