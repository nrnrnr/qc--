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
.Linitialize_continuations_l12:
.Lproc_body_start_l11:
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
.Ljoin_l73:
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
.Ljoin_l70:
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
.Ljoin_l67:
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
.Ljoin_l64:
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
.Ljoin_l61:
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
.Ljoin_l58:
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
.Ljoin_l55:
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
.Ljoin_l52:
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
.Ljoin_l49:
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
.Ljoin_l46:
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
.Ljoin_l43:
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
.Ljoin_l40:
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
.Ljoin_l37:
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
.Ljoin_l34:
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
.Ljoin_l31:
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
.Ljoin_l28:
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
.Ljoin_l25:
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
.Ljoin_l22:
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
.Ljoin_l19:
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
.Ljoin_l16:
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
.Lstackdata_l79:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Ljoin_l73
.long .Lframe_l80
.section .pcmap_data
.Lframe_l80:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l70
.long .Lframe_l81
.section .pcmap_data
.Lframe_l81:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l67
.long .Lframe_l82
.section .pcmap_data
.Lframe_l82:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l64
.long .Lframe_l83
.section .pcmap_data
.Lframe_l83:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l61
.long .Lframe_l84
.section .pcmap_data
.Lframe_l84:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l58
.long .Lframe_l85
.section .pcmap_data
.Lframe_l85:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l55
.long .Lframe_l86
.section .pcmap_data
.Lframe_l86:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l52
.long .Lframe_l87
.section .pcmap_data
.Lframe_l87:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l49
.long .Lframe_l88
.section .pcmap_data
.Lframe_l88:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l46
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l43
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l40
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l37
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l34
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l31
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l28
.long .Lframe_l95
.section .pcmap_data
.Lframe_l95:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l25
.long .Lframe_l96
.section .pcmap_data
.Lframe_l96:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l22
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l19
.long .Lframe_l98
.section .pcmap_data
.Lframe_l98:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.long .Ljoin_l16
.long .Lframe_l99
.section .pcmap_data
.Lframe_l99:
.long 0x80000004
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l79
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
.Linitialize_continuations_l102:
.Lproc_body_start_l101:
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
.Ljoin_l129:
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
.Ljoin_l126:
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
	jmp Lloop_start_131
Lloop_start_131:
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
	jle .Ljoin_l122
.Ljoin_l123:
	jmp Lloop_end_116
Lloop_end_116:
	movl $0,%eax
	leal 112(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 116(%esp), %esp
	ret
.Ljoin_l122:
	jmp Lloop_body_132
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
.Ljoin_l121:
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
.Ljoin_l118:
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
.Ljoin_l115:
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
.Ljoin_l112:
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
.Ljoin_l109:
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
.Ljoin_l106:
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
.Lstackdata_l135:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Ljoin_l129
.long .Lframe_l136
.section .pcmap_data
.Lframe_l136:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l135
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
.long .Ljoin_l126
.long .Lframe_l137
.section .pcmap_data
.Lframe_l137:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l135
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
.long .Ljoin_l121
.long .Lframe_l138
.section .pcmap_data
.Lframe_l138:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l135
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
.long .Ljoin_l118
.long .Lframe_l139
.section .pcmap_data
.Lframe_l139:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l135
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
.long .Ljoin_l115
.long .Lframe_l140
.section .pcmap_data
.Lframe_l140:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l135
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
.long .Ljoin_l112
.long .Lframe_l141
.section .pcmap_data
.Lframe_l141:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l135
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
.long .Ljoin_l109
.long .Lframe_l142
.section .pcmap_data
.Lframe_l142:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l135
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
.long .Ljoin_l106
.long .Lframe_l143
.section .pcmap_data
.Lframe_l143:
.long 0x80000008
.long 0xffffff90
.long 0xffffffbc
.long .Lstackdata_l135
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
.Linitialize_continuations_l146:
.Lproc_body_start_l145:
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
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l163
.Ljoin_l164:
	jmp LifFalse_151
LifFalse_151:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl %eax,32(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl %eax,36(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 148(%esp), %eax
	movl %eax,40(%esp)
	movl $-144,%eax
	movl %eax,44(%esp)
	movl 40(%esp),%eax
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $50,%eax
	leal 148(%esp), %ecx
	movl %eax,52(%esp)
	movl $-140,%eax
	addl %eax,%ecx
	movl 52(%esp),%eax
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,56(%esp)
	call tig_bounds_check
.Ljoin_l153:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
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
	movl %eax,60(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 148(%esp), %edx
	movl %eax,64(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 148(%esp), %eax
	movl %eax,68(%esp)
	movl $-144,%eax
	movl %eax,72(%esp)
	movl 68(%esp),%eax
	movl %ecx,76(%esp)
	movl 72(%esp),%ecx
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
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Ljoin_l150:
	leal Cmm.global_area,%eax
	movl 76(%esp),%ecx
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
	movl (%eax),%eax
	movl 60(%esp),%ecx
	cmpl %eax,%ecx
	jle .Ljoin_l172
.Ljoin_l173:
	movl $0,%eax
	jmp .Ljoin_l171
.Ljoin_l172:
	movl $-1,%eax
	jmp .Ljoin_l171
.Ljoin_l171:
	jmp LifEnd_152
.Ljoin_l163:
	jmp LifTrue_150
LifTrue_150:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,80(%esp)
	leal 148(%esp), %eax
	movl %eax,84(%esp)
	movl $-12,%eax
	movl %eax,88(%esp)
	movl 84(%esp),%eax
	movl %ecx,92(%esp)
	movl 88(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
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
	movl $49,%eax
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
	movl %edx,56(%esp)
	call tig_bounds_check
.Ljoin_l162:
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
	movl $4,%ecx
	addl %ecx,%eax
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
	movl $49,%eax
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
.Ljoin_l159:
	leal Cmm.global_area,%eax
	movl 132(%esp),%ecx
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
	movl 116(%esp),%ecx
	movl %ecx,(%eax)
	call tig_compare_str
.Ljoin_l156:
	leal Cmm.global_area,%ecx
	movl 80(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Ljoin_l169
.Ljoin_l170:
	movl $0,%eax
	jmp .Ljoin_l168
.Ljoin_l169:
	movl $-1,%eax
	jmp .Ljoin_l168
.Ljoin_l168:
	jmp LifEnd_152
LifEnd_152:
	leal 148(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	leal 156(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l176:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Ljoin_l153
.long .Lframe_l177
.section .pcmap_data
.Lframe_l177:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffa4
.long .Lstackdata_l176
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
.long 0xffffff8c
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
.long .Ljoin_l150
.long .Lframe_l178
.section .pcmap_data
.Lframe_l178:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffa4
.long .Lstackdata_l176
.long 0
.long 17
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffffa8
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
.long lte_134_gc_data
.section .pcmap
.long .Ljoin_l162
.long .Lframe_l179
.section .pcmap_data
.Lframe_l179:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffa4
.long .Lstackdata_l176
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
.long 0xffffffbc
.long 0
.long 0
.long 0
.long 0xffffffc8
.long 0
.long 0
.long lte_134_gc_data
.section .pcmap
.long .Ljoin_l159
.long .Lframe_l180
.section .pcmap_data
.Lframe_l180:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffa4
.long .Lstackdata_l176
.long 0
.long 17
.long 2
.long 1
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
.long 0xffffffbc
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long lte_134_gc_data
.section .pcmap
.long .Ljoin_l156
.long .Lframe_l181
.section .pcmap_data
.Lframe_l181:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffa4
.long .Lstackdata_l176
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
.long 0xffffffbc
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
.Linitialize_continuations_l184:
.Lproc_body_start_l183:
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
	leal 148(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l201
.Ljoin_l202:
	jmp LifFalse_166
LifFalse_166:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl %eax,32(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 148(%esp), %ecx
	movl %eax,36(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 148(%esp), %eax
	movl %eax,40(%esp)
	movl $-144,%eax
	movl %eax,44(%esp)
	movl 40(%esp),%eax
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $54,%eax
	leal 148(%esp), %ecx
	movl %eax,52(%esp)
	movl $-140,%eax
	addl %eax,%ecx
	movl 52(%esp),%eax
	movl %eax,(%ecx)
	leal 148(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,56(%esp)
	call tig_bounds_check
.Ljoin_l191:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
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
	movl %eax,60(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 148(%esp), %edx
	movl %eax,64(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 148(%esp), %eax
	movl %eax,68(%esp)
	movl $-144,%eax
	movl %eax,72(%esp)
	movl 68(%esp),%eax
	movl %ecx,76(%esp)
	movl 72(%esp),%ecx
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
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Ljoin_l188:
	leal Cmm.global_area,%eax
	movl 76(%esp),%ecx
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
	movl (%eax),%eax
	movl 60(%esp),%ecx
	cmpl %eax,%ecx
	jg .Ljoin_l210
.Ljoin_l211:
	movl $0,%eax
	jmp .Ljoin_l209
.Ljoin_l210:
	movl $-1,%eax
	jmp .Ljoin_l209
.Ljoin_l209:
	jmp LifEnd_167
.Ljoin_l201:
	jmp LifTrue_165
LifTrue_165:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,80(%esp)
	leal 148(%esp), %eax
	movl %eax,84(%esp)
	movl $-12,%eax
	movl %eax,88(%esp)
	movl 84(%esp),%eax
	movl %ecx,92(%esp)
	movl 88(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
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
	movl $53,%eax
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
	movl %edx,56(%esp)
	call tig_bounds_check
.Ljoin_l200:
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
	movl $4,%ecx
	addl %ecx,%eax
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
	movl $53,%eax
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
.Ljoin_l197:
	leal Cmm.global_area,%eax
	movl 132(%esp),%ecx
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
	movl 116(%esp),%ecx
	movl %ecx,(%eax)
	call tig_compare_str
.Ljoin_l194:
	leal Cmm.global_area,%ecx
	movl 80(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l207
.Ljoin_l208:
	movl $0,%eax
	jmp .Ljoin_l206
.Ljoin_l207:
	movl $-1,%eax
	jmp .Ljoin_l206
.Ljoin_l206:
	jmp LifEnd_167
LifEnd_167:
	leal 148(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	leal 156(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l214:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Ljoin_l191
.long .Lframe_l215
.section .pcmap_data
.Lframe_l215:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffa4
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
.long 0xffffff8c
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
.long .Ljoin_l188
.long .Lframe_l216
.section .pcmap_data
.Lframe_l216:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffa4
.long .Lstackdata_l214
.long 0
.long 17
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffffa8
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
.long gt_135_gc_data
.section .pcmap
.long .Ljoin_l200
.long .Lframe_l217
.section .pcmap_data
.Lframe_l217:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffa4
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
.long 0xffffffbc
.long 0
.long 0
.long 0
.long 0xffffffc8
.long 0
.long 0
.long gt_135_gc_data
.section .pcmap
.long .Ljoin_l197
.long .Lframe_l218
.section .pcmap_data
.Lframe_l218:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffa4
.long .Lstackdata_l214
.long 0
.long 17
.long 2
.long 1
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
.long 0xffffffbc
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long gt_135_gc_data
.section .pcmap
.long .Ljoin_l194
.long .Lframe_l219
.section .pcmap_data
.Lframe_l219:
.long 0x8000000c
.long 0xffffff6c
.long 0xffffffa4
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
.long 0xffffffbc
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
.Linitialize_continuations_l222:
.Lproc_body_start_l221:
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
.Ljoin_l235:
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
.Ljoin_l232:
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
.Ljoin_l229:
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
.Ljoin_l226:
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
.Lstackdata_l241:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Ljoin_l235
.long .Lframe_l242
.section .pcmap_data
.Lframe_l242:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l241
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
.long .Ljoin_l232
.long .Lframe_l243
.section .pcmap_data
.Lframe_l243:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l241
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
.long .Ljoin_l229
.long .Lframe_l244
.section .pcmap_data
.Lframe_l244:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l241
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
.long .Ljoin_l226
.long .Lframe_l245
.section .pcmap_data
.Lframe_l245:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l241
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
.Linitialize_continuations_l248:
.Lproc_body_start_l247:
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
	jmp Lloop_start_198
Lloop_start_198:
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
	jl .Ljoin_l272
.Ljoin_l273:
	jmp Lloop_end_179
Lloop_end_179:
	leal -8(%esp), %esp
	leal 136(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 136(%esp), %ecx
	movl %ecx,36(%esp)
	movl $-16,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,44(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 136(%esp), %edx
	movl %ecx,48(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
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
	call exchange_169
.Ljoin_l252:
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
.Ljoin_l272:
	jmp Lloop_body_199
Lloop_body_199:
	jmp Lloop_start_185
Lloop_start_185:
	leal -8(%esp), %esp
	leal 136(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 136(%esp), %ecx
	movl %ecx,64(%esp)
	movl $-16,%ecx
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	movl %edx,44(%esp)
	movl 68(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 136(%esp), %edx
	movl %ecx,72(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	leal 136(%esp), %ecx
	movl %ecx,76(%esp)
	movl $-132,%ecx
	movl %ecx,80(%esp)
	movl 76(%esp),%ecx
	movl %edx,84(%esp)
	movl 80(%esp),%edx
	addl %edx,%ecx
	movl 84(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 136(%esp), %ecx
	movl $-136,%edx
	addl %edx,%ecx
	movl 72(%esp),%edx
	movl %edx,(%ecx)
	call lte_134
.Ljoin_l271:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l267
.Ljoin_l268:
	jmp LifFalse_183
LifFalse_183:
	movl $0,%eax
	jmp LifEnd_184
.Ljoin_l267:
	jmp LifTrue_182
LifTrue_182:
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
	jl .Ljoin_l278
.Ljoin_l279:
	movl $0,%eax
	jmp .Ljoin_l277
.Ljoin_l278:
	movl $-1,%eax
	jmp .Ljoin_l277
.Ljoin_l277:
	jmp LifEnd_184
LifEnd_184:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l265
.Ljoin_l266:
	jmp Lloop_end_180
Lloop_end_180:
	jmp Lloop_start_192
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
	movl %ecx,88(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	leal 136(%esp), %ecx
	movl %ecx,92(%esp)
	movl $-132,%ecx
	movl %ecx,96(%esp)
	movl 92(%esp),%ecx
	movl %edx,100(%esp)
	movl 96(%esp),%edx
	addl %edx,%ecx
	movl 100(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 136(%esp), %ecx
	movl $-136,%edx
	addl %edx,%ecx
	movl 88(%esp),%edx
	movl %edx,(%ecx)
	call gt_135
.Ljoin_l264:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l260
.Ljoin_l261:
	jmp LifFalse_190
LifFalse_190:
	movl $0,%eax
	jmp LifEnd_191
.Ljoin_l260:
	jmp LifTrue_189
LifTrue_189:
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
	jge .Ljoin_l281
.Ljoin_l282:
	movl $0,%eax
	jmp .Ljoin_l280
.Ljoin_l281:
	movl $-1,%eax
	jmp .Ljoin_l280
.Ljoin_l280:
	jmp LifEnd_191
LifEnd_191:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l258
.Ljoin_l259:
	jmp Lloop_end_187
Lloop_end_187:
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
	jl .Ljoin_l256
.Ljoin_l257:
	jmp LifFalse_196
LifFalse_196:
	movl $0,%eax
	jmp LifEnd_197
.Ljoin_l256:
	jmp LifTrue_195
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
.Ljoin_l255:
	jmp LifEnd_197
LifEnd_197:
	jmp .Ljoin_l284
.Ljoin_l284:
	movl 36(%esp),%edx
	jmp Lloop_start_198
.Ljoin_l258:
	jmp Lloop_body_193
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
.Ljoin_l265:
	jmp Lloop_body_186
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
	jmp .Ljoin_l283
.Ljoin_l283:
	movl 36(%esp),%edx
	jmp Lloop_start_185
.section .pcmap_data
.Lstackdata_l286:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Ljoin_l252
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
.long .Ljoin_l271
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
.long .Ljoin_l264
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
.long .Ljoin_l255
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
.Linitialize_continuations_l293:
.Lproc_body_start_l292:
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
	jl .Ljoin_l304
.Ljoin_l305:
	jmp LifFalse_203
LifFalse_203:
	movl $0,%eax
	movl %edx,32(%esp)
	jmp LifEnd_204
.Ljoin_l304:
	jmp LifTrue_202
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
.Ljoin_l303:
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
.Ljoin_l300:
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
.Ljoin_l297:
	jmp LifEnd_204
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
.long .Ljoin_l303
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
.long .Ljoin_l300
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
.long .Ljoin_l297
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
.Linitialize_continuations_l316:
.Lproc_body_start_l315:
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
.Ljoin_l320:
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l325:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l320
.long .Lframe_l326
.section .pcmap_data
.Lframe_l326:
.long 0x80000008
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l325
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
.Linitialize_continuations_l329:
.Lproc_body_start_l328:
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
	jg .Ljoin_l356
.Ljoin_l357:
	jmp Lalc_gc_54
.Ljoin_l356:
	jmp Lalc_gc_54
Lalc_gc_54:
	movl %ecx,12(%esp)
	call tig_call_gc
.Ljoin_l355:
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
	jmp Linit_start_51
Linit_start_51:
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl %eax,20(%esp)
	movl $12,%eax
	addl %eax,%edx
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jg .Ljoin_l351
.Ljoin_l352:
	jmp Lalc_gc_46
.Ljoin_l351:
	jmp Lalc_gc_46
Lalc_gc_46:
	movl %ecx,24(%esp)
	call tig_call_gc
.Ljoin_l350:
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
	leal 60(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	addl %edx,%eax
	cmpl %eax,%ecx
	jle .Ljoin_l346
.Ljoin_l347:
	jmp Linit_end_52
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
.Ljoin_l345:
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
.Ljoin_l342:
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
.Ljoin_l339:
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
.Ljoin_l336:
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
.Ljoin_l333:
	leal 60(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
	ret
.Ljoin_l346:
	jmp .Ljoin_l361
.Ljoin_l361:
	movl 20(%esp),%eax
	jmp Linit_start_51
.section .pcmap_data
.Lstackdata_l363:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Ljoin_l355
.long .Lframe_l364
.section .pcmap_data
.Lframe_l364:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l363
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
.long .Ljoin_l350
.long .Lframe_l365
.section .pcmap_data
.Lframe_l365:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l363
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
.long .Ljoin_l345
.long .Lframe_l366
.section .pcmap_data
.Lframe_l366:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l363
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
.long .Ljoin_l342
.long .Lframe_l367
.section .pcmap_data
.Lframe_l367:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l363
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
.long .Ljoin_l339
.long .Lframe_l368
.section .pcmap_data
.Lframe_l368:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l363
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
.long .Ljoin_l336
.long .Lframe_l369
.section .pcmap_data
.Lframe_l369:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l363
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
.long .Ljoin_l333
.long .Lframe_l370
.section .pcmap_data
.Lframe_l370:
.long 0x80000004
.long 0xffffffc4
.long 0xffffffd0
.long .Lstackdata_l363
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
