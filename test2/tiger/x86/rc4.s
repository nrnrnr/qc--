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
.Linitialize_continuations_l11:
.Lproc_body_start_l10:
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
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $256,%ecx
	cmpl %ecx,%eax
	jge .Ljoin_l13
.Ljoin_l14:
	jmp LifFalse_55
LifFalse_55:
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp LifEnd_56
.Ljoin_l13:
	jmp LifTrue_54
LifTrue_54:
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $256,%ecx
	subl %ecx,%eax
	jmp LifEnd_56
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
.Linitialize_continuations_l24:
.Lproc_body_start_l23:
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
	jge .Ljoin_l36
.Ljoin_l37:
	jmp LifFalse_61
LifFalse_61:
	movl $0,%eax
	jmp LifEnd_62
.Ljoin_l36:
	jmp LifTrue_60
LifTrue_60:
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
	jge .Ljoin_l48
.Ljoin_l49:
	movl $0,%eax
	jmp .Ljoin_l47
.Ljoin_l48:
	movl $-1,%eax
	jmp .Ljoin_l47
.Ljoin_l47:
	jmp LifEnd_62
LifEnd_62:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l34
.Ljoin_l35:
	jmp LifFalse_81
LifFalse_81:
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
	cmpl %eax,%ecx
	jge .Ljoin_l32
.Ljoin_l33:
	jmp LifFalse_65
LifFalse_65:
	movl $0,%eax
	jmp LifEnd_66
.Ljoin_l32:
	jmp LifTrue_64
LifTrue_64:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,28(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 28(%esp),%ecx
	cmpl %eax,%ecx
	jl .Ljoin_l42
.Ljoin_l43:
	movl $0,%eax
	jmp .Ljoin_l41
.Ljoin_l42:
	movl $-1,%eax
	jmp .Ljoin_l41
.Ljoin_l41:
	jmp LifEnd_66
LifEnd_66:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l30
.Ljoin_l31:
	jmp LifFalse_77
LifFalse_77:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,32(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 32(%esp),%ecx
	cmpl %eax,%ecx
	jl .Ljoin_l28
.Ljoin_l29:
	jmp LifFalse_69
LifFalse_69:
	movl $0,%eax
	jmp LifEnd_70
.Ljoin_l28:
	jmp LifTrue_68
LifTrue_68:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,36(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 36(%esp),%ecx
	cmpl %eax,%ecx
	jge .Ljoin_l45
.Ljoin_l46:
	movl $0,%eax
	jmp .Ljoin_l44
.Ljoin_l45:
	movl $-1,%eax
	jmp .Ljoin_l44
.Ljoin_l44:
	jmp LifEnd_70
LifEnd_70:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l26
.Ljoin_l27:
	jmp LifFalse_73
LifFalse_73:
	movl $0,%eax
	jmp LifEnd_74
.Ljoin_l26:
	jmp LifTrue_72
LifTrue_72:
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
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp LifEnd_74
LifEnd_74:
	jmp LifEnd_78
.Ljoin_l30:
	jmp LifTrue_76
LifTrue_76:
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
	subl %eax,%ecx
	leal 124(%esp), %eax
	movl %eax,60(%esp)
	movl $-8,%eax
	movl %eax,64(%esp)
	movl 60(%esp),%eax
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp LifEnd_78
LifEnd_78:
	jmp LifEnd_82
.Ljoin_l34:
	jmp LifTrue_80
LifTrue_80:
	leal 124(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 124(%esp), %ecx
	movl %eax,72(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 72(%esp),%ecx
	subl %eax,%ecx
	leal 124(%esp), %eax
	movl %eax,76(%esp)
	movl $-8,%eax
	movl %eax,80(%esp)
	movl 76(%esp),%eax
	movl %ecx,84(%esp)
	movl 80(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 84(%esp),%ecx
	movl %ecx,(%eax)
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
	movl $0,%eax
	jmp LifEnd_82
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
.Ljoin_l81:
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
.Ljoin_l78:
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
.Ljoin_l75:
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
.Ljoin_l72:
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
.Ljoin_l69:
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
.Ljoin_l66:
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
.Ljoin_l63:
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
.Ljoin_l60:
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
.long .Ljoin_l81
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
.long .Ljoin_l78
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
.long .Ljoin_l75
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
.long .Ljoin_l72
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
.long .Ljoin_l69
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
.long .Ljoin_l66
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
.long .Ljoin_l63
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
.long .Ljoin_l60
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
.Linitialize_continuations_l97:
.Lproc_body_start_l96:
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
	jmp Lloop_start_89
Lloop_start_89:
	leal 80(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $255,%edx
	cmpl %edx,%eax
	jle .Ljoin_l108
.Ljoin_l109:
	jmp Lloop_end_85
Lloop_end_85:
	movl $0,%eax
	leal 80(%esp), %edx
	movl %ecx,20(%esp)
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal 80(%esp), %esp
	ret
.Ljoin_l108:
	jmp Lloop_body_90
Lloop_body_90:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 80(%esp), %edx
	movl %eax,24(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 80(%esp), %edx
	movl %eax,28(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	leal 80(%esp), %eax
	movl %eax,32(%esp)
	movl $-76,%eax
	movl %eax,36(%esp)
	movl 32(%esp),%eax
	movl %ecx,20(%esp)
	movl 36(%esp),%ecx
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
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Ljoin_l107:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
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
.Ljoin_l104:
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
.Ljoin_l101:
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
	jmp .Ljoin_l113
.Ljoin_l113:
	movl 20(%esp),%ecx
	jmp Lloop_start_89
.section .pcmap_data
.Lstackdata_l115:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l107
.long .Lframe_l116
.section .pcmap_data
.Lframe_l116:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffc4
.long .Lstackdata_l115
.long 0
.long 8
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
.long init_sbox_51_gc_data
.section .pcmap
.long .Ljoin_l104
.long .Lframe_l117
.section .pcmap_data
.Lframe_l117:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffc4
.long .Lstackdata_l115
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
.long .Ljoin_l101
.long .Lframe_l118
.section .pcmap_data
.Lframe_l118:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffc4
.long .Lstackdata_l115
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
.Linitialize_continuations_l121:
.Lproc_body_start_l120:
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
.Ljoin_l134:
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
.Ljoin_l131:
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
.Ljoin_l128:
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
.Ljoin_l125:
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
.Lstackdata_l140:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Ljoin_l134
.long .Lframe_l141
.section .pcmap_data
.Lframe_l141:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l140
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
.long .Ljoin_l131
.long .Lframe_l142
.section .pcmap_data
.Lframe_l142:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l140
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
.long .Ljoin_l128
.long .Lframe_l143
.section .pcmap_data
.Lframe_l143:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l140
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
.long .Ljoin_l125
.long .Lframe_l144
.section .pcmap_data
.Lframe_l144:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffb4
.long .Lstackdata_l140
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
.Linitialize_continuations_l147:
.Lproc_body_start_l146:
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
.Ljoin_l175:
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
.Ljoin_l172:
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
.Ljoin_l169:
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
.Ljoin_l166:
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
.Ljoin_l163:
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
.Ljoin_l160:
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
.Ljoin_l157:
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
.Ljoin_l154:
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
.Ljoin_l151:
	leal 216(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 220(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l180:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Ljoin_l175
.long .Lframe_l181
.section .pcmap_data
.Lframe_l181:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l180
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
.long .Ljoin_l172
.long .Lframe_l182
.section .pcmap_data
.Lframe_l182:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l180
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
.long .Ljoin_l169
.long .Lframe_l183
.section .pcmap_data
.Lframe_l183:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l180
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
.long .Ljoin_l166
.long .Lframe_l184
.section .pcmap_data
.Lframe_l184:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l180
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
.long .Ljoin_l163
.long .Lframe_l185
.section .pcmap_data
.Lframe_l185:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l180
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
.long .Ljoin_l160
.long .Lframe_l186
.section .pcmap_data
.Lframe_l186:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l180
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
.long .Ljoin_l157
.long .Lframe_l187
.section .pcmap_data
.Lframe_l187:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l180
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
.long .Ljoin_l154
.long .Lframe_l188
.section .pcmap_data
.Lframe_l188:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l180
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
.long .Ljoin_l151
.long .Lframe_l189
.section .pcmap_data
.Lframe_l189:
.long 0x80000008
.long 0xffffff28
.long 0xffffff54
.long .Lstackdata_l180
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
.Linitialize_continuations_l192:
.Lproc_body_start_l191:
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
.Ljoin_l216:
	leal 80(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_119
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
.Ljoin_l213:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l209
.Ljoin_l210:
	jmp Lloop_end_113
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
.Ljoin_l209:
	jmp Lloop_body_120
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
.Ljoin_l208:
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
.Ljoin_l205:
	call tig_chr
.Ljoin_l202:
	leal -4(%esp), %esp
	movl %eax,60(%esp)
	movl 40(%esp),%eax
	leal 84(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	call tig_concat
.Ljoin_l199:
	leal 80(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Ljoin_l196:
	leal 80(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_119
.section .pcmap_data
.Lstackdata_l221:
.long 1
.long 0xffffffec
.section .pcmap
.long .Ljoin_l216
.long .Lframe_l222
.section .pcmap_data
.Lframe_l222:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l221
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
.long .Ljoin_l213
.long .Lframe_l223
.section .pcmap_data
.Lframe_l223:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l221
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
.long .Ljoin_l208
.long .Lframe_l224
.section .pcmap_data
.Lframe_l224:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l221
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
.long .Ljoin_l205
.long .Lframe_l225
.section .pcmap_data
.Lframe_l225:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l221
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
.long .Ljoin_l202
.long .Lframe_l226
.section .pcmap_data
.Lframe_l226:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l221
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
.long .Ljoin_l199
.long .Lframe_l227
.section .pcmap_data
.Lframe_l227:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l221
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
.long .Ljoin_l196
.long .Lframe_l228
.section .pcmap_data
.Lframe_l228:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l221
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
.Linitialize_continuations_l231:
.Lproc_body_start_l230:
	leal 40(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $1032,%edx
	addl %edx,%eax
	leal space_end,%edx
	movl (%edx),%edx
	cmpl %edx,%eax
	jg .Ljoin_l247
.Ljoin_l248:
	jmp Lalc_gc_45
.Ljoin_l247:
	jmp Lalc_gc_45
Lalc_gc_45:
	movl %ecx,8(%esp)
	call tig_call_gc
.Ljoin_l246:
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
	jmp Linit_start_42
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
	movl $257,%eax
	cmpl %eax,%ecx
	jle .Ljoin_l242
.Ljoin_l243:
	jmp Linit_end_43
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
.Ljoin_l241:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,28(%esp)
	movl %ecx,%eax
	call cypher_52
.Ljoin_l238:
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
.Ljoin_l235:
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
.Ljoin_l242:
	jmp .Ljoin_l252
.Ljoin_l252:
	movl 12(%esp),%eax
	jmp Linit_start_42
.section .pcmap_data
.Lstackdata_l254:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l246
.long .Lframe_l255
.section .pcmap_data
.Lframe_l255:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe0
.long .Lstackdata_l254
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
.long .Ljoin_l241
.long .Lframe_l256
.section .pcmap_data
.Lframe_l256:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe0
.long .Lstackdata_l254
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
.long .Ljoin_l238
.long .Lframe_l257
.section .pcmap_data
.Lframe_l257:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe0
.long .Lstackdata_l254
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
.long .Ljoin_l235
.long .Lframe_l258
.section .pcmap_data
.Lframe_l258:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe0
.long .Lstackdata_l254
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
