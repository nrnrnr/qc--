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
	leal 36(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 36(%esp), %ecx
	movl %edx,(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l11:
Lproc_body_start_l10:
	movl %edx,4(%esp)
	leal 36(%esp), %edx
	movl %edx,8(%esp)
	movl $-16,%edx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 36(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 36(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 36(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 36(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	addl %ecx,%edx
	leal 36(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 36(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $256,%ecx
	cmpl %ecx,%edx
	jge Ljoin_l13
Ljoin_l14:
	jmp LifFalse_55
LifFalse_55:
	leal 36(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	jmp LifEnd_56
Ljoin_l13:
	jmp LifTrue_54
LifTrue_54:
	leal 36(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	movl $256,%edx
	subl %edx,%eax
	jmp LifEnd_56
LifEnd_56:
	leal 36(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
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
	leal 24(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l24:
Lproc_body_start_l23:
	movl %edx,(%esp)
	leal 24(%esp), %edx
	movl %edx,4(%esp)
	movl $-8,%edx
	movl %edx,8(%esp)
	movl 4(%esp),%edx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jge Ljoin_l36
Ljoin_l37:
	jmp LifFalse_61
LifFalse_61:
	movl $0,%edx
	jmp LifEnd_62
Ljoin_l36:
	jmp LifTrue_60
LifTrue_60:
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 24(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jge Ljoin_l42
Ljoin_l43:
	movl $0,%edx
	jmp Ljoin_l41
Ljoin_l42:
	movl $-1,%edx
	jmp Ljoin_l41
Ljoin_l41:
	jmp LifEnd_62
LifEnd_62:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l34
Ljoin_l35:
	jmp LifFalse_81
LifFalse_81:
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jge Ljoin_l32
Ljoin_l33:
	jmp LifFalse_65
LifFalse_65:
	movl $0,%edx
	jmp LifEnd_66
Ljoin_l32:
	jmp LifTrue_64
LifTrue_64:
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 24(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jl Ljoin_l48
Ljoin_l49:
	movl $0,%edx
	jmp Ljoin_l47
Ljoin_l48:
	movl $-1,%edx
	jmp Ljoin_l47
Ljoin_l47:
	jmp LifEnd_66
LifEnd_66:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l30
Ljoin_l31:
	jmp LifFalse_77
LifFalse_77:
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jl Ljoin_l28
Ljoin_l29:
	jmp LifFalse_69
LifFalse_69:
	movl $0,%edx
	jmp LifEnd_70
Ljoin_l28:
	jmp LifTrue_68
LifTrue_68:
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 24(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jge Ljoin_l45
Ljoin_l46:
	movl $0,%edx
	jmp Ljoin_l44
Ljoin_l45:
	movl $-1,%edx
	jmp Ljoin_l44
Ljoin_l44:
	jmp LifEnd_70
LifEnd_70:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l26
Ljoin_l27:
	jmp LifFalse_73
LifFalse_73:
	movl $0,%eax
	jmp LifEnd_74
Ljoin_l26:
	jmp LifTrue_72
LifTrue_72:
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	subl %ecx,%edx
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	jmp LifEnd_74
LifEnd_74:
	jmp LifEnd_78
Ljoin_l30:
	jmp LifTrue_76
LifTrue_76:
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	subl %ecx,%edx
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	jmp LifEnd_78
LifEnd_78:
	jmp LifEnd_82
Ljoin_l34:
	jmp LifTrue_80
LifTrue_80:
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	subl %ecx,%edx
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	subl %ecx,%edx
	leal 24(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $0,%eax
	jmp LifEnd_82
LifEnd_82:
	leal 24(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
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
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 44(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l56:
Lproc_body_start_l55:
	movl %edi,4(%esp)
	leal 44(%esp), %edi
	movl %edi,8(%esp)
	movl $-16,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%esp),%esi
	movl %esi,(%edi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl $0,%edi
	leal 44(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal -4(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%esi
	addl %esi,%eax
	movl $128,%esi
	leal 48(%esp), %ecx
	movl %edi,24(%esp)
	movl $-48,%edi
	addl %edi,%ecx
	movl %esi,(%ecx)
	movl %edx,28(%esp)
	call compute_bit_58
Ljoin_l81:
	movl 20(%esp),%edi
	addl %eax,%edi
	leal 44(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal -4(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%esi
	addl %esi,%eax
	movl $64,%esi
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	call compute_bit_58
Ljoin_l78:
	addl %eax,%edi
	leal 44(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal -4(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%esi
	addl %esi,%eax
	movl $32,%esi
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	call compute_bit_58
Ljoin_l75:
	addl %eax,%edi
	leal 44(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal -4(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%esi
	addl %esi,%eax
	movl $16,%esi
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	call compute_bit_58
Ljoin_l72:
	addl %eax,%edi
	leal 44(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal -4(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%esi
	addl %esi,%eax
	movl $8,%esi
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	call compute_bit_58
Ljoin_l69:
	addl %eax,%edi
	leal 44(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal -4(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%esi
	addl %esi,%eax
	movl $4,%esi
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	call compute_bit_58
Ljoin_l66:
	addl %eax,%edi
	leal 44(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal -4(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%esi
	addl %esi,%eax
	movl $2,%esi
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	call compute_bit_58
Ljoin_l63:
	addl %eax,%edi
	leal 44(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal -4(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%esi
	addl %esi,%eax
	movl $1,%esi
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	call compute_bit_58
Ljoin_l60:
	addl %eax,%edi
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl %edi,(%edx)
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	leal 44(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 52(%esp), %esp
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
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l86
.long 8
.long 20
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
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
.long 0xffffffe8
.long 0
.long 0
.long 0
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l78
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l86
.long 8
.long 20
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l75
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l86
.long 8
.long 20
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l72
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l86
.long 8
.long 20
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
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
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l69
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l86
.long 8
.long 20
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
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
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l66
.long Lframe_l92
.section .pcmap_data
Lframe_l92:
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l86
.long 8
.long 20
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
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
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l63
.long Lframe_l93
.section .pcmap_data
Lframe_l93:
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l86
.long 8
.long 20
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffd8
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
.long xor_50_gc_data
.section .pcmap
.long Ljoin_l60
.long Lframe_l94
.section .pcmap_data
Lframe_l94:
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l86
.long 8
.long 20
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
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
	movl (%edx),%edx
Linitialize_continuations_l97:
Lproc_body_start_l96:
	leal 52(%esp), %ecx
	movl %edx,12(%esp)
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%edx
	leal 52(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	jmp Lloop_start_89
Lloop_start_89:
	leal 52(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $255,%ecx
	cmpl %ecx,%edx
	jle Ljoin_l108
Ljoin_l109:
	jmp Lloop_end_85
Lloop_end_85:
	movl $0,%eax
	leal 52(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 52(%esp), %esp
	ret
Ljoin_l108:
	jmp Lloop_body_90
Lloop_body_90:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %edx
	movl %edi,16(%esp)
	movl $-8,%edi
	addl %edi,%edx
	movl $4,%edi
	addl %edi,%edx
	leal 52(%esp), %edi
	movl %edi,20(%esp)
	movl $-48,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl (%edx),%esi
	movl %esi,(%edi)
	movl $49,%edi
	leal 52(%esp), %esi
	movl $-44,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal 52(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl %eax,32(%esp)
	call tig_bounds_check
Ljoin_l107:
	leal Cmm.global_area,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	leal 52(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 52(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal -8(%esp), %esp
	leal 60(%esp), %esi
	movl $-8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl %eax,44(%esp)
	movl %esi,%eax
	leal 60(%esp), %esi
	movl $-8,%ecx
	addl %ecx,%esi
	movl $4,%ecx
	addl %ecx,%esi
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl (%esi),%esi
	movl %esi,(%ecx)
	movl $31,%esi
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	call add_mod_256_49
Ljoin_l104:
	leal -8(%esp), %esp
	movl %eax,48(%esp)
	movl 44(%esp),%eax
	leal 60(%esp), %esi
	movl $-60,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 60(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl 48(%esp),%esi
	movl %esi,(%edi)
	call add_mod_256_49
Ljoin_l101:
	leal 52(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 52(%esp), %esi
	movl $-8,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl (%esi),%esi
	movl $1,%edx
	addl %edx,%esi
	movl $4,%edx
	imull %edx,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 52(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	leal 52(%esp), %esi
	movl $-8,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	jmp Ljoin_l113
Ljoin_l113:
	movl 16(%esp),%edi
	movl 28(%esp),%esi
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
.long 0xffffffd8
.long Lstackdata_l115
.long 8
.long 8
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffdc
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
.long init_sbox_51_gc_data
.section .pcmap
.long Ljoin_l104
.long Lframe_l117
.section .pcmap_data
Lframe_l117:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l115
.long 8
.long 8
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long init_sbox_51_gc_data
.section .pcmap
.long Ljoin_l101
.long Lframe_l118
.section .pcmap_data
Lframe_l118:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l115
.long 8
.long 8
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
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
Linitialize_continuations_l121:
Lproc_body_start_l120:
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
	movl $4,%eax
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
	movl $57,%edi
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
Ljoin_l134:
	leal Cmm.global_area,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $4,%esi
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
	movl $4,%eax
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
	movl $58,%eax
	leal 56(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l131:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $4,%eax
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
	movl $58,%eax
	leal 56(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l128:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 56(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $4,%esi
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
	movl $4,%eax
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
	movl $4,%eax
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
	movl $58,%eax
	leal 56(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l125:
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
	movl $4,%edi
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
Lstackdata_l140:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l134
.long Lframe_l141
.section .pcmap_data
Lframe_l141:
.long 0xffffffc8
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l140
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffd8
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
.long 0
.long 0
.long swap_93_gc_data
.section .pcmap
.long Ljoin_l131
.long Lframe_l142
.section .pcmap_data
Lframe_l142:
.long 0xffffffc8
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l140
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
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
.long swap_93_gc_data
.section .pcmap
.long Ljoin_l128
.long Lframe_l143
.section .pcmap_data
Lframe_l143:
.long 0xffffffc8
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l140
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffd8
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
.long swap_93_gc_data
.section .pcmap
.long Ljoin_l125
.long Lframe_l144
.section .pcmap_data
Lframe_l144:
.long 0xffffffc8
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l140
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
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
.long 0x4000000b
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
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l147:
Lproc_body_start_l146:
	movl %edi,12(%esp)
	leal 76(%esp), %edi
	movl %edi,16(%esp)
	movl $-16,%edi
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	movl %esi,24(%esp)
	movl 20(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 76(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl $0,%edi
	leal 76(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $0,%edi
	leal 76(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal -8(%esp), %esp
	leal 84(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%eax
	leal 84(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal 84(%esp), %esi
	movl $-84,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl $1,%edi
	leal 84(%esp), %esi
	movl $-80,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl %edx,36(%esp)
	call add_mod_256_49
Ljoin_l175:
	leal 76(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 76(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%eax
	leal 76(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 76(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl %edi,32(%esp)
	movl $-16,%edi
	addl %edi,%edx
	movl (%edx),%edi
	movl $4,%edx
	addl %edx,%edi
	leal 76(%esp), %edx
	movl %edi,36(%esp)
	movl $-72,%edi
	addl %edi,%edx
	movl 36(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%edx)
	movl $64,%edi
	leal 76(%esp), %edx
	movl %edi,40(%esp)
	movl $-68,%edi
	addl %edi,%edx
	movl 40(%esp),%edi
	movl %edi,(%edx)
	leal 76(%esp), %edi
	movl $-76,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl %eax,44(%esp)
	call tig_bounds_check
Ljoin_l172:
	leal Cmm.global_area,%edi
	movl %esi,(%edi)
	leal -8(%esp), %esp
	movl 52(%esp),%eax
	leal 84(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 84(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $4,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $1,%ecx
	addl %ecx,%esi
	movl $4,%ecx
	imull %ecx,%esi
	addl %esi,%edi
	leal 84(%esp), %esi
	movl $-80,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 84(%esp), %edi
	movl $-84,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	call add_mod_256_49
Ljoin_l169:
	leal 76(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal -8(%esp), %esp
	leal 84(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 84(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 84(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $8,%ecx
	addl %ecx,%esi
	leal 84(%esp), %ecx
	movl $-80,%edx
	addl %edx,%ecx
	movl (%esi),%esi
	movl %esi,(%ecx)
	leal 84(%esp), %esi
	movl $-84,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call swap_93
Ljoin_l166:
	leal 76(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%eax
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $4,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	leal 76(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 76(%esp), %edx
	movl %edi,48(%esp)
	movl $-72,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $66,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-76,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	movl %eax,52(%esp)
	call tig_bounds_check
Ljoin_l163:
	leal Cmm.global_area,%edi
	movl 48(%esp),%esi
	movl %esi,(%edi)
	leal 76(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 76(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 76(%esp), %edx
	movl %edi,56(%esp)
	movl $-72,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $66,%edi
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 76(%esp), %edi
	movl $-76,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_bounds_check
Ljoin_l160:
	leal Cmm.global_area,%edi
	movl %esi,(%edi)
	leal -8(%esp), %esp
	movl 60(%esp),%eax
	leal 84(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 84(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $1,%ecx
	addl %ecx,%esi
	movl $4,%ecx
	imull %ecx,%esi
	addl %esi,%edi
	leal 84(%esp), %esi
	movl $-80,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 84(%esp), %edi
	movl $-84,%esi
	addl %esi,%edi
	movl 64(%esp),%esi
	movl %esi,(%edi)
	call add_mod_256_49
Ljoin_l157:
	leal 76(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 76(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $67,%eax
	leal 76(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 76(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l154:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 76(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 76(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $1,%ecx
	addl %ecx,%esi
	movl $4,%ecx
	imull %ecx,%esi
	addl %esi,%edi
	leal 76(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal -8(%esp), %esp
	leal 84(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%eax
	leal 84(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 84(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $4,%ecx
	addl %ecx,%esi
	leal 84(%esp), %ecx
	movl $-80,%edx
	addl %edx,%ecx
	movl (%esi),%esi
	movl %esi,(%ecx)
	leal 84(%esp), %esi
	movl $-84,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call xor_50
Ljoin_l151:
	leal 76(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%esi
	movl 12(%esp),%edi
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
.long 0xffffffd0
.long Lstackdata_l180
.long 8
.long 18
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l172
.long Lframe_l182
.section .pcmap_data
Lframe_l182:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l180
.long 8
.long 18
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffc0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
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
.long 0x4000000a
.long 0
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l169
.long Lframe_l183
.section .pcmap_data
Lframe_l183:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l180
.long 8
.long 18
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l166
.long Lframe_l184
.section .pcmap_data
Lframe_l184:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l180
.long 8
.long 18
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l163
.long Lframe_l185
.section .pcmap_data
Lframe_l185:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l180
.long 8
.long 18
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffc0
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
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l160
.long Lframe_l186
.section .pcmap_data
Lframe_l186:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l180
.long 8
.long 18
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffc0
.long 0
.long 0
.long 0xffffffe8
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
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l157
.long Lframe_l187
.section .pcmap_data
Lframe_l187:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l180
.long 8
.long 18
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long encrypt_94_gc_data
.section .pcmap
.long Ljoin_l154
.long Lframe_l188
.section .pcmap_data
Lframe_l188:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l180
.long 8
.long 18
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0x4000000b
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
.long Ljoin_l151
.long Lframe_l189
.section .pcmap_data
Lframe_l189:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffd0
.long Lstackdata_l180
.long 8
.long 18
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
	leal -52(%esp), %esp
	leal 52(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l192:
Lproc_body_start_l191:
	leal 52(%esp), %edx
	movl %edi,8(%esp)
	movl $-20,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl $0,%edi
	leal 52(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl $0,%edi
	leal 52(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal Lgbl_92,%edi
	leal 52(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal Lgbl_92,%edi
	leal 52(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl %ecx,12(%esp)
	call tig_getchar
Ljoin_l216:
	leal 52(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	movl $16,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_119
Lloop_start_119:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 52(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal Lgbl_92,%eax
	leal 52(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l213:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l209
Ljoin_l210:
	jmp Lloop_end_113
Lloop_end_113:
	leal 52(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	leal 52(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 52(%esp), %esp
	ret
Ljoin_l209:
	jmp Lloop_body_120
Lloop_body_120:
	leal 52(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	movl $12,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 52(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %edi,16(%esp)
	movl $-52,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl %eax,20(%esp)
	call tig_ord
Ljoin_l208:
	leal Cmm.global_area,%edi
	movl 16(%esp),%ecx
	movl %ecx,(%edi)
	leal -4(%esp), %esp
	leal 56(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	movl %eax,28(%esp)
	movl %edi,%eax
	leal 56(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl 28(%esp),%ecx
	movl %ecx,(%edi)
	call encrypt_94
Ljoin_l205:
	call tig_chr
Ljoin_l202:
	leal -4(%esp), %esp
	movl %eax,32(%esp)
	movl 24(%esp),%eax
	leal 56(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl 32(%esp),%ecx
	movl %ecx,(%edi)
	call tig_concat
Ljoin_l199:
	leal 52(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	movl $12,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_getchar
Ljoin_l196:
	leal 52(%esp), %edi
	movl $-20,%edx
	addl %edx,%edi
	movl $16,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_119
.section .pcmap_data
Lstackdata_l221:
.long 1
.long 0xffffffec
.section .pcmap
.long Ljoin_l216
.long Lframe_l222
.section .pcmap_data
Lframe_l222:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l221
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l213
.long Lframe_l223
.section .pcmap_data
Lframe_l223:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l221
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x4000000b
.long 0
.long 0
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l208
.long Lframe_l224
.section .pcmap_data
Lframe_l224:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l221
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffd4
.long 0
.long 0
.long 0xffffffe0
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
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l205
.long Lframe_l225
.section .pcmap_data
Lframe_l225:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l221
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffd4
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
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l202
.long Lframe_l226
.section .pcmap_data
Lframe_l226:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l221
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffd4
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
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l199
.long Lframe_l227
.section .pcmap_data
Lframe_l227:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l221
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long cypher_52_gc_data
.section .pcmap
.long Ljoin_l196
.long Lframe_l228
.section .pcmap_data
Lframe_l228:
.long 0xffffffcc
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l221
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l231:
Lproc_body_start_l230:
	leal 32(%esp), %edx
	movl %edi,4(%esp)
	movl $-8,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $1032,%eax
	addl %eax,%edi
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%edi
	jg Ljoin_l247
Ljoin_l248:
	jmp Lalc_gc_45
Ljoin_l247:
	jmp Lalc_gc_45
Lalc_gc_45:
	movl %ecx,8(%esp)
	call tig_call_gc
Ljoin_l246:
Lalc_46:
	movl $1032,%edi
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edi,(%ecx)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $4,%ecx
	addl %ecx,%edi
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $1032,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl $256,%ecx
	movl %ecx,(%edi)
	movl $1,%ecx
	jmp Linit_start_42
Linit_start_42:
	movl $0,%edx
	movl $4,%eax
	movl %edi,12(%esp)
	movl %ecx,%edi
	imull %eax,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%eax
	movl %eax,%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl $1,%edi
	addl %edi,%ecx
	movl $257,%edi
	cmpl %edi,%ecx
	jle Ljoin_l242
Ljoin_l243:
	jmp Linit_end_43
Linit_end_43:
	leal 32(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 32(%esp), %eax
	movl $-8,%edi
	addl %edi,%eax
	call init_sbox_51
Ljoin_l241:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 32(%esp), %eax
	movl $-8,%esi
	addl %esi,%eax
	call cypher_52
Ljoin_l238:
	leal 32(%esp), %esi
	movl $-32,%ecx
	addl %ecx,%esi
	movl %eax,(%esi)
	call tig_print
Ljoin_l235:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 4(%esp),%edi
	leal 32(%esp), %esp
	ret
Ljoin_l242:
	jmp Ljoin_l252
Ljoin_l252:
	movl %eax,%edi
	movl 20(%esp),%esi
	jmp Linit_start_42
.section .pcmap_data
Lstackdata_l254:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l246
.long Lframe_l255
.section .pcmap_data
Lframe_l255:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l254
.long 8
.long 8
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l241
.long Lframe_l256
.section .pcmap_data
Lframe_l256:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l254
.long 8
.long 8
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l238
.long Lframe_l257
.section .pcmap_data
Lframe_l257:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l254
.long 8
.long 8
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe4
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l235
.long Lframe_l258
.section .pcmap_data
Lframe_l258:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l254
.long 8
.long 8
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe4
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
