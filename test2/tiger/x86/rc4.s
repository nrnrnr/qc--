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
Lgbl_92:
.long 0
.byte 0
.section .text
add_mod_256_49:
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 64(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l10:
.Lproc_body_start_l9:
	movl %eax,4(%esp)
	leal 64(%esp), %eax
	movl %eax,8(%esp)
	movl $-16,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl %eax,20(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	leal 64(%esp), %eax
	movl %eax,24(%esp)
	movl $-16,%eax
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l12:
.Lbranch_target_l16:
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $256,%ecx
	cmpl %ecx,%eax
	jge LifTrue_54
LifFalse_55:
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp LifEnd_56
LifTrue_54:
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $256,%ecx
	subl %ecx,%eax
LifEnd_56:
	leal 64(%esp), %ecx
	movl %ecx,36(%esp)
	movl $8,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,44(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %esp
	ret
.section .text
.section .data
add_mod_256_49_gc_data:
.long 4
.long 1
.long 0
.long 0
.long 0
.long 5
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
compute_bit_58:
	leal -124(%esp), %esp
	leal 124(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 124(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l22:
.Lproc_body_start_l21:
	movl %eax,(%esp)
	leal 124(%esp), %eax
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l29:
.Lbranch_target_l50:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,16(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 16(%esp),%ecx
	cmpl %eax,%ecx
	jge LifTrue_60
LifFalse_61:
	movl $0,%eax
	jmp LifEnd_62
LifTrue_60:
.Lbranch_target_l44:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,20(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	jge .Lbranch_target_l43
.Lbranch_target_l42:
	movl $0,%eax
	jmp .Lbranch_target_l41
.Lbranch_target_l43:
	movl $-1,%eax
.Lbranch_target_l41:
LifEnd_62:
.Lbranch_target_l28:
.Lbranch_target_l49:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_80
LifFalse_81:
.Lbranch_target_l27:
.Lbranch_target_l48:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,56(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 56(%esp),%ecx
	cmpl %eax,%ecx
	jge LifTrue_64
LifFalse_65:
	movl $0,%eax
	jmp LifEnd_66
LifTrue_64:
.Lbranch_target_l40:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,60(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 60(%esp),%ecx
	cmpl %eax,%ecx
	jl .Lbranch_target_l39
.Lbranch_target_l38:
	movl $0,%eax
	jmp .Lbranch_target_l37
.Lbranch_target_l39:
	movl $-1,%eax
.Lbranch_target_l37:
LifEnd_66:
.Lbranch_target_l26:
.Lbranch_target_l47:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_76
LifFalse_77:
.Lbranch_target_l25:
.Lbranch_target_l46:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,80(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 80(%esp),%ecx
	cmpl %eax,%ecx
	jl LifTrue_68
LifFalse_69:
	movl $0,%eax
	jmp LifEnd_70
LifTrue_68:
.Lbranch_target_l36:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,84(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 84(%esp),%ecx
	cmpl %eax,%ecx
	jge .Lbranch_target_l35
.Lbranch_target_l34:
	movl $0,%eax
	jmp .Lbranch_target_l33
.Lbranch_target_l35:
	movl $-1,%eax
.Lbranch_target_l33:
LifEnd_70:
.Lbranch_target_l24:
.Lbranch_target_l45:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_72
LifFalse_73:
	movl $0,%eax
	jmp LifEnd_74
LifTrue_72:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,88(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 88(%esp),%ecx
	subl %eax,%ecx
	leal 124(%esp), %eax
	movl %eax,92(%esp)
	movl $-8,%eax
	movl %eax,96(%esp)
	movl 92(%esp),%eax
	movl %ecx,100(%esp)
	movl 96(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 100(%esp),%ecx
	movl %ecx,(%eax)
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
LifEnd_74:
	jmp LifEnd_78
LifTrue_76:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,64(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 64(%esp),%ecx
	subl %eax,%ecx
	leal 124(%esp), %eax
	movl %eax,68(%esp)
	movl $-8,%eax
	movl %eax,72(%esp)
	movl 68(%esp),%eax
	movl %ecx,76(%esp)
	movl 72(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
LifEnd_78:
	jmp LifEnd_82
LifTrue_80:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,24(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 24(%esp),%ecx
	subl %eax,%ecx
	leal 124(%esp), %eax
	movl %eax,28(%esp)
	movl $-8,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,40(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 40(%esp),%ecx
	subl %eax,%ecx
	leal 124(%esp), %eax
	movl %eax,44(%esp)
	movl $-8,%eax
	movl %eax,48(%esp)
	movl 44(%esp),%eax
	movl %ecx,52(%esp)
	movl 48(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
LifEnd_82:
	leal 124(%esp), %ecx
	movl %ecx,104(%esp)
	movl $4,%ecx
	movl %ecx,108(%esp)
	movl 104(%esp),%ecx
	movl %edx,112(%esp)
	movl 108(%esp),%edx
	addl %edx,%ecx
	movl 112(%esp),%edx
	movl %edx,(%ecx)
	leal 128(%esp), %esp
	ret
.section .text
.section .data
compute_bit_58_gc_data:
.long 2
.long 1
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
xor_50:
	leal -116(%esp), %esp
	leal 116(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 116(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 116(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l56:
.Lproc_body_start_l55:
	movl %eax,4(%esp)
	leal 116(%esp), %eax
	movl %eax,8(%esp)
	movl $-16,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 116(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 116(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 116(%esp), %ecx
	movl %eax,20(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl 20(%esp),%eax
	movl %eax,(%ecx)
	leal 116(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	leal 120(%esp), %ecx
	movl %eax,28(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl %ecx,%eax
	movl $128,%ecx
	movl %ecx,32(%esp)
	leal 120(%esp), %ecx
	movl %ecx,36(%esp)
	movl $-120,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,44(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	call compute_bit_58
.Lcall_successor_l81:
	movl 24(%esp),%ecx
	addl %eax,%ecx
	leal 116(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 116(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	leal 120(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,48(%esp)
	movl %ecx,%eax
	movl $64,%ecx
	leal 120(%esp), %edx
	movl %ecx,52(%esp)
	movl $-120,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl %ecx,(%edx)
	call compute_bit_58
.Lcall_successor_l78:
	movl 44(%esp),%ecx
	addl %eax,%ecx
	leal 116(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 116(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	leal 120(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,56(%esp)
	movl %ecx,%eax
	movl $32,%ecx
	leal 120(%esp), %edx
	movl %ecx,60(%esp)
	movl $-120,%ecx
	addl %ecx,%edx
	movl 60(%esp),%ecx
	movl %ecx,(%edx)
	call compute_bit_58
.Lcall_successor_l75:
	movl 52(%esp),%ecx
	addl %eax,%ecx
	leal 116(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 116(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	leal 120(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,64(%esp)
	movl %ecx,%eax
	movl $16,%ecx
	leal 120(%esp), %edx
	movl %ecx,68(%esp)
	movl $-120,%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl %ecx,(%edx)
	call compute_bit_58
.Lcall_successor_l72:
	movl 60(%esp),%ecx
	addl %eax,%ecx
	leal 116(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 116(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	leal 120(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,72(%esp)
	movl %ecx,%eax
	movl $8,%ecx
	leal 120(%esp), %edx
	movl %ecx,76(%esp)
	movl $-120,%ecx
	addl %ecx,%edx
	movl 76(%esp),%ecx
	movl %ecx,(%edx)
	call compute_bit_58
.Lcall_successor_l69:
	movl 68(%esp),%ecx
	addl %eax,%ecx
	leal 116(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 116(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	leal 120(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,80(%esp)
	movl %ecx,%eax
	movl $4,%ecx
	leal 120(%esp), %edx
	movl %ecx,84(%esp)
	movl $-120,%ecx
	addl %ecx,%edx
	movl 84(%esp),%ecx
	movl %ecx,(%edx)
	call compute_bit_58
.Lcall_successor_l66:
	movl 76(%esp),%ecx
	addl %eax,%ecx
	leal 116(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 116(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	leal 120(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,88(%esp)
	movl %ecx,%eax
	movl $2,%ecx
	leal 120(%esp), %edx
	movl %ecx,92(%esp)
	movl $-120,%ecx
	addl %ecx,%edx
	movl 92(%esp),%ecx
	movl %ecx,(%edx)
	call compute_bit_58
.Lcall_successor_l63:
	movl 84(%esp),%ecx
	addl %eax,%ecx
	leal 116(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 116(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	leal 120(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,96(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 120(%esp), %edx
	movl %ecx,100(%esp)
	movl $-120,%ecx
	addl %ecx,%edx
	movl 100(%esp),%ecx
	movl %ecx,(%edx)
	call compute_bit_58
.Lcall_successor_l60:
	movl 92(%esp),%ecx
	addl %eax,%ecx
	leal 116(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 116(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 116(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 124(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l86:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l81
.long .Lframe_l87
.section .pcmap_data
.Lframe_l87:
.long 0x8000000c
.long 0xffffff8c
.long 0xffffffb4
.long .Lstackdata_l86
.long 0
.long 20
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
.long 0xffffffa4
.long 0
.long 0
.long 0
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l78
.long .Lframe_l88
.section .pcmap_data
.Lframe_l88:
.long 0x8000000c
.long 0xffffff8c
.long 0xffffffb4
.long .Lstackdata_l86
.long 0
.long 20
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
.long 0xffffffb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l75
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x8000000c
.long 0xffffff8c
.long 0xffffffb4
.long .Lstackdata_l86
.long 0
.long 20
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
.long 0xffffffc0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l72
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x8000000c
.long 0xffffff8c
.long 0xffffffb4
.long .Lstackdata_l86
.long 0
.long 20
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
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l69
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x8000000c
.long 0xffffff8c
.long 0xffffffb4
.long .Lstackdata_l86
.long 0
.long 20
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
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l66
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x8000000c
.long 0xffffff8c
.long 0xffffffb4
.long .Lstackdata_l86
.long 0
.long 20
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
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l63
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x8000000c
.long 0xffffff8c
.long 0xffffffb4
.long .Lstackdata_l86
.long 0
.long 20
.long 2
.long 1
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
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l60
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x8000000c
.long 0xffffff8c
.long 0xffffffb4
.long .Lstackdata_l86
.long 0
.long 20
.long 2
.long 1
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long xor_50_gc_data
.section .text
.section .data
xor_50_gc_data:
.long 4
.long 1
.long 0
.long 0
.long 0
.long 20
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
.section .text
init_sbox_51:
	leal -80(%esp), %esp
	leal 80(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l96:
.Lproc_body_start_l95:
	leal 80(%esp), %edx
	movl %eax,12(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 80(%esp), %edx
	movl %eax,16(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 16(%esp),%eax
	movl %eax,(%edx)
Lloop_start_89:
.Lbranch_target_l107:
.Lbranch_target_l111:
	leal 80(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $255,%edx
	cmpl %edx,%eax
	jle Lloop_body_90
Lloop_end_85:
	movl $0,%eax
	leal 80(%esp), %edx
	movl %ecx,36(%esp)
	movl $0,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	leal 80(%esp), %esp
	ret
Lloop_body_90:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 80(%esp), %edx
	movl %eax,20(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 80(%esp), %edx
	movl %eax,24(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	leal 80(%esp), %eax
	movl %eax,28(%esp)
	movl $-76,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $49,%eax
	leal 80(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 80(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l106:
	leal Cmm.global_area,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 80(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal -8(%esp), %esp
	leal 88(%esp), %edx
	movl %eax,48(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 88(%esp), %edx
	movl %ecx,52(%esp)
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 88(%esp), %ecx
	movl %ecx,56(%esp)
	movl $-88,%ecx
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	movl %edx,64(%esp)
	movl 60(%esp),%edx
	addl %edx,%ecx
	movl 64(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $31,%ecx
	leal 88(%esp), %edx
	movl %ecx,68(%esp)
	movl $-84,%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl %ecx,(%edx)
	call add_mod_256_49
.Lcall_successor_l103:
	leal -8(%esp), %esp
	movl %eax,72(%esp)
	movl 48(%esp),%eax
	leal 88(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	leal 88(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl 72(%esp),%edx
	movl %edx,(%ecx)
	call add_mod_256_49
.Lcall_successor_l100:
	leal 80(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 80(%esp), %edx
	movl %eax,68(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	movl 68(%esp),%eax
	movl %eax,(%ecx)
	leal 80(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	leal 80(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.LLloop_start_89_l112:
	movl 36(%esp),%ecx
	jmp Lloop_start_89
.section .pcmap_data
.Lstackdata_l114:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l106
.long .Lframe_l115
.section .pcmap_data
.Lframe_l115:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffd4
.long .Lstackdata_l114
.long 0
.long 8
.long 2
.long 1
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
.long init_sbox_51_gc_data
.section .pcmap
.long .Lcall_successor_l103
.long .Lframe_l116
.section .pcmap_data
.Lframe_l116:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffd4
.long .Lstackdata_l114
.long 0
.long 8
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd8
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long init_sbox_51_gc_data
.section .pcmap
.long .Lcall_successor_l100
.long .Lframe_l117
.section .pcmap_data
.Lframe_l117:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffd4
.long .Lstackdata_l114
.long 0
.long 8
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
.long init_sbox_51_gc_data
.section .text
.section .data
init_sbox_51_gc_data:
.long 2
.long 1
.long 0
.long 8
.long 1
.long 0
.long 0
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
swap_93:
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
.Linitialize_continuations_l119:
.Lproc_body_start_l118:
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
	movl $4,%ecx
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
	movl $57,%eax
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
.Lcall_successor_l132:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
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
	movl $4,%edx
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
	movl $58,%eax
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
.Lcall_successor_l129:
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
	movl $4,%edx
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
	movl $58,%eax
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
.Lcall_successor_l126:
	leal Cmm.global_area,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
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
	movl $4,%edx
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
	movl $4,%edx
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
	movl $58,%eax
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
.Lcall_successor_l123:
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
	movl $4,%edx
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
.Lstackdata_l138:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l132
.long .Lframe_l139
.section .pcmap_data
.Lframe_l139:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l138
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
.long 0xffffff9c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long swap_93_gc_data
.section .pcmap
.long .Lcall_successor_l129
.long .Lframe_l140
.section .pcmap_data
.Lframe_l140:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l138
.long 0
.long 12
.long 2
.long 1
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
.long swap_93_gc_data
.section .pcmap
.long .Lcall_successor_l126
.long .Lframe_l141
.section .pcmap_data
.Lframe_l141:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l138
.long 0
.long 12
.long 2
.long 1
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
.long swap_93_gc_data
.section .pcmap
.long .Lcall_successor_l123
.long .Lframe_l142
.section .pcmap_data
.Lframe_l142:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l138
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
.long 0xffffffdc
.long 0
.long 0
.long 0
.long swap_93_gc_data
.section .text
.section .data
swap_93_gc_data:
.long 4
.long 1
.long 0
.long 0
.long 0
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
encrypt_94:
	leal -216(%esp), %esp
	leal 216(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 216(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l144:
.Lproc_body_start_l143:
	movl %eax,12(%esp)
	leal 216(%esp), %eax
	movl %eax,16(%esp)
	movl $-16,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 216(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 216(%esp), %ecx
	movl %eax,28(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 216(%esp), %ecx
	movl %eax,32(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 224(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 224(%esp), %ecx
	movl %ecx,44(%esp)
	movl $-16,%ecx
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	movl %edx,52(%esp)
	movl 48(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 224(%esp), %edx
	movl %ecx,56(%esp)
	movl $-224,%ecx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	movl $1,%ecx
	leal 224(%esp), %edx
	movl %ecx,60(%esp)
	movl $-220,%ecx
	addl %ecx,%edx
	movl 60(%esp),%ecx
	movl %ecx,(%edx)
	call add_mod_256_49
.Lcall_successor_l172:
	leal 216(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 216(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 216(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl %eax,56(%esp)
	leal 216(%esp), %eax
	movl %eax,60(%esp)
	movl $-16,%eax
	movl %eax,64(%esp)
	movl 60(%esp),%eax
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 216(%esp), %ecx
	movl %eax,72(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 216(%esp), %ecx
	movl %eax,76(%esp)
	movl $-212,%eax
	addl %eax,%ecx
	movl 76(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $64,%eax
	leal 216(%esp), %ecx
	movl %eax,80(%esp)
	movl $-208,%eax
	addl %eax,%ecx
	movl 80(%esp),%eax
	movl %eax,(%ecx)
	leal 216(%esp), %eax
	movl $-216,%ecx
	addl %ecx,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,84(%esp)
	call tig_bounds_check
.Lcall_successor_l169:
	leal Cmm.global_area,%eax
	movl 84(%esp),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	movl 64(%esp),%eax
	leal 224(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 224(%esp), %edx
	movl %ecx,96(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	movl 96(%esp),%edx
	addl %ecx,%edx
	leal 224(%esp), %ecx
	movl %ecx,100(%esp)
	movl $-220,%ecx
	movl %ecx,104(%esp)
	movl 100(%esp),%ecx
	movl %edx,108(%esp)
	movl 104(%esp),%edx
	addl %edx,%ecx
	movl 108(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 224(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	movl 76(%esp),%edx
	movl %edx,(%ecx)
	call add_mod_256_49
.Lcall_successor_l166:
	leal 216(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 224(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 224(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 224(%esp), %edx
	movl %ecx,112(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 224(%esp), %edx
	movl %ecx,116(%esp)
	movl $-220,%ecx
	addl %ecx,%edx
	movl 116(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 224(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	movl 112(%esp),%edx
	movl %edx,(%ecx)
	call swap_93
.Lcall_successor_l163:
	leal 216(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 216(%esp), %edx
	movl %eax,112(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 216(%esp), %edx
	movl %eax,116(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	leal 216(%esp), %edx
	movl %eax,120(%esp)
	movl $-212,%eax
	addl %eax,%edx
	movl 120(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	movl $66,%eax
	leal 216(%esp), %edx
	movl %eax,124(%esp)
	movl $-208,%eax
	addl %eax,%edx
	movl 124(%esp),%eax
	movl %eax,(%edx)
	leal 216(%esp), %eax
	movl $-216,%edx
	addl %edx,%eax
	movl 116(%esp),%edx
	movl %edx,(%eax)
	movl %ecx,128(%esp)
	call tig_bounds_check
.Lcall_successor_l160:
	leal Cmm.global_area,%eax
	movl 128(%esp),%ecx
	movl %ecx,(%eax)
	leal 216(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 216(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 216(%esp), %edx
	movl %eax,132(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 216(%esp), %edx
	movl %eax,136(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	leal 216(%esp), %edx
	movl %eax,140(%esp)
	movl $-212,%eax
	addl %eax,%edx
	movl 140(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	movl $66,%eax
	leal 216(%esp), %edx
	movl %eax,144(%esp)
	movl $-208,%eax
	addl %eax,%edx
	movl 144(%esp),%eax
	movl %eax,(%edx)
	leal 216(%esp), %eax
	movl $-216,%edx
	addl %edx,%eax
	movl 136(%esp),%edx
	movl %edx,(%eax)
	movl %ecx,148(%esp)
	call tig_bounds_check
.Lcall_successor_l157:
	leal Cmm.global_area,%eax
	movl 148(%esp),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	movl 120(%esp),%eax
	leal 224(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 224(%esp), %edx
	movl %ecx,160(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	movl 160(%esp),%edx
	addl %ecx,%edx
	leal 224(%esp), %ecx
	movl %ecx,164(%esp)
	movl $-220,%ecx
	movl %ecx,168(%esp)
	movl 164(%esp),%ecx
	movl %edx,172(%esp)
	movl 168(%esp),%edx
	addl %edx,%ecx
	movl 172(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 224(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	movl 140(%esp),%edx
	movl %edx,(%ecx)
	call add_mod_256_49
.Lcall_successor_l154:
	leal 216(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 216(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 216(%esp), %edx
	movl %eax,168(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 216(%esp), %eax
	movl %eax,172(%esp)
	movl $-212,%eax
	movl %eax,176(%esp)
	movl 172(%esp),%eax
	movl %ecx,180(%esp)
	movl 176(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $67,%eax
	leal 216(%esp), %ecx
	movl $-208,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 216(%esp), %eax
	movl $-216,%ecx
	addl %ecx,%eax
	movl 180(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l151:
	leal Cmm.global_area,%eax
	movl 168(%esp),%ecx
	movl %ecx,(%eax)
	leal 216(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 216(%esp), %ecx
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
	leal 216(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 224(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 224(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 224(%esp), %edx
	movl %ecx,192(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 224(%esp), %ecx
	movl %ecx,196(%esp)
	movl $-220,%ecx
	movl %ecx,200(%esp)
	movl 196(%esp),%ecx
	movl %edx,204(%esp)
	movl 200(%esp),%edx
	addl %edx,%ecx
	movl 204(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 224(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	movl 192(%esp),%edx
	movl %edx,(%ecx)
	call xor_50
.Lcall_successor_l148:
	leal 216(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 220(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l177:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l172
.long .Lframe_l178
.section .pcmap_data
.Lframe_l178:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l177
.long 0
.long 18
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
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l169
.long .Lframe_l179
.section .pcmap_data
.Lframe_l179:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l177
.long 0
.long 18
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff60
.long 0xffffff6c
.long 0
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
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l166
.long .Lframe_l180
.section .pcmap_data
.Lframe_l180:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l177
.long 0
.long 18
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
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l163
.long .Lframe_l181
.section .pcmap_data
.Lframe_l181:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l177
.long 0
.long 18
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
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l160
.long .Lframe_l182
.section .pcmap_data
.Lframe_l182:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l177
.long 0
.long 18
.long 2
.long 1
.long 0
.long 0
.long 0xffffff98
.long 0
.long 0
.long 0
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
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l157
.long .Lframe_l183
.section .pcmap_data
.Lframe_l183:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l177
.long 0
.long 18
.long 2
.long 1
.long 0
.long 0
.long 0xffffff98
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
.long 0xffffffbc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l154
.long .Lframe_l184
.section .pcmap_data
.Lframe_l184:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l177
.long 0
.long 18
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
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l151
.long .Lframe_l185
.section .pcmap_data
.Lframe_l185:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l177
.long 0
.long 18
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l148
.long .Lframe_l186
.section .pcmap_data
.Lframe_l186:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l177
.long 0
.long 18
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
.long encrypt_94_gc_data
.section .text
.section .data
encrypt_94_gc_data:
.long 4
.long 1
.long 0
.long 0
.long 0
.long 18
.long 1
.long 0
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
.section .text
cypher_52:
	leal -80(%esp), %esp
	leal 80(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l188:
.Lproc_body_start_l187:
	leal 80(%esp), %edx
	movl %eax,8(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 80(%esp), %edx
	movl %eax,12(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 80(%esp), %edx
	movl %eax,16(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl 16(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_92,%eax
	leal 80(%esp), %edx
	movl %eax,20(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl 20(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_92,%eax
	leal 80(%esp), %edx
	movl %eax,24(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl $16,%eax
	addl %eax,%edx
	movl 24(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,28(%esp)
	call tig_getchar
.Lcall_successor_l211:
	leal 80(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_119:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 80(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 80(%esp), %edx
	movl %eax,32(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_92,%eax
	leal 80(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l208:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l205:
.Lbranch_target_l215:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_120
Lloop_end_113:
	leal 80(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 80(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 80(%esp), %esp
	ret
Lloop_body_120:
	leal 80(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 80(%esp), %edx
	movl %eax,36(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl $16,%eax
	addl %eax,%edx
	leal 80(%esp), %eax
	movl %eax,40(%esp)
	movl $-80,%eax
	movl %eax,44(%esp)
	movl 40(%esp),%eax
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	call tig_ord
.Lcall_successor_l204:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal -4(%esp), %esp
	leal 84(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,56(%esp)
	movl %ecx,%eax
	leal 84(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	call encrypt_94
.Lcall_successor_l201:
	call tig_chr
.Lcall_successor_l198:
	leal -4(%esp), %esp
	movl %eax,60(%esp)
	movl 40(%esp),%eax
	leal 84(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	call tig_concat
.Lcall_successor_l195:
	leal 80(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l192:
	leal 80(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_119
.section .pcmap_data
.Lstackdata_l217:
.long 1
.long 0xffffffec
.section .pcmap
.long .Lcall_successor_l211
.long .Lframe_l218
.section .pcmap_data
.Lframe_l218:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l217
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
.long 0
.long 0
.long 0
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l208
.long .Lframe_l219
.section .pcmap_data
.Lframe_l219:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l217
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
.long 0xffffffd0
.long 0
.long 0
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l204
.long .Lframe_l220
.section .pcmap_data
.Lframe_l220:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l217
.long 0
.long 12
.long 2
.long 1
.long 0
.long 0
.long 0xffffffd4
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
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l201
.long .Lframe_l221
.section .pcmap_data
.Lframe_l221:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l217
.long 0
.long 12
.long 2
.long 1
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
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l198
.long .Lframe_l222
.section .pcmap_data
.Lframe_l222:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l217
.long 0
.long 12
.long 2
.long 1
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
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l195
.long .Lframe_l223
.section .pcmap_data
.Lframe_l223:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l217
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
.long 0
.long 0
.long 0
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l192
.long .Lframe_l224
.section .pcmap_data
.Lframe_l224:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l217
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
.long 0
.long 0
.long 0
.long cypher_52_gc_data
.section .text
.section .data
cypher_52_gc_data:
.long 5
.long 1
.long 0
.long 0
.long 1
.long 1
.long 12
.long 1
.long 1
.long 1
.long 0
.long 1
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
tiger_main:
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l226:
.Lproc_body_start_l225:
	leal 40(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
.Lbranch_target_l241:
.Lbranch_target_l246:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $1032,%edx
	addl %edx,%eax
	leal space_end,%edx
	movl (%edx),%edx
	cmpl %edx,%eax
	jg Lalc_gc_45
Lalc_gc_45:
	movl %ecx,8(%esp)
	call tig_call_gc
.Lcall_successor_l240:
Lalc_46:
	movl $1032,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $1032,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl $256,%ecx
	movl %ecx,(%eax)
	movl $1,%ecx
Linit_start_42:
	movl $0,%edx
	movl %eax,12(%esp)
	movl $4,%eax
	movl %eax,16(%esp)
	movl %ecx,%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	imull %ecx,%eax
	movl %eax,24(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l237:
.Lbranch_target_l245:
	movl $257,%eax
	cmpl %eax,%ecx
.Lbranch_target_l248:
	jle .LLinit_start_42_l247
Linit_end_43:
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	call init_sbox_51
.Lcall_successor_l236:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,28(%esp)
	movl %ecx,%eax
	call cypher_52
.Lcall_successor_l233:
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
.Lcall_successor_l230:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %esp
	ret
.LLinit_start_42_l247:
	movl 12(%esp),%eax
	jmp Linit_start_42
.section .pcmap_data
.Lstackdata_l250:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l240
.long .Lframe_l251
.section .pcmap_data
.Lframe_l251:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe0
.long .Lstackdata_l250
.long 0
.long 8
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l236
.long .Lframe_l252
.section .pcmap_data
.Lframe_l252:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe0
.long .Lstackdata_l250
.long 0
.long 8
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l233
.long .Lframe_l253
.section .pcmap_data
.Lframe_l253:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe0
.long .Lstackdata_l250
.long 0
.long 8
.long 2
.long 1
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l230
.long .Lframe_l254
.section .pcmap_data
.Lframe_l254:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe0
.long .Lstackdata_l250
.long 0
.long 8
.long 2
.long 1
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
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 2
.long 1
.long 1
.long 8
.long 1
.long 1
.long 0
.long 1
.long 1
.long 0
.long 0
.long 0
