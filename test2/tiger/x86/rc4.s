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
	leal -36(%esp), %esp
	movl $4,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl %eax,(%esp)
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l11:
Lproc_body_start_l10:
	movl %edx,4(%esp)
	movl $-16,%edx
	movl %ecx,8(%esp)
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl $-16,%edx
	movl %eax,12(%esp)
	leal 36(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-16,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-16,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-16,%edx
	movl %ebx,16(%esp)
	leal 36(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%ebx
	leal 36(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $12,%ecx
	movl $-16,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $256,%eax
	cmpl %eax,%ecx
	jge Ljoin_l13
Ljoin_l14:
	jmp LifFalse_55
LifFalse_55:
	movl $12,%eax
	movl $-16,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp LifEnd_56
Ljoin_l13:
	jmp LifTrue_54
LifTrue_54:
	movl $256,%edx
	movl $12,%ecx
	movl $-16,%ebx
	leal 36(%esp), %eax
	addl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	subl %edx,%eax
	jmp LifEnd_56
LifEnd_56:
	movl $8,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	leal 44(%esp), %esp
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
	leal -24(%esp), %esp
	movl $4,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l24:
Lproc_body_start_l23:
	movl %eax,(%esp)
	movl $-8,%eax
	movl %edx,4(%esp)
	leal 24(%esp), %edx
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	movl %ecx,8(%esp)
	leal 24(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-8,%edx
	movl %ebx,12(%esp)
	leal 24(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	cmpl %ecx,%eax
	jge Ljoin_l36
Ljoin_l37:
	jmp LifFalse_61
LifFalse_61:
	movl $0,%eax
	jmp LifEnd_62
Ljoin_l36:
	jmp LifTrue_60
LifTrue_60:
	movl $8,%ecx
	movl $-8,%ebx
	leal 24(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $4,%ebx
	movl $-8,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	cmpl %ebx,%ecx
	jge Ljoin_l42
Ljoin_l43:
	movl $0,%eax
	jmp Ljoin_l41
Ljoin_l42:
	movl $1,%eax
	jmp Ljoin_l41
Ljoin_l41:
	jmp LifEnd_62
LifEnd_62:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l34
Ljoin_l35:
	jmp LifFalse_81
LifFalse_81:
	movl $4,%eax
	movl $-8,%ecx
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-8,%ebx
	leal 24(%esp), %edx
	addl %ebx,%edx
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
	movl $8,%ecx
	movl $-8,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	movl $-8,%ebx
	leal 24(%esp), %eax
	addl %ebx,%eax
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	jl Ljoin_l48
Ljoin_l49:
	movl $0,%eax
	jmp Ljoin_l47
Ljoin_l48:
	movl $1,%eax
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
	movl $4,%eax
	movl $-8,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-8,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	cmpl %ecx,%eax
	jl Ljoin_l28
Ljoin_l29:
	jmp LifFalse_69
LifFalse_69:
	movl $0,%eax
	jmp LifEnd_70
Ljoin_l28:
	jmp LifTrue_68
LifTrue_68:
	movl $8,%ecx
	movl $-8,%ebx
	leal 24(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $4,%ebx
	movl $-8,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	cmpl %ebx,%ecx
	jge Ljoin_l45
Ljoin_l46:
	movl $0,%eax
	jmp Ljoin_l44
Ljoin_l45:
	movl $1,%eax
	jmp Ljoin_l44
Ljoin_l44:
	jmp LifEnd_70
LifEnd_70:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l26
Ljoin_l27:
	jmp LifFalse_73
LifFalse_73:
	movl $0,%eax
	jmp LifEnd_74
Ljoin_l26:
	jmp LifTrue_72
LifTrue_72:
	movl $4,%ecx
	movl $-8,%ebx
	leal 24(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl $-8,%ebx
	leal 24(%esp), %eax
	addl %ebx,%eax
	movl (%eax),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	subl %ecx,%edx
	movl $8,%ecx
	movl $-8,%ebx
	leal 24(%esp), %eax
	addl %ebx,%eax
	movl (%eax),%ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $4,%edx
	movl $-8,%ebx
	leal 24(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl (%ecx),%eax
	jmp LifEnd_74
LifEnd_74:
	jmp LifEnd_78
Ljoin_l30:
	jmp LifTrue_76
LifTrue_76:
	movl $4,%ecx
	movl $-8,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $4,%ebx
	movl $-8,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	subl %ecx,%ebx
	movl $4,%ecx
	movl $-8,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $4,%edx
	movl $-8,%ebx
	leal 24(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl (%ecx),%eax
	jmp LifEnd_78
LifEnd_78:
	jmp LifEnd_82
Ljoin_l34:
	jmp LifTrue_80
LifTrue_80:
	movl $4,%ecx
	movl $-8,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $4,%ebx
	movl $-8,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	subl %ecx,%ebx
	movl $4,%ecx
	movl $-8,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $4,%edx
	movl $-8,%ebx
	leal 24(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl $-8,%ebx
	leal 24(%esp), %eax
	addl %ebx,%eax
	movl (%eax),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	subl %edx,%ecx
	movl $8,%edx
	movl $-8,%ebx
	leal 24(%esp), %eax
	addl %ebx,%eax
	movl (%eax),%ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $0,%eax
	jmp LifEnd_82
LifEnd_82:
	movl $4,%ecx
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl 8(%esp),%ecx
	movl %ecx,(%ebx)
	movl 12(%esp),%ebx
	leal 28(%esp), %esp
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
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 72(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 72(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l56:
Lproc_body_start_l55:
	movl %ecx,4(%esp)
	movl $-16,%ecx
	movl %edx,8(%esp)
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-16,%edx
	movl %eax,12(%esp)
	leal 72(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-16,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	movl $12,%edx
	movl $-16,%ecx
	movl %ebx,16(%esp)
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $12,%eax
	movl $-16,%ebx
	leal 72(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal -4(%esp), %esp
	movl $-16,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl %eax,24(%esp)
	movl %ebx,%eax
	movl $128,%ebx
	movl $-76,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	call compute_bit_58
Ljoin_l81:
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $12,%ecx
	movl $-16,%ebx
	leal 72(%esp), %eax
	addl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	movl $-16,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	movl $64,%ebx
	movl $-76,%edx
	movl %ebp,28(%esp)
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl %ebx,(%ebp)
	movl %ecx,32(%esp)
	call compute_bit_58
Ljoin_l78:
	movl 28(%esp),%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $12,%ecx
	movl $-16,%ebx
	leal 72(%esp), %eax
	addl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	movl $-16,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	movl $32,%ebx
	movl $-76,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl %ebx,(%ebp)
	movl %ecx,36(%esp)
	call compute_bit_58
Ljoin_l75:
	movl 32(%esp),%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $12,%ecx
	movl $-16,%ebx
	leal 72(%esp), %eax
	addl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	movl $-16,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	movl $16,%ebx
	movl $-76,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl %ebx,(%ebp)
	movl %ecx,40(%esp)
	call compute_bit_58
Ljoin_l72:
	movl 36(%esp),%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $12,%ecx
	movl $-16,%ebx
	leal 72(%esp), %eax
	addl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	movl $-16,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	movl $8,%ebx
	movl $-76,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl %ebx,(%ebp)
	movl %ecx,44(%esp)
	call compute_bit_58
Ljoin_l69:
	movl 40(%esp),%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $12,%ecx
	movl $-16,%ebx
	leal 72(%esp), %eax
	addl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	movl $-16,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	movl $4,%ebx
	movl $-76,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl %ebx,(%ebp)
	movl %ecx,48(%esp)
	call compute_bit_58
Ljoin_l66:
	movl 44(%esp),%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $12,%ecx
	movl $-16,%ebx
	leal 72(%esp), %eax
	addl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	movl $-16,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	movl $2,%ebx
	movl $-76,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl %ebx,(%ebp)
	movl %ecx,52(%esp)
	call compute_bit_58
Ljoin_l63:
	movl 48(%esp),%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $12,%ecx
	movl $-16,%ebx
	leal 72(%esp), %eax
	addl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal -4(%esp), %esp
	movl $-16,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	movl $1,%ebx
	movl $-76,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl %ebx,(%ebp)
	movl %ecx,56(%esp)
	call compute_bit_58
Ljoin_l60:
	movl 52(%esp),%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl $12,%ecx
	movl $-16,%ebx
	leal 72(%esp), %eax
	addl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl 12(%esp),%ecx
	movl %ecx,(%ebx)
	movl 16(%esp),%ebx
	movl 24(%esp),%ebp
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
.long 0xffffffd0
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
.long 0xffffffd0
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
.long 0xffffffd0
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
.long 0xffffffd0
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
.long 0xffffffd0
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
.long 0xffffffd0
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
.long 0xffffffd0
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
	leal -56(%esp), %esp
	leal 56(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l97:
Lproc_body_start_l96:
	movl $-8,%edx
	movl %eax,12(%esp)
	leal 56(%esp), %eax
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	movl $0,%eax
	movl $4,%edx
	movl %ecx,16(%esp)
	movl $-8,%ecx
	movl %ebx,20(%esp)
	leal 56(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_89
Lloop_start_89:
	movl $4,%eax
	movl $-8,%ebx
	leal 56(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $255,%edx
	cmpl %edx,%eax
	jle Ljoin_l108
Ljoin_l109:
	jmp Lloop_end_85
Lloop_end_85:
	movl $0,%eax
	movl $0,%edx
	leal 56(%esp), %ebx
	addl %edx,%ebx
	movl 16(%esp),%edx
	movl %edx,(%ebx)
	movl 20(%esp),%ebx
	leal 56(%esp), %esp
	ret
Ljoin_l108:
	jmp Lloop_body_90
Lloop_body_90:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-8,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $4,%ecx
	movl $-8,%edx
	movl %ebp,24(%esp)
	leal 56(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl $-52,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	movl (%ebp),%ecx
	movl %ecx,(%edx)
	movl $49,%ecx
	movl $-48,%edx
	leal 56(%esp), %ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl $-56,%ecx
	leal 56(%esp), %ebp
	addl %ecx,%ebp
	movl %ebx,(%ebp)
	movl %eax,28(%esp)
	call tig_bounds_check
Ljoin_l107:
	leal Cmm.global_area,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	movl $-8,%eax
	leal 56(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-8,%edx
	leal 56(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	leal -8(%esp), %esp
	movl $-8,%ebx
	leal 64(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl %eax,40(%esp)
	movl %ebx,%eax
	movl $4,%ebx
	movl $-8,%edx
	leal 64(%esp), %ebp
	addl %edx,%ebp
	addl %ebx,%ebp
	movl $-64,%ebx
	leal 64(%esp), %edx
	addl %ebx,%edx
	movl (%ebp),%ebx
	movl %ebx,(%edx)
	movl $31,%edx
	movl $-60,%ebx
	leal 64(%esp), %ebp
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl %ecx,44(%esp)
	call add_mod_256_49
Ljoin_l104:
	leal -8(%esp), %esp
	movl %eax,48(%esp)
	movl 40(%esp),%eax
	movl $-64,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl $-60,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	call add_mod_256_49
Ljoin_l101:
	movl $4,%ebx
	movl $1,%edx
	movl $4,%ecx
	movl $-8,%ebp
	movl %esi,44(%esp)
	leal 56(%esp), %esi
	addl %ebp,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %edx,%ecx
	imull %ebx,%ecx
	movl $4,%ebx
	movl $-8,%edx
	leal 56(%esp), %esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $1,%eax
	movl $4,%ebx
	movl $-8,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $4,%eax
	movl $-8,%edx
	leal 56(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	jmp Ljoin_l113
Ljoin_l113:
	movl 44(%esp),%esi
	movl 24(%esp),%ebp
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
.long 0xffffffc8
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l115
.long 0x80000008
.long 0x80000008
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
.long 0xffffffe4
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
.long 0xffffffc8
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l115
.long 0x80000008
.long 0x80000008
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
.long 0xffffffe8
.long 0xffffffec
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
.long 0xffffffc8
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l115
.long 0x80000008
.long 0x80000008
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
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,12(%esp)
	leal 72(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 72(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l121:
Lproc_body_start_l120:
	movl %ecx,16(%esp)
	movl $-16,%ecx
	movl %edx,20(%esp)
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-16,%edx
	movl %eax,24(%esp)
	leal 72(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-16,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 20(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	movl $-16,%ecx
	movl %ebx,28(%esp)
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-16,%ecx
	movl %ebp,32(%esp)
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	addl %ebx,%ebp
	movl $-68,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	movl (%ebp),%ebx
	movl %ebx,(%ecx)
	movl $57,%ecx
	movl $-64,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $-72,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl %edx,36(%esp)
	call tig_bounds_check
Ljoin_l134:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $1,%ecx
	movl $4,%edx
	movl $-16,%ebp
	leal 72(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	imull %eax,%edx
	movl $4,%eax
	movl $-16,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl $12,%edx
	movl $-16,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	movl $-16,%eax
	leal 72(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl (%eax),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $8,%ebx
	movl $-16,%eax
	leal 72(%esp), %ebp
	addl %eax,%ebp
	addl %ebx,%ebp
	movl $-68,%ebx
	leal 72(%esp), %eax
	addl %ebx,%eax
	movl (%ebp),%ebx
	movl %ebx,(%eax)
	movl $58,%eax
	movl $-64,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	movl $-72,%eax
	leal 72(%esp), %ebp
	addl %eax,%ebp
	movl %ecx,(%ebp)
	movl %edx,40(%esp)
	call tig_bounds_check
Ljoin_l131:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	movl $-16,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl (%edx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $4,%ebp
	movl $-16,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ebp,%ebx
	movl $-68,%ebp
	leal 72(%esp), %edx
	addl %ebp,%edx
	movl (%ebx),%ebp
	movl %ebp,(%edx)
	movl $58,%edx
	movl $-64,%ebp
	leal 72(%esp), %ebx
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl $-72,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,44(%esp)
	call tig_bounds_check
Ljoin_l128:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $1,%ecx
	movl $8,%edx
	movl $-16,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	imull %eax,%edx
	movl $4,%eax
	movl $-16,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	addl %edx,%eax
	movl $4,%edx
	movl $1,%ebp
	movl $4,%ecx
	movl $-16,%ebx
	movl %esi,48(%esp)
	leal 72(%esp), %esi
	addl %ebx,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %ebp,%ecx
	imull %edx,%ecx
	movl $4,%edx
	movl $-16,%ebp
	leal 72(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	movl (%ebp),%esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	movl $-16,%eax
	leal 72(%esp), %esi
	addl %eax,%esi
	movl (%esi),%eax
	movl (%eax),%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	movl $8,%esi
	movl $-16,%eax
	leal 72(%esp), %ebp
	addl %eax,%ebp
	addl %esi,%ebp
	movl $-68,%esi
	leal 72(%esp), %eax
	addl %esi,%eax
	movl (%ebp),%esi
	movl %esi,(%eax)
	movl $58,%eax
	movl $-64,%esi
	leal 72(%esp), %ebp
	addl %esi,%ebp
	movl %eax,(%ebp)
	movl $-72,%eax
	leal 72(%esp), %ebp
	addl %eax,%ebp
	movl %ecx,(%ebp)
	movl %edx,52(%esp)
	call tig_bounds_check
Ljoin_l125:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl $-16,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $4,%eax
	movl $1,%ecx
	movl $8,%ebp
	movl $-16,%esi
	leal 72(%esp), %ebx
	addl %esi,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ecx,%ebp
	imull %eax,%ebp
	movl $4,%eax
	movl $-16,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %ebp,%eax
	movl (%edx),%ebp
	movl %ebp,(%eax)
	movl $0,%eax
	movl $8,%ebp
	leal 72(%esp), %edx
	addl %ebp,%edx
	movl 24(%esp),%ebp
	movl %ebp,(%edx)
	movl 28(%esp),%ebx
	movl 32(%esp),%ebp
	movl 48(%esp),%esi
	leal 80(%esp), %esp
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
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffd0
.long Lstackdata_l140
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
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
.long 0xffffffdc
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
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffd0
.long Lstackdata_l140
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
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
.long 0xffffffe0
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
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffd0
.long Lstackdata_l140
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long swap_93_gc_data
.section .pcmap
.long Ljoin_l125
.long Lframe_l144
.section .pcmap_data
Lframe_l144:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffd0
.long Lstackdata_l140
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
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
.long 0
.long 0
.long 0
.long 0xffffffec
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
	leal -76(%esp), %esp
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l147:
Lproc_body_start_l146:
	movl %eax,12(%esp)
	movl $-16,%eax
	movl %ecx,16(%esp)
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-16,%ecx
	movl %edx,20(%esp)
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 16(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	movl $8,%edx
	movl $-16,%ecx
	movl %ebx,24(%esp)
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $12,%ebx
	movl $-16,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl $-16,%eax
	leal 84(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl $4,%ecx
	movl $-16,%ebx
	leal 84(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl $-84,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $1,%ecx
	movl $-80,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call add_mod_256_49
Ljoin_l175:
	movl $4,%ecx
	movl $-16,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-16,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $8,%edx
	movl $-16,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ebx
	movl $4,%ecx
	movl %ebp,28(%esp)
	movl $-16,%ebp
	movl %esi,32(%esp)
	leal 76(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	movl (%ebp),%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	movl $4,%esi
	movl $-16,%ebp
	movl %edi,36(%esp)
	leal 76(%esp), %edi
	addl %ebp,%edi
	movl (%edi),%ebp
	addl %esi,%ebp
	movl $-72,%esi
	leal 76(%esp), %edi
	addl %esi,%edi
	movl (%ebp),%esi
	movl %esi,(%edi)
	movl $64,%esi
	movl $-68,%edi
	leal 76(%esp), %ebp
	addl %edi,%ebp
	movl %esi,(%ebp)
	movl $-76,%ebp
	leal 76(%esp), %esi
	addl %ebp,%esi
	movl %ecx,(%esi)
	movl %eax,40(%esp)
	movl %edx,44(%esp)
	call tig_bounds_check
Ljoin_l172:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal -8(%esp), %esp
	movl 48(%esp),%eax
	movl $4,%ebx
	movl $1,%ecx
	movl $4,%edx
	movl $-16,%esi
	leal 84(%esp), %ebp
	addl %esi,%ebp
	movl (%ebp),%esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ecx,%edx
	imull %ebx,%edx
	movl $4,%ebx
	movl $-16,%ecx
	leal 84(%esp), %esi
	addl %ecx,%esi
	movl (%esi),%ecx
	movl (%ecx),%esi
	addl %ebx,%esi
	movl (%esi),%ebx
	addl %edx,%ebx
	movl $-80,%edx
	leal 84(%esp), %esi
	addl %edx,%esi
	movl (%ebx),%edx
	movl %edx,(%esi)
	movl $-84,%edx
	leal 84(%esp), %esi
	addl %edx,%esi
	movl 52(%esp),%edx
	movl %edx,(%esi)
	call add_mod_256_49
Ljoin_l169:
	movl $8,%ecx
	movl $-16,%edx
	leal 76(%esp), %esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal -8(%esp), %esp
	movl $-16,%eax
	leal 84(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-16,%ecx
	leal 84(%esp), %esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl $-16,%esi
	leal 84(%esp), %ebx
	addl %esi,%ebx
	movl (%ebx),%esi
	addl %ecx,%esi
	movl $-80,%ecx
	leal 84(%esp), %ebx
	addl %ecx,%ebx
	movl (%esi),%ecx
	movl %ecx,(%ebx)
	movl $-84,%ecx
	leal 84(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	call swap_93
Ljoin_l166:
	movl $-16,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	movl $-16,%ebx
	leal 76(%esp), %esi
	addl %ebx,%esi
	movl (%esi),%ebx
	movl (%ebx),%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	movl $4,%esi
	movl $-16,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %esi,%ebx
	movl $-72,%esi
	leal 76(%esp), %ebp
	addl %esi,%ebp
	movl (%ebx),%esi
	movl %esi,(%ebp)
	movl $66,%ebp
	movl $-68,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	movl %ebp,(%ebx)
	movl $-76,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl %eax,48(%esp)
	movl %edx,52(%esp)
	call tig_bounds_check
Ljoin_l163:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $1,%ecx
	movl $4,%edx
	movl $-16,%ebp
	leal 76(%esp), %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	imull %eax,%edx
	movl $4,%eax
	movl $-16,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	addl %edx,%eax
	movl (%eax),%edx
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $4,%eax
	movl $-16,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $8,%ebx
	movl $-16,%ecx
	leal 76(%esp), %esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %ebx,%ecx
	movl $-72,%ebx
	leal 76(%esp), %esi
	addl %ebx,%esi
	movl (%ecx),%ebx
	movl %ebx,(%esi)
	movl $66,%ebx
	movl $-68,%esi
	leal 76(%esp), %ecx
	addl %esi,%ecx
	movl %ebx,(%ecx)
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,56(%esp)
	call tig_bounds_check
Ljoin_l160:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal -8(%esp), %esp
	movl 56(%esp),%eax
	movl $4,%ebp
	movl $1,%ecx
	movl $8,%edx
	movl $-16,%ebx
	leal 84(%esp), %esi
	addl %ebx,%esi
	movl (%esi),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	imull %ebp,%edx
	movl $4,%ebp
	movl $-16,%ecx
	leal 84(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %edx,%ebp
	movl $-80,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	movl (%ebp),%edx
	movl %edx,(%ebx)
	movl $-84,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	movl 64(%esp),%edx
	movl %edx,(%ebx)
	call add_mod_256_49
Ljoin_l157:
	movl $8,%ecx
	movl $-16,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	movl $-16,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	movl $-16,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	addl %edx,%ebp
	movl $-72,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl (%ebp),%edx
	movl %edx,(%ecx)
	movl $67,%ecx
	movl $-68,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl $-76,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	call tig_bounds_check
Ljoin_l154:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	movl $4,%eax
	movl $1,%ebx
	movl $8,%ecx
	movl $-16,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	movl $4,%eax
	movl $-16,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl (%ebx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	addl %ecx,%eax
	movl $12,%ecx
	movl $-16,%ebp
	leal 76(%esp), %ebx
	addl %ebp,%ebx
	addl %ecx,%ebx
	movl (%eax),%ecx
	movl %ecx,(%ebx)
	leal -8(%esp), %esp
	movl $-16,%ecx
	leal 84(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	movl $-16,%ebx
	leal 84(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $4,%ebp
	movl $-16,%ebx
	leal 84(%esp), %edx
	addl %ebx,%edx
	addl %ebp,%edx
	movl $-80,%ebp
	leal 84(%esp), %ebx
	addl %ebp,%ebx
	movl (%edx),%ebp
	movl %ebp,(%ebx)
	movl $-84,%ebx
	leal 84(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	call xor_50
Ljoin_l151:
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%ebx
	movl 28(%esp),%ebp
	movl 32(%esp),%esi
	movl 36(%esp),%edi
	leal 80(%esp), %esp
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
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
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l169
.long Lframe_l183
.section .pcmap_data
Lframe_l183:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l166
.long Lframe_l184
.section .pcmap_data
Lframe_l184:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l163
.long Lframe_l185
.section .pcmap_data
Lframe_l185:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0xffffffd8
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
.long 0xffffffe8
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0xffffffd8
.long 0
.long 0
.long 0xffffffe4
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
.long 0x40000009
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
.long 0x80000000
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l154
.long Lframe_l188
.section .pcmap_data
Lframe_l188:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
.long 0x40000007
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l180
.long 0x80000008
.long 0x80000012
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
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
	leal -56(%esp), %esp
	leal 56(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l192:
Lproc_body_start_l191:
	movl $-20,%ecx
	movl %eax,8(%esp)
	leal 56(%esp), %eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $4,%ecx
	movl %edx,12(%esp)
	movl $-20,%edx
	movl %ebx,16(%esp)
	leal 56(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $8,%ebx
	movl $-20,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal Lgbl_92,%eax
	movl $12,%edx
	movl $-20,%ebx
	leal 56(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_92,%eax
	movl $16,%ecx
	movl $-20,%edx
	leal 56(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
Ljoin_l216:
	movl $16,%ecx
	movl $-20,%edx
	leal 56(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_119
Lloop_start_119:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $16,%eax
	movl $-20,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-56,%eax
	leal 56(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal Lgbl_92,%eax
	movl $-52,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
Ljoin_l213:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l209
Ljoin_l210:
	jmp Lloop_end_113
Lloop_end_113:
	movl $12,%eax
	movl $-20,%ecx
	leal 56(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $0,%ebx
	leal 56(%esp), %ecx
	addl %ebx,%ecx
	movl 12(%esp),%ebx
	movl %ebx,(%ecx)
	movl 16(%esp),%ebx
	leal 56(%esp), %esp
	ret
Ljoin_l209:
	jmp Lloop_body_120
Lloop_body_120:
	movl $12,%ebx
	movl $-20,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ebx
	movl $16,%edx
	movl $-20,%ecx
	movl %ebp,20(%esp)
	leal 56(%esp), %ebp
	addl %ecx,%ebp
	addl %edx,%ebp
	movl $-56,%edx
	leal 56(%esp), %ecx
	addl %edx,%ecx
	movl (%ebp),%edx
	movl %edx,(%ecx)
	movl %eax,24(%esp)
	call tig_ord
Ljoin_l208:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	leal -4(%esp), %esp
	movl $-20,%ecx
	leal 60(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,32(%esp)
	movl %ebx,%eax
	movl $-60,%ebx
	leal 60(%esp), %ecx
	addl %ebx,%ecx
	movl 32(%esp),%ebx
	movl %ebx,(%ecx)
	call encrypt_94
Ljoin_l205:
	call tig_chr
Ljoin_l202:
	leal -4(%esp), %esp
	movl %eax,36(%esp)
	movl 28(%esp),%eax
	movl $-60,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	call tig_concat
Ljoin_l199:
	movl $12,%ecx
	movl $-20,%edx
	leal 56(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
Ljoin_l196:
	movl $16,%ebx
	movl $-20,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	jmp Ljoin_l220
Ljoin_l220:
	movl 20(%esp),%ebp
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
.long 0xffffffc8
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
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
.long 0xffffffc8
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
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
.long 0x40000007
.long 0x80000000
.long 0
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l208
.long Lframe_l225
.section .pcmap_data
Lframe_l225:
.long 0xffffffc8
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xffffffe0
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
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l205
.long Lframe_l226
.section .pcmap_data
Lframe_l226:
.long 0xffffffc8
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l202
.long Lframe_l227
.section .pcmap_data
Lframe_l227:
.long 0xffffffc8
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l199
.long Lframe_l228
.section .pcmap_data
Lframe_l228:
.long 0xffffffc8
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffdc
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
.long 0xffffffc8
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l222
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffdc
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
	movl $-8,%ecx
	movl %eax,4(%esp)
	leal 32(%esp), %eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $1032,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
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
	movl %edx,8(%esp)
	call tig_call_gc
Ljoin_l247:
	movl 8(%esp),%edx
	jmp Lalc_46
Lalc_46:
	movl $1032,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	addl %eax,%ecx
	movl $1032,%eax
	movl %edx,8(%esp)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl %edx,(%eax)
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
	movl $4,%edx
	movl $-8,%ebx
	leal 32(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl $-8,%ecx
	leal 32(%esp), %ebp
	addl %ecx,%ebp
	movl %ebp,%eax
	call init_sbox_51
Ljoin_l242:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $-8,%eax
	leal 32(%esp), %edx
	addl %eax,%edx
	movl %edx,%eax
	movl %ecx,20(%esp)
	call cypher_52
Ljoin_l239:
	movl $-32,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l236:
	leal Cmm.global_area,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
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
.long 0xffffffe8
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
