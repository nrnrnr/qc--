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
	leal -28(%esp), %esp
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,(%esp)
	leal 28(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l10:
.Lproc_body_start_l9:
	leal 28(%esp), %esi
	movl $-16,%edx
	addl %edx,%esi
	movl %eax,(%esi)
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l15:
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $256,%eax
	cmpl %eax,%ecx
	jge LifTrue_54
LifFalse_55:
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp LifEnd_56
LifTrue_54:
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $256,%ecx
	subl %ecx,%eax
LifEnd_56:
	leal 28(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%esi
	leal 36(%esp), %esp
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
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 16(%esp), %edx
	movl (%edx),%edx
	movl %edx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l21:
.Lproc_body_start_l20:
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
.Lbranch_target_l26:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jge LifTrue_60
LifFalse_61:
	movl $0,%eax
	jmp LifEnd_62
LifTrue_60:
.Lbranch_target_l30:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jge .Lbranch_target_l29
.Lbranch_target_l28:
	movl $0,%eax
	jmp .Lbranch_target_l27
.Lbranch_target_l29:
	movl $-1,%eax
.Lbranch_target_l27:
LifEnd_62:
.Lbranch_target_l31:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_80
LifFalse_81:
.Lbranch_target_l32:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jge LifTrue_64
LifFalse_65:
	movl $0,%eax
	jmp LifEnd_66
LifTrue_64:
.Lbranch_target_l36:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jl .Lbranch_target_l35
.Lbranch_target_l34:
	movl $0,%eax
	jmp .Lbranch_target_l33
.Lbranch_target_l35:
	movl $-1,%eax
.Lbranch_target_l33:
LifEnd_66:
.Lbranch_target_l37:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_76
LifFalse_77:
.Lbranch_target_l38:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jl LifTrue_68
LifFalse_69:
	movl $0,%eax
	jmp LifEnd_70
LifTrue_68:
.Lbranch_target_l42:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jge .Lbranch_target_l41
.Lbranch_target_l40:
	movl $0,%eax
	jmp .Lbranch_target_l39
.Lbranch_target_l41:
	movl $-1,%eax
.Lbranch_target_l39:
LifEnd_70:
.Lbranch_target_l43:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_72
LifFalse_73:
	movl $0,%eax
	jmp LifEnd_74
LifTrue_72:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	subl %eax,%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
LifEnd_74:
	jmp LifEnd_78
LifTrue_76:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	subl %eax,%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
LifEnd_78:
	jmp LifEnd_82
LifTrue_80:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	subl %eax,%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	subl %eax,%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%eax
LifEnd_82:
	leal 16(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
	leal 20(%esp), %esp
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
.Linitialize_continuations_l49:
.Lproc_body_start_l48:
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
	movl $0,%edx
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $128,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call compute_bit_58
.Lcall_successor_l74:
	addl %eax,%esi
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $64,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call compute_bit_58
.Lcall_successor_l71:
	addl %eax,%esi
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $32,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call compute_bit_58
.Lcall_successor_l68:
	addl %eax,%esi
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call compute_bit_58
.Lcall_successor_l65:
	addl %eax,%esi
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call compute_bit_58
.Lcall_successor_l62:
	addl %eax,%esi
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call compute_bit_58
.Lcall_successor_l59:
	addl %eax,%esi
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $2,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call compute_bit_58
.Lcall_successor_l56:
	addl %eax,%esi
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $1,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call compute_bit_58
.Lcall_successor_l53:
	addl %eax,%esi
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
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
.section .pcmap_data
.Lstackdata_l79:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l74
.long .Lframe_l80
.section .pcmap_data
.Lframe_l80:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l79
.long 2
.long 20
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
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l71
.long .Lframe_l81
.section .pcmap_data
.Lframe_l81:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l79
.long 2
.long 20
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
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l68
.long .Lframe_l82
.section .pcmap_data
.Lframe_l82:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l79
.long 2
.long 20
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
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l65
.long .Lframe_l83
.section .pcmap_data
.Lframe_l83:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l79
.long 2
.long 20
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
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l62
.long .Lframe_l84
.section .pcmap_data
.Lframe_l84:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l79
.long 2
.long 20
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
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l59
.long .Lframe_l85
.section .pcmap_data
.Lframe_l85:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l79
.long 2
.long 20
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
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l56
.long .Lframe_l86
.section .pcmap_data
.Lframe_l86:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l79
.long 2
.long 20
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
.long xor_50_gc_data
.section .pcmap
.long .Lcall_successor_l53
.long .Lframe_l87
.section .pcmap_data
.Lframe_l87:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l79
.long 2
.long 20
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
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,24(%esp)
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
.Linitialize_continuations_l89:
.Lproc_body_start_l88:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%ecx
	leal 36(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
Lloop_start_89:
.Lbranch_target_l103:
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $255,%eax
	cmpl %eax,%ecx
	jle Lloop_body_90
Lloop_end_85:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	leal 36(%esp), %esp
	ret
Lloop_body_90:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	leal 36(%esp), %eax
	movl $-32,%esi
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $49,%edx
	leal 36(%esp), %eax
	movl $-28,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l99:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ebp
	leal -8(%esp), %esp
	leal 44(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 44(%esp), %edi
	movl $-44,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	movl $31,%ecx
	leal 44(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call add_mod_256_49
.Lcall_successor_l96:
	movl %eax,%edx
	leal -8(%esp), %esp
	movl %esi,%eax
	leal 44(%esp), %ecx
	movl $-44,%esi
	addl %esi,%ecx
	movl %ebp,(%ecx)
	leal 44(%esp), %ecx
	movl $-40,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call add_mod_256_49
.Lcall_successor_l93:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl $-8,%ebp
	addl %ebp,%edx
	movl $4,%ebp
	addl %ebp,%edx
	movl (%edx),%edx
	movl $1,%ebp
	addl %ebp,%edx
	movl $4,%ebp
	imull %ebp,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 36(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_89
.section .pcmap_data
.Lstackdata_l105:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l99
.long .Lframe_l106
.section .pcmap_data
.Lframe_l106:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l105
.long 3
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
.long 0xffffffe8
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
.long init_sbox_51_gc_data
.section .pcmap
.long .Lcall_successor_l96
.long .Lframe_l107
.section .pcmap_data
.Lframe_l107:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l105
.long 3
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long init_sbox_51_gc_data
.section .pcmap
.long .Lcall_successor_l93
.long .Lframe_l108
.section .pcmap_data
.Lframe_l108:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l105
.long 3
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
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
.Linitialize_continuations_l110:
.Lproc_body_start_l109:
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
	movl $4,%ecx
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
	movl $57,%eax
	leal 44(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 44(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l123:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
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
	movl $4,%ecx
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
	movl $58,%eax
	leal 44(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 44(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l120:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
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
	movl $58,%eax
	leal 44(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 44(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l117:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
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
	movl $4,%ecx
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
	movl $4,%ecx
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
	movl $58,%eax
	leal 44(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 44(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l114:
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
	movl $4,%ecx
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
.Lstackdata_l129:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l123
.long .Lframe_l130
.section .pcmap_data
.Lframe_l130:
.long 0x8000000c
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l129
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
.long swap_93_gc_data
.section .pcmap
.long .Lcall_successor_l120
.long .Lframe_l131
.section .pcmap_data
.Lframe_l131:
.long 0x8000000c
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l129
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
.long swap_93_gc_data
.section .pcmap
.long .Lcall_successor_l117
.long .Lframe_l132
.section .pcmap_data
.Lframe_l132:
.long 0x8000000c
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l129
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
.long swap_93_gc_data
.section .pcmap
.long .Lcall_successor_l114
.long .Lframe_l133
.section .pcmap_data
.Lframe_l133:
.long 0x8000000c
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l129
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
.long 0x4000000a
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
	leal -48(%esp), %esp
	leal 48(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl (%edx),%edx
	movl %edx,28(%esp)
	movl %edi,24(%esp)
	movl %esi,20(%esp)
	movl %ebp,16(%esp)
	movl %ebx,12(%esp)
.Linitialize_continuations_l135:
.Lproc_body_start_l134:
	leal 48(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 48(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 48(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 48(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 56(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 56(%esp), %ecx
	movl $-56,%ebx
	addl %ebx,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $1,%edx
	leal 56(%esp), %ecx
	movl $-52,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call add_mod_256_49
.Lcall_successor_l163:
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 48(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ebp
	leal 48(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 48(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	leal 48(%esp), %edi
	movl $-44,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $64,%eax
	leal 48(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l160:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal -8(%esp), %esp
	movl %ebp,%eax
	leal 56(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 56(%esp), %ecx
	movl $-16,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ecx
	movl $4,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ecx
	movl $1,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	imull %ebp,%ecx
	addl %ecx,%edx
	leal 56(%esp), %ecx
	movl $-52,%ebp
	addl %ebp,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 56(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	call add_mod_256_49
.Lcall_successor_l157:
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 56(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 56(%esp), %ecx
	movl $-16,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $8,%ecx
	addl %ecx,%ebx
	leal 56(%esp), %ecx
	movl $-52,%ebp
	addl %ebp,%ecx
	movl (%ebx),%ebx
	movl %ebx,(%ecx)
	leal 56(%esp), %ecx
	movl $-56,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call swap_93
.Lcall_successor_l154:
	leal 48(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal 48(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-44,%esi
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $66,%edx
	leal 48(%esp), %eax
	movl $-40,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l151:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal 48(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
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
	movl (%eax),%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 48(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	leal 48(%esp), %edi
	movl $-44,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $66,%eax
	leal 48(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l148:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal -8(%esp), %esp
	movl %ebp,%eax
	leal 56(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 56(%esp), %ecx
	movl $-16,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ecx
	movl $8,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ecx
	movl $1,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	imull %ebp,%ecx
	addl %ecx,%edx
	leal 56(%esp), %ecx
	movl $-52,%ebp
	addl %ebp,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 56(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	call add_mod_256_49
.Lcall_successor_l145:
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal 48(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-44,%ebp
	addl %ebp,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $67,%edx
	leal 48(%esp), %eax
	movl $-40,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l142:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal 48(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	leal 48(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 56(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 56(%esp), %ebx
	movl $-16,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	leal 56(%esp), %ecx
	movl $-52,%ebp
	addl %ebp,%ecx
	movl (%ebx),%ebx
	movl %ebx,(%ecx)
	leal 56(%esp), %ecx
	movl $-56,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call xor_50
.Lcall_successor_l139:
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%edi
	movl 20(%esp),%esi
	movl 16(%esp),%ebp
	movl 12(%esp),%ebx
	leal 52(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l168:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l163
.long .Lframe_l169
.section .pcmap_data
.Lframe_l169:
.long 0x80000008
.long 0xffffffd0
.long 0xffffffec
.long .Lstackdata_l168
.long 4
.long 18
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 9
.long 0xffffffe0
.long 7
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
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l160
.long .Lframe_l170
.section .pcmap_data
.Lframe_l170:
.long 0x80000008
.long 0xffffffd0
.long 0xffffffec
.long .Lstackdata_l168
.long 4
.long 18
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 9
.long 0xffffffe0
.long 7
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0x40000007
.long 0
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
.long .Lcall_successor_l157
.long .Lframe_l171
.section .pcmap_data
.Lframe_l171:
.long 0x80000008
.long 0xffffffd0
.long 0xffffffec
.long .Lstackdata_l168
.long 4
.long 18
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 9
.long 0xffffffe0
.long 7
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
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l154
.long .Lframe_l172
.section .pcmap_data
.Lframe_l172:
.long 0x80000008
.long 0xffffffd0
.long 0xffffffec
.long .Lstackdata_l168
.long 4
.long 18
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 9
.long 0xffffffe0
.long 7
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
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l151
.long .Lframe_l173
.section .pcmap_data
.Lframe_l173:
.long 0x80000008
.long 0xffffffd0
.long 0xffffffec
.long .Lstackdata_l168
.long 4
.long 18
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 9
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l148
.long .Lframe_l174
.section .pcmap_data
.Lframe_l174:
.long 0x80000008
.long 0xffffffd0
.long 0xffffffec
.long .Lstackdata_l168
.long 4
.long 18
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 9
.long 0xffffffe0
.long 7
.long 0xffffffdc
.long 0
.long 0
.long 0x40000009
.long 0x40000007
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
.long .Lcall_successor_l145
.long .Lframe_l175
.section .pcmap_data
.Lframe_l175:
.long 0x80000008
.long 0xffffffd0
.long 0xffffffec
.long .Lstackdata_l168
.long 4
.long 18
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 9
.long 0xffffffe0
.long 7
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
.long encrypt_94_gc_data
.section .pcmap
.long .Lcall_successor_l142
.long .Lframe_l176
.section .pcmap_data
.Lframe_l176:
.long 0x80000008
.long 0xffffffd0
.long 0xffffffec
.long .Lstackdata_l168
.long 4
.long 18
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 9
.long 0xffffffe0
.long 7
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
.long 0x40000007
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
.long .Lcall_successor_l139
.long .Lframe_l177
.section .pcmap_data
.Lframe_l177:
.long 0x80000008
.long 0xffffffd0
.long 0xffffffec
.long .Lstackdata_l168
.long 4
.long 18
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 9
.long 0xffffffe0
.long 7
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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,16(%esp)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
.Linitialize_continuations_l179:
.Lproc_body_start_l178:
	leal 40(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%edx
	leal 40(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $0,%edx
	leal 40(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal Lgbl_92,%edx
	leal 40(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal Lgbl_92,%edx
	leal 40(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_getchar
.Lcall_successor_l201:
	leal 40(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_119:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 40(%esp), %ecx
	movl $-20,%eax
	addl %eax,%ecx
	movl $16,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_92,%ecx
	leal 40(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l198:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l205:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_120
Lloop_end_113:
	leal 40(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	leal 40(%esp), %esp
	ret
Lloop_body_120:
	leal 40(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 40(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	leal 40(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l195:
	movl %eax,%edx
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal -4(%esp), %esp
	leal 44(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	leal 44(%esp), %edi
	movl $-44,%ecx
	addl %ecx,%edi
	movl %edx,(%edi)
	call encrypt_94
.Lcall_successor_l192:
	call tig_chr
.Lcall_successor_l189:
	movl %eax,%edx
	leal -4(%esp), %esp
	movl %esi,%eax
	leal 44(%esp), %ecx
	movl $-44,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call tig_concat
.Lcall_successor_l186:
	leal 40(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l183:
	leal 40(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_119
.section .pcmap_data
.Lstackdata_l207:
.long 1
.long 0xffffffec
.section .pcmap
.long .Lcall_successor_l201
.long .Lframe_l208
.section .pcmap_data
.Lframe_l208:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe8
.long .Lstackdata_l207
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffe4
.long 10
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
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l198
.long .Lframe_l209
.section .pcmap_data
.Lframe_l209:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe8
.long .Lstackdata_l207
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffe4
.long 10
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
.long 0x4000000a
.long 0
.long 0
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l195
.long .Lframe_l210
.section .pcmap_data
.Lframe_l210:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe8
.long .Lstackdata_l207
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffe4
.long 10
.long 0xffffffe0
.long 0
.long 0
.long 0x4000000a
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
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l192
.long .Lframe_l211
.section .pcmap_data
.Lframe_l211:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe8
.long .Lstackdata_l207
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffe4
.long 10
.long 0xffffffe0
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
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l189
.long .Lframe_l212
.section .pcmap_data
.Lframe_l212:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe8
.long .Lstackdata_l207
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffe4
.long 10
.long 0xffffffe0
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
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l186
.long .Lframe_l213
.section .pcmap_data
.Lframe_l213:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe8
.long .Lstackdata_l207
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffe4
.long 10
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
.long cypher_52_gc_data
.section .pcmap
.long .Lcall_successor_l183
.long .Lframe_l214
.section .pcmap_data
.Lframe_l214:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe8
.long .Lstackdata_l207
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffe4
.long 10
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
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,12(%esp)
	movl %edi,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l216:
.Lproc_body_start_l215:
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l233:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $1032,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_45
Lalc_gc_45:
	call tig_call_gc
.Lcall_successor_l229:
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
	movl $1032,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	movl $256,%eax
	movl %eax,(%ecx)
	movl $1,%eax
Linit_start_42:
	movl $0,%edi
	movl $4,%edx
	movl %eax,%esi
	imull %edx,%esi
	movl %ecx,%edx
	addl %esi,%edx
	movl %edi,(%edx)
	movl $1,%edx
	addl %edx,%eax
.Lbranch_target_l234:
	movl $257,%edx
	cmpl %edx,%eax
	jle Linit_start_42
Linit_end_43:
	leal 24(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	call init_sbox_51
.Lcall_successor_l226:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	call cypher_52
.Lcall_successor_l223:
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
.Lcall_successor_l220:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l236:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l229
.long .Lframe_l237
.section .pcmap_data
.Lframe_l237:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff4
.long .Lstackdata_l236
.long 2
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l226
.long .Lframe_l238
.section .pcmap_data
.Lframe_l238:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff4
.long .Lstackdata_l236
.long 2
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l223
.long .Lframe_l239
.section .pcmap_data
.Lframe_l239:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff4
.long .Lstackdata_l236
.long 2
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l220
.long .Lframe_l240
.section .pcmap_data
.Lframe_l240:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff4
.long .Lstackdata_l236
.long 2
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
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
