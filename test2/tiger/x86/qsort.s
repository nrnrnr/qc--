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
	leal -120(%esp), %esp
	leal 120(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l12:
Lproc_body_start_l11:
	leal 120(%esp), %ecx
	movl %eax,12(%esp)
	movl $-4,%eax
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 120(%esp), %eax
	movl %edx,16(%esp)
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	leal 120(%esp), %eax
	movl %ebx,20(%esp)
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%edx),%ebx
	movl %ebx,(%eax)
	movl $0,%eax
	leal 120(%esp), %ebx
	movl $-116,%edx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $15,%eax
	leal 120(%esp), %ebx
	movl $-112,%edx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,24(%esp)
	call tig_bounds_check
Ljoin_l73:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	movl $10,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $1,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $16,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,28(%esp)
	call tig_bounds_check
Ljoin_l70:
	leal Cmm.global_area,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	movl $32,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	movl $-1,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	leal 120(%esp), %edx
	movl $-4,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $8,%edx
	addl %edx,%ebx
	leal 120(%esp), %edx
	movl %ebp,32(%esp)
	movl $-120,%ebp
	addl %ebp,%edx
	movl (%ebx),%ebp
	movl %ebp,(%edx)
	movl $2,%edx
	leal 120(%esp), %ebp
	movl $-116,%ebx
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl $17,%edx
	leal 120(%esp), %ebp
	movl $-112,%ebx
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl %eax,36(%esp)
	movl %ecx,40(%esp)
	call tig_bounds_check
Ljoin_l67:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 36(%esp),%eax
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 120(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	leal 120(%esp), %eax
	movl $-120,%ebp
	addl %ebp,%eax
	movl (%edx),%ebp
	movl %ebp,(%eax)
	movl $3,%eax
	leal 120(%esp), %ebp
	movl $-116,%edx
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl $18,%eax
	leal 120(%esp), %ebp
	movl $-112,%edx
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl %ecx,44(%esp)
	call tig_bounds_check
Ljoin_l64:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	movl $567,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebp
	addl %ebp,%eax
	movl (%ecx),%ebp
	movl %ebp,(%eax)
	movl $4,%eax
	leal 120(%esp), %ebp
	movl $-116,%ecx
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $19,%eax
	leal 120(%esp), %ebp
	movl $-112,%ecx
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl %edx,48(%esp)
	call tig_bounds_check
Ljoin_l61:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	movl $3,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebp
	addl %ebp,%eax
	movl (%ecx),%ebp
	movl %ebp,(%eax)
	movl $5,%eax
	leal 120(%esp), %ebp
	movl $-116,%ecx
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $20,%eax
	leal 120(%esp), %ebp
	movl $-112,%ecx
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl %edx,52(%esp)
	call tig_bounds_check
Ljoin_l58:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl $18,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebp
	addl %ebp,%eax
	movl (%ecx),%ebp
	movl %ebp,(%eax)
	movl $6,%eax
	leal 120(%esp), %ebp
	movl $-116,%ecx
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $21,%eax
	leal 120(%esp), %ebp
	movl $-112,%ecx
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl %edx,56(%esp)
	call tig_bounds_check
Ljoin_l55:
	leal Cmm.global_area,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $28,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	movl $-51,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	leal 120(%esp), %edx
	movl $-4,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	movl $8,%edx
	addl %edx,%ebp
	leal 120(%esp), %edx
	movl $-120,%ebx
	addl %ebx,%edx
	movl (%ebp),%ebx
	movl %ebx,(%edx)
	movl $7,%edx
	leal 120(%esp), %ebx
	movl $-116,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl $22,%edx
	leal 120(%esp), %ebx
	movl $-112,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl %eax,60(%esp)
	movl %ecx,64(%esp)
	call tig_bounds_check
Ljoin_l52:
	leal Cmm.global_area,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $32,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 60(%esp),%eax
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 120(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%edx),%ebx
	movl %ebx,(%eax)
	movl $8,%eax
	leal 120(%esp), %ebx
	movl $-116,%edx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $23,%eax
	leal 120(%esp), %ebx
	movl $-112,%edx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,68(%esp)
	call tig_bounds_check
Ljoin_l49:
	leal Cmm.global_area,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	movl $789,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $36,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $9,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $24,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,72(%esp)
	call tig_bounds_check
Ljoin_l46:
	leal Cmm.global_area,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	movl $49,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $40,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $0,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $25,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,76(%esp)
	call tig_bounds_check
Ljoin_l43:
	leal Cmm.global_area,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_80,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $1,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $26,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,80(%esp)
	call tig_bounds_check
Ljoin_l40:
	leal Cmm.global_area,%eax
	movl 80(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_83,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $2,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $27,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,84(%esp)
	call tig_bounds_check
Ljoin_l37:
	leal Cmm.global_area,%eax
	movl 84(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_86,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $3,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $28,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,88(%esp)
	call tig_bounds_check
Ljoin_l34:
	leal Cmm.global_area,%eax
	movl 88(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_89,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $4,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $29,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,92(%esp)
	call tig_bounds_check
Ljoin_l31:
	leal Cmm.global_area,%eax
	movl 92(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_92,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $5,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $30,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,96(%esp)
	call tig_bounds_check
Ljoin_l28:
	leal Cmm.global_area,%eax
	movl 96(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_95,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $6,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $31,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,100(%esp)
	call tig_bounds_check
Ljoin_l25:
	leal Cmm.global_area,%eax
	movl 100(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_98,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $28,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $7,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $32,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,104(%esp)
	call tig_bounds_check
Ljoin_l22:
	leal Cmm.global_area,%eax
	movl 104(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_101,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $32,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $8,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $33,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,108(%esp)
	call tig_bounds_check
Ljoin_l19:
	leal Cmm.global_area,%eax
	movl 108(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_104,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $36,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 120(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 120(%esp), %eax
	movl $-120,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $9,%eax
	leal 120(%esp), %ebx
	movl $-116,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $34,%eax
	leal 120(%esp), %ebx
	movl $-112,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,112(%esp)
	call tig_bounds_check
Ljoin_l16:
	leal Cmm.global_area,%eax
	movl 112(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_107,%eax
	leal 120(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $40,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 120(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	movl 32(%esp),%ebp
	leal 120(%esp), %esp
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
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
.long 0xffffffa0
.long 0
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0xffffffb0
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l64
.long Lframe_l83
.section .pcmap_data
Lframe_l83:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l61
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l58
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l55
.long Lframe_l86
.section .pcmap_data
Lframe_l86:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0
.long 0
.long 0
.long 0
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l49
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l46
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l43
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0x80000000
.long 0
.long initlist_56_gc_data
.section .pcmap
.long Ljoin_l40
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0x4000000a
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0x4000000a
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0x4000000a
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l79
.long 0x80000008
.long 0x8000002c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa8
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
	leal -80(%esp), %esp
	leal 80(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 80(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l102:
Lproc_body_start_l101:
	movl %eax,12(%esp)
	leal 80(%esp), %eax
	movl %edx,16(%esp)
	movl $-12,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal 80(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 80(%esp), %eax
	movl %ecx,20(%esp)
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 80(%esp), %ecx
	movl %ebx,24(%esp)
	movl $-80,%ebx
	addl %ebx,%ecx
	movl (%eax),%ebx
	movl %ebx,(%ecx)
	movl %edx,28(%esp)
	call tig_print
Ljoin_l129:
	leal Cmm.global_area,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_113,%eax
	leal 80(%esp), %edx
	movl $-80,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %ecx,32(%esp)
	call tig_print
Ljoin_l126:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 80(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_131
Lloop_start_131:
	leal 80(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 80(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	subl %edx,%eax
	cmpl %eax,%ecx
	jle Ljoin_l122
Ljoin_l123:
	jmp Lloop_end_116
Lloop_end_116:
	movl $0,%eax
	leal 80(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%ebx
	leal 84(%esp), %esp
	ret
Ljoin_l122:
	jmp Lloop_body_132
Lloop_body_132:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	leal Cmm.global_area,%ebx
	movl (%ebx),%ecx
	leal 80(%esp), %ebx
	movl $-12,%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	leal 80(%esp), %edx
	movl %ebp,36(%esp)
	movl $-12,%ebp
	addl %ebp,%edx
	movl $8,%ebp
	addl %ebp,%edx
	leal 80(%esp), %ebp
	movl %esi,40(%esp)
	movl $-76,%esi
	addl %esi,%ebp
	movl (%edx),%esi
	movl %esi,(%ebp)
	movl $40,%ebp
	leal 80(%esp), %esi
	movl $-72,%edx
	addl %edx,%esi
	movl %ebp,(%esi)
	leal 80(%esp), %ebp
	movl $-80,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	movl %eax,44(%esp)
	movl %ecx,48(%esp)
	call tig_bounds_check
Ljoin_l121:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 80(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	imull %ecx,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 80(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	call tig_printi
Ljoin_l118:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_121,%eax
	leal 80(%esp), %edx
	movl $-80,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %ecx,52(%esp)
	call tig_print
Ljoin_l115:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 80(%esp), %eax
	movl $-12,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $8,%eax
	addl %eax,%ebx
	movl (%ebx),%eax
	leal 80(%esp), %ebx
	movl $-12,%ebp
	addl %ebp,%ebx
	movl $8,%ebp
	addl %ebp,%ebx
	leal 80(%esp), %ebp
	movl $-76,%esi
	addl %esi,%ebp
	movl (%ebx),%esi
	movl %esi,(%ebp)
	movl $42,%ebp
	leal 80(%esp), %esi
	movl $-72,%ebx
	addl %ebx,%esi
	movl %ebp,(%esi)
	leal 80(%esp), %ebp
	movl $-80,%esi
	addl %esi,%ebp
	movl %eax,(%ebp)
	movl %ecx,56(%esp)
	movl %edx,60(%esp)
	call tig_bounds_check
Ljoin_l112:
	leal Cmm.global_area,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 80(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	imull %ecx,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	leal 80(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	call tig_print
Ljoin_l109:
	leal Cmm.global_area,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_128,%eax
	leal 80(%esp), %edx
	movl $-80,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	movl %ecx,64(%esp)
	call tig_print
Ljoin_l106:
	leal Cmm.global_area,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 80(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Ljoin_l133
Ljoin_l133:
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
.long 0xffffffb0
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0xffffffcc
.long 0x80000000
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l126
.long Lframe_l138
.section .pcmap_data
Lframe_l138:
.long 0xffffffb0
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0xffffffd0
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
.long 0xffffffb0
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
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
.long 0xffffffdc
.long 0
.long 0xffffffe0
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
.long 0xffffffb0
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
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
.long 0xffffffdc
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
.long 0xffffffb0
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
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
.long 0xffffffe4
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
.long 0xffffffb0
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe8
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
.long 0xffffffb0
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
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
.long 0x80000000
.long 0
.long print_list_57_gc_data
.section .pcmap
.long Ljoin_l106
.long Lframe_l144
.section .pcmap_data
Lframe_l144:
.long 0xffffffb0
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l136
.long 0x80000008
.long 0x80000013
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
.long 0x4000000b
.long 0x4000000b
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
	leal -84(%esp), %esp
	leal 84(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 84(%esp), %ecx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 84(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l147:
Lproc_body_start_l146:
	movl %edx,16(%esp)
	leal 84(%esp), %edx
	movl %eax,20(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 20(%esp),%edx
	movl %edx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
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
	leal 84(%esp), %eax
	movl %ecx,24(%esp)
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl %ebx,28(%esp)
	movl $-12,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	leal 84(%esp), %ebx
	movl %ebp,32(%esp)
	movl $-80,%ebp
	addl %ebp,%ebx
	movl (%eax),%ebp
	movl %ebp,(%ebx)
	movl $50,%ebx
	leal 84(%esp), %ebp
	movl $-76,%eax
	addl %eax,%ebp
	movl %ebx,(%ebp)
	leal 84(%esp), %ebx
	movl $-84,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l154:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	leal 84(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl (%ebx),%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	leal 84(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl $8,%ebp
	addl %ebp,%edx
	leal 84(%esp), %ebp
	movl %esi,40(%esp)
	movl $-80,%esi
	addl %esi,%ebp
	movl (%edx),%esi
	movl %esi,(%ebp)
	movl $50,%ebp
	leal 84(%esp), %esi
	movl $-76,%edx
	addl %edx,%esi
	movl %ebp,(%esi)
	leal 84(%esp), %ebp
	movl $-84,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	movl %ecx,44(%esp)
	movl %eax,48(%esp)
	call tig_bounds_check
Ljoin_l151:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	movl 44(%esp),%edx
	cmpl %ecx,%edx
	jle Ljoin_l170
Ljoin_l171:
	movl $0,%eax
	jmp Ljoin_l169
Ljoin_l170:
	movl $-1,%eax
	jmp Ljoin_l169
Ljoin_l169:
	movl %edi,52(%esp)
	jmp LifEnd_152
Ljoin_l164:
	jmp LifTrue_150
LifTrue_150:
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %ebx,28(%esp)
	leal 84(%esp), %ebx
	movl %ebp,32(%esp)
	movl $-12,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl (%ebp),%ebx
	movl $8,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	leal 84(%esp), %ebx
	movl %esi,40(%esp)
	movl $-12,%esi
	addl %esi,%ebx
	movl $4,%esi
	addl %esi,%ebx
	leal 84(%esp), %esi
	movl %edi,52(%esp)
	movl $-80,%edi
	addl %edi,%esi
	movl (%ebx),%edi
	movl %edi,(%esi)
	movl $49,%esi
	leal 84(%esp), %edi
	movl $-76,%ebx
	addl %ebx,%edi
	movl %esi,(%edi)
	leal 84(%esp), %esi
	movl $-84,%edi
	addl %edi,%esi
	movl %ebp,(%esi)
	movl %ecx,24(%esp)
	movl %edx,56(%esp)
	movl %eax,60(%esp)
	call tig_bounds_check
Ljoin_l163:
	leal Cmm.global_area,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	leal 84(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	movl (%ebp),%edx
	movl $8,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	leal 84(%esp), %edx
	movl $-12,%esi
	addl %esi,%edx
	movl $8,%esi
	addl %esi,%edx
	leal 84(%esp), %esi
	movl $-80,%edi
	addl %edi,%esi
	movl (%edx),%edi
	movl %edi,(%esi)
	movl $49,%esi
	leal 84(%esp), %edi
	movl $-76,%edx
	addl %edx,%edi
	movl %esi,(%edi)
	leal 84(%esp), %esi
	movl $-84,%edi
	addl %edi,%esi
	movl %ebp,(%esi)
	movl %ecx,64(%esp)
	movl %eax,68(%esp)
	call tig_bounds_check
Ljoin_l160:
	leal Cmm.global_area,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 84(%esp), %ecx
	movl $-80,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal 84(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	call tig_compare_str
Ljoin_l157:
	leal Cmm.global_area,%ecx
	movl 56(%esp),%edx
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
	leal 84(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%ebx
	movl 32(%esp),%ebp
	movl 40(%esp),%esi
	movl 52(%esp),%edi
	leal 92(%esp), %esp
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
.long 0xffffffac
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l177
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
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
.long 0xffffffd0
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
.long 0xffffffac
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l177
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd8
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
.long 0x80000000
.long 0
.long lte_134_gc_data
.section .pcmap
.long Ljoin_l163
.long Lframe_l180
.section .pcmap_data
Lframe_l180:
.long 0xffffffac
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l177
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
.long 0xffffffac
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l177
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0xffffffe0
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
.long 0xffffffac
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l177
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
	leal -84(%esp), %esp
	leal 84(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 84(%esp), %ecx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 84(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l185:
Lproc_body_start_l184:
	movl %edx,16(%esp)
	leal 84(%esp), %edx
	movl %eax,20(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 20(%esp),%edx
	movl %edx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
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
	leal 84(%esp), %eax
	movl %ecx,24(%esp)
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl %ebx,28(%esp)
	movl $-12,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	leal 84(%esp), %ebx
	movl %ebp,32(%esp)
	movl $-80,%ebp
	addl %ebp,%ebx
	movl (%eax),%ebp
	movl %ebp,(%ebx)
	movl $54,%ebx
	leal 84(%esp), %ebp
	movl $-76,%eax
	addl %eax,%ebp
	movl %ebx,(%ebp)
	leal 84(%esp), %ebx
	movl $-84,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l192:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	leal 84(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl (%ebx),%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	leal 84(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl $8,%ebp
	addl %ebp,%edx
	leal 84(%esp), %ebp
	movl %esi,40(%esp)
	movl $-80,%esi
	addl %esi,%ebp
	movl (%edx),%esi
	movl %esi,(%ebp)
	movl $54,%ebp
	leal 84(%esp), %esi
	movl $-76,%edx
	addl %edx,%esi
	movl %ebp,(%esi)
	leal 84(%esp), %ebp
	movl $-84,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	movl %ecx,44(%esp)
	movl %eax,48(%esp)
	call tig_bounds_check
Ljoin_l189:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	movl 44(%esp),%edx
	cmpl %ecx,%edx
	jg Ljoin_l208
Ljoin_l209:
	movl $0,%eax
	jmp Ljoin_l207
Ljoin_l208:
	movl $-1,%eax
	jmp Ljoin_l207
Ljoin_l207:
	movl %edi,52(%esp)
	jmp LifEnd_167
Ljoin_l202:
	jmp LifTrue_165
LifTrue_165:
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %ebx,28(%esp)
	leal 84(%esp), %ebx
	movl %ebp,32(%esp)
	movl $-12,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl (%ebp),%ebx
	movl $8,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	leal 84(%esp), %ebx
	movl %esi,40(%esp)
	movl $-12,%esi
	addl %esi,%ebx
	movl $4,%esi
	addl %esi,%ebx
	leal 84(%esp), %esi
	movl %edi,52(%esp)
	movl $-80,%edi
	addl %edi,%esi
	movl (%ebx),%edi
	movl %edi,(%esi)
	movl $53,%esi
	leal 84(%esp), %edi
	movl $-76,%ebx
	addl %ebx,%edi
	movl %esi,(%edi)
	leal 84(%esp), %esi
	movl $-84,%edi
	addl %edi,%esi
	movl %ebp,(%esi)
	movl %ecx,24(%esp)
	movl %edx,56(%esp)
	movl %eax,60(%esp)
	call tig_bounds_check
Ljoin_l201:
	leal Cmm.global_area,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	leal 84(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	movl (%ebp),%edx
	movl $8,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	leal 84(%esp), %edx
	movl $-12,%esi
	addl %esi,%edx
	movl $8,%esi
	addl %esi,%edx
	leal 84(%esp), %esi
	movl $-80,%edi
	addl %edi,%esi
	movl (%edx),%edi
	movl %edi,(%esi)
	movl $53,%esi
	leal 84(%esp), %edi
	movl $-76,%edx
	addl %edx,%edi
	movl %esi,(%edi)
	leal 84(%esp), %esi
	movl $-84,%edi
	addl %edi,%esi
	movl %ebp,(%esi)
	movl %ecx,64(%esp)
	movl %eax,68(%esp)
	call tig_bounds_check
Ljoin_l198:
	leal Cmm.global_area,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 84(%esp), %ecx
	movl $-80,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal 84(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	call tig_compare_str
Ljoin_l195:
	leal Cmm.global_area,%ecx
	movl 56(%esp),%edx
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
	leal 84(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%ebx
	movl 32(%esp),%ebp
	movl 40(%esp),%esi
	movl 52(%esp),%edi
	leal 92(%esp), %esp
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
.long 0xffffffac
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l215
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
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
.long 0xffffffd0
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
.long 0xffffffac
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l215
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd8
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
.long 0x80000000
.long 0
.long gt_135_gc_data
.section .pcmap
.long Ljoin_l201
.long Lframe_l218
.section .pcmap_data
Lframe_l218:
.long 0xffffffac
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l215
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
.long 0xffffffac
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l215
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0xffffffe0
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
.long 0xffffffac
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l215
.long 0x80000008
.long 0x80000011
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 64(%esp), %ecx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 64(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l223:
Lproc_body_start_l222:
	movl %edx,16(%esp)
	leal 64(%esp), %edx
	movl %eax,20(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal 64(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal 64(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 20(%esp),%edx
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 64(%esp), %eax
	movl %ecx,24(%esp)
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 64(%esp), %ecx
	movl %ebx,28(%esp)
	movl $-16,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	leal 64(%esp), %ebx
	movl %ebp,32(%esp)
	movl $-60,%ebp
	addl %ebp,%ebx
	movl (%ecx),%ebp
	movl %ebp,(%ebx)
	movl $60,%ebx
	leal 64(%esp), %ebp
	movl $-56,%ecx
	addl %ecx,%ebp
	movl %ebx,(%ebp)
	leal 64(%esp), %ebx
	movl $-64,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l236:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 64(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	imull %ecx,%edx
	addl %edx,%eax
	leal 64(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	leal 64(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 64(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl $8,%ebx
	addl %ebx,%eax
	leal 64(%esp), %ebx
	movl $-60,%ebp
	addl %ebp,%ebx
	movl (%eax),%ebp
	movl %ebp,(%ebx)
	movl $61,%ebx
	leal 64(%esp), %ebp
	movl $-56,%eax
	addl %eax,%ebp
	movl %ebx,(%ebp)
	leal 64(%esp), %ebx
	movl $-64,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl %edx,40(%esp)
	call tig_bounds_check
Ljoin_l233:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 64(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 64(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	leal 64(%esp), %ebx
	movl $-60,%ebp
	addl %ebp,%ebx
	movl (%edx),%ebp
	movl %ebp,(%ebx)
	movl $61,%ebx
	leal 64(%esp), %ebp
	movl $-56,%edx
	addl %edx,%ebp
	movl %ebx,(%ebp)
	leal 64(%esp), %ebx
	movl $-64,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %ecx,44(%esp)
	call tig_bounds_check
Ljoin_l230:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 64(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	imull %ecx,%edx
	addl %edx,%eax
	leal 64(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 64(%esp), %ecx
	movl $-16,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $1,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	imull %ecx,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	leal Cmm.global_area,%edx
	movl (%edx),%ebx
	leal 64(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 64(%esp), %ecx
	movl $-60,%ebp
	addl %ebp,%ecx
	movl (%eax),%ebp
	movl %ebp,(%ecx)
	movl $61,%ecx
	leal 64(%esp), %ebp
	movl $-56,%eax
	addl %eax,%ebp
	movl %ecx,(%ebp)
	leal 64(%esp), %ecx
	movl $-64,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call tig_bounds_check
Ljoin_l227:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal 64(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl $12,%ebx
	addl %ebx,%eax
	leal 64(%esp), %ebx
	movl $-16,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	movl (%ebx),%ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	leal 64(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	imull %ecx,%edx
	addl %edx,%ebx
	movl (%eax),%edx
	movl %edx,(%ebx)
	movl $0,%eax
	leal 64(%esp), %edx
	movl $8,%ebx
	addl %ebx,%edx
	movl 24(%esp),%ebx
	movl %ebx,(%edx)
	movl 28(%esp),%ebx
	movl 32(%esp),%ebp
	leal 72(%esp), %esp
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
.long 0xffffffc0
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l242
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
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
.long 0xffffffe4
.long 0x80000000
.long 0
.long exchange_169_gc_data
.section .pcmap
.long Ljoin_l233
.long Lframe_l244
.section .pcmap_data
Lframe_l244:
.long 0xffffffc0
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l242
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
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
.long 0xffffffe8
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
.long 0xffffffc0
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l242
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
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
.long 0xffffffec
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
.long 0xffffffc0
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l242
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l249:
Lproc_body_start_l248:
	movl %edx,4(%esp)
	leal 40(%esp), %edx
	movl %eax,8(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 40(%esp), %edx
	movl %ecx,12(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	jmp Lloop_start_198
Lloop_start_198:
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	cmpl %eax,%edx
	jl Ljoin_l273
Ljoin_l274:
	jmp Lloop_end_179
Lloop_end_179:
	leal -8(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	leal 48(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl %ebx,24(%esp)
	movl $-16,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	leal 48(%esp), %ebx
	movl %ebp,28(%esp)
	movl $-44,%ebp
	addl %ebp,%ebx
	movl (%edx),%ebp
	movl %ebp,(%ebx)
	leal 48(%esp), %ebx
	movl $-48,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	call exchange_169
Ljoin_l253:
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $8,%edx
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
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl %ebx,24(%esp)
	movl $-16,%ebx
	addl %ebx,%ecx
	movl $12,%ebx
	addl %ebx,%ecx
	leal 48(%esp), %ebx
	movl %ebp,28(%esp)
	movl $-44,%ebp
	addl %ebp,%ebx
	movl (%ecx),%ebp
	movl %ebp,(%ebx)
	leal 48(%esp), %ebx
	movl $-48,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
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
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-16,%ebx
	addl %ebx,%ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	cmpl %ebx,%edx
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
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l266
Ljoin_l267:
	jmp Lloop_end_180
Lloop_end_180:
	jmp Lloop_start_192
Lloop_start_192:
	leal -8(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl %edx,%eax
	leal 48(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	leal 48(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	leal 48(%esp), %ecx
	movl $-44,%ebp
	addl %ebp,%ecx
	movl (%edx),%ebp
	movl %ebp,(%ecx)
	leal 48(%esp), %ecx
	movl $-48,%ebp
	addl %ebp,%ecx
	movl %ebx,(%ecx)
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
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-16,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	cmpl %ebx,%edx
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
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l259
Ljoin_l260:
	jmp Lloop_end_187
Lloop_end_187:
	leal 40(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 40(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl $8,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	cmpl %ebx,%edx
	jl Ljoin_l257
Ljoin_l258:
	jmp LifFalse_196
LifFalse_196:
	movl $0,%ecx
	jmp LifEnd_197
Ljoin_l257:
	jmp LifTrue_195
LifTrue_195:
	leal -8(%esp), %esp
	leal 48(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl %edx,%eax
	leal 48(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	leal 48(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	leal 48(%esp), %ecx
	movl $-44,%ebp
	addl %ebp,%ecx
	movl (%edx),%ebp
	movl %ebp,(%ecx)
	leal 48(%esp), %ecx
	movl $-48,%ebp
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	call exchange_169
Ljoin_l256:
	jmp LifEnd_197
LifEnd_197:
	jmp Ljoin_l285
Ljoin_l285:
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	jmp Lloop_start_198
Ljoin_l259:
	jmp Lloop_body_193
Lloop_body_193:
	leal 40(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	subl %eax,%edx
	leal 40(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl $8,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	jmp Lloop_start_192
Ljoin_l266:
	jmp Lloop_body_186
Lloop_body_186:
	leal 40(%esp), %ebx
	movl $-16,%ebp
	addl %ebp,%ebx
	movl $4,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl $1,%ebx
	addl %ebx,%ebp
	leal 40(%esp), %ebx
	movl $-16,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	movl %ebp,(%ebx)
	jmp Ljoin_l284
Ljoin_l284:
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
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
	leal -40(%esp), %esp
	leal 40(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 40(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l294:
Lproc_body_start_l293:
	movl %ecx,4(%esp)
	leal 40(%esp), %ecx
	movl %eax,8(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl %edx,12(%esp)
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	jl Ljoin_l305
Ljoin_l306:
	jmp LifFalse_203
LifFalse_203:
	movl $0,%eax
	movl %ebp,20(%esp)
	movl %ebx,16(%esp)
	jmp LifEnd_204
Ljoin_l305:
	jmp LifTrue_202
LifTrue_202:
	leal -8(%esp), %esp
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl %ebx,24(%esp)
	movl $-16,%ebx
	addl %ebx,%ecx
	movl $8,%ebx
	addl %ebx,%ecx
	leal 48(%esp), %ebx
	movl %ebp,28(%esp)
	movl $-44,%ebp
	addl %ebp,%ebx
	movl (%ecx),%ebp
	movl %ebp,(%ebx)
	leal 48(%esp), %ebx
	movl $-48,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	call partition_136
Ljoin_l304:
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl $-16,%ebx
	addl %ebx,%ecx
	movl $12,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $1,%ecx
	subl %ecx,%ebx
	leal 48(%esp), %ecx
	movl $-44,%ebp
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	leal 48(%esp), %ecx
	movl $-48,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call qsort_137
Ljoin_l301:
	leal -8(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	leal 48(%esp), %ecx
	movl $-16,%ebx
	addl %ebx,%ecx
	movl $8,%ebx
	addl %ebx,%ecx
	leal 48(%esp), %ebx
	movl $-44,%ebp
	addl %ebp,%ebx
	movl (%ecx),%ebp
	movl %ebp,(%ebx)
	leal 48(%esp), %ebx
	movl $-48,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	call qsort_137
Ljoin_l298:
	jmp LifEnd_204
LifEnd_204:
	leal 40(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	movl 20(%esp),%ebp
	leal 48(%esp), %esp
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
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe4
.long Lstackdata_l311
.long 0x80000008
.long 0x80000006
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
.long 0x80000000
.long 0
.long qsort_137_gc_data
.section .pcmap
.long Ljoin_l301
.long Lframe_l313
.section .pcmap_data
Lframe_l313:
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe4
.long Lstackdata_l311
.long 0x80000008
.long 0x80000006
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
.long 0x80000000
.long 0
.long qsort_137_gc_data
.section .pcmap
.long Ljoin_l298
.long Lframe_l314
.section .pcmap_data
Lframe_l314:
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe4
.long Lstackdata_l311
.long 0x80000008
.long 0x80000006
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
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l317:
Lproc_body_start_l316:
	movl %eax,(%esp)
	leal 24(%esp), %eax
	movl %edx,4(%esp)
	movl $-8,%edx
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	leal 24(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal -8(%esp), %esp
	leal 32(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	leal 32(%esp), %edx
	movl %ecx,16(%esp)
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	subl %ecx,%edx
	leal 32(%esp), %ecx
	movl %ebx,20(%esp)
	movl $-28,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $0,%ecx
	leal 32(%esp), %edx
	movl $-32,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call qsort_137
Ljoin_l321:
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	leal 28(%esp), %esp
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
.long 0xffffffe8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l326
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l330:
Lproc_body_start_l329:
	leal 32(%esp), %ecx
	movl %eax,(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	movl $10,%eax
	leal 32(%esp), %ecx
	movl %edx,4(%esp)
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 32(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $2,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	leal space_end,%edx
	movl (%edx),%eax
	cmpl %eax,%ecx
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
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $2,%eax
	addl %eax,%ecx
	movl $4,%eax
	imull %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl %ecx,(%edx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%eax
	leal 32(%esp), %ecx
	movl %ebx,8(%esp)
	movl $-12,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $2,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	imull %ecx,%ebx
	addl %ebx,%eax
	leal Cmm.global_area,%ebx
	movl %eax,(%ebx)
	leal 32(%esp), %eax
	movl $-12,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl $1,%ebx
	jmp Linit_start_51
Linit_start_51:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jg Ljoin_l352
Ljoin_l353:
	jmp Lalc_47
Ljoin_l352:
	jmp Lalc_gc_46
Lalc_gc_46:
	call tig_call_gc
Ljoin_l351:
	jmp Lalc_47
Lalc_47:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %ebp,12(%esp)
	movl $12,%ebp
	addl %ebp,%eax
	leal Cmm.global_area,%ebp
	movl %eax,(%ebp)
	movl $0,%eax
	movl %eax,(%ecx)
	leal Lgbl_43,%eax
	movl $4,%ebp
	movl %esi,16(%esp)
	movl %ecx,%esi
	addl %ebp,%esi
	movl %eax,(%esi)
	movl $4,%eax
	movl %ebx,%esi
	imull %eax,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl %ecx,(%eax)
	movl $1,%eax
	addl %eax,%ebx
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	cmpl %ecx,%ebx
	jle Ljoin_l347
Ljoin_l348:
	jmp Linit_end_52
Linit_end_52:
	leal 32(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %ecx,%eax
	call initlist_56
Ljoin_l346:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $1,%ecx
	leal 36(%esp), %edx
	movl $-36,%esi
	addl %esi,%edx
	movl %ecx,(%edx)
	call sort_58
Ljoin_l343:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal Lgbl_207,%ecx
	leal 36(%esp), %edx
	movl $-36,%esi
	addl %esi,%edx
	movl %ecx,(%edx)
	call print_list_57
Ljoin_l340:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $0,%ecx
	leal 36(%esp), %edx
	movl $-36,%esi
	addl %esi,%edx
	movl %ecx,(%edx)
	call sort_58
Ljoin_l337:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal Lgbl_208,%ecx
	leal 36(%esp), %edx
	movl $-36,%esi
	addl %esi,%edx
	movl %ecx,(%edx)
	call print_list_57
Ljoin_l334:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	movl 16(%esp),%esi
	leal 32(%esp), %esp
	ret
Ljoin_l347:
	jmp Ljoin_l362
Ljoin_l362:
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	jmp Linit_start_51
.section .pcmap_data
Lstackdata_l364:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l356
.long Lframe_l365
.section .pcmap_data
Lframe_l365:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l364
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l351
.long Lframe_l366
.section .pcmap_data
Lframe_l366:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l364
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x40000007
.long 0x40000006
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l346
.long Lframe_l367
.section .pcmap_data
Lframe_l367:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l364
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
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
.long Lframe_l368
.section .pcmap_data
Lframe_l368:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l364
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
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
.long Lframe_l369
.section .pcmap_data
Lframe_l369:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l364
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
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
.long Lframe_l370
.section .pcmap_data
Lframe_l370:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l364
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
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
.long Lframe_l371
.section .pcmap_data
Lframe_l371:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l364
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
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
