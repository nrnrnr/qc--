.globl tiger_main
.globl Cmm.global_area
.globl Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ:
Cmm.global_area:
.skip 4
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
	leal -124(%esp), %esp
	leal 124(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l12:
Lproc_body_start_l11:
	movl $-4,%ecx
	movl %eax,12(%esp)
	leal 124(%esp), %eax
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl %edx,16(%esp)
	movl $-4,%edx
	movl %ebx,20(%esp)
	leal 124(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	movl $0,%eax
	movl $-120,%ebx
	leal 124(%esp), %edx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl $15,%eax
	movl $-116,%edx
	leal 124(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,24(%esp)
	call tig_bounds_check
Ljoin_l73:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	movl $10,%eax
	movl $4,%ecx
	movl $8,%edx
	movl $-4,%ebx
	movl %ebp,28(%esp)
	leal 124(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-4,%edx
	leal 124(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	movl $1,%eax
	movl $-120,%ebx
	leal 124(%esp), %edx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl $16,%eax
	movl $-116,%edx
	leal 124(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,32(%esp)
	call tig_bounds_check
Ljoin_l70:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl $32,%eax
	movl $8,%ecx
	movl $8,%edx
	movl $-4,%ebx
	leal 124(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	movl $-1,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl $-4,%ebx
	leal 124(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %ecx,%ebx
	movl $-124,%ecx
	leal 124(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebx),%ecx
	movl %ecx,(%ebp)
	movl $2,%ecx
	movl $-120,%ebp
	leal 124(%esp), %ebx
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl $17,%ecx
	movl $-116,%ebx
	leal 124(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl %eax,36(%esp)
	movl %edx,40(%esp)
	call tig_bounds_check
Ljoin_l67:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl $8,%ecx
	movl $-4,%edx
	leal 124(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-4,%edx
	leal 124(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %eax,%edx
	movl $-124,%eax
	leal 124(%esp), %ebp
	addl %eax,%ebp
	movl (%edx),%eax
	movl %eax,(%ebp)
	movl $3,%eax
	movl $-120,%ebp
	leal 124(%esp), %edx
	addl %ebp,%edx
	movl %eax,(%edx)
	movl $18,%eax
	movl $-116,%edx
	leal 124(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl %ecx,44(%esp)
	call tig_bounds_check
Ljoin_l64:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	movl $567,%eax
	movl $16,%ecx
	movl $8,%edx
	movl $-4,%ebp
	leal 124(%esp), %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-4,%edx
	leal 124(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %eax,%edx
	movl $-124,%eax
	leal 124(%esp), %ebp
	addl %eax,%ebp
	movl (%edx),%eax
	movl %eax,(%ebp)
	movl $4,%eax
	movl $-120,%ebp
	leal 124(%esp), %edx
	addl %ebp,%edx
	movl %eax,(%edx)
	movl $19,%eax
	movl $-116,%edx
	leal 124(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl %ecx,48(%esp)
	call tig_bounds_check
Ljoin_l61:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	movl $3,%eax
	movl $20,%ecx
	movl $8,%edx
	movl $-4,%ebp
	leal 124(%esp), %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-4,%edx
	leal 124(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %eax,%edx
	movl $-124,%eax
	leal 124(%esp), %ebp
	addl %eax,%ebp
	movl (%edx),%eax
	movl %eax,(%ebp)
	movl $5,%eax
	movl $-120,%ebp
	leal 124(%esp), %edx
	addl %ebp,%edx
	movl %eax,(%edx)
	movl $20,%eax
	movl $-116,%edx
	leal 124(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl %ecx,52(%esp)
	call tig_bounds_check
Ljoin_l58:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl $18,%eax
	movl $24,%ecx
	movl $8,%edx
	movl $-4,%ebp
	leal 124(%esp), %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-4,%edx
	leal 124(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %eax,%edx
	movl $-124,%eax
	leal 124(%esp), %ebp
	addl %eax,%ebp
	movl (%edx),%eax
	movl %eax,(%ebp)
	movl $6,%eax
	movl $-120,%ebp
	leal 124(%esp), %edx
	addl %ebp,%edx
	movl %eax,(%edx)
	movl $21,%eax
	movl $-116,%edx
	leal 124(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl %ecx,56(%esp)
	call tig_bounds_check
Ljoin_l55:
	leal Cmm.global_area,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	movl $28,%ecx
	movl $8,%edx
	movl $-4,%ebp
	leal 124(%esp), %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	movl $-51,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl $-4,%ebp
	leal 124(%esp), %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ecx,%ebp
	movl $-124,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebp),%ecx
	movl %ecx,(%ebx)
	movl $7,%ecx
	movl $-120,%ebx
	leal 124(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $22,%ecx
	movl $-116,%ebp
	leal 124(%esp), %ebx
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl %eax,60(%esp)
	movl %edx,64(%esp)
	call tig_bounds_check
Ljoin_l52:
	leal Cmm.global_area,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	movl $32,%eax
	movl $8,%ecx
	movl $-4,%edx
	leal 124(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-4,%edx
	leal 124(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	movl $8,%eax
	movl $-120,%ebx
	leal 124(%esp), %edx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl $23,%eax
	movl $-116,%edx
	leal 124(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,68(%esp)
	call tig_bounds_check
Ljoin_l49:
	leal Cmm.global_area,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	movl $789,%eax
	movl $36,%ecx
	movl $8,%edx
	movl $-4,%ebx
	leal 124(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-4,%edx
	leal 124(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	movl $9,%eax
	movl $-120,%ebx
	leal 124(%esp), %edx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl $24,%eax
	movl $-116,%edx
	leal 124(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,72(%esp)
	call tig_bounds_check
Ljoin_l46:
	leal Cmm.global_area,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	movl $49,%eax
	movl $40,%ecx
	movl $8,%edx
	movl $-4,%ebx
	leal 124(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-4,%edx
	leal 124(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	movl $0,%eax
	movl $-120,%ebx
	leal 124(%esp), %edx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl $25,%eax
	movl $-116,%edx
	leal 124(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,76(%esp)
	call tig_bounds_check
Ljoin_l43:
	leal Cmm.global_area,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_80,%eax
	movl $4,%ecx
	movl $4,%edx
	movl $8,%ebx
	movl $-4,%ebp
	movl %esi,80(%esp)
	leal 124(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-4,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $1,%eax
	movl $-120,%ebx
	leal 124(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $26,%eax
	movl $-116,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,84(%esp)
	call tig_bounds_check
Ljoin_l40:
	leal Cmm.global_area,%eax
	movl 84(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_83,%eax
	movl $4,%ecx
	movl $8,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 124(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-4,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $2,%eax
	movl $-120,%ebx
	leal 124(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $27,%eax
	movl $-116,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,88(%esp)
	call tig_bounds_check
Ljoin_l37:
	leal Cmm.global_area,%eax
	movl 88(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_86,%eax
	movl $4,%ecx
	movl $12,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 124(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-4,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $3,%eax
	movl $-120,%ebx
	leal 124(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $28,%eax
	movl $-116,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,92(%esp)
	call tig_bounds_check
Ljoin_l34:
	leal Cmm.global_area,%eax
	movl 92(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_89,%eax
	movl $4,%ecx
	movl $16,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 124(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-4,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-120,%ebx
	leal 124(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $29,%eax
	movl $-116,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,96(%esp)
	call tig_bounds_check
Ljoin_l31:
	leal Cmm.global_area,%eax
	movl 96(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_92,%eax
	movl $4,%ecx
	movl $20,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 124(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-4,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $5,%eax
	movl $-120,%ebx
	leal 124(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $30,%eax
	movl $-116,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,100(%esp)
	call tig_bounds_check
Ljoin_l28:
	leal Cmm.global_area,%eax
	movl 100(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_95,%eax
	movl $4,%ecx
	movl $24,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 124(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-4,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $6,%eax
	movl $-120,%ebx
	leal 124(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $31,%eax
	movl $-116,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,104(%esp)
	call tig_bounds_check
Ljoin_l25:
	leal Cmm.global_area,%eax
	movl 104(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_98,%eax
	movl $4,%ecx
	movl $28,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 124(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-4,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $7,%eax
	movl $-120,%ebx
	leal 124(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $32,%eax
	movl $-116,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,108(%esp)
	call tig_bounds_check
Ljoin_l22:
	leal Cmm.global_area,%eax
	movl 108(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_101,%eax
	movl $4,%ecx
	movl $32,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 124(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-4,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $8,%eax
	movl $-120,%ebx
	leal 124(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $33,%eax
	movl $-116,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,112(%esp)
	call tig_bounds_check
Ljoin_l19:
	leal Cmm.global_area,%eax
	movl 112(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_104,%eax
	movl $4,%ecx
	movl $36,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 124(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-4,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-124,%eax
	leal 124(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $9,%eax
	movl $-120,%ebx
	leal 124(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $34,%eax
	movl $-116,%ecx
	leal 124(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,116(%esp)
	call tig_bounds_check
Ljoin_l16:
	leal Cmm.global_area,%eax
	movl 116(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_107,%eax
	movl $4,%ecx
	movl $40,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 124(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $0,%edx
	leal 124(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	movl 28(%esp),%ebp
	movl 80(%esp),%esi
	leal 124(%esp), %esp
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
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0xffffff9c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l70
.long Lframe_l81
.section .pcmap_data
Lframe_l81:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l67
.long Lframe_l82
.section .pcmap_data
Lframe_l82:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0xffffffac
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l64
.long Lframe_l83
.section .pcmap_data
Lframe_l83:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l61
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l58
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l55
.long Lframe_l86
.section .pcmap_data
Lframe_l86:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0xffffffbc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l52
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0
.long 0
.long 0xffffffc0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l49
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l46
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l43
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l40
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l37
.long Lframe_l92
.section .pcmap_data
Lframe_l92:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l34
.long Lframe_l93
.section .pcmap_data
Lframe_l93:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l31
.long Lframe_l94
.section .pcmap_data
Lframe_l94:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l28
.long Lframe_l95
.section .pcmap_data
Lframe_l95:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l25
.long Lframe_l96
.section .pcmap_data
Lframe_l96:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l22
.long Lframe_l97
.section .pcmap_data
Lframe_l97:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
.long 0xfffffff0
.long 0
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l19
.long Lframe_l98
.section .pcmap_data
Lframe_l98:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l16
.long Lframe_l99
.section .pcmap_data
Lframe_l99:
.long 0xffffff84
.long 0x80000004
.long 0xffffff94
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -68(%esp), %esp
	movl $4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 68(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l102:
Lproc_body_start_l101:
	movl %eax,12(%esp)
	movl $-12,%eax
	movl %ecx,16(%esp)
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-12,%ecx
	movl %edx,20(%esp)
	leal 68(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 16(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	movl $-12,%ecx
	movl %ebx,24(%esp)
	leal 68(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	movl %edx,28(%esp)
	call tig_print
Ljoin_l129:
	leal Cmm.global_area,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_113,%eax
	movl $-68,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,32(%esp)
	call tig_print
Ljoin_l126:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_131
Lloop_start_131:
	movl $8,%eax
	movl $-12,%ebx
	leal 68(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%ecx
	movl $4,%ebx
	movl $-12,%edx
	movl %ebp,36(%esp)
	leal 68(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	subl %ecx,%ebx
	cmpl %ebx,%eax
	jle Ljoin_l122
Ljoin_l123:
	jmp Lloop_end_116
Lloop_end_116:
	movl $0,%eax
	movl $4,%ebx
	leal 68(%esp), %ecx
	addl %ebx,%ecx
	movl 20(%esp),%ebx
	movl %ebx,(%ecx)
	movl 24(%esp),%ebx
	movl 36(%esp),%ebp
	leal 72(%esp), %esp
	ret
Ljoin_l122:
	jmp Lloop_body_132
Lloop_body_132:
	leal Cmm.global_area,%ebx
	movl (%ebx),%ebp
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $8,%ecx
	movl $-12,%edx
	movl %esi,40(%esp)
	leal 68(%esp), %esi
	addl %edx,%esi
	addl %ecx,%esi
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%esi),%ecx
	movl %ecx,(%edx)
	movl $40,%ecx
	movl $-60,%edx
	leal 68(%esp), %esi
	addl %edx,%esi
	movl %ecx,(%esi)
	movl $-68,%ecx
	leal 68(%esp), %esi
	addl %ecx,%esi
	movl %ebx,(%esi)
	movl %eax,44(%esp)
	call tig_bounds_check
Ljoin_l121:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $1,%ecx
	movl $8,%edx
	movl $-12,%ebx
	leal 68(%esp), %esi
	addl %ebx,%esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ecx,%edx
	imull %eax,%edx
	movl $8,%eax
	movl $-12,%ecx
	leal 68(%esp), %esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_printi
Ljoin_l118:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_121,%eax
	movl $-68,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l115:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-12,%edx
	leal 68(%esp), %esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	movl $-12,%esi
	leal 68(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl $-64,%edx
	leal 68(%esp), %esi
	addl %edx,%esi
	movl (%ebx),%edx
	movl %edx,(%esi)
	movl $42,%edx
	movl $-60,%esi
	leal 68(%esp), %ebx
	addl %esi,%ebx
	movl %edx,(%ebx)
	movl $-68,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,48(%esp)
	call tig_bounds_check
Ljoin_l112:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $4,%ecx
	movl $1,%edx
	movl $8,%ebx
	movl $-12,%esi
	movl %edi,52(%esp)
	leal 68(%esp), %edi
	addl %esi,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	addl %edx,%ebx
	imull %ecx,%ebx
	movl $8,%ecx
	movl $-12,%edx
	leal 68(%esp), %edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	call tig_print
Ljoin_l109:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_128,%eax
	movl $-68,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l106:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	movl $1,%eax
	movl $8,%ebp
	movl $-12,%ebx
	leal 68(%esp), %ecx
	addl %ebx,%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl $8,%eax
	movl $-12,%ecx
	leal 68(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl %ebp,(%ebx)
	jmp Ljoin_l133
Ljoin_l133:
	movl 52(%esp),%edi
	movl 40(%esp),%esi
	movl 36(%esp),%ebp
	jmp Lloop_start_131
.section .pcmap_data
Lstackdata_l136:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l129
.long Lframe_l137
.section .pcmap_data
Lframe_l137:
.long 0xffffffbc
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0xffffffd8
.long 0x80000000
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l126
.long Lframe_l138
.section .pcmap_data
Lframe_l138:
.long 0xffffffbc
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0xffffffdc
.long 0
.long 0
.long 0x80000000
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l121
.long Lframe_l139
.section .pcmap_data
Lframe_l139:
.long 0xffffffbc
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
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
.long 0x40000009
.long 0
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l118
.long Lframe_l140
.section .pcmap_data
Lframe_l140:
.long 0xffffffbc
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
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
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l115
.long Lframe_l141
.section .pcmap_data
Lframe_l141:
.long 0xffffffbc
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
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
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l112
.long Lframe_l142
.section .pcmap_data
Lframe_l142:
.long 0xffffffbc
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
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
.long 0x80000000
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l109
.long Lframe_l143
.section .pcmap_data
Lframe_l143:
.long 0xffffffbc
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xfffffff0
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
.long 0x80000000
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l106
.long Lframe_l144
.section .pcmap_data
Lframe_l144:
.long 0xffffffbc
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xfffffff0
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
.long 0x80000000
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
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,12(%esp)
	leal 76(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 76(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l147:
Lproc_body_start_l146:
	movl %ecx,16(%esp)
	movl $-12,%ecx
	movl %edx,20(%esp)
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,24(%esp)
	leal 76(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 20(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l164
Ljoin_l165:
	jmp LifFalse_151
LifFalse_151:
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-12,%ecx
	movl %ebx,28(%esp)
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-12,%ecx
	movl %ebp,32(%esp)
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	addl %ebx,%ebp
	movl $-72,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl (%ebp),%ebx
	movl %ebx,(%ecx)
	movl $50,%ecx
	movl $-68,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $-76,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l154:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $1,%ecx
	movl $4,%edx
	movl $-12,%ebp
	leal 76(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	imull %eax,%edx
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ebx
	movl $8,%edx
	movl $-12,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl (%ecx),%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $8,%ebp
	movl $-12,%ecx
	movl %esi,40(%esp)
	leal 76(%esp), %esi
	addl %ecx,%esi
	addl %ebp,%esi
	movl $-72,%ebp
	leal 76(%esp), %ecx
	addl %ebp,%ecx
	movl (%esi),%ebp
	movl %ebp,(%ecx)
	movl $50,%ecx
	movl $-68,%ebp
	leal 76(%esp), %esi
	addl %ebp,%esi
	movl %ecx,(%esi)
	movl $-76,%ecx
	leal 76(%esp), %esi
	addl %ecx,%esi
	movl %edx,(%esi)
	movl %eax,44(%esp)
	call tig_bounds_check
Ljoin_l151:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	movl $4,%eax
	movl $1,%ebx
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %esi
	addl %edx,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	movl $8,%eax
	movl $-12,%ebx
	leal 76(%esp), %esi
	addl %ebx,%esi
	movl (%esi),%ebx
	movl (%ebx),%esi
	addl %eax,%esi
	movl (%esi),%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl 44(%esp),%ecx
	cmpl %eax,%ecx
	jle Ljoin_l170
Ljoin_l171:
	movl $0,%eax
	jmp Ljoin_l169
Ljoin_l170:
	movl $-1,%eax
	jmp Ljoin_l169
Ljoin_l169:
	jmp LifEnd_152
Ljoin_l164:
	jmp LifTrue_150
LifTrue_150:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl %esi,40(%esp)
	movl $-12,%esi
	movl %ebx,28(%esp)
	leal 76(%esp), %ebx
	addl %esi,%ebx
	movl (%ebx),%esi
	movl (%esi),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-12,%esi
	movl %ebp,32(%esp)
	leal 76(%esp), %ebp
	addl %esi,%ebp
	addl %ebx,%ebp
	movl $-72,%ebx
	leal 76(%esp), %esi
	addl %ebx,%esi
	movl (%ebp),%ebx
	movl %ebx,(%esi)
	movl $49,%ebx
	movl $-68,%esi
	leal 76(%esp), %ebp
	addl %esi,%ebp
	movl %ebx,(%ebp)
	movl $-76,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	movl %ecx,48(%esp)
	movl %edx,52(%esp)
	call tig_bounds_check
Ljoin_l163:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $4,%ecx
	movl $1,%edx
	movl $4,%ebp
	movl $-12,%ebx
	leal 76(%esp), %esi
	addl %ebx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %esi
	addl %edx,%esi
	movl (%esi),%edx
	movl (%edx),%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	leal Cmm.global_area,%ebp
	movl (%ebp),%ecx
	movl $8,%ebp
	movl $-12,%esi
	leal 76(%esp), %edx
	addl %esi,%edx
	movl (%edx),%esi
	movl (%esi),%edx
	addl %ebp,%edx
	movl (%edx),%ebp
	movl $8,%edx
	movl $-12,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl $-72,%edx
	leal 76(%esp), %esi
	addl %edx,%esi
	movl (%ebx),%edx
	movl %edx,(%esi)
	movl $49,%edx
	movl $-68,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	movl %edx,(%ebx)
	movl $-76,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl %ebp,(%ebx)
	movl %eax,56(%esp)
	movl %ecx,60(%esp)
	call tig_bounds_check
Ljoin_l160:
	leal Cmm.global_area,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $4,%ecx
	movl $1,%edx
	movl $8,%ebx
	movl $-12,%ebp
	leal 76(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl (%esi),%ebx
	addl %edx,%ebx
	imull %ecx,%ebx
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %esi
	addl %edx,%esi
	movl (%esi),%edx
	movl (%edx),%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl $-72,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	movl $-76,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl 56(%esp),%eax
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l157:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l173
Ljoin_l174:
	movl $0,%eax
	jmp Ljoin_l172
Ljoin_l173:
	movl $-1,%eax
	jmp Ljoin_l172
Ljoin_l172:
	jmp LifEnd_152
LifEnd_152:
	movl $8,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%ebx
	movl 32(%esp),%ebp
	movl 40(%esp),%esi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l177:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l154
.long Lframe_l178
.section .pcmap_data
Lframe_l178:
.long 0xffffffb4
.long 0x8000000c
.long 0xffffffcc
.long Lstackdata_l177
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long lte_134_gc_data
.section .pcmap
.long Ljoin_l151
.long Lframe_l179
.section .pcmap_data
Lframe_l179:
.long 0xffffffb4
.long 0x8000000c
.long 0xffffffcc
.long Lstackdata_l177
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
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
.long 0x80000000
.long 0
.long lte_134_gc_data
.section .pcmap
.long Ljoin_l163
.long Lframe_l180
.section .pcmap_data
Lframe_l180:
.long 0xffffffb4
.long 0x8000000c
.long 0xffffffcc
.long Lstackdata_l177
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
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
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0xffffffe8
.long 0x80000000
.long 0
.long lte_134_gc_data
.section .pcmap
.long Ljoin_l160
.long Lframe_l181
.section .pcmap_data
Lframe_l181:
.long 0xffffffb4
.long 0x8000000c
.long 0xffffffcc
.long Lstackdata_l177
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0x4000000b
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
.long 0xffffffe4
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0x80000000
.long 0
.long lte_134_gc_data
.section .pcmap
.long Ljoin_l157
.long Lframe_l182
.section .pcmap_data
Lframe_l182:
.long 0xffffffb4
.long 0x8000000c
.long 0xffffffcc
.long Lstackdata_l177
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
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
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,12(%esp)
	leal 76(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 76(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l185:
Lproc_body_start_l184:
	movl %ecx,16(%esp)
	movl $-12,%ecx
	movl %edx,20(%esp)
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,24(%esp)
	leal 76(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 20(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l202
Ljoin_l203:
	jmp LifFalse_166
LifFalse_166:
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-12,%ecx
	movl %ebx,28(%esp)
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-12,%ecx
	movl %ebp,32(%esp)
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	addl %ebx,%ebp
	movl $-72,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl (%ebp),%ebx
	movl %ebx,(%ecx)
	movl $54,%ecx
	movl $-68,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $-76,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l192:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $1,%ecx
	movl $4,%edx
	movl $-12,%ebp
	leal 76(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	imull %eax,%edx
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ebx
	movl $8,%edx
	movl $-12,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl (%ecx),%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $8,%ebp
	movl $-12,%ecx
	movl %esi,40(%esp)
	leal 76(%esp), %esi
	addl %ecx,%esi
	addl %ebp,%esi
	movl $-72,%ebp
	leal 76(%esp), %ecx
	addl %ebp,%ecx
	movl (%esi),%ebp
	movl %ebp,(%ecx)
	movl $54,%ecx
	movl $-68,%ebp
	leal 76(%esp), %esi
	addl %ebp,%esi
	movl %ecx,(%esi)
	movl $-76,%ecx
	leal 76(%esp), %esi
	addl %ecx,%esi
	movl %edx,(%esi)
	movl %eax,44(%esp)
	call tig_bounds_check
Ljoin_l189:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	movl $4,%eax
	movl $1,%ebx
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %esi
	addl %edx,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	movl $8,%eax
	movl $-12,%ebx
	leal 76(%esp), %esi
	addl %ebx,%esi
	movl (%esi),%ebx
	movl (%ebx),%esi
	addl %eax,%esi
	movl (%esi),%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl 44(%esp),%ecx
	cmpl %eax,%ecx
	jg Ljoin_l208
Ljoin_l209:
	movl $0,%eax
	jmp Ljoin_l207
Ljoin_l208:
	movl $-1,%eax
	jmp Ljoin_l207
Ljoin_l207:
	jmp LifEnd_167
Ljoin_l202:
	jmp LifTrue_165
LifTrue_165:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl %esi,40(%esp)
	movl $-12,%esi
	movl %ebx,28(%esp)
	leal 76(%esp), %ebx
	addl %esi,%ebx
	movl (%ebx),%esi
	movl (%esi),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-12,%esi
	movl %ebp,32(%esp)
	leal 76(%esp), %ebp
	addl %esi,%ebp
	addl %ebx,%ebp
	movl $-72,%ebx
	leal 76(%esp), %esi
	addl %ebx,%esi
	movl (%ebp),%ebx
	movl %ebx,(%esi)
	movl $53,%ebx
	movl $-68,%esi
	leal 76(%esp), %ebp
	addl %esi,%ebp
	movl %ebx,(%ebp)
	movl $-76,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	movl %ecx,48(%esp)
	movl %edx,52(%esp)
	call tig_bounds_check
Ljoin_l201:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $4,%ecx
	movl $1,%edx
	movl $4,%ebp
	movl $-12,%ebx
	leal 76(%esp), %esi
	addl %ebx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %esi
	addl %edx,%esi
	movl (%esi),%edx
	movl (%edx),%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	leal Cmm.global_area,%ebp
	movl (%ebp),%ecx
	movl $8,%ebp
	movl $-12,%esi
	leal 76(%esp), %edx
	addl %esi,%edx
	movl (%edx),%esi
	movl (%esi),%edx
	addl %ebp,%edx
	movl (%edx),%ebp
	movl $8,%edx
	movl $-12,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl $-72,%edx
	leal 76(%esp), %esi
	addl %edx,%esi
	movl (%ebx),%edx
	movl %edx,(%esi)
	movl $53,%edx
	movl $-68,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	movl %edx,(%ebx)
	movl $-76,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl %ebp,(%ebx)
	movl %eax,56(%esp)
	movl %ecx,60(%esp)
	call tig_bounds_check
Ljoin_l198:
	leal Cmm.global_area,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $4,%ecx
	movl $1,%edx
	movl $8,%ebx
	movl $-12,%ebp
	leal 76(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl (%esi),%ebx
	addl %edx,%ebx
	imull %ecx,%ebx
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %esi
	addl %edx,%esi
	movl (%esi),%edx
	movl (%edx),%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl $-72,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	movl $-76,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl 56(%esp),%eax
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l195:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l211
Ljoin_l212:
	movl $0,%eax
	jmp Ljoin_l210
Ljoin_l211:
	movl $-1,%eax
	jmp Ljoin_l210
Ljoin_l210:
	jmp LifEnd_167
LifEnd_167:
	movl $8,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%ebx
	movl 32(%esp),%ebp
	movl 40(%esp),%esi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l215:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l192
.long Lframe_l216
.section .pcmap_data
Lframe_l216:
.long 0xffffffb4
.long 0x8000000c
.long 0xffffffcc
.long Lstackdata_l215
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long gt_135_gc_data
.section .pcmap
.long Ljoin_l189
.long Lframe_l217
.section .pcmap_data
Lframe_l217:
.long 0xffffffb4
.long 0x8000000c
.long 0xffffffcc
.long Lstackdata_l215
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
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
.long 0x80000000
.long 0
.long gt_135_gc_data
.section .pcmap
.long Ljoin_l201
.long Lframe_l218
.section .pcmap_data
Lframe_l218:
.long 0xffffffb4
.long 0x8000000c
.long 0xffffffcc
.long Lstackdata_l215
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
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
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0xffffffe8
.long 0x80000000
.long 0
.long gt_135_gc_data
.section .pcmap
.long Ljoin_l198
.long Lframe_l219
.section .pcmap_data
Lframe_l219:
.long 0xffffffb4
.long 0x8000000c
.long 0xffffffcc
.long Lstackdata_l215
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0x4000000b
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
.long 0xffffffe4
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0x80000000
.long 0
.long gt_135_gc_data
.section .pcmap
.long Ljoin_l195
.long Lframe_l220
.section .pcmap_data
Lframe_l220:
.long 0xffffffb4
.long 0x8000000c
.long 0xffffffcc
.long Lstackdata_l215
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
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
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -60(%esp), %esp
	movl $4,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,12(%esp)
	leal 60(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 60(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l223:
Lproc_body_start_l222:
	movl %ecx,16(%esp)
	movl $-16,%ecx
	movl %edx,20(%esp)
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-16,%edx
	movl %eax,24(%esp)
	leal 60(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-16,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 20(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-16,%ecx
	movl %ebx,28(%esp)
	leal 60(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-16,%ebx
	movl %ebp,32(%esp)
	leal 60(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl $-56,%ecx
	leal 60(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebp),%ecx
	movl %ecx,(%ebx)
	movl $60,%ecx
	movl $-52,%ebx
	leal 60(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $-60,%ecx
	leal 60(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l236:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $1,%ecx
	movl $4,%edx
	movl $-16,%ebp
	leal 60(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	imull %eax,%edx
	movl $8,%eax
	movl $-16,%ecx
	leal 60(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %edx,%eax
	movl $12,%edx
	movl $-16,%ecx
	leal 60(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl (%eax),%edx
	movl %edx,(%ebx)
	leal Cmm.global_area,%edx
	movl (%edx),%ebx
	movl $8,%edx
	movl $-16,%eax
	leal 60(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-16,%ecx
	leal 60(%esp), %ebp
	addl %ecx,%ebp
	addl %eax,%ebp
	movl $-56,%eax
	leal 60(%esp), %ecx
	addl %eax,%ecx
	movl (%ebp),%eax
	movl %eax,(%ecx)
	movl $61,%eax
	movl $-52,%ecx
	leal 60(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $-60,%eax
	leal 60(%esp), %ebp
	addl %eax,%ebp
	movl %edx,(%ebp)
	call tig_bounds_check
Ljoin_l233:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $8,%eax
	movl $-16,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-16,%edx
	leal 60(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl $-56,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%ebp),%ecx
	movl %ecx,(%edx)
	movl $61,%ecx
	movl $-52,%edx
	leal 60(%esp), %ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl $-60,%ecx
	leal 60(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	call tig_bounds_check
Ljoin_l230:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	movl $4,%eax
	movl $1,%ebx
	movl $8,%ecx
	movl $-16,%edx
	leal 60(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	movl $8,%eax
	movl $-16,%ebx
	leal 60(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl (%ebx),%ebp
	movl (%ebp),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %ecx,%eax
	movl $4,%ecx
	movl $1,%ebx
	movl $4,%ebp
	movl $-16,%edx
	movl %esi,40(%esp)
	leal 60(%esp), %esi
	addl %edx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-16,%ebx
	leal 60(%esp), %esi
	addl %ebx,%esi
	movl (%esi),%ebx
	movl (%ebx),%esi
	movl (%esi),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %ebp,%ecx
	movl (%eax),%ebp
	movl %ebp,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ebp
	movl $8,%ecx
	movl $-16,%eax
	leal 60(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl (%eax),%ebx
	movl (%ebx),%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-16,%ebx
	leal 60(%esp), %esi
	addl %ebx,%esi
	addl %eax,%esi
	movl $-56,%eax
	leal 60(%esp), %ebx
	addl %eax,%ebx
	movl (%esi),%eax
	movl %eax,(%ebx)
	movl $61,%eax
	movl $-52,%ebx
	leal 60(%esp), %esi
	addl %ebx,%esi
	movl %eax,(%esi)
	movl $-60,%eax
	leal 60(%esp), %esi
	addl %eax,%esi
	movl %ecx,(%esi)
	call tig_bounds_check
Ljoin_l227:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	movl $12,%eax
	movl $-16,%ebp
	leal 60(%esp), %ecx
	addl %ebp,%ecx
	addl %eax,%ecx
	movl $4,%eax
	movl $1,%ebp
	movl $8,%edx
	movl $-16,%esi
	leal 60(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ebp,%edx
	imull %eax,%edx
	movl $8,%eax
	movl $-16,%ebp
	leal 60(%esp), %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl (%ebp),%ebx
	movl (%ebx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	addl %edx,%eax
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $0,%eax
	movl $8,%edx
	leal 60(%esp), %ecx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%ebx
	movl 32(%esp),%ebp
	movl 40(%esp),%esi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l242:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l236
.long Lframe_l243
.section .pcmap_data
Lframe_l243:
.long 0xffffffc4
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l242
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0xffffffe8
.long 0x80000000
.long 0
.long exchange_169_gc_data
.section .pcmap
.long Ljoin_l233
.long Lframe_l244
.section .pcmap_data
Lframe_l244:
.long 0xffffffc4
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l242
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x40000007
.long 0
.long 0
.long 0x80000000
.long 0
.long exchange_169_gc_data
.section .pcmap
.long Ljoin_l230
.long Lframe_l245
.section .pcmap_data
Lframe_l245:
.long 0xffffffc4
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l242
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long exchange_169_gc_data
.section .pcmap
.long Ljoin_l227
.long Lframe_l246
.section .pcmap_data
Lframe_l246:
.long 0xffffffc4
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l242
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
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
	leal -40(%esp), %esp
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 40(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l249:
Lproc_body_start_l248:
	movl %ecx,4(%esp)
	movl $-16,%ecx
	movl %edx,8(%esp)
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-16,%edx
	movl %eax,12(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-16,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-16,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%edx
	movl %ebx,16(%esp)
	leal 40(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	jmp Lloop_start_198
Lloop_start_198:
	movl $4,%eax
	movl $-16,%ebx
	leal 40(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-16,%ebx
	leal 40(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %ecx,%eax
	jl Ljoin_l273
Ljoin_l274:
	jmp Lloop_end_179
Lloop_end_179:
	leal -8(%esp), %esp
	movl $-16,%eax
	leal 48(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $12,%ecx
	movl $-16,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $8,%ebx
	movl $-16,%edx
	movl %ebp,28(%esp)
	leal 48(%esp), %ebp
	addl %edx,%ebp
	addl %ebx,%ebp
	movl $-44,%ebx
	leal 48(%esp), %edx
	addl %ebx,%edx
	movl (%ebp),%ebx
	movl %ebx,(%edx)
	movl $-48,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call exchange_169
Ljoin_l253:
	movl $8,%eax
	movl $-16,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	movl 20(%esp),%ebp
	leal 48(%esp), %esp
	ret
Ljoin_l273:
	jmp Lloop_body_199
Lloop_body_199:
	jmp Lloop_start_185
Lloop_start_185:
	leal -8(%esp), %esp
	movl $-16,%ebx
	leal 48(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-16,%ebx
	leal 48(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $12,%edx
	movl $-16,%ebx
	movl %ebp,28(%esp)
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl $-44,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl (%ebp),%edx
	movl %edx,(%ebx)
	movl $-48,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call lte_134
Ljoin_l272:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l268
Ljoin_l269:
	jmp LifFalse_183
LifFalse_183:
	movl $0,%eax
	jmp LifEnd_184
Ljoin_l268:
	jmp LifTrue_182
LifTrue_182:
	movl $4,%ecx
	movl $-16,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $8,%ebx
	movl $-16,%edx
	leal 40(%esp), %ebp
	addl %edx,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	cmpl %ebx,%ecx
	jl Ljoin_l282
Ljoin_l283:
	movl $0,%eax
	jmp Ljoin_l281
Ljoin_l282:
	movl $-1,%eax
	jmp Ljoin_l281
Ljoin_l281:
	jmp LifEnd_184
LifEnd_184:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l266
Ljoin_l267:
	jmp Lloop_end_180
Lloop_end_180:
	jmp Lloop_start_192
Lloop_start_192:
	leal -8(%esp), %esp
	movl $-16,%eax
	leal 48(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-16,%ebx
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $12,%ebp
	movl $-16,%ebx
	leal 48(%esp), %edx
	addl %ebx,%edx
	addl %ebp,%edx
	movl $-44,%ebp
	leal 48(%esp), %ebx
	addl %ebp,%ebx
	movl (%edx),%ebp
	movl %ebp,(%ebx)
	movl $-48,%ebx
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	call gt_135
Ljoin_l265:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l261
Ljoin_l262:
	jmp LifFalse_190
LifFalse_190:
	movl $0,%eax
	jmp LifEnd_191
Ljoin_l261:
	jmp LifTrue_189
LifTrue_189:
	movl $8,%ecx
	movl $-16,%edx
	leal 40(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $4,%ebp
	movl $-16,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	cmpl %ebp,%ecx
	jge Ljoin_l279
Ljoin_l280:
	movl $0,%eax
	jmp Ljoin_l278
Ljoin_l279:
	movl $-1,%eax
	jmp Ljoin_l278
Ljoin_l278:
	jmp LifEnd_191
LifEnd_191:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l259
Ljoin_l260:
	jmp Lloop_end_187
Lloop_end_187:
	movl $4,%eax
	movl $-16,%ecx
	leal 40(%esp), %ebp
	addl %ecx,%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $8,%ebp
	movl $-16,%ecx
	leal 40(%esp), %ebx
	addl %ecx,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	cmpl %ebp,%eax
	jl Ljoin_l257
Ljoin_l258:
	jmp LifFalse_196
LifFalse_196:
	movl $0,%eax
	jmp LifEnd_197
Ljoin_l257:
	jmp LifTrue_195
LifTrue_195:
	leal -8(%esp), %esp
	movl $-16,%eax
	leal 48(%esp), %ebp
	addl %eax,%ebp
	movl %ebp,%eax
	movl $4,%ebp
	movl $-16,%ebx
	leal 48(%esp), %ecx
	addl %ebx,%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl $8,%ecx
	movl $-16,%ebx
	leal 48(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl $-44,%ecx
	leal 48(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl $-48,%ecx
	leal 48(%esp), %ebx
	addl %ecx,%ebx
	movl %ebp,(%ebx)
	call exchange_169
Ljoin_l256:
	jmp LifEnd_197
LifEnd_197:
	jmp Ljoin_l285
Ljoin_l285:
	movl 20(%esp),%ebp
	jmp Lloop_start_198
Ljoin_l259:
	jmp Lloop_body_193
Lloop_body_193:
	movl $1,%eax
	movl $8,%ecx
	movl $-16,%ebx
	leal 40(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	subl %eax,%ecx
	movl $8,%eax
	movl $-16,%ebp
	leal 40(%esp), %ebx
	addl %ebp,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	jmp Lloop_start_192
Ljoin_l266:
	jmp Lloop_body_186
Lloop_body_186:
	movl $1,%ebx
	movl $4,%ebp
	movl $-16,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %ebp,%edx
	movl (%edx),%ebp
	addl %ebx,%ebp
	movl $4,%ebx
	movl $-16,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl %ebp,(%ecx)
	jmp Ljoin_l284
Ljoin_l284:
	movl 20(%esp),%ebp
	jmp Lloop_start_185
.section .pcmap_data
Lstackdata_l287:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l253
.long Lframe_l288
.section .pcmap_data
Lframe_l288:
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe4
.long Lstackdata_l287
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x80000000
.long 0
.long partition_136_gc_data
.section .pcmap
.long Ljoin_l272
.long Lframe_l289
.section .pcmap_data
Lframe_l289:
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe4
.long Lstackdata_l287
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x80000000
.long 0
.long partition_136_gc_data
.section .pcmap
.long Ljoin_l265
.long Lframe_l290
.section .pcmap_data
Lframe_l290:
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe4
.long Lstackdata_l287
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x80000000
.long 0
.long partition_136_gc_data
.section .pcmap
.long Ljoin_l256
.long Lframe_l291
.section .pcmap_data
Lframe_l291:
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe4
.long Lstackdata_l287
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x80000000
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
	leal -44(%esp), %esp
	movl $4,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl %eax,(%esp)
	leal 44(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 44(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l294:
Lproc_body_start_l293:
	movl %edx,4(%esp)
	movl $-16,%edx
	movl %ecx,8(%esp)
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl $-16,%edx
	movl %eax,12(%esp)
	leal 44(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-16,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-16,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-16,%edx
	movl %ebx,16(%esp)
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	cmpl %ecx,%eax
	jl Ljoin_l305
Ljoin_l306:
	jmp LifFalse_203
LifFalse_203:
	movl $0,%eax
	movl %esi,24(%esp)
	movl %ebp,20(%esp)
	jmp LifEnd_204
Ljoin_l305:
	jmp LifTrue_202
LifTrue_202:
	leal -8(%esp), %esp
	movl $-16,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl $-16,%ebx
	movl %ebp,28(%esp)
	leal 52(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl $-48,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl (%ebp),%edx
	movl %edx,(%ebx)
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call partition_136
Ljoin_l304:
	movl $12,%ecx
	movl $-16,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal -8(%esp), %esp
	movl $-16,%eax
	leal 52(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-16,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $1,%edx
	movl $12,%ecx
	movl $-16,%ebp
	movl %esi,32(%esp)
	leal 52(%esp), %esi
	addl %ebp,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	subl %edx,%ecx
	movl $-48,%edx
	leal 52(%esp), %esi
	addl %edx,%esi
	movl %ecx,(%esi)
	movl $-52,%ecx
	leal 52(%esp), %esi
	addl %ecx,%esi
	movl %ebx,(%esi)
	call qsort_137
Ljoin_l301:
	leal -8(%esp), %esp
	movl $-16,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%ecx
	movl $12,%edx
	movl $-16,%ebx
	leal 52(%esp), %esi
	addl %ebx,%esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ecx,%edx
	movl $8,%ecx
	movl $-16,%esi
	leal 52(%esp), %ebx
	addl %esi,%ebx
	addl %ecx,%ebx
	movl $-48,%ecx
	leal 52(%esp), %esi
	addl %ecx,%esi
	movl (%ebx),%ecx
	movl %ecx,(%esi)
	movl $-52,%ecx
	leal 52(%esp), %esi
	addl %ecx,%esi
	movl %edx,(%esi)
	call qsort_137
Ljoin_l298:
	jmp LifEnd_204
LifEnd_204:
	movl $8,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	movl 20(%esp),%ebp
	movl 24(%esp),%esi
	leal 52(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l311:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l304
.long Lframe_l312
.section .pcmap_data
Lframe_l312:
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffe0
.long Lstackdata_l311
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long qsort_137_gc_data
.section .pcmap
.long Ljoin_l301
.long Lframe_l313
.section .pcmap_data
Lframe_l313:
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffe0
.long Lstackdata_l311
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long qsort_137_gc_data
.section .pcmap
.long Ljoin_l298
.long Lframe_l314
.section .pcmap_data
Lframe_l314:
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffe0
.long Lstackdata_l311
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	movl $4,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l317:
Lproc_body_start_l316:
	movl %eax,(%esp)
	movl $-8,%eax
	movl %ecx,4(%esp)
	leal 28(%esp), %ecx
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,8(%esp)
	leal 28(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal -8(%esp), %esp
	movl $-8,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	movl %edx,%eax
	movl $1,%edx
	movl $4,%ecx
	movl %ebx,20(%esp)
	movl $-8,%ebx
	movl %ebp,24(%esp)
	leal 36(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	subl %edx,%ecx
	movl $-32,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $0,%ecx
	movl $-36,%ebx
	leal 36(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call qsort_137
Ljoin_l321:
	movl $4,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebx
	movl 16(%esp),%ebp
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l326:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l321
.long Lframe_l327
.section .pcmap_data
Lframe_l327:
.long 0xffffffe4
.long 0x80000008
.long 0xffffffec
.long Lstackdata_l326
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l330:
Lproc_body_start_l329:
	movl $-12,%ecx
	movl %eax,(%esp)
	leal 40(%esp), %eax
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	movl $10,%eax
	movl $4,%ecx
	movl %edx,4(%esp)
	movl $-12,%edx
	movl %ebx,8(%esp)
	leal 40(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $2,%ebx
	movl $4,%ecx
	movl $-12,%edx
	movl %ebp,12(%esp)
	leal 40(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	addl %ecx,%ebx
	leal space_end,%ecx
	movl (%ecx),%eax
	cmpl %eax,%ebx
	jg Ljoin_l357
Ljoin_l358:
	jmp Lalc_55
Ljoin_l357:
	jmp Lalc_gc_54
Lalc_gc_54:
	call tig_call_gc
Ljoin_l356:
	jmp Lalc_55
Lalc_55:
	movl $4,%eax
	movl $2,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 40(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	imull %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl %edx,(%ecx)
	movl $4,%ecx
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	movl $4,%ecx
	movl $2,%edx
	movl $4,%ebp
	movl $-12,%ebx
	movl %esi,16(%esp)
	leal 40(%esp), %esi
	addl %ebx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	addl %ebp,%edx
	leal Cmm.global_area,%ebp
	movl %edx,(%ebp)
	movl $4,%edx
	movl $-12,%ebp
	leal 40(%esp), %ecx
	addl %ebp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $1,%edx
	jmp Linit_start_51
Linit_start_51:
	movl $12,%ecx
	leal Cmm.global_area,%ebp
	movl (%ebp),%esi
	addl %ecx,%esi
	leal space_end,%ecx
	movl (%ecx),%ebp
	cmpl %ebp,%esi
	jg Ljoin_l352
Ljoin_l353:
	jmp Lalc_47
Ljoin_l352:
	jmp Lalc_gc_46
Lalc_gc_46:
	movl %eax,20(%esp)
	movl %edx,24(%esp)
	call tig_call_gc
Ljoin_l351:
	movl 20(%esp),%eax
	movl 24(%esp),%edx
	jmp Lalc_47
Lalc_47:
	movl $12,%ecx
	leal Cmm.global_area,%ebp
	movl (%ebp),%esi
	movl %ecx,(%esi)
	movl $4,%ecx
	leal Cmm.global_area,%esi
	movl (%esi),%ebp
	addl %ecx,%ebp
	movl $12,%ecx
	leal Cmm.global_area,%esi
	movl (%esi),%ebx
	addl %ecx,%ebx
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	movl $0,%ecx
	movl %ecx,(%ebp)
	leal Lgbl_43,%ecx
	movl $4,%ebx
	movl %ebp,%esi
	addl %ebx,%esi
	movl %ecx,(%esi)
	movl $4,%ecx
	movl %edx,%esi
	imull %ecx,%esi
	movl %eax,%ecx
	addl %esi,%ecx
	movl %ebp,(%ecx)
	movl $1,%ecx
	addl %ecx,%edx
	movl $1,%ecx
	movl $4,%ebp
	movl $-12,%esi
	leal 40(%esp), %ebx
	addl %esi,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ecx,%ebp
	cmpl %ebp,%edx
	jle Ljoin_l347
Ljoin_l348:
	jmp Linit_end_52
Linit_end_52:
	movl $8,%ebp
	movl $-12,%ecx
	leal 40(%esp), %ebx
	addl %ecx,%ebx
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl $-12,%eax
	leal 40(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call initlist_56
Ljoin_l346:
	leal -4(%esp), %esp
	movl $-12,%eax
	leal 44(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $1,%ecx
	movl $-44,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call sort_58
Ljoin_l343:
	leal -4(%esp), %esp
	movl $-12,%eax
	leal 44(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	leal Lgbl_207,%ecx
	movl $-44,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call print_list_57
Ljoin_l340:
	leal -4(%esp), %esp
	movl $-12,%eax
	leal 44(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $0,%ecx
	movl $-44,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call sort_58
Ljoin_l337:
	leal -4(%esp), %esp
	movl $-12,%eax
	leal 44(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	leal Lgbl_208,%ecx
	movl $-44,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call print_list_57
Ljoin_l334:
	movl $0,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	movl 16(%esp),%esi
	leal 40(%esp), %esp
	ret
Ljoin_l347:
	jmp Linit_start_51
.section .pcmap_data
Lstackdata_l363:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l356
.long Lframe_l364
.section .pcmap_data
Lframe_l364:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l363
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l351
.long Lframe_l365
.section .pcmap_data
Lframe_l365:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l363
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff0
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l346
.long Lframe_l366
.section .pcmap_data
Lframe_l366:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l363
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l343
.long Lframe_l367
.section .pcmap_data
Lframe_l367:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l363
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l340
.long Lframe_l368
.section .pcmap_data
Lframe_l368:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l363
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l337
.long Lframe_l369
.section .pcmap_data
Lframe_l369:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l363
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l334
.long Lframe_l370
.section .pcmap_data
Lframe_l370:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l363
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 3
.long 1
.long 1
.long 0
.long 7
.long 1
.long 1
.long 0
.long 1
.long 1
.long 1
.long 0
