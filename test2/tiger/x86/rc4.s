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
Lgbl_92:
.long 0
.byte 0
.section .text
add_mod_256_49:
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 32(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 32(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l11:
Lproc_body_start_l10:
	movl %ecx,4(%esp)
	leal 32(%esp), %ecx
	movl %eax,8(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 32(%esp), %eax
	movl %edx,12(%esp)
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	addl %edx,%ecx
	leal 32(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $256,%ecx
	cmpl %ecx,%edx
	jge Ljoin_l13
Ljoin_l14:
	jmp LifFalse_55
LifFalse_55:
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	jmp LifEnd_56
Ljoin_l13:
	jmp LifTrue_54
LifTrue_54:
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	movl $256,%ecx
	subl %ecx,%eax
	jmp LifEnd_56
LifEnd_56:
	leal 32(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %esp
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
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l24:
Lproc_body_start_l23:
	movl %eax,(%esp)
	leal 20(%esp), %eax
	movl %ecx,4(%esp)
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 20(%esp), %ecx
	movl %edx,8(%esp)
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	cmpl %edx,%eax
	jge Ljoin_l36
Ljoin_l37:
	jmp LifFalse_61
LifFalse_61:
	movl $0,%eax
	jmp LifEnd_62
Ljoin_l36:
	jmp LifTrue_60
LifTrue_60:
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	cmpl %eax,%edx
	jge Ljoin_l42
Ljoin_l43:
	movl $0,%eax
	jmp Ljoin_l41
Ljoin_l42:
	movl $-1,%eax
	jmp Ljoin_l41
Ljoin_l41:
	jmp LifEnd_62
LifEnd_62:
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l34
Ljoin_l35:
	jmp LifFalse_81
LifFalse_81:
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %ecx,%eax
	jge Ljoin_l32
Ljoin_l33:
	jmp LifFalse_65
LifFalse_65:
	movl $0,%eax
	jmp LifEnd_66
Ljoin_l32:
	jmp LifTrue_64
LifTrue_64:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	cmpl %eax,%ecx
	jl Ljoin_l48
Ljoin_l49:
	movl $0,%eax
	jmp Ljoin_l47
Ljoin_l48:
	movl $-1,%eax
	jmp Ljoin_l47
Ljoin_l47:
	jmp LifEnd_66
LifEnd_66:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l30
Ljoin_l31:
	jmp LifFalse_77
LifFalse_77:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	cmpl %edx,%eax
	jl Ljoin_l28
Ljoin_l29:
	jmp LifFalse_69
LifFalse_69:
	movl $0,%eax
	jmp LifEnd_70
Ljoin_l28:
	jmp LifTrue_68
LifTrue_68:
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	cmpl %eax,%edx
	jge Ljoin_l45
Ljoin_l46:
	movl $0,%eax
	jmp Ljoin_l44
Ljoin_l45:
	movl $-1,%eax
	jmp Ljoin_l44
Ljoin_l44:
	jmp LifEnd_70
LifEnd_70:
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l26
Ljoin_l27:
	jmp LifFalse_73
LifFalse_73:
	movl $0,%eax
	jmp LifEnd_74
Ljoin_l26:
	jmp LifTrue_72
LifTrue_72:
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	subl %eax,%edx
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	jmp LifEnd_74
LifEnd_74:
	jmp LifEnd_78
Ljoin_l30:
	jmp LifTrue_76
LifTrue_76:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	subl %eax,%ecx
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	jmp LifEnd_78
LifEnd_78:
	jmp LifEnd_82
Ljoin_l34:
	jmp LifTrue_80
LifTrue_80:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	subl %eax,%ecx
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	subl %eax,%ecx
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $0,%eax
	jmp LifEnd_82
LifEnd_82:
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
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
	leal -72(%esp), %esp
	leal 72(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 72(%esp), %ecx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 72(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l56:
Lproc_body_start_l55:
	movl %edx,4(%esp)
	leal 72(%esp), %edx
	movl %eax,8(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	leal 72(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal 72(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	movl $0,%eax
	leal 72(%esp), %edx
	movl %ecx,12(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 72(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal -4(%esp), %esp
	leal 76(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $128,%ecx
	movl %ebx,20(%esp)
	leal 76(%esp), %ebx
	movl %ebp,24(%esp)
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl %edx,28(%esp)
	call compute_bit_58
Ljoin_l81:
	movl 24(%esp),%ecx
	addl %eax,%ecx
	leal 72(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	leal 76(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $64,%edx
	leal 76(%esp), %ebx
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl %ecx,32(%esp)
	call compute_bit_58
Ljoin_l78:
	movl 28(%esp),%ecx
	addl %eax,%ecx
	leal 72(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	leal 76(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $32,%edx
	leal 76(%esp), %ebx
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl %ecx,36(%esp)
	call compute_bit_58
Ljoin_l75:
	movl 32(%esp),%ecx
	addl %eax,%ecx
	leal 72(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	leal 76(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $16,%edx
	leal 76(%esp), %ebx
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl %ecx,40(%esp)
	call compute_bit_58
Ljoin_l72:
	movl 36(%esp),%ecx
	addl %eax,%ecx
	leal 72(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	leal 76(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	leal 76(%esp), %ebx
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl %ecx,44(%esp)
	call compute_bit_58
Ljoin_l69:
	movl 40(%esp),%ecx
	addl %eax,%ecx
	leal 72(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	leal 76(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	leal 76(%esp), %ebx
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl %ecx,48(%esp)
	call compute_bit_58
Ljoin_l66:
	movl 44(%esp),%ecx
	addl %eax,%ecx
	leal 72(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	leal 76(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $2,%edx
	leal 76(%esp), %ebx
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl %ecx,52(%esp)
	call compute_bit_58
Ljoin_l63:
	movl 48(%esp),%ecx
	addl %eax,%ecx
	leal 72(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	leal 76(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $1,%edx
	leal 76(%esp), %ebx
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl %ecx,56(%esp)
	call compute_bit_58
Ljoin_l60:
	movl 52(%esp),%ecx
	addl %eax,%ecx
	leal 72(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 72(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	movl 20(%esp),%ebp
	leal 80(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l86:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l81
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l86
.long 0x80000008
.long 0x80000014
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
.long 0x80000000
.long 0
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l78
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l86
.long 0x80000008
.long 0x80000014
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
.long 0x80000000
.long 0
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l75
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l86
.long 0x80000008
.long 0x80000014
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
.long 0x80000000
.long 0
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l72
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l86
.long 0x80000008
.long 0x80000014
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
.long 0x80000000
.long 0
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l69
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l86
.long 0x80000008
.long 0x80000014
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
.long 0x80000000
.long 0
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l66
.long Lframe_l92
.section .pcmap_data
Lframe_l92:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l86
.long 0x80000008
.long 0x80000014
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
.long 0x80000000
.long 0
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l63
.long Lframe_l93
.section .pcmap_data
Lframe_l93:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l86
.long 0x80000008
.long 0x80000014
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
.long 0x80000000
.long 0
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l60
.long Lframe_l94
.section .pcmap_data
Lframe_l94:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffc4
.long Lstackdata_l86
.long 0x80000008
.long 0x80000014
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
.long 0x80000000
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
	leal -52(%esp), %esp
	leal 52(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l97:
Lproc_body_start_l96:
	leal 52(%esp), %edx
	movl %eax,12(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 52(%esp), %edx
	movl %ecx,16(%esp)
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	jmp Lloop_start_89
Lloop_start_89:
	leal 52(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $255,%eax
	cmpl %eax,%edx
	jle Ljoin_l108
Ljoin_l109:
	jmp Lloop_end_85
Lloop_end_85:
	movl $0,%eax
	leal 52(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 52(%esp), %esp
	ret
Ljoin_l108:
	jmp Lloop_body_90
Lloop_body_90:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 52(%esp), %edx
	movl %ebx,20(%esp)
	movl $-8,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	leal 52(%esp), %ebx
	movl %ebp,24(%esp)
	movl $-48,%ebp
	addl %ebp,%ebx
	movl (%edx),%ebp
	movl %ebp,(%ebx)
	movl $49,%ebx
	leal 52(%esp), %ebp
	movl $-44,%edx
	addl %edx,%ebp
	movl %ebx,(%ebp)
	leal 52(%esp), %ebx
	movl $-52,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %ecx,28(%esp)
	call tig_bounds_check
Ljoin_l107:
	leal Cmm.global_area,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal -8(%esp), %esp
	leal 60(%esp), %ecx
	movl $-8,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl %eax,40(%esp)
	movl %ebx,%eax
	leal 60(%esp), %ebx
	movl $-8,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	leal 60(%esp), %ecx
	movl $-60,%ebp
	addl %ebp,%ecx
	movl (%ebx),%ebp
	movl %ebp,(%ecx)
	movl $31,%ecx
	leal 60(%esp), %ebp
	movl $-56,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl %edx,44(%esp)
	call add_mod_256_49
Ljoin_l104:
	leal -8(%esp), %esp
	movl %eax,48(%esp)
	movl 40(%esp),%eax
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	call add_mod_256_49
Ljoin_l101:
	leal 52(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 52(%esp), %ecx
	movl $-8,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $1,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	imull %ecx,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	leal 52(%esp), %eax
	movl $-8,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	jmp Ljoin_l113
Ljoin_l113:
	movl 24(%esp),%ebp
	movl 20(%esp),%ebx
	jmp Lloop_start_89
.section .pcmap_data
Lstackdata_l115:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l107
.long Lframe_l116
.section .pcmap_data
Lframe_l116:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l115
.long 0x80000008
.long 0x80000008
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
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long init_sbox_51_gc_data
.section .pcmap
.long Ljoin_l104
.long Lframe_l117
.section .pcmap_data
Lframe_l117:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l115
.long 0x80000008
.long 0x80000008
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
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0
.long 0x80000000
.long 0
.long init_sbox_51_gc_data
.section .pcmap
.long Ljoin_l101
.long Lframe_l118
.section .pcmap_data
Lframe_l118:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l115
.long 0x80000008
.long 0x80000008
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
.long 0x80000000
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
Linitialize_continuations_l121:
Lproc_body_start_l120:
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
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 64(%esp), %eax
	movl %ebx,28(%esp)
	movl $-16,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	leal 64(%esp), %ebx
	movl %ebp,32(%esp)
	movl $-60,%ebp
	addl %ebp,%ebx
	movl (%eax),%ebp
	movl %ebp,(%ebx)
	movl $57,%ebx
	leal 64(%esp), %ebp
	movl $-56,%eax
	addl %eax,%ebp
	movl %ebx,(%ebp)
	leal 64(%esp), %ebx
	movl $-64,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l134:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 64(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $4,%ecx
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
	movl $58,%ebx
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
Ljoin_l131:
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
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 64(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	leal 64(%esp), %ebx
	movl $-60,%ebp
	addl %ebp,%ebx
	movl (%eax),%ebp
	movl %ebp,(%ebx)
	movl $58,%ebx
	leal 64(%esp), %ebp
	movl $-56,%eax
	addl %eax,%ebp
	movl %ebx,(%ebp)
	leal 64(%esp), %ebx
	movl $-64,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl %ecx,44(%esp)
	call tig_bounds_check
Ljoin_l128:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 64(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 64(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $1,%edx
	addl %edx,%ebx
	movl $4,%edx
	imull %edx,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal 64(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 64(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 64(%esp), %edx
	movl $-60,%ebp
	addl %ebp,%edx
	movl (%eax),%ebp
	movl %ebp,(%edx)
	movl $58,%edx
	leal 64(%esp), %ebp
	movl $-56,%eax
	addl %eax,%ebp
	movl %edx,(%ebp)
	leal 64(%esp), %edx
	movl $-64,%ebp
	addl %ebp,%edx
	movl %ecx,(%edx)
	call tig_bounds_check
Ljoin_l125:
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
	movl $4,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	leal 64(%esp), %ebx
	movl $-16,%edx
	addl %edx,%ebx
	movl $8,%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $1,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	imull %ebx,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	movl $0,%eax
	leal 64(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%ebx
	movl 32(%esp),%ebp
	leal 72(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l140:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l134
.long Lframe_l141
.section .pcmap_data
Lframe_l141:
.long 0xffffffc0
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l140
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
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long swap_93_gc_data
.section .pcmap
.long Ljoin_l131
.long Lframe_l142
.section .pcmap_data
Lframe_l142:
.long 0xffffffc0
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l140
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
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long swap_93_gc_data
.section .pcmap
.long Ljoin_l128
.long Lframe_l143
.section .pcmap_data
Lframe_l143:
.long 0xffffffc0
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l140
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
.long 0xffffffec
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
.long swap_93_gc_data
.section .pcmap
.long Ljoin_l125
.long Lframe_l144
.section .pcmap_data
Lframe_l144:
.long 0xffffffc0
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l140
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
.long 0x40000007
.long 0
.long 0x80000000
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
	leal -84(%esp), %esp
	leal 84(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 84(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l147:
Lproc_body_start_l146:
	movl %eax,12(%esp)
	leal 84(%esp), %eax
	movl %edx,16(%esp)
	movl $-16,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal 84(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	movl $0,%eax
	leal 84(%esp), %edx
	movl %ecx,20(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 84(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal -8(%esp), %esp
	leal 92(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	leal 92(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 92(%esp), %edx
	movl %ebx,32(%esp)
	movl $-92,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl $1,%edx
	leal 92(%esp), %ebx
	movl $-88,%ecx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	call add_mod_256_49
Ljoin_l175:
	leal 84(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 84(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	leal 84(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ebx
	leal 84(%esp), %ecx
	movl %ebp,28(%esp)
	movl $-16,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl (%ebp),%ecx
	movl $4,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	leal 84(%esp), %ecx
	movl %esi,32(%esp)
	movl $-16,%esi
	addl %esi,%ecx
	movl (%ecx),%esi
	movl $4,%ecx
	addl %ecx,%esi
	leal 84(%esp), %ecx
	movl %edi,36(%esp)
	movl $-80,%edi
	addl %edi,%ecx
	movl (%esi),%edi
	movl %edi,(%ecx)
	movl $64,%ecx
	leal 84(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 84(%esp), %ecx
	movl $-84,%edi
	addl %edi,%ecx
	movl %ebp,(%ecx)
	movl %eax,40(%esp)
	movl %edx,44(%esp)
	call tig_bounds_check
Ljoin_l172:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal -8(%esp), %esp
	movl 48(%esp),%eax
	leal 92(%esp), %ebx
	movl $-16,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	leal 92(%esp), %ebx
	movl $-16,%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $4,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $1,%edx
	addl %edx,%ebx
	movl $4,%edx
	imull %edx,%ebx
	addl %ebx,%ecx
	leal 92(%esp), %ebx
	movl $-88,%edx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	leal 92(%esp), %edx
	movl $-92,%ebx
	addl %ebx,%edx
	movl 52(%esp),%ebx
	movl %ebx,(%edx)
	call add_mod_256_49
Ljoin_l169:
	leal 84(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal -8(%esp), %esp
	leal 92(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 92(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 92(%esp), %ecx
	movl $-16,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $8,%ecx
	addl %ecx,%ebx
	leal 92(%esp), %ecx
	movl $-88,%ebp
	addl %ebp,%ecx
	movl (%ebx),%ebp
	movl %ebp,(%ecx)
	leal 92(%esp), %ecx
	movl $-92,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call swap_93
Ljoin_l166:
	leal 84(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	leal 84(%esp), %ecx
	movl $-16,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl (%ebp),%ecx
	movl $4,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	leal 84(%esp), %ecx
	movl $-16,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	leal 84(%esp), %ecx
	movl $-80,%edi
	addl %edi,%ecx
	movl (%ebx),%edi
	movl %edi,(%ecx)
	movl $66,%ecx
	leal 84(%esp), %edi
	movl $-76,%ebx
	addl %ebx,%edi
	movl %ecx,(%edi)
	leal 84(%esp), %ecx
	movl $-84,%edi
	addl %edi,%ecx
	movl %ebp,(%ecx)
	movl %eax,48(%esp)
	movl %edx,52(%esp)
	call tig_bounds_check
Ljoin_l163:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	leal 84(%esp), %ecx
	movl $-16,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl (%ebp),%ecx
	movl $4,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	leal 84(%esp), %ecx
	movl $-16,%edi
	addl %edi,%ecx
	movl (%ecx),%edi
	movl $8,%ecx
	addl %ecx,%edi
	leal 84(%esp), %ecx
	movl $-80,%ebx
	addl %ebx,%ecx
	movl (%edi),%ebx
	movl %ebx,(%ecx)
	movl $66,%ecx
	leal 84(%esp), %ebx
	movl $-76,%edi
	addl %edi,%ebx
	movl %ecx,(%ebx)
	leal 84(%esp), %ecx
	movl $-84,%ebx
	addl %ebx,%ecx
	movl %ebp,(%ecx)
	movl %eax,56(%esp)
	movl %edx,60(%esp)
	call tig_bounds_check
Ljoin_l160:
	leal Cmm.global_area,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	movl 56(%esp),%eax
	leal 92(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 92(%esp), %ecx
	movl $-16,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl $8,%ecx
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $1,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	imull %ebp,%ecx
	addl %ecx,%edx
	leal 92(%esp), %ecx
	movl $-88,%ebp
	addl %ebp,%ecx
	movl (%edx),%ebp
	movl %ebp,(%ecx)
	leal 92(%esp), %ecx
	movl $-92,%ebp
	addl %ebp,%ecx
	movl 64(%esp),%ebp
	movl %ebp,(%ecx)
	call add_mod_256_49
Ljoin_l157:
	leal 84(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 84(%esp), %eax
	movl $-16,%ebp
	addl %ebp,%eax
	movl $8,%ebp
	addl %ebp,%eax
	leal 84(%esp), %ebp
	movl $-80,%ebx
	addl %ebx,%ebp
	movl (%eax),%ebx
	movl %ebx,(%ebp)
	movl $67,%ebx
	leal 84(%esp), %ebp
	movl $-76,%eax
	addl %eax,%ebp
	movl %ebx,(%ebp)
	leal 84(%esp), %ebx
	movl $-84,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl %ecx,64(%esp)
	call tig_bounds_check
Ljoin_l154:
	leal Cmm.global_area,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 84(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	leal 84(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal -8(%esp), %esp
	leal 92(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	leal 92(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 92(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	leal 92(%esp), %ebx
	movl $-88,%ebp
	addl %ebp,%ebx
	movl (%edx),%ebp
	movl %ebp,(%ebx)
	leal 92(%esp), %ebx
	movl $-92,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	call xor_50
Ljoin_l151:
	leal 84(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%ebx
	movl 28(%esp),%ebp
	movl 32(%esp),%esi
	movl 36(%esp),%edi
	leal 88(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l180:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l175
.long Lframe_l181
.section .pcmap_data
Lframe_l181:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
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
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l172
.long Lframe_l182
.section .pcmap_data
Lframe_l182:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd4
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
.long 0x40000007
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l169
.long Lframe_l183
.section .pcmap_data
Lframe_l183:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l166
.long Lframe_l184
.section .pcmap_data
Lframe_l184:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l163
.long Lframe_l185
.section .pcmap_data
Lframe_l185:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
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
.long 0xffffffe0
.long 0
.long 0
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l160
.long Lframe_l186
.section .pcmap_data
Lframe_l186:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0xffffffdc
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
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l157
.long Lframe_l187
.section .pcmap_data
Lframe_l187:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l154
.long Lframe_l188
.section .pcmap_data
Lframe_l188:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l151
.long Lframe_l189
.section .pcmap_data
Lframe_l189:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0x80000000
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
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l192:
Lproc_body_start_l191:
	leal 64(%esp), %ecx
	movl %eax,8(%esp)
	movl $-20,%eax
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 64(%esp), %ecx
	movl %edx,12(%esp)
	movl $-20,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 64(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_92,%eax
	leal 64(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_92,%eax
	leal 64(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
Ljoin_l216:
	leal 64(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_119
Lloop_start_119:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 64(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	leal 64(%esp), %edx
	movl %ebx,16(%esp)
	movl $-64,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	leal Lgbl_92,%edx
	leal 64(%esp), %ebx
	movl $-60,%eax
	addl %eax,%ebx
	movl %edx,(%ebx)
	movl %ecx,20(%esp)
	call tig_compare_str
Ljoin_l213:
	leal Cmm.global_area,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l209
Ljoin_l210:
	jmp Lloop_end_113
Lloop_end_113:
	leal 64(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	leal 64(%esp), %esp
	ret
Ljoin_l209:
	jmp Lloop_body_120
Lloop_body_120:
	leal 64(%esp), %ebx
	movl $-20,%ecx
	addl %ecx,%ebx
	movl $12,%ecx
	addl %ecx,%ebx
	movl (%ebx),%eax
	leal Cmm.global_area,%ebx
	movl (%ebx),%ecx
	leal 64(%esp), %ebx
	movl $-20,%edx
	addl %edx,%ebx
	movl $16,%edx
	addl %edx,%ebx
	leal 64(%esp), %edx
	movl %ebp,24(%esp)
	movl $-64,%ebp
	addl %ebp,%edx
	movl (%ebx),%ebp
	movl %ebp,(%edx)
	movl %eax,28(%esp)
	movl %ecx,32(%esp)
	call tig_ord
Ljoin_l208:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal -4(%esp), %esp
	leal 68(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,40(%esp)
	movl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	call encrypt_94
Ljoin_l205:
	call tig_chr
Ljoin_l202:
	leal -4(%esp), %esp
	movl %eax,44(%esp)
	movl 32(%esp),%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	call tig_concat
Ljoin_l199:
	leal 64(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
Ljoin_l196:
	leal 64(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Ljoin_l220
Ljoin_l220:
	movl 24(%esp),%ebp
	movl 16(%esp),%ebx
	jmp Lloop_start_119
.section .pcmap_data
Lstackdata_l222:
.long 1
.long 0xffffffec
.section .pcmap
.long Ljoin_l216
.long Lframe_l223
.section .pcmap_data
Lframe_l223:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffcc
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l213
.long Lframe_l224
.section .pcmap_data
Lframe_l224:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffcc
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
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
.long 0xffffffd4
.long 0x80000000
.long 0
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l208
.long Lframe_l225
.section .pcmap_data
Lframe_l225:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffcc
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0
.long 0
.long 0x80000000
.long 0
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l205
.long Lframe_l226
.section .pcmap_data
Lframe_l226:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffcc
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l202
.long Lframe_l227
.section .pcmap_data
Lframe_l227:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffcc
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l199
.long Lframe_l228
.section .pcmap_data
Lframe_l228:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffcc
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd8
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
.long 0x80000000
.long 0
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l196
.long Lframe_l229
.section .pcmap_data
Lframe_l229:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffcc
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd8
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
.long 0x80000000
.long 0
.long cypher_52_gc_data
.section .text
.section .data
cypher_52_gc_data:
.long 5
.long 1
.long 1
.long 1
.long 0
.long 0
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l232:
Lproc_body_start_l231:
	leal 32(%esp), %ecx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $1032,%eax
	addl %eax,%ecx
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jg Ljoin_l248
Ljoin_l249:
	jmp Lalc_46
Ljoin_l248:
	jmp Lalc_gc_45
Lalc_gc_45:
	call tig_call_gc
Ljoin_l247:
	jmp Lalc_46
Lalc_46:
	movl $1032,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %edx,8(%esp)
	movl $1032,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	movl $256,%eax
	movl %eax,(%ecx)
	movl $1,%eax
	jmp Linit_start_42
Linit_start_42:
	movl $0,%edx
	movl %ebx,12(%esp)
	movl $4,%ebx
	movl %ebp,16(%esp)
	movl %eax,%ebp
	imull %ebx,%ebp
	movl %ecx,%ebx
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl $1,%edx
	addl %edx,%eax
	movl $257,%edx
	cmpl %edx,%eax
	jle Ljoin_l243
Ljoin_l244:
	jmp Linit_end_43
Linit_end_43:
	leal 32(%esp), %edx
	movl $-8,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 32(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %ecx,%eax
	call init_sbox_51
Ljoin_l242:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 32(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,20(%esp)
	call cypher_52
Ljoin_l239:
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l236:
	leal Cmm.global_area,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	movl 16(%esp),%ebp
	leal 32(%esp), %esp
	ret
Ljoin_l243:
	jmp Ljoin_l253
Ljoin_l253:
	movl 16(%esp),%ebp
	movl 12(%esp),%ebx
	jmp Linit_start_42
.section .pcmap_data
Lstackdata_l255:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l247
.long Lframe_l256
.section .pcmap_data
Lframe_l256:
.long 0xffffffe0
.long 0x80000004
.long 0x40000006
.long Lstackdata_l255
.long 0x80000008
.long 0x80000008
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
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l242
.long Lframe_l257
.section .pcmap_data
Lframe_l257:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l255
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l239
.long Lframe_l258
.section .pcmap_data
Lframe_l258:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l255
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
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
.long 0xfffffff4
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l236
.long Lframe_l259
.section .pcmap_data
Lframe_l259:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l255
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
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
.long 0xfffffff4
.long 0x80000000
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
