.globl _Perl_unshare_hek
.globl _Perl_hv_fetch
.globl _Perl_hv_fetch_ent
.globl _Perl_hv_store
.globl _Perl_hv_store_ent
.globl _Perl_hv_delete
.globl _Perl_hv_delete_ent
.globl _Perl_hv_exists
.globl _Perl_hv_exists_ent
.globl _Perl_hv_ksplit
.globl _Perl_newHV
.globl _Perl_newHVhv
.globl _Perl_hv_free_ent
.globl _Perl_hv_delayfree_ent
.globl _Perl_hv_clear
.globl _Perl_hv_undef
.globl _Perl_hv_iterinit
.globl _Perl_hv_iternext
.globl _Perl_hv_iterkey
.globl _Perl_hv_iterkeysv
.globl _Perl_hv_iterval
.globl _Perl_hv_iternextsv
.globl _Perl_hv_magic
.globl _Perl_sharepvn
.globl _Perl_unsharepvn
.globl _Perl_share_hek
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .text
.section .rodata
.align 4
_i___huge_val:
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte -16
.byte 127
.section .text
_i_new_he:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l35:
.Lproc_body_start_l34:
.Lbranch_target_l45:
	leal _PL_he_root,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne .L_i_21_l46
.Lbranch_target_l41:
	leal _i_more_he,%ecx
	movl (%ecx),%ecx
	movl %eax,(%esp)
	call *%ecx
.Lcall_successor_l40:
	jmp _i_21
.L_i_21_l46:
	movl %eax,(%esp)
_i_21:
	leal _PL_he_root,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl %ecx,%eax
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l48:
.long 0
.section .pcmap
.long .Lcall_successor_l40
.long .Lframe_l49
.section .pcmap_data
.Lframe_l49:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l48
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
_i_del_he:
	movl %esp,%ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l51:
.Lproc_body_start_l50:
	leal _PL_he_root,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl %edx,(%eax)
	leal _PL_he_root,%edx
	movl %eax,(%edx)
_i_23:
	movl %esp,%eax
	movl $0,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	ret
.section .text
_i_more_he:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l61:
.Lproc_body_start_l60:
	movl $1008,%ecx
	movl %eax,(%esp)
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l66:
	leal _PL_he_root,%ecx
	movl %eax,(%ecx)
	leal _PL_he_root,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $996,%ecx
	movl %eax,%edx
	addl %ecx,%edx
_i_26:
.Lbranch_target_l70:
	cmpl %edx,%eax
	jb _i_25
.Lbranch_target_l63:
	movl $0,%ecx
	movl %ecx,(%eax)
_i_24:
	leal 8(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 8(%esp), %esp
	ret
_i_25:
	movl $12,%ecx
	movl %eax,4(%esp)
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
	movl $12,%eax
	addl %eax,%ecx
.L_i_26_l71:
	movl %ecx,%eax
	jmp _i_26
.section .pcmap_data
.Lstackdata_l73:
.long 0
.section .pcmap
.long .Lcall_successor_l66
.long .Lframe_l74
.section .pcmap_data
.Lframe_l74:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffff8
.long .Lstackdata_l73
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
_i_save_hek:
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 60(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l76:
.Lproc_body_start_l75:
	movl %eax,4(%esp)
	movl $1,%eax
	movl %eax,8(%esp)
	movl $8,%eax
	movl %eax,12(%esp)
	movl %ecx,%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	imull %eax,%ecx
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	movl %edx,20(%esp)
	call *%ecx
.Lcall_successor_l84:
	leal -8(%esp), %esp
	movl %eax,32(%esp)
	movl 8(%esp),%eax
	movl $8,%ecx
	movl %ecx,36(%esp)
	movl 32(%esp),%edx
	movl %edx,%ecx
	movl 36(%esp),%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,40(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%ecx
	movl 24(%esp),%edx
	imull %edx,%ecx
	movl %ecx,44(%esp)
	leal 68(%esp), %ecx
	movl %ecx,48(%esp)
	movl $-64,%ecx
	movl %ecx,52(%esp)
	movl 48(%esp),%ecx
	movl 52(%esp),%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_bcopy,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l81:
	movl $0,%eax
	movl $8,%ecx
	movl %eax,48(%esp)
	movl 24(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl %eax,52(%esp)
	movl 16(%esp),%ecx
	movl %ecx,%eax
	movl 52(%esp),%ecx
	addl %ecx,%eax
	movl %eax,56(%esp)
	movl 48(%esp),%eax
	movl 56(%esp),%ecx
	movb %al,(%ecx)
	movl $4,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl 16(%esp),%eax
	movl %eax,(%ecx)
	movl 4(%esp),%eax
	movl %eax,(%edx)
	movl %edx,%eax
	leal 60(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l89:
.long 0
.section .pcmap
.long .Lcall_successor_l84
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffd8
.long .Lstackdata_l89
.long 0
.long 7
.long 0
.long 1
.long 0xffffffc4
.long 0xffffffd4
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l81
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffd8
.long .Lstackdata_l89
.long 0
.long 7
.long 0
.long 1
.long 0
.long 0xffffffd4
.long 0xffffffc8
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.section .text
_Perl_unshare_hek:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l93:
.Lproc_body_start_l92:
	leal -8(%esp), %esp
	movl $8,%edx
	movl %eax,8(%esp)
	addl %edx,%eax
	movl $4,%edx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 20(%esp), %edx
	movl %ecx,16(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_unsharepvn,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l97:
_i_29:
	leal 12(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l102:
.long 0
.section .pcmap
.long .Lcall_successor_l97
.long .Lframe_l103
.section .pcmap_data
.Lframe_l103:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff8
.long .Lstackdata_l102
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
_Perl_hv_fetch:
	leal -148(%esp), %esp
	leal 148(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 148(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 148(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 148(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l105:
.Lproc_body_start_l104:
.Lbranch_target_l152:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_31
.Lbranch_target_l144:
	movl $0,%eax
	leal 148(%esp), %ecx
	movl %ecx,140(%esp)
	movl $12,%ecx
	movl %ecx,144(%esp)
	movl 140(%esp),%ecx
	movl %edx,32(%esp)
	movl 144(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 160(%esp), %esp
	ret
_i_31:
.Lbranch_target_l153:
	movl $8,%eax
	movl %eax,16(%esp)
	movl %ecx,%eax
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $32768,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .L_i_33_l159
.Lbranch_target_l142:
	leal -4(%esp), %esp
	movl 4(%esp),%ecx
	movl %ecx,%eax
	movl $80,%ecx
	movl %ecx,24(%esp)
	leal 152(%esp), %ecx
	movl %ecx,28(%esp)
	movl $-152,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,36(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_mg_find,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l141:
.Lbranch_target_l148:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_35
.Lbranch_target_l138:
	leal _Perl_sv_newmortal,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l137:
	leal -12(%esp), %esp
	movl %eax,140(%esp)
	movl 12(%esp),%eax
	leal 160(%esp), %ecx
	movl $-160,%edx
	addl %edx,%ecx
	movl 140(%esp),%edx
	movl %edx,(%ecx)
	leal 160(%esp), %ecx
	movl %ecx,144(%esp)
	movl $-156,%ecx
	movl %ecx,148(%esp)
	movl 144(%esp),%ecx
	movl 148(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 160(%esp), %ecx
	movl $-152,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_mg_copy,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l134:
	leal _PL_hv_fetch_sv,%eax
	movl (%eax),%eax
	movl 128(%esp),%ecx
	movl %ecx,(%eax)
	leal 148(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 160(%esp), %esp
	ret
_i_35:
	jmp _i_33
.L_i_33_l159:
	movl %edx,32(%esp)
_i_33:
	movl (%esp),%eax
	movl (%eax),%ecx
.Lbranch_target_l154:
	movl (%ecx),%edx
	movl $0,%eax
	cmpl %eax,%edx
	jne .L_i_37_l160
.Lbranch_target_l130:
.Lbranch_target_l149:
	movl $0,%eax
	movl 8(%esp),%edx
	cmpl %eax,%edx
	je _i_39
.Lbranch_target_l129:
	movl $1,%eax
	movl %eax,36(%esp)
	movl $8,%eax
	movl %eax,40(%esp)
	movl %ecx,%eax
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl $1,%ecx
	shll %cl, %eax
	movl $16,%ecx
	subl %ecx,%eax
	movl 36(%esp),%ecx
	imull %eax,%ecx
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l128:
	movl 44(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $1,%edx
	movl $8,%ecx
	movl %ecx,56(%esp)
	movl 52(%esp),%ecx
	movl %edx,60(%esp)
	movl 56(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $2,%edx
	movl %ecx,64(%esp)
	movl %edx,%ecx
	movl 64(%esp),%edx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	movl 60(%esp),%ecx
	imull %edx,%ecx
	leal 156(%esp), %edx
	movl %ecx,68(%esp)
	movl $-152,%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 156(%esp), %edx
	movl %ecx,72(%esp)
	movl $-156,%ecx
	addl %ecx,%edx
	movl 72(%esp),%ecx
	movl %ecx,(%edx)
	leal _memset,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l125:
_i_40:
	jmp _i_37
_i_39:
	movl $0,%eax
	leal 148(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 160(%esp), %esp
	ret
.L_i_37_l160:
	movl %ecx,44(%esp)
_i_37:
_i_41:
	movl 12(%esp),%eax
	movl %eax,%ecx
	movl 4(%esp),%edx
	movl %edx,%eax
	movl %eax,68(%esp)
	movl $0,%eax
_i_45:
	movl %eax,72(%esp)
	movl 68(%esp),%eax
	movl %eax,76(%esp)
	movl $1,%eax
	movl %eax,80(%esp)
	movl 76(%esp),%eax
	movl %ecx,84(%esp)
	movl 80(%esp),%ecx
	subl %ecx,%eax
.Lbranch_target_l155:
	movl $0,%ecx
	movl %eax,68(%esp)
	movl 76(%esp),%eax
	cmpl %ecx,%eax
	jne _i_44
.Lbranch_target_l121:
	movl 72(%esp),%eax
_i_42:
	movl $8,%ecx
	movl %eax,92(%esp)
	movl 44(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,96(%esp)
	movl 92(%esp),%ecx
	movl %ecx,%eax
	movl 96(%esp),%ecx
	andl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl 44(%esp),%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
_i_50:
.Lbranch_target_l158:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_47
.Lbranch_target_l116:
.Lbranch_target_l151:
	movl $0,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	je _i_57
.Lbranch_target_l115:
	movl $0,%eax
	leal _Perl_newSV,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l114:
	leal -16(%esp), %esp
	movl %eax,144(%esp)
	movl 16(%esp),%eax
	leal 164(%esp), %ecx
	movl $-164,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 164(%esp), %ecx
	movl $-160,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 164(%esp), %ecx
	movl $-156,%edx
	addl %edx,%ecx
	movl 144(%esp),%edx
	movl %edx,(%ecx)
	leal 164(%esp), %ecx
	movl $-152,%edx
	addl %edx,%ecx
	movl 108(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_hv_store,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l111:
	leal 148(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 160(%esp), %esp
	ret
_i_57:
	movl $0,%eax
	leal 148(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 160(%esp), %esp
	ret
_i_47:
.Lbranch_target_l156:
	movl $4,%ecx
	movl %eax,100(%esp)
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 92(%esp),%ecx
	cmpl %ecx,%eax
	je _i_51
	jmp _i_48
_i_51:
	movl $4,%eax
.Lbranch_target_l157:
	movl %eax,104(%esp)
	movl 100(%esp),%eax
	movl 104(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %edx,%eax
	je _i_53
	jmp _i_48
_i_53:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,116(%esp)
	movl 108(%esp),%ecx
	movl %ecx,%eax
	movl 116(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 156(%esp), %ecx
	movl %ecx,120(%esp)
	movl $-156,%ecx
	movl %ecx,124(%esp)
	movl 120(%esp),%ecx
	movl 124(%esp),%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 156(%esp), %ecx
	movl %ecx,128(%esp)
	movl $-152,%ecx
	movl %ecx,132(%esp)
	movl 128(%esp),%ecx
	movl 132(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l120:
.Lbranch_target_l150:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_55
_i_48:
	movl 100(%esp),%eax
	movl (%eax),%eax
.L_i_50_l162:
	movl 4(%esp),%edx
	jmp _i_50
_i_55:
	movl $8,%eax
	movl 100(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	leal 148(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 160(%esp), %esp
	ret
_i_44:
	movl 84(%esp),%eax
	movl $1,%ecx
	movl %eax,88(%esp)
	addl %ecx,%eax
	movl $33,%ecx
	movl %eax,84(%esp)
	movl 72(%esp),%eax
	imull %eax,%ecx
	movl 88(%esp),%eax
	movsbl (%eax),%eax
	addl %eax,%ecx
.L_i_45_l161:
	movl %ecx,%eax
	movl 84(%esp),%ecx
	jmp _i_45
.section .pcmap_data
.Lstackdata_l164:
.long 0
.section .pcmap
.long .Lcall_successor_l141
.long .Lframe_l165
.section .pcmap_data
.Lframe_l165:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l164
.long 0
.long 24
.long 0
.long 1
.long 0xffffff6c
.long 0xffffff78
.long 0xffffff70
.long 0xffffff74
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l137
.long .Lframe_l166
.section .pcmap_data
.Lframe_l166:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l164
.long 0
.long 24
.long 0
.long 1
.long 0xffffff6c
.long 0xffffff78
.long 0xffffff70
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l134
.long .Lframe_l167
.section .pcmap_data
.Lframe_l167:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l164
.long 0
.long 24
.long 0
.long 1
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l128
.long .Lframe_l168
.section .pcmap_data
.Lframe_l168:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l164
.long 0
.long 24
.long 0
.long 1
.long 0xffffff6c
.long 0xffffff78
.long 0xffffff70
.long 0xffffff74
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l125
.long .Lframe_l169
.section .pcmap_data
.Lframe_l169:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l164
.long 0
.long 24
.long 0
.long 1
.long 0xffffff6c
.long 0xffffff78
.long 0xffffff70
.long 0xffffff74
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l114
.long .Lframe_l170
.section .pcmap_data
.Lframe_l170:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l164
.long 0
.long 24
.long 0
.long 1
.long 0xffffff6c
.long 0xffffff78
.long 0xffffff70
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
.section .pcmap
.long .Lcall_successor_l111
.long .Lframe_l171
.section .pcmap_data
.Lframe_l171:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l164
.long 0
.long 24
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l120
.long .Lframe_l172
.section .pcmap_data
.Lframe_l172:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l164
.long 0
.long 24
.long 0
.long 1
.long 0xffffff6c
.long 0xffffff78
.long 0xffffff70
.long 0xffffff74
.long 0
.long 0xffffffc8
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
.section .text
_Perl_hv_fetch_ent:
	leal -188(%esp), %esp
	leal 188(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 188(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 188(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 188(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l174:
.Lproc_body_start_l173:
.Lbranch_target_l236:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_60
.Lbranch_target_l227:
	movl $0,%eax
	leal 188(%esp), %ecx
	movl %ecx,176(%esp)
	movl $12,%ecx
	movl %ecx,180(%esp)
	movl 176(%esp),%ecx
	movl %edx,32(%esp)
	movl 180(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 200(%esp), %esp
	ret
_i_60:
.Lbranch_target_l237:
	movl $8,%eax
	movl %eax,16(%esp)
	movl %ecx,%eax
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $32768,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .L_i_62_l245
.Lbranch_target_l225:
	leal -4(%esp), %esp
	movl 4(%esp),%ecx
	movl %ecx,%eax
	movl $80,%ecx
	movl %ecx,24(%esp)
	leal 192(%esp), %ecx
	movl %ecx,28(%esp)
	movl $-192,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,36(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_mg_find,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l224:
.Lbranch_target_l231:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_64
.Lbranch_target_l221:
	leal _Perl_sv_newmortal,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l220:
	movl %eax,148(%esp)
	movl 12(%esp),%eax
	leal _Perl_newSVsv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l217:
	leal _Perl_sv_2mortal,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l214:
	leal -12(%esp), %esp
	movl %eax,24(%esp)
	movl 12(%esp),%eax
	leal 200(%esp), %ecx
	movl $-200,%edx
	addl %edx,%ecx
	movl 160(%esp),%edx
	movl %edx,(%ecx)
	leal 200(%esp), %ecx
	movl %ecx,168(%esp)
	movl $-196,%ecx
	movl %ecx,172(%esp)
	movl 168(%esp),%ecx
	movl 172(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $-2,%ecx
	movl %ecx,176(%esp)
	leal 200(%esp), %ecx
	movl %ecx,180(%esp)
	movl $-192,%ecx
	movl %ecx,184(%esp)
	movl 180(%esp),%ecx
	movl 184(%esp),%edx
	addl %edx,%ecx
	movl 176(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_mg_copy,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l211:
.Lbranch_target_l232:
	leal _PL_hv_fetch_ent_mh,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_66
.Lbranch_target_l208:
	movl $12,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l207:
	leal _PL_hv_fetch_ent_mh,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
_i_66:
	movl $-2,%eax
	leal _PL_hv_fetch_ent_mh,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal _PL_hv_fetch_ent_mh,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal _PL_hv_fetch_ent_mh,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 148(%esp),%ecx
	movl %ecx,(%eax)
	leal _PL_hv_fetch_ent_mh,%eax
	movl (%eax),%eax
	leal 188(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 200(%esp), %esp
	ret
_i_64:
	jmp _i_62
.L_i_62_l245:
	movl %edx,32(%esp)
_i_62:
	movl (%esp),%eax
	movl (%eax),%ecx
.Lbranch_target_l238:
	movl (%ecx),%edx
	movl $0,%eax
	cmpl %eax,%edx
	jne .L_i_73_l246
.Lbranch_target_l203:
.Lbranch_target_l233:
	movl $0,%eax
	movl 4(%esp),%edx
	cmpl %eax,%edx
	je _i_75
.Lbranch_target_l202:
	movl $1,%eax
	movl %eax,36(%esp)
	movl $8,%eax
	movl %eax,40(%esp)
	movl %ecx,%eax
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl $1,%ecx
	shll %cl, %eax
	movl $16,%ecx
	subl %ecx,%eax
	movl 36(%esp),%ecx
	imull %eax,%ecx
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l201:
	movl 44(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $1,%edx
	movl $8,%ecx
	movl %ecx,56(%esp)
	movl 52(%esp),%ecx
	movl %edx,60(%esp)
	movl 56(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $2,%edx
	movl %ecx,64(%esp)
	movl %edx,%ecx
	movl 64(%esp),%edx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	movl 60(%esp),%ecx
	imull %edx,%ecx
	leal 196(%esp), %edx
	movl %ecx,68(%esp)
	movl $-192,%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 196(%esp), %edx
	movl %ecx,72(%esp)
	movl $-196,%ecx
	addl %ecx,%edx
	movl 72(%esp),%ecx
	movl %ecx,(%edx)
	leal _memset,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l198:
_i_76:
	jmp _i_73
_i_75:
	movl $0,%eax
	leal 188(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 200(%esp), %esp
	ret
.L_i_73_l246:
	movl %ecx,44(%esp)
_i_73:
.Lbranch_target_l239:
	movl $8,%eax
	movl 12(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $262144,%edx
	andl %edx,%eax
	movl $0,%edx
	cmpl %edx,%eax
	je _i_78
.Lbranch_target_l194:
	movl %ecx,%eax
	movl (%eax),%edx
	movl %eax,80(%esp)
	movl $4,%eax
	addl %eax,%edx
	leal 188(%esp), %eax
	movl %eax,84(%esp)
	movl $-4,%eax
	movl %eax,88(%esp)
	movl 84(%esp),%eax
	movl 88(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl 80(%esp),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	jmp _i_79
_i_78:
	leal -4(%esp), %esp
	movl %ecx,%eax
	leal 192(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	leal 192(%esp), %ecx
	movl %ecx,72(%esp)
	movl $-192,%ecx
	movl %ecx,76(%esp)
	movl 72(%esp),%ecx
	movl %edx,80(%esp)
	movl 76(%esp),%edx
	addl %edx,%ecx
	movl 80(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal _Perl_sv_2pv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l193:
_i_79:
.Lbranch_target_l240:
	movl $0,%ecx
	movl 8(%esp),%edx
	cmpl %ecx,%edx
	jne .L_i_80_l247
_i_82:
	movl %eax,%ecx
	leal 188(%esp), %edx
	movl %eax,92(%esp)
	movl $-4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $0,%edx
_i_86:
	movl %eax,96(%esp)
	movl $1,%eax
	movl %eax,100(%esp)
	movl 96(%esp),%eax
	movl %ecx,104(%esp)
	movl 100(%esp),%ecx
	subl %ecx,%eax
.Lbranch_target_l241:
	movl $0,%ecx
	movl %eax,108(%esp)
	movl 96(%esp),%eax
	cmpl %ecx,%eax
	jne _i_85
.Lbranch_target_l190:
_i_83:
	jmp _i_80
_i_85:
	movl 104(%esp),%eax
	movl $1,%ecx
	movl %eax,152(%esp)
	addl %ecx,%eax
	movl $33,%ecx
	imull %edx,%ecx
	movl 152(%esp),%edx
	movsbl (%edx),%edx
	addl %edx,%ecx
.L_i_86_l251:
	movl %ecx,%edx
	movl %eax,%ecx
	movl 108(%esp),%eax
	jmp _i_86
.L_i_80_l247:
	movl %eax,92(%esp)
_i_80:
	movl $8,%eax
	movl %eax,112(%esp)
	movl 44(%esp),%ecx
	movl %ecx,%eax
	movl 112(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %edx,%ecx
	andl %eax,%ecx
	movl $2,%eax
	movl %ecx,116(%esp)
	movl %eax,%ecx
	movl 116(%esp),%eax
	shll %cl, %eax
	movl 44(%esp),%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
_i_91:
.Lbranch_target_l244:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_88
.Lbranch_target_l185:
.Lbranch_target_l235:
	movl $0,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je _i_98
.Lbranch_target_l184:
	movl $0,%eax
	leal _Perl_newSV,%ecx
	movl (%ecx),%ecx
	movl %edx,8(%esp)
	call *%ecx
.Lcall_successor_l183:
	leal -12(%esp), %esp
	movl %eax,160(%esp)
	movl 12(%esp),%eax
	leal 200(%esp), %ecx
	movl $-200,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 200(%esp), %ecx
	movl $-196,%edx
	addl %edx,%ecx
	movl 160(%esp),%edx
	movl %edx,(%ecx)
	leal 200(%esp), %ecx
	movl $-192,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_hv_store_ent,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l180:
	leal 188(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 200(%esp), %esp
	ret
_i_98:
	movl $0,%eax
	leal 188(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 200(%esp), %esp
	ret
_i_88:
.Lbranch_target_l242:
	movl $4,%ecx
	movl %eax,120(%esp)
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	cmpl %edx,%eax
	je _i_92
.L_i_89_l249:
	movl %edx,8(%esp)
	jmp _i_89
_i_92:
	movl $4,%eax
.Lbranch_target_l243:
	movl %eax,124(%esp)
	movl 120(%esp),%ecx
	movl %ecx,%eax
	movl 124(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	leal 188(%esp), %ecx
	movl %eax,128(%esp)
	movl $-4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl 128(%esp),%ecx
	cmpl %eax,%ecx
	je _i_94
.L_i_89_l248:
	movl %edx,8(%esp)
	jmp _i_89
_i_94:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,140(%esp)
	movl 128(%esp),%ecx
	movl %ecx,%eax
	movl 140(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 196(%esp), %ecx
	movl %ecx,144(%esp)
	movl $-4,%ecx
	movl %ecx,148(%esp)
	movl 144(%esp),%ecx
	movl %edx,16(%esp)
	movl 148(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 196(%esp), %edx
	movl %ecx,152(%esp)
	movl $-192,%ecx
	addl %ecx,%edx
	movl 152(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 196(%esp), %ecx
	movl $-196,%edx
	addl %edx,%ecx
	movl 100(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l189:
.Lbranch_target_l234:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_96
_i_89:
	movl 120(%esp),%eax
	movl (%eax),%eax
.L_i_91_l250:
	movl 8(%esp),%edx
	jmp _i_91
_i_96:
	movl 120(%esp),%eax
	leal 188(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 200(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l253:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l224
.long .Lframe_l254
.section .pcmap_data
.Lframe_l254:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
.long 0
.long 1
.long 0xffffff44
.long 0xffffff50
.long 0xffffff48
.long 0xffffff4c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l220
.long .Lframe_l255
.section .pcmap_data
.Lframe_l255:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
.long 0
.long 1
.long 0xffffff44
.long 0xffffff50
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l217
.long .Lframe_l256
.section .pcmap_data
.Lframe_l256:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
.long 0
.long 1
.long 0xffffff44
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
.section .pcmap
.long .Lcall_successor_l214
.long .Lframe_l257
.section .pcmap_data
.Lframe_l257:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
.long 0
.long 1
.long 0xffffff44
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
.section .pcmap
.long .Lcall_successor_l211
.long .Lframe_l258
.section .pcmap_data
.Lframe_l258:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
.long 0
.long 1
.long 0
.long 0xffffff50
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
.section .pcmap
.long .Lcall_successor_l207
.long .Lframe_l259
.section .pcmap_data
.Lframe_l259:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
.long 0
.long 1
.long 0
.long 0xffffff50
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
.section .pcmap
.long .Lcall_successor_l201
.long .Lframe_l260
.section .pcmap_data
.Lframe_l260:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
.long 0
.long 1
.long 0xffffff44
.long 0xffffff50
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff70
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l198
.long .Lframe_l261
.section .pcmap_data
.Lframe_l261:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
.long 0
.long 1
.long 0xffffff44
.long 0xffffff50
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff70
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l193
.long .Lframe_l262
.section .pcmap_data
.Lframe_l262:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
.long 0
.long 1
.long 0xffffff44
.long 0xffffff50
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff70
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l183
.long .Lframe_l263
.section .pcmap_data
.Lframe_l263:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
.long 0
.long 1
.long 0xffffff44
.long 0xffffff50
.long 0
.long 0xffffff4c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l180
.long .Lframe_l264
.section .pcmap_data
.Lframe_l264:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l189
.long .Lframe_l265
.section .pcmap_data
.Lframe_l265:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l253
.long 0
.long 30
.long 0
.long 1
.long 0xffffff44
.long 0xffffff50
.long 0xffffff48
.long 0xffffff4c
.long 0
.long 0xffffffa0
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
.long 0
.long 0
.section .text
_i_hv_magic_check:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 28(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 28(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l267:
.Lproc_body_start_l266:
	movl %eax,4(%esp)
	movl (%esp),%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl $20,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,(%eax)
	movl $1,%ecx
	movl 4(%esp),%eax
	movl %ecx,(%eax)
_i_102:
.Lbranch_target_l280:
	movl $0,%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	jne _i_101
_i_100:
	leal 28(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 36(%esp), %esp
	ret
_i_101:
	movl $12,%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
.Lbranch_target_l278:
	movl $65,%ecx
	cmpl %ecx,%eax
	jl .L_i_104_l284
.Lbranch_target_l271:
.Lbranch_target_l275:
	movl $90,%ecx
	cmpl %ecx,%eax
	jg .L_i_104_l283
.Lbranch_target_l270:
	movl $1,%eax
	movl 16(%esp),%ecx
	movl %eax,(%ecx)
	movl $12,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
	movl $80,%ecx
.Lbranch_target_l276:
	cmpl %ecx,%eax
	je _i_109
.Lbranch_target_l269:
.Lbranch_target_l277:
	cmpl %ecx,%eax
	jl .L_i_106_l282
_i_110:
.Lbranch_target_l279:
	movl $83,%ecx
	cmpl %ecx,%eax
	je _i_109
.L_i_106_l281:
	movl 4(%esp),%ecx
	jmp _i_106
.L_i_106_l282:
	movl 4(%esp),%ecx
	jmp _i_106
_i_109:
	movl $0,%eax
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
_i_106:
	jmp _i_104
.L_i_104_l283:
	movl 4(%esp),%ecx
	jmp _i_104
.L_i_104_l284:
	movl 4(%esp),%ecx
_i_104:
	movl 20(%esp),%eax
	movl (%eax),%eax
.L_i_102_l285:
	movl %eax,20(%esp)
	movl %ecx,%eax
	jmp _i_102
.section .text
_Perl_hv_store:
	leal -212(%esp), %esp
	leal 212(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 212(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 212(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 212(%esp), %edx
	movl %eax,8(%esp)
	movl $16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 212(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l291:
.Lproc_body_start_l290:
.Lbranch_target_l347:
	movl %eax,12(%esp)
	movl $0,%eax
	movl %ecx,16(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_112
.Lbranch_target_l337:
	movl $0,%eax
	leal 212(%esp), %ecx
	movl %ecx,196(%esp)
	movl $16,%ecx
	movl %ecx,200(%esp)
	movl 196(%esp),%ecx
	movl %edx,40(%esp)
	movl 200(%esp),%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 228(%esp), %esp
	ret
_i_112:
	movl %ecx,%eax
	movl %eax,20(%esp)
	movl (%eax),%eax
.Lbranch_target_l348:
	movl %eax,24(%esp)
	movl $8,%eax
	movl %eax,28(%esp)
	movl 20(%esp),%eax
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $57344,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .L_i_114_l357
.Lbranch_target_l335:
	leal -8(%esp), %esp
	movl 8(%esp),%ecx
	movl %ecx,%eax
	leal 220(%esp), %ecx
	movl %ecx,40(%esp)
	movl $-8,%ecx
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	movl %edx,48(%esp)
	movl 44(%esp),%edx
	addl %edx,%ecx
	leal 220(%esp), %edx
	movl %ecx,52(%esp)
	movl $-220,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 220(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	leal 220(%esp), %edx
	movl %ecx,56(%esp)
	movl $-216,%ecx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l334:
.Lbranch_target_l341:
	leal 212(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .L_i_116_l356
.Lbranch_target_l331:
	leal -12(%esp), %esp
	movl 12(%esp),%ecx
	movl %ecx,%eax
	leal 224(%esp), %edx
	movl $-224,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal 224(%esp), %edx
	movl $-220,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	leal 224(%esp), %edx
	movl $-216,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal _Perl_mg_copy,%edx
	movl (%edx),%edx
	call *%edx
.Lcall_successor_l330:
.Lbranch_target_l342:
	movl 24(%esp),%eax
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne _i_118
.Lbranch_target_l327:
.Lbranch_target_l343:
	leal 212(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne _i_118
.Lbranch_target_l326:
	movl $0,%eax
	leal 212(%esp), %ecx
	movl $16,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 228(%esp), %esp
	ret
_i_118:
	jmp _i_116
.L_i_116_l356:
	movl 24(%esp),%eax
_i_116:
	jmp _i_114
.L_i_114_l357:
	movl %edx,40(%esp)
	movl 24(%esp),%eax
_i_114:
.Lbranch_target_l349:
	movl $0,%ecx
	movl 12(%esp),%edx
	cmpl %ecx,%edx
	jne .L_i_120_l358
_i_122:
	movl 16(%esp),%ecx
	movl %ecx,%edx
	movl 4(%esp),%eax
	movl %eax,52(%esp)
	movl $0,%eax
_i_126:
	movl %eax,56(%esp)
	movl 52(%esp),%eax
	movl %eax,60(%esp)
	movl $1,%eax
	movl %eax,64(%esp)
	movl 60(%esp),%eax
	movl 64(%esp),%ecx
	subl %ecx,%eax
.Lbranch_target_l350:
	movl $0,%ecx
	movl %eax,52(%esp)
	movl 60(%esp),%eax
	cmpl %ecx,%eax
	jne _i_125
.Lbranch_target_l324:
	movl 56(%esp),%eax
_i_123:
	jmp _i_120
_i_125:
	movl $1,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl $33,%eax
	movl %ecx,192(%esp)
	movl 56(%esp),%ecx
	imull %ecx,%eax
	movsbl (%edx),%ecx
	addl %ecx,%eax
.L_i_126_l360:
	movl 16(%esp),%ecx
	movl 192(%esp),%edx
	jmp _i_126
.L_i_120_l358:
	movl %edx,%eax
_i_120:
.Lbranch_target_l351:
	movl 24(%esp),%ecx
	movl (%ecx),%edx
	movl %eax,12(%esp)
	movl $0,%eax
	cmpl %eax,%edx
	jne _i_128
.Lbranch_target_l323:
	movl $1,%eax
	movl $8,%edx
	movl %eax,68(%esp)
	movl %ecx,%eax
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	addl %edx,%eax
	movl $2,%edx
	movl %edx,%ecx
	shll %cl, %eax
	movl $1,%ecx
	shll %cl, %eax
	movl $16,%ecx
	subl %ecx,%eax
	movl 68(%esp),%ecx
	imull %eax,%ecx
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l322:
	movl 24(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $1,%edx
	movl $8,%ecx
	movl %ecx,80(%esp)
	movl 32(%esp),%ecx
	movl %edx,84(%esp)
	movl 80(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $2,%edx
	movl %ecx,88(%esp)
	movl %edx,%ecx
	movl 88(%esp),%edx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	movl 84(%esp),%ecx
	imull %edx,%ecx
	leal 220(%esp), %edx
	movl %ecx,92(%esp)
	movl $-216,%ecx
	addl %ecx,%edx
	movl 92(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 220(%esp), %edx
	movl %ecx,96(%esp)
	movl $-220,%ecx
	addl %ecx,%edx
	movl 96(%esp),%ecx
	movl %ecx,(%edx)
	leal _memset,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l319:
_i_128:
	movl $8,%eax
	movl 24(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,92(%esp)
	movl 12(%esp),%edx
	movl %edx,%eax
	movl 92(%esp),%ecx
	andl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl %eax,96(%esp)
	movl 24(%esp),%ecx
	movl (%ecx),%eax
	movl %eax,100(%esp)
	movl 96(%esp),%eax
	movl 100(%esp),%ecx
	addl %ecx,%eax
	movl $1,%ecx
	movl %eax,104(%esp)
	movl (%eax),%eax
_i_133:
.Lbranch_target_l354:
	movl %eax,108(%esp)
	movl $0,%eax
	movl %ecx,112(%esp)
	movl 108(%esp),%ecx
	cmpl %eax,%ecx
	jne _i_130
.Lbranch_target_l309:
	leal _i_new_he,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l308:
.Lbranch_target_l345:
	movl $8,%ecx
	movl %eax,108(%esp)
	movl (%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $536870912,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_140
.Lbranch_target_l305:
	leal -8(%esp), %esp
	movl 24(%esp),%eax
	leal 220(%esp), %ecx
	movl %ecx,164(%esp)
	movl $-220,%ecx
	movl %ecx,168(%esp)
	movl 164(%esp),%ecx
	movl 168(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 220(%esp), %ecx
	movl $-216,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_share_hek,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l304:
	movl $4,%ecx
	movl %eax,164(%esp)
	movl 108(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 164(%esp),%ecx
	movl %ecx,(%eax)
	jmp _i_141
_i_140:
	leal -8(%esp), %esp
	movl 24(%esp),%eax
	leal 220(%esp), %ecx
	movl %ecx,152(%esp)
	movl $-220,%ecx
	movl %ecx,156(%esp)
	movl 152(%esp),%ecx
	movl 156(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 220(%esp), %ecx
	movl $-216,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal _i_save_hek,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l301:
	movl $4,%ecx
	movl %eax,152(%esp)
	movl 108(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 152(%esp),%ecx
	movl %ecx,(%eax)
_i_141:
	movl $8,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	movl 104(%esp),%eax
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl %edx,(%eax)
	movl $12,%eax
	movl %eax,168(%esp)
	movl 24(%esp),%ecx
	movl %ecx,%eax
	movl 168(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,172(%esp)
	movl $1,%eax
	addl %eax,%ecx
	movl 172(%esp),%eax
	movl %ecx,(%eax)
.Lbranch_target_l355:
	movl $0,%eax
	movl 112(%esp),%ecx
	cmpl %eax,%ecx
	je _i_142
.Lbranch_target_l298:
	movl $4,%eax
	movl %eax,176(%esp)
	movl 24(%esp),%ecx
	movl %ecx,%eax
	movl 176(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,180(%esp)
	movl $1,%eax
	addl %eax,%ecx
	movl 180(%esp),%eax
	movl %ecx,(%eax)
.Lbranch_target_l346:
	movl $12,%eax
	movl %eax,184(%esp)
	movl 24(%esp),%ecx
	movl %ecx,%eax
	movl 184(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	movl %eax,188(%esp)
	movl 24(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 188(%esp),%ecx
	cmpl %eax,%ecx
	jbe _i_144
.Lbranch_target_l297:
	movl (%esp),%eax
	leal _i_hsplit,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l296:
_i_144:
_i_142:
	movl $8,%eax
	movl 108(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	leal 212(%esp), %ecx
	movl $16,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 228(%esp), %esp
	ret
_i_130:
.Lbranch_target_l352:
	movl $4,%eax
	movl %eax,116(%esp)
	movl %ecx,%eax
	movl 116(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	cmpl %edx,%eax
	je _i_134
	jmp _i_131
_i_134:
	movl $4,%eax
.Lbranch_target_l353:
	movl %eax,120(%esp)
	movl 108(%esp),%ecx
	movl %ecx,%eax
	movl 120(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 4(%esp),%ecx
	cmpl %ecx,%eax
	je _i_136
	jmp _i_131
_i_136:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,132(%esp)
	movl 116(%esp),%eax
	movl 132(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 220(%esp), %ecx
	movl %ecx,136(%esp)
	movl $-220,%ecx
	movl %ecx,140(%esp)
	movl 136(%esp),%ecx
	movl 140(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 220(%esp), %ecx
	movl %ecx,144(%esp)
	movl $-216,%ecx
	movl %ecx,148(%esp)
	movl 144(%esp),%ecx
	movl 148(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l316:
.Lbranch_target_l344:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_138
_i_131:
	movl $0,%eax
	movl 108(%esp),%ecx
	movl (%ecx),%ecx
.L_i_133_l359:
	movl %ecx,108(%esp)
	movl %eax,%ecx
	movl 108(%esp),%eax
	movl 12(%esp),%edx
	jmp _i_133
_i_138:
	movl $8,%eax
	movl 108(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_free,%edx
	movl (%edx),%edx
	call *%edx
.Lcall_successor_l313:
	movl $8,%eax
	movl 108(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	addl %eax,%ecx
	movl %ecx,%eax
	leal 212(%esp), %ecx
	movl $16,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 228(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l362:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l334
.long .Lframe_l363
.section .pcmap_data
.Lframe_l363:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l362
.long 0
.long 27
.long 0
.long 1
.long 0xffffff2c
.long 0xffffff3c
.long 0xffffff30
.long 0xffffff34
.long 0xffffff38
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l330
.long .Lframe_l364
.section .pcmap_data
.Lframe_l364:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l362
.long 0
.long 27
.long 0
.long 1
.long 0xffffff2c
.long 0xffffff3c
.long 0xffffff30
.long 0xffffff34
.long 0xffffff38
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l322
.long .Lframe_l365
.section .pcmap_data
.Lframe_l365:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l362
.long 0
.long 27
.long 0
.long 1
.long 0xffffff2c
.long 0xffffff3c
.long 0xffffff30
.long 0xffffff34
.long 0xffffff38
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l319
.long .Lframe_l366
.section .pcmap_data
.Lframe_l366:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l362
.long 0
.long 27
.long 0
.long 1
.long 0xffffff2c
.long 0xffffff3c
.long 0xffffff30
.long 0xffffff34
.long 0xffffff38
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l308
.long .Lframe_l367
.section .pcmap_data
.Lframe_l367:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l362
.long 0
.long 27
.long 0
.long 1
.long 0xffffff2c
.long 0xffffff3c
.long 0xffffff30
.long 0xffffff34
.long 0xffffff38
.long 0xffffff44
.long 0xffffff9c
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l304
.long .Lframe_l368
.section .pcmap_data
.Lframe_l368:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l362
.long 0
.long 27
.long 0
.long 1
.long 0xffffff2c
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff44
.long 0xffffff9c
.long 0xffffff98
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l301
.long .Lframe_l369
.section .pcmap_data
.Lframe_l369:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l362
.long 0
.long 27
.long 0
.long 1
.long 0xffffff2c
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff44
.long 0xffffff9c
.long 0xffffff98
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l296
.long .Lframe_l370
.section .pcmap_data
.Lframe_l370:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l362
.long 0
.long 27
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l316
.long .Lframe_l371
.section .pcmap_data
.Lframe_l371:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l362
.long 0
.long 27
.long 0
.long 1
.long 0xffffff2c
.long 0xffffff3c
.long 0xffffff30
.long 0xffffff34
.long 0xffffff38
.long 0xffffff44
.long 0
.long 0xffffff98
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l313
.long .Lframe_l372
.section .pcmap_data
.Lframe_l372:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l362
.long 0
.long 27
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
_Perl_hv_store_ent:
	leal -252(%esp), %esp
	leal 252(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 252(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 252(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 252(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l374:
.Lproc_body_start_l373:
.Lbranch_target_l450:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_147
.Lbranch_target_l437:
	movl $0,%eax
	leal 252(%esp), %ecx
	movl %ecx,232(%esp)
	movl $12,%ecx
	movl %ecx,236(%esp)
	movl 232(%esp),%ecx
	movl %edx,36(%esp)
	movl 236(%esp),%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 264(%esp), %esp
	ret
_i_147:
	movl %ecx,%eax
	movl %eax,16(%esp)
	movl (%eax),%eax
.Lbranch_target_l451:
	movl %eax,20(%esp)
	movl $8,%eax
	movl %eax,24(%esp)
	movl 16(%esp),%eax
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $57344,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .L_i_149_l463
.Lbranch_target_l435:
	leal -8(%esp), %esp
	movl 8(%esp),%ecx
	movl %ecx,%eax
	leal 260(%esp), %ecx
	movl %ecx,36(%esp)
	movl $-8,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,44(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	leal 260(%esp), %edx
	movl %ecx,48(%esp)
	movl $-260,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 260(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	leal 260(%esp), %edx
	movl %ecx,52(%esp)
	movl $-256,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l434:
.Lbranch_target_l441:
	leal 252(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .L_i_151_l462
.Lbranch_target_l431:
	leal _PL_tainted,%eax
	movl (%eax),%eax
	movl (%eax),%eax
.Lbranch_target_l442:
	leal _PL_tainting,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	je .L_i_153_l461
.Lbranch_target_l430:
	movl 12(%esp),%ecx
	movl %ecx,%edx
.Lbranch_target_l443:
	movl %eax,48(%esp)
	movl $8,%eax
	movl %eax,52(%esp)
	movl %edx,%eax
	movl 52(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $57344,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_156
.Lbranch_target_l429:
	movl %edx,%eax
	leal _Perl_sv_tainted,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l428:
.Lbranch_target_l444:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_156
.Lbranch_target_l425:
	movl $1,%eax
	jmp _i_157
_i_156:
	movl $0,%eax
_i_157:
	leal _PL_tainted,%ecx
	movl %eax,(%ecx)
	jmp _i_153
.L_i_153_l461:
	movl %eax,48(%esp)
_i_153:
	movl 12(%esp),%eax
	leal _Perl_newSVsv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l424:
	leal _Perl_sv_2mortal,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l421:
	leal -12(%esp), %esp
	movl %eax,24(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	leal 264(%esp), %edx
	movl $-264,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 264(%esp), %edx
	movl $-260,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl $-2,%edx
	leal 264(%esp), %ecx
	movl %ecx,68(%esp)
	movl $-256,%ecx
	movl %ecx,72(%esp)
	movl 68(%esp),%ecx
	movl %edx,76(%esp)
	movl 72(%esp),%edx
	addl %edx,%ecx
	movl 76(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_mg_copy,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l418:
.Lbranch_target_l445:
	movl $0,%eax
	movl 48(%esp),%ecx
	cmpl %eax,%ecx
	je _i_158
.Lbranch_target_l415:
	movl $1,%eax
	leal _PL_tainted,%ecx
	movl %eax,(%ecx)
_i_158:
.Lbranch_target_l452:
	movl 20(%esp),%eax
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne _i_160
.Lbranch_target_l414:
.Lbranch_target_l446:
	leal 252(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne _i_160
.Lbranch_target_l413:
	movl $0,%eax
	leal 252(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 264(%esp), %esp
	ret
_i_160:
	jmp _i_151
.L_i_151_l462:
	movl 20(%esp),%eax
_i_151:
	jmp _i_149
.L_i_149_l463:
	movl %edx,36(%esp)
	movl 20(%esp),%eax
_i_149:
.Lbranch_target_l453:
	movl $8,%ecx
	movl 12(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $262144,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_163
.Lbranch_target_l411:
	movl (%edx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 252(%esp), %ecx
	movl %eax,72(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl 72(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl (%edx),%eax
	movl (%eax),%eax
	jmp _i_164
_i_163:
	leal -4(%esp), %esp
	movl %edx,%eax
	leal 256(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	leal 256(%esp), %edx
	movl %ecx,72(%esp)
	movl $-256,%ecx
	addl %ecx,%edx
	movl 72(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _Perl_sv_2pv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l410:
_i_164:
.Lbranch_target_l454:
	movl $0,%ecx
	movl 8(%esp),%edx
	cmpl %ecx,%edx
	jne .L_i_165_l464
_i_167:
	movl %eax,%ecx
	leal 252(%esp), %edx
	movl %eax,76(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $0,%edx
_i_171:
	movl %eax,80(%esp)
	movl $1,%eax
	movl %eax,84(%esp)
	movl 80(%esp),%eax
	movl %ecx,88(%esp)
	movl 84(%esp),%ecx
	subl %ecx,%eax
.Lbranch_target_l455:
	movl $0,%ecx
	movl %eax,92(%esp)
	movl 80(%esp),%eax
	cmpl %ecx,%eax
	jne _i_170
.Lbranch_target_l407:
_i_168:
	jmp _i_165
_i_170:
	movl 88(%esp),%eax
	movl $1,%ecx
	movl %eax,228(%esp)
	addl %ecx,%eax
	movl $33,%ecx
	imull %edx,%ecx
	movl 228(%esp),%edx
	movsbl (%edx),%edx
	addl %edx,%ecx
.L_i_171_l467:
	movl %ecx,%edx
	movl %eax,%ecx
	movl 92(%esp),%eax
	jmp _i_171
.L_i_165_l464:
	movl %eax,76(%esp)
_i_165:
.Lbranch_target_l456:
	movl 20(%esp),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne .L_i_173_l465
.Lbranch_target_l406:
	movl $1,%eax
	movl $8,%ecx
	movl %eax,96(%esp)
	movl 20(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl $1,%ecx
	shll %cl, %eax
	movl $16,%ecx
	subl %ecx,%eax
	movl 96(%esp),%ecx
	imull %eax,%ecx
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	movl %edx,8(%esp)
	call *%ecx
.Lcall_successor_l405:
	movl 20(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $1,%edx
	movl $8,%ecx
	movl %ecx,108(%esp)
	movl 28(%esp),%ecx
	movl %edx,112(%esp)
	movl 108(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $2,%edx
	movl %ecx,116(%esp)
	movl %edx,%ecx
	movl 116(%esp),%edx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	movl 112(%esp),%ecx
	imull %edx,%ecx
	leal 260(%esp), %edx
	movl %ecx,120(%esp)
	movl $-256,%ecx
	addl %ecx,%edx
	movl 120(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 260(%esp), %edx
	movl %ecx,124(%esp)
	movl $-260,%ecx
	addl %ecx,%edx
	movl 124(%esp),%ecx
	movl %ecx,(%edx)
	leal _memset,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l402:
	jmp _i_173
.L_i_173_l465:
	movl %edx,8(%esp)
_i_173:
	movl $8,%eax
	movl 20(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,120(%esp)
	movl 8(%esp),%edx
	movl %edx,%eax
	movl 120(%esp),%ecx
	andl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl %eax,124(%esp)
	movl 20(%esp),%ecx
	movl (%ecx),%eax
	movl %eax,128(%esp)
	movl 124(%esp),%eax
	movl 128(%esp),%ecx
	addl %ecx,%eax
	movl $1,%ecx
	movl %eax,132(%esp)
	movl (%eax),%eax
_i_178:
.Lbranch_target_l459:
	movl %eax,136(%esp)
	movl $0,%eax
	movl %ecx,140(%esp)
	movl 136(%esp),%ecx
	cmpl %eax,%ecx
	jne _i_175
.Lbranch_target_l392:
	leal _i_new_he,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l391:
.Lbranch_target_l448:
	movl $8,%ecx
	movl %eax,136(%esp)
	movl (%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $536870912,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_185
.Lbranch_target_l388:
	leal -8(%esp), %esp
	movl 84(%esp),%eax
	leal 260(%esp), %ecx
	movl %ecx,196(%esp)
	movl $-12,%ecx
	movl %ecx,200(%esp)
	movl 196(%esp),%ecx
	movl 200(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %ecx,204(%esp)
	movl $-260,%ecx
	addl %ecx,%edx
	movl 204(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 260(%esp), %ecx
	movl $-256,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_share_hek,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l387:
	movl $4,%ecx
	movl %eax,200(%esp)
	movl 136(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 200(%esp),%ecx
	movl %ecx,(%eax)
	jmp _i_186
_i_185:
	leal -8(%esp), %esp
	movl 84(%esp),%eax
	leal 260(%esp), %ecx
	movl %ecx,180(%esp)
	movl $-12,%ecx
	movl %ecx,184(%esp)
	movl 180(%esp),%ecx
	movl 184(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %ecx,188(%esp)
	movl $-260,%ecx
	addl %ecx,%edx
	movl 188(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 260(%esp), %ecx
	movl $-256,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal _i_save_hek,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l384:
	movl $4,%ecx
	movl %eax,184(%esp)
	movl 136(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 184(%esp),%ecx
	movl %ecx,(%eax)
_i_186:
	movl $8,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	movl 132(%esp),%eax
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl %edx,(%eax)
	movl $12,%eax
	movl %eax,204(%esp)
	movl 20(%esp),%ecx
	movl %ecx,%eax
	movl 204(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,208(%esp)
	movl $1,%eax
	addl %eax,%ecx
	movl 208(%esp),%eax
	movl %ecx,(%eax)
.Lbranch_target_l460:
	movl $0,%eax
	movl 140(%esp),%ecx
	cmpl %eax,%ecx
	je _i_187
.Lbranch_target_l381:
	movl $4,%eax
	movl %eax,212(%esp)
	movl 20(%esp),%ecx
	movl %ecx,%eax
	movl 212(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,216(%esp)
	movl $1,%eax
	addl %eax,%ecx
	movl 216(%esp),%eax
	movl %ecx,(%eax)
.Lbranch_target_l449:
	movl $12,%eax
	movl %eax,220(%esp)
	movl 20(%esp),%ecx
	movl %ecx,%eax
	movl 220(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	movl %eax,224(%esp)
	movl 20(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 224(%esp),%ecx
	cmpl %eax,%ecx
	jbe _i_189
.Lbranch_target_l380:
	movl (%esp),%eax
	leal _i_hsplit,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l379:
_i_189:
_i_187:
	movl 136(%esp),%eax
	leal 252(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 264(%esp), %esp
	ret
_i_175:
.Lbranch_target_l457:
	movl $4,%eax
	movl %eax,144(%esp)
	movl %ecx,%eax
	movl 144(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	cmpl %edx,%eax
	je _i_179
	jmp _i_176
_i_179:
	movl $4,%eax
.Lbranch_target_l458:
	movl %eax,148(%esp)
	movl 136(%esp),%ecx
	movl %ecx,%eax
	movl 148(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	leal 252(%esp), %ecx
	movl %eax,152(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl 152(%esp),%ecx
	cmpl %eax,%ecx
	je _i_181
	jmp _i_176
_i_181:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,164(%esp)
	movl 144(%esp),%ecx
	movl %ecx,%eax
	movl 164(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 260(%esp), %ecx
	movl %ecx,168(%esp)
	movl $-12,%ecx
	movl %ecx,172(%esp)
	movl 168(%esp),%ecx
	movl 172(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 260(%esp), %edx
	movl %ecx,176(%esp)
	movl $-256,%ecx
	addl %ecx,%edx
	movl 176(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 260(%esp), %ecx
	movl $-260,%edx
	addl %edx,%ecx
	movl 84(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l399:
.Lbranch_target_l447:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_183
_i_176:
	movl $0,%eax
	movl 136(%esp),%ecx
	movl (%ecx),%ecx
.L_i_178_l466:
	movl %ecx,136(%esp)
	movl %eax,%ecx
	movl 136(%esp),%eax
	movl 8(%esp),%edx
	jmp _i_178
_i_183:
	movl $8,%eax
	movl 136(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_free,%edx
	movl (%edx),%edx
	call *%edx
.Lcall_successor_l396:
	movl $8,%eax
	movl 136(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,%eax
	leal 252(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 264(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l469:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l434
.long .Lframe_l470
.section .pcmap_data
.Lframe_l470:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0xffffff10
.long 0xffffff08
.long 0xffffff0c
.long 0xffffff18
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l428
.long .Lframe_l471
.section .pcmap_data
.Lframe_l471:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0xffffff10
.long 0xffffff08
.long 0xffffff0c
.long 0xffffff18
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l424
.long .Lframe_l472
.section .pcmap_data
.Lframe_l472:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0
.long 0xffffff08
.long 0xffffff0c
.long 0xffffff18
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l421
.long .Lframe_l473
.section .pcmap_data
.Lframe_l473:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0
.long 0xffffff08
.long 0xffffff0c
.long 0xffffff18
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l418
.long .Lframe_l474
.section .pcmap_data
.Lframe_l474:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0xffffff10
.long 0xffffff08
.long 0xffffff0c
.long 0xffffff18
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l410
.long .Lframe_l475
.section .pcmap_data
.Lframe_l475:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0
.long 0xffffff08
.long 0xffffff0c
.long 0xffffff18
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l405
.long .Lframe_l476
.section .pcmap_data
.Lframe_l476:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0
.long 0xffffff08
.long 0xffffff0c
.long 0xffffff18
.long 0xffffff50
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l402
.long .Lframe_l477
.section .pcmap_data
.Lframe_l477:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0
.long 0xffffff08
.long 0xffffff0c
.long 0xffffff18
.long 0xffffff50
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l391
.long .Lframe_l478
.section .pcmap_data
.Lframe_l478:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0
.long 0xffffff08
.long 0xffffff0c
.long 0xffffff18
.long 0xffffff50
.long 0xffffff90
.long 0
.long 0xffffff88
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l387
.long .Lframe_l479
.section .pcmap_data
.Lframe_l479:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0
.long 0xffffff08
.long 0
.long 0xffffff18
.long 0
.long 0xffffff90
.long 0xffffff8c
.long 0xffffff88
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l384
.long .Lframe_l480
.section .pcmap_data
.Lframe_l480:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0
.long 0xffffff08
.long 0
.long 0xffffff18
.long 0
.long 0xffffff90
.long 0xffffff8c
.long 0xffffff88
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l379
.long .Lframe_l481
.section .pcmap_data
.Lframe_l481:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l399
.long .Lframe_l482
.section .pcmap_data
.Lframe_l482:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0xffffff04
.long 0
.long 0xffffff08
.long 0xffffff0c
.long 0xffffff18
.long 0xffffff50
.long 0
.long 0xffffff8c
.long 0xffffff88
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l396
.long .Lframe_l483
.section .pcmap_data
.Lframe_l483:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l469
.long 0
.long 36
.long 0
.long 1
.long 0
.long 0
.long 0xffffff08
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
_Perl_hv_delete:
	leal -196(%esp), %esp
	leal 196(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 196(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 196(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 196(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l485:
.Lproc_body_start_l484:
.Lbranch_target_l539:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_192
.Lbranch_target_l529:
	movl $0,%eax
	leal 196(%esp), %ecx
	movl %ecx,180(%esp)
	movl $12,%ecx
	movl %ecx,184(%esp)
	movl 180(%esp),%ecx
	movl %edx,28(%esp)
	movl 184(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 208(%esp), %esp
	ret
_i_192:
.Lbranch_target_l540:
	movl $8,%eax
	movl %eax,16(%esp)
	movl %ecx,%eax
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $32768,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .L_i_194_l549
.Lbranch_target_l527:
	leal -8(%esp), %esp
	movl 8(%esp),%ecx
	movl %ecx,%eax
	leal 204(%esp), %ecx
	movl %ecx,28(%esp)
	movl $-8,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,36(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	leal 204(%esp), %edx
	movl %ecx,40(%esp)
	movl $-204,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 204(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	leal 204(%esp), %edx
	movl %ecx,44(%esp)
	movl $-200,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l526:
.Lbranch_target_l533:
	leal 196(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_196
.Lbranch_target_l523:
	leal -12(%esp), %esp
	movl 12(%esp),%ecx
	movl %ecx,%eax
	leal 208(%esp), %edx
	movl $-208,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal 208(%esp), %edx
	movl $-204,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%edx
	leal 208(%esp), %ecx
	movl %ecx,52(%esp)
	movl $-200,%ecx
	movl %ecx,56(%esp)
	movl 52(%esp),%ecx
	movl %edx,60(%esp)
	movl 56(%esp),%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_hv_fetch,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l522:
	movl %eax,%ecx
.Lbranch_target_l534:
	movl $0,%edx
	cmpl %edx,%eax
	je _i_196
.Lbranch_target_l519:
	movl (%ecx),%eax
	movl %eax,52(%esp)
	movl 52(%esp),%ecx
	movl %ecx,%eax
	leal _Perl_mg_clear,%edx
	movl (%edx),%edx
	call *%edx
.Lcall_successor_l518:
.Lbranch_target_l535:
	leal 196(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_198
.Lbranch_target_l515:
	leal -4(%esp), %esp
	movl 56(%esp),%ecx
	movl %ecx,%eax
	movl $112,%edx
	leal 200(%esp), %ecx
	movl %ecx,160(%esp)
	movl $-200,%ecx
	movl %ecx,164(%esp)
	movl 160(%esp),%ecx
	movl %edx,168(%esp)
	movl 164(%esp),%edx
	addl %edx,%ecx
	movl 168(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_mg_find,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l514:
.Lbranch_target_l536:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_200
.Lbranch_target_l511:
	leal -4(%esp), %esp
	movl 56(%esp),%ecx
	movl %ecx,%eax
	movl $112,%edx
	leal 200(%esp), %ecx
	movl %ecx,172(%esp)
	movl $-200,%ecx
	movl %ecx,176(%esp)
	movl 172(%esp),%ecx
	movl %edx,180(%esp)
	movl 176(%esp),%edx
	addl %edx,%ecx
	movl 180(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_sv_unmagic,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l510:
	movl 52(%esp),%eax
	leal 196(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 208(%esp), %esp
	ret
_i_200:
	movl $0,%eax
	leal 196(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 208(%esp), %esp
	ret
_i_198:
_i_196:
	jmp _i_194
.L_i_194_l549:
	movl %edx,28(%esp)
_i_194:
	movl (%esp),%eax
	movl (%eax),%ecx
.Lbranch_target_l541:
	movl (%ecx),%edx
	movl $0,%eax
	cmpl %eax,%edx
	jne _i_202
.Lbranch_target_l505:
	movl $0,%eax
	leal 196(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 208(%esp), %esp
	ret
_i_202:
_i_204:
	movl 12(%esp),%eax
	movl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,56(%esp)
	movl $0,%eax
_i_208:
	movl %eax,60(%esp)
	movl 56(%esp),%eax
	movl %eax,64(%esp)
	movl $1,%eax
	movl %eax,68(%esp)
	movl 64(%esp),%eax
	movl %ecx,72(%esp)
	movl 68(%esp),%ecx
	subl %ecx,%eax
.Lbranch_target_l542:
	movl $0,%ecx
	movl %eax,56(%esp)
	movl 64(%esp),%eax
	cmpl %ecx,%eax
	jne _i_207
.Lbranch_target_l503:
	movl 60(%esp),%eax
_i_205:
	movl $8,%ecx
	movl %eax,80(%esp)
	movl 72(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,84(%esp)
	movl 80(%esp),%ecx
	movl %ecx,%eax
	movl 84(%esp),%ecx
	andl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl (%edx),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,88(%esp)
	movl $1,%eax
_i_213:
.Lbranch_target_l548:
	movl %eax,92(%esp)
	movl $0,%eax
	cmpl %eax,%ecx
	jne _i_210
.Lbranch_target_l488:
	movl $0,%eax
	leal 196(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 208(%esp), %esp
	ret
_i_210:
.Lbranch_target_l543:
	movl $4,%eax
	movl %eax,96(%esp)
	movl %ecx,%eax
	movl %ecx,100(%esp)
	movl 96(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 80(%esp),%ecx
	cmpl %ecx,%eax
	je _i_214
	jmp _i_211
_i_214:
	movl $4,%eax
.Lbranch_target_l544:
	movl %eax,104(%esp)
	movl 100(%esp),%eax
	movl 104(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 4(%esp),%ecx
	cmpl %ecx,%eax
	je _i_216
	jmp _i_211
_i_216:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,116(%esp)
	movl 108(%esp),%eax
	movl 116(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 204(%esp), %ecx
	movl %ecx,120(%esp)
	movl $-204,%ecx
	movl %ecx,124(%esp)
	movl 120(%esp),%ecx
	movl 124(%esp),%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 204(%esp), %ecx
	movl %ecx,128(%esp)
	movl $-200,%ecx
	movl %ecx,132(%esp)
	movl 128(%esp),%ecx
	movl 132(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l502:
.Lbranch_target_l537:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_218
_i_211:
	movl $0,%eax
	movl 100(%esp),%ecx
	movl (%ecx),%edx
.L_i_213_l551:
	movl %ecx,88(%esp)
	movl %edx,%ecx
	movl 72(%esp),%edx
	jmp _i_213
_i_218:
	movl 100(%esp),%eax
	movl (%eax),%ecx
	movl 88(%esp),%edx
	movl %ecx,(%edx)
.Lbranch_target_l545:
	movl $0,%ecx
	movl 92(%esp),%eax
	cmpl %ecx,%eax
	je _i_220
.Lbranch_target_l499:
.Lbranch_target_l538:
	movl (%edx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_220
.Lbranch_target_l498:
	movl $4,%eax
	movl 72(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,128(%esp)
	movl $1,%eax
	movl %eax,132(%esp)
	movl 128(%esp),%eax
	movl 132(%esp),%ecx
	subl %ecx,%eax
	movl %eax,(%edx)
_i_220:
.Lbranch_target_l546:
	movl $2,%eax
	movl 8(%esp),%ecx
	andl %eax,%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je _i_222
.Lbranch_target_l497:
	movl $0,%eax
	jmp _i_223
_i_222:
	movl $8,%eax
	movl 100(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_mortalcopy,%edx
	movl (%edx),%edx
	call *%edx
.Lcall_successor_l496:
_i_223:
.Lbranch_target_l547:
	movl $32,%ecx
	movl %eax,52(%esp)
	movl 72(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 100(%esp),%ecx
	cmpl %eax,%ecx
	jne _i_224
.Lbranch_target_l493:
	movl $8,%eax
	movl (%esp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,144(%esp)
	movl $1073741824,%eax
	movl %eax,148(%esp)
	movl 144(%esp),%eax
	movl %ecx,152(%esp)
	movl 148(%esp),%ecx
	orl %ecx,%eax
	movl 152(%esp),%ecx
	movl %eax,(%ecx)
	jmp _i_225
_i_224:
	leal -4(%esp), %esp
	movl 4(%esp),%eax
	leal 200(%esp), %ecx
	movl %ecx,140(%esp)
	movl $-200,%ecx
	movl %ecx,144(%esp)
	movl 140(%esp),%ecx
	movl 144(%esp),%edx
	addl %edx,%ecx
	movl 104(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_hv_free_ent,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l492:
_i_225:
	movl $12,%eax
	movl 72(%esp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%edx
	subl %edx,%eax
	movl %eax,(%ecx)
	movl 52(%esp),%eax
	leal 196(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 208(%esp), %esp
	ret
_i_207:
	movl $1,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl $33,%eax
	movl %ecx,76(%esp)
	movl 60(%esp),%ecx
	imull %ecx,%eax
	movsbl (%edx),%ecx
	addl %ecx,%eax
.L_i_208_l550:
	movl 72(%esp),%ecx
	movl 76(%esp),%edx
	jmp _i_208
.section .pcmap_data
.Lstackdata_l553:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l526
.long .Lframe_l554
.section .pcmap_data
.Lframe_l554:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l553
.long 0
.long 25
.long 0
.long 1
.long 0xffffff3c
.long 0xffffff48
.long 0xffffff40
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l522
.long .Lframe_l555
.section .pcmap_data
.Lframe_l555:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l553
.long 0
.long 25
.long 0
.long 1
.long 0xffffff3c
.long 0xffffff48
.long 0xffffff40
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l518
.long .Lframe_l556
.section .pcmap_data
.Lframe_l556:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l553
.long 0
.long 25
.long 0
.long 1
.long 0xffffff3c
.long 0xffffff48
.long 0xffffff40
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff70
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l514
.long .Lframe_l557
.section .pcmap_data
.Lframe_l557:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l553
.long 0
.long 25
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
.long 0xffffff70
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l510
.long .Lframe_l558
.section .pcmap_data
.Lframe_l558:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l553
.long 0
.long 25
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
.long 0xffffff70
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l502
.long .Lframe_l559
.section .pcmap_data
.Lframe_l559:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l553
.long 0
.long 25
.long 0
.long 1
.long 0xffffff3c
.long 0xffffff48
.long 0xffffff40
.long 0xffffff44
.long 0xffffff84
.long 0xffffff98
.long 0xffffff8c
.long 0xffffffa0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l496
.long .Lframe_l560
.section .pcmap_data
.Lframe_l560:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l553
.long 0
.long 25
.long 0
.long 1
.long 0xffffff3c
.long 0
.long 0
.long 0
.long 0xffffff84
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l492
.long .Lframe_l561
.section .pcmap_data
.Lframe_l561:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l553
.long 0
.long 25
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0
.long 0
.long 0
.long 0xffffff70
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
_Perl_hv_delete_ent:
	leal -220(%esp), %esp
	leal 220(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 220(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 220(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 220(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l563:
.Lproc_body_start_l562:
.Lbranch_target_l621:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_227
.Lbranch_target_l611:
	movl $0,%eax
	leal 220(%esp), %ecx
	movl %ecx,200(%esp)
	movl $12,%ecx
	movl %ecx,204(%esp)
	movl 200(%esp),%ecx
	movl %edx,28(%esp)
	movl 204(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %esp
	ret
_i_227:
.Lbranch_target_l622:
	movl $8,%eax
	movl %eax,16(%esp)
	movl %ecx,%eax
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $32768,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .L_i_229_l633
.Lbranch_target_l609:
	leal -8(%esp), %esp
	movl 8(%esp),%ecx
	movl %ecx,%eax
	leal 228(%esp), %ecx
	movl %ecx,28(%esp)
	movl $-8,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,36(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	leal 228(%esp), %edx
	movl %ecx,40(%esp)
	movl $-228,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 228(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	leal 228(%esp), %edx
	movl %ecx,44(%esp)
	movl $-224,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l608:
.Lbranch_target_l615:
	leal 220(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_231
.Lbranch_target_l605:
	leal -12(%esp), %esp
	movl 12(%esp),%ecx
	movl %ecx,%eax
	leal 232(%esp), %edx
	movl $-232,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%edx
	leal 232(%esp), %ecx
	movl %ecx,52(%esp)
	movl $-228,%ecx
	movl %ecx,56(%esp)
	movl 52(%esp),%ecx
	movl %edx,60(%esp)
	movl 56(%esp),%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_hv_fetch_ent,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l604:
	movl %eax,%ecx
.Lbranch_target_l616:
	movl $0,%edx
	cmpl %edx,%eax
	je _i_231
.Lbranch_target_l601:
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,52(%esp)
	movl 52(%esp),%ecx
	movl %ecx,%eax
	leal _Perl_mg_clear,%edx
	movl (%edx),%edx
	call *%edx
.Lcall_successor_l600:
.Lbranch_target_l617:
	leal 220(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_233
.Lbranch_target_l597:
	leal -4(%esp), %esp
	movl 56(%esp),%ecx
	movl %ecx,%eax
	movl $112,%edx
	leal 224(%esp), %ecx
	movl %ecx,180(%esp)
	movl $-224,%ecx
	movl %ecx,184(%esp)
	movl 180(%esp),%ecx
	movl %edx,188(%esp)
	movl 184(%esp),%edx
	addl %edx,%ecx
	movl 188(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_mg_find,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l596:
.Lbranch_target_l618:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_235
.Lbranch_target_l593:
	leal -4(%esp), %esp
	movl 56(%esp),%ecx
	movl %ecx,%eax
	movl $112,%edx
	leal 224(%esp), %ecx
	movl %ecx,192(%esp)
	movl $-224,%ecx
	movl %ecx,196(%esp)
	movl 192(%esp),%ecx
	movl %edx,200(%esp)
	movl 196(%esp),%edx
	addl %edx,%ecx
	movl 200(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_sv_unmagic,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l592:
	movl 52(%esp),%eax
	leal 220(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %esp
	ret
_i_235:
	movl $0,%eax
	leal 220(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %esp
	ret
_i_233:
_i_231:
	jmp _i_229
.L_i_229_l633:
	movl %edx,28(%esp)
_i_229:
	movl (%esp),%eax
	movl (%eax),%ecx
.Lbranch_target_l623:
	movl (%ecx),%edx
	movl $0,%eax
	cmpl %eax,%edx
	jne _i_237
.Lbranch_target_l587:
	movl $0,%eax
	leal 220(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %esp
	ret
_i_237:
.Lbranch_target_l624:
	movl $8,%eax
	movl %eax,56(%esp)
	movl 12(%esp),%edx
	movl %edx,%eax
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $262144,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_240
.Lbranch_target_l585:
	movl (%edx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 220(%esp), %ecx
	movl %eax,68(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl 68(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl (%edx),%eax
	movl (%eax),%eax
	jmp _i_241
_i_240:
	leal -4(%esp), %esp
	movl %edx,%eax
	leal 224(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	leal 224(%esp), %edx
	movl %ecx,68(%esp)
	movl $-224,%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _Perl_sv_2pv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l584:
_i_241:
.Lbranch_target_l625:
	movl $0,%ecx
	movl 8(%esp),%edx
	cmpl %ecx,%edx
	jne .L_i_242_l634
_i_244:
	movl %eax,%ecx
	leal 220(%esp), %edx
	movl %eax,72(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $0,%edx
_i_248:
	movl %eax,76(%esp)
	movl $1,%eax
	movl %eax,80(%esp)
	movl 76(%esp),%eax
	movl %ecx,84(%esp)
	movl 80(%esp),%ecx
	subl %ecx,%eax
.Lbranch_target_l626:
	movl $0,%ecx
	movl %eax,88(%esp)
	movl 76(%esp),%eax
	cmpl %ecx,%eax
	jne _i_247
.Lbranch_target_l581:
_i_245:
	jmp _i_242
_i_247:
	movl 84(%esp),%eax
	movl $1,%ecx
	movl %eax,172(%esp)
	addl %ecx,%eax
	movl $33,%ecx
	imull %edx,%ecx
	movl 172(%esp),%edx
	movsbl (%edx),%edx
	addl %edx,%ecx
.L_i_248_l638:
	movl %ecx,%edx
	movl %eax,%ecx
	movl 88(%esp),%eax
	jmp _i_248
.L_i_242_l634:
	movl %eax,72(%esp)
_i_242:
	movl $8,%eax
	movl %eax,92(%esp)
	movl 60(%esp),%ecx
	movl %ecx,%eax
	movl 92(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %edx,%ecx
	andl %eax,%ecx
	movl $2,%eax
	movl %ecx,96(%esp)
	movl %eax,%ecx
	movl 96(%esp),%eax
	shll %cl, %eax
	movl %eax,96(%esp)
	movl 60(%esp),%ecx
	movl (%ecx),%eax
	movl %eax,100(%esp)
	movl 96(%esp),%eax
	movl 100(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,104(%esp)
	movl $1,%eax
_i_253:
.Lbranch_target_l632:
	movl %eax,108(%esp)
	movl $0,%eax
	cmpl %eax,%ecx
	jne _i_250
.Lbranch_target_l566:
	movl $0,%eax
	leal 220(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %esp
	ret
_i_250:
.Lbranch_target_l627:
	movl $4,%eax
	movl %eax,112(%esp)
	movl %ecx,%eax
	movl %ecx,116(%esp)
	movl 112(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	cmpl %edx,%eax
	je _i_254
.L_i_251_l636:
	movl %edx,8(%esp)
	jmp _i_251
_i_254:
	movl $4,%eax
.Lbranch_target_l628:
	movl %eax,120(%esp)
	movl 116(%esp),%ecx
	movl %ecx,%eax
	movl 120(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	leal 220(%esp), %ecx
	movl %eax,124(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl 124(%esp),%ecx
	cmpl %eax,%ecx
	je _i_256
.L_i_251_l635:
	movl %edx,8(%esp)
	jmp _i_251
_i_256:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,136(%esp)
	movl 124(%esp),%ecx
	movl %ecx,%eax
	movl 136(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 228(%esp), %ecx
	movl %ecx,140(%esp)
	movl $-12,%ecx
	movl %ecx,144(%esp)
	movl 140(%esp),%ecx
	movl %edx,16(%esp)
	movl 144(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 228(%esp), %edx
	movl %ecx,148(%esp)
	movl $-224,%ecx
	addl %ecx,%edx
	movl 148(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 228(%esp), %ecx
	movl $-228,%edx
	addl %edx,%ecx
	movl 80(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l580:
.Lbranch_target_l619:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_258
_i_251:
	movl $0,%eax
	movl 116(%esp),%ecx
	movl (%ecx),%edx
.L_i_253_l637:
	movl %ecx,104(%esp)
	movl %edx,%ecx
	movl 8(%esp),%edx
	jmp _i_253
_i_258:
	movl 116(%esp),%eax
	movl (%eax),%ecx
	movl 104(%esp),%edx
	movl %ecx,(%edx)
.Lbranch_target_l629:
	movl $0,%ecx
	movl 108(%esp),%eax
	cmpl %ecx,%eax
	je _i_260
.Lbranch_target_l577:
.Lbranch_target_l620:
	movl (%edx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_260
.Lbranch_target_l576:
	movl $4,%eax
	movl 60(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,144(%esp)
	movl $1,%eax
	movl %eax,148(%esp)
	movl 144(%esp),%eax
	movl 148(%esp),%ecx
	subl %ecx,%eax
	movl %eax,(%edx)
_i_260:
.Lbranch_target_l630:
	movl $2,%eax
	movl 4(%esp),%ecx
	andl %eax,%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je _i_262
.Lbranch_target_l575:
	movl $0,%eax
	jmp _i_263
_i_262:
	movl $8,%eax
	movl 116(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_mortalcopy,%edx
	movl (%edx),%edx
	call *%edx
.Lcall_successor_l574:
_i_263:
.Lbranch_target_l631:
	movl $32,%ecx
	movl %eax,52(%esp)
	movl 60(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 116(%esp),%ecx
	cmpl %eax,%ecx
	jne _i_264
.Lbranch_target_l571:
	movl $8,%eax
	movl (%esp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,160(%esp)
	movl $1073741824,%eax
	movl %eax,164(%esp)
	movl 160(%esp),%eax
	movl %ecx,168(%esp)
	movl 164(%esp),%ecx
	orl %ecx,%eax
	movl 168(%esp),%ecx
	movl %eax,(%ecx)
	jmp _i_265
_i_264:
	leal -4(%esp), %esp
	movl 4(%esp),%eax
	leal 224(%esp), %ecx
	movl %ecx,156(%esp)
	movl $-224,%ecx
	movl %ecx,160(%esp)
	movl 156(%esp),%ecx
	movl 160(%esp),%edx
	addl %edx,%ecx
	movl 120(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_hv_free_ent,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l570:
_i_265:
	movl $12,%eax
	movl 60(%esp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%edx
	subl %edx,%eax
	movl %eax,(%ecx)
	movl 52(%esp),%eax
	leal 220(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l640:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l608
.long .Lframe_l641
.section .pcmap_data
.Lframe_l641:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l640
.long 0
.long 27
.long 0
.long 1
.long 0xffffff24
.long 0xffffff30
.long 0xffffff28
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l604
.long .Lframe_l642
.section .pcmap_data
.Lframe_l642:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l640
.long 0
.long 27
.long 0
.long 1
.long 0xffffff24
.long 0xffffff30
.long 0xffffff28
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l600
.long .Lframe_l643
.section .pcmap_data
.Lframe_l643:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l640
.long 0
.long 27
.long 0
.long 1
.long 0xffffff24
.long 0xffffff30
.long 0xffffff28
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l596
.long .Lframe_l644
.section .pcmap_data
.Lframe_l644:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l640
.long 0
.long 27
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
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l592
.long .Lframe_l645
.section .pcmap_data
.Lframe_l645:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l640
.long 0
.long 27
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
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l584
.long .Lframe_l646
.section .pcmap_data
.Lframe_l646:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l640
.long 0
.long 27
.long 0
.long 1
.long 0xffffff24
.long 0
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff60
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l580
.long .Lframe_l647
.section .pcmap_data
.Lframe_l647:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l640
.long 0
.long 27
.long 0
.long 1
.long 0xffffff24
.long 0
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff60
.long 0xffffff90
.long 0xffffff6c
.long 0xffffff98
.long 0xffffff8c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l574
.long .Lframe_l648
.section .pcmap_data
.Lframe_l648:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l640
.long 0
.long 27
.long 0
.long 1
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff60
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l570
.long .Lframe_l649
.section .pcmap_data
.Lframe_l649:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l640
.long 0
.long 27
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffff60
.long 0
.long 0
.long 0
.long 0
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
