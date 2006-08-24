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
.Lbranch_target_l42:
.Lbranch_target_l46:
	leal _PL_he_root,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
.Lbranch_target_l48:
	jne .L_i_21_l47
.Lbranch_target_l41:
	leal _i_more_he,%ecx
	movl (%ecx),%ecx
	movl %eax,(%esp)
	call *%ecx
.Lcall_successor_l40:
	jmp _i_21
.L_i_21_l47:
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
.Lstackdata_l50:
.long 0
.section .pcmap
.long .Lcall_successor_l40
.long .Lframe_l51
.section .pcmap_data
.Lframe_l51:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l50
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
.Linitialize_continuations_l53:
.Lproc_body_start_l52:
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
.Linitialize_continuations_l63:
.Lproc_body_start_l62:
	movl $1008,%ecx
	movl %eax,(%esp)
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l69:
	leal _PL_he_root,%ecx
	movl %eax,(%ecx)
	leal _PL_he_root,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $996,%ecx
	movl %eax,%edx
	addl %ecx,%edx
_i_26:
.Lbranch_target_l66:
.Lbranch_target_l73:
	cmpl %edx,%eax
	jb _i_25
.Lbranch_target_l65:
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
.L_i_26_l74:
	movl %ecx,%eax
	jmp _i_26
.section .pcmap_data
.Lstackdata_l76:
.long 0
.section .pcmap
.long .Lcall_successor_l69
.long .Lframe_l77
.section .pcmap_data
.Lframe_l77:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffff8
.long .Lstackdata_l76
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
.Linitialize_continuations_l79:
.Lproc_body_start_l78:
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
.Lcall_successor_l87:
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
.Lcall_successor_l84:
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
.Lstackdata_l92:
.long 0
.section .pcmap
.long .Lcall_successor_l87
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffd8
.long .Lstackdata_l92
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
.long .Lcall_successor_l84
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffd8
.long .Lstackdata_l92
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
.Linitialize_continuations_l96:
.Lproc_body_start_l95:
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
.Lcall_successor_l100:
_i_29:
	leal 12(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l105:
.long 0
.section .pcmap
.long .Lcall_successor_l100
.long .Lframe_l106
.section .pcmap_data
.Lframe_l106:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff8
.long .Lstackdata_l105
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
.Linitialize_continuations_l108:
.Lproc_body_start_l107:
.Lbranch_target_l156:
.Lbranch_target_l170:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_31
.Lbranch_target_l155:
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
.Lbranch_target_l169:
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
.Lbranch_target_l172:
	je .L_i_33_l171
.Lbranch_target_l152:
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
.Lcall_successor_l151:
.Lbranch_target_l148:
.Lbranch_target_l168:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_35
.Lbranch_target_l147:
	leal _Perl_sv_newmortal,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l146:
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
.Lcall_successor_l143:
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
.L_i_33_l171:
	movl %edx,32(%esp)
_i_33:
	movl (%esp),%eax
	movl (%eax),%ecx
.Lbranch_target_l139:
.Lbranch_target_l167:
	movl (%ecx),%edx
	movl $0,%eax
	cmpl %eax,%edx
.Lbranch_target_l174:
	jne .L_i_37_l173
.Lbranch_target_l138:
.Lbranch_target_l166:
	movl $0,%eax
	movl 8(%esp),%edx
	cmpl %eax,%edx
	je _i_39
.Lbranch_target_l137:
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
.Lcall_successor_l136:
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
.Lcall_successor_l133:
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
.L_i_37_l173:
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
.Lbranch_target_l129:
.Lbranch_target_l165:
	movl $0,%ecx
	movl %eax,68(%esp)
	movl 76(%esp),%eax
	cmpl %ecx,%eax
	jne _i_44
.Lbranch_target_l128:
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
.Lbranch_target_l120:
.Lbranch_target_l161:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_47
.Lbranch_target_l119:
.Lbranch_target_l160:
	movl $0,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	je _i_57
.Lbranch_target_l118:
	movl $0,%eax
	leal _Perl_newSV,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l117:
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
.Lcall_successor_l114:
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
.Lbranch_target_l127:
.Lbranch_target_l164:
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
.Lbranch_target_l126:
.Lbranch_target_l163:
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
.Lcall_successor_l125:
.Lbranch_target_l122:
.Lbranch_target_l162:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_55
_i_48:
	movl 100(%esp),%eax
	movl (%eax),%eax
.L_i_50_l176:
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
.L_i_45_l175:
	movl %ecx,%eax
	movl 84(%esp),%ecx
	jmp _i_45
.section .pcmap_data
.Lstackdata_l178:
.long 0
.section .pcmap
.long .Lcall_successor_l151
.long .Lframe_l179
.section .pcmap_data
.Lframe_l179:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l178
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
.long .Lcall_successor_l146
.long .Lframe_l180
.section .pcmap_data
.Lframe_l180:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l178
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
.long .Lcall_successor_l143
.long .Lframe_l181
.section .pcmap_data
.Lframe_l181:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l178
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
.long .Lcall_successor_l136
.long .Lframe_l182
.section .pcmap_data
.Lframe_l182:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l178
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
.long .Lcall_successor_l133
.long .Lframe_l183
.section .pcmap_data
.Lframe_l183:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l178
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
.long .Lcall_successor_l117
.long .Lframe_l184
.section .pcmap_data
.Lframe_l184:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l178
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
.long .Lcall_successor_l114
.long .Lframe_l185
.section .pcmap_data
.Lframe_l185:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l178
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
.long .Lcall_successor_l125
.long .Lframe_l186
.section .pcmap_data
.Lframe_l186:
.long 0x80000010
.long 0xffffff6c
.long 0xffffff8c
.long .Lstackdata_l178
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
.Linitialize_continuations_l188:
.Lproc_body_start_l187:
.Lbranch_target_l253:
.Lbranch_target_l270:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_60
.Lbranch_target_l252:
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
.Lbranch_target_l250:
.Lbranch_target_l269:
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
.Lbranch_target_l272:
	je .L_i_62_l271
.Lbranch_target_l249:
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
.Lcall_successor_l248:
.Lbranch_target_l245:
.Lbranch_target_l268:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_64
.Lbranch_target_l244:
	leal _Perl_sv_newmortal,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l243:
	movl %eax,148(%esp)
	movl 12(%esp),%eax
	leal _Perl_newSVsv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l240:
	leal _Perl_sv_2mortal,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l237:
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
.Lcall_successor_l234:
.Lbranch_target_l231:
.Lbranch_target_l267:
	leal _PL_hv_fetch_ent_mh,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_66
.Lbranch_target_l230:
	movl $12,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l229:
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
.L_i_62_l271:
	movl %edx,32(%esp)
_i_62:
	movl (%esp),%eax
	movl (%eax),%ecx
.Lbranch_target_l225:
.Lbranch_target_l266:
	movl (%ecx),%edx
	movl $0,%eax
	cmpl %eax,%edx
.Lbranch_target_l274:
	jne .L_i_73_l273
.Lbranch_target_l224:
.Lbranch_target_l265:
	movl $0,%eax
	movl 4(%esp),%edx
	cmpl %eax,%edx
	je _i_75
.Lbranch_target_l223:
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
.Lcall_successor_l222:
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
.Lcall_successor_l219:
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
.L_i_73_l273:
	movl %ecx,44(%esp)
_i_73:
.Lbranch_target_l215:
.Lbranch_target_l264:
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
.Lbranch_target_l214:
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
.Lcall_successor_l213:
_i_79:
.Lbranch_target_l210:
.Lbranch_target_l263:
	movl $0,%ecx
	movl 8(%esp),%edx
	cmpl %ecx,%edx
.Lbranch_target_l276:
	jne .L_i_80_l275
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
.Lbranch_target_l209:
.Lbranch_target_l262:
	movl $0,%ecx
	movl %eax,108(%esp)
	movl 96(%esp),%eax
	cmpl %ecx,%eax
	jne _i_85
.Lbranch_target_l208:
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
.L_i_86_l282:
	movl %ecx,%edx
	movl %eax,%ecx
	movl 108(%esp),%eax
	jmp _i_86
.L_i_80_l275:
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
.Lbranch_target_l200:
.Lbranch_target_l258:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_88
.Lbranch_target_l199:
.Lbranch_target_l257:
	movl $0,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je _i_98
.Lbranch_target_l198:
	movl $0,%eax
	leal _Perl_newSV,%ecx
	movl (%ecx),%ecx
	movl %edx,8(%esp)
	call *%ecx
.Lcall_successor_l197:
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
.Lcall_successor_l194:
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
.Lbranch_target_l207:
.Lbranch_target_l261:
	movl $4,%ecx
	movl %eax,120(%esp)
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	cmpl %edx,%eax
.Lbranch_target_l280:
	je _i_92
.L_i_89_l279:
	movl %edx,8(%esp)
	jmp _i_89
_i_92:
	movl $4,%eax
.Lbranch_target_l206:
.Lbranch_target_l260:
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
.Lbranch_target_l278:
	je _i_94
.L_i_89_l277:
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
.Lcall_successor_l205:
.Lbranch_target_l202:
.Lbranch_target_l259:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_96
_i_89:
	movl 120(%esp),%eax
	movl (%eax),%eax
.L_i_91_l281:
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
.Lstackdata_l284:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l248
.long .Lframe_l285
.section .pcmap_data
.Lframe_l285:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.long .Lcall_successor_l243
.long .Lframe_l286
.section .pcmap_data
.Lframe_l286:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.long .Lcall_successor_l240
.long .Lframe_l287
.section .pcmap_data
.Lframe_l287:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.long .Lcall_successor_l237
.long .Lframe_l288
.section .pcmap_data
.Lframe_l288:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.long .Lcall_successor_l234
.long .Lframe_l289
.section .pcmap_data
.Lframe_l289:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.long .Lcall_successor_l229
.long .Lframe_l290
.section .pcmap_data
.Lframe_l290:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.long .Lcall_successor_l222
.long .Lframe_l291
.section .pcmap_data
.Lframe_l291:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.long .Lcall_successor_l219
.long .Lframe_l292
.section .pcmap_data
.Lframe_l292:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.long .Lcall_successor_l213
.long .Lframe_l293
.section .pcmap_data
.Lframe_l293:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.long .Lcall_successor_l197
.long .Lframe_l294
.section .pcmap_data
.Lframe_l294:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.long .Lcall_successor_l194
.long .Lframe_l295
.section .pcmap_data
.Lframe_l295:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.long .Lcall_successor_l205
.long .Lframe_l296
.section .pcmap_data
.Lframe_l296:
.long 0x80000010
.long 0xffffff44
.long 0xffffff64
.long .Lstackdata_l284
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
.Linitialize_continuations_l298:
.Lproc_body_start_l297:
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
.Lbranch_target_l300:
.Lbranch_target_l310:
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
.Lbranch_target_l306:
.Lbranch_target_l315:
	movl $65,%ecx
	cmpl %ecx,%eax
.Lbranch_target_l323:
	jl .L_i_104_l322
.Lbranch_target_l305:
.Lbranch_target_l314:
	movl $90,%ecx
	cmpl %ecx,%eax
.Lbranch_target_l321:
	jg .L_i_104_l320
.Lbranch_target_l304:
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
.Lbranch_target_l303:
.Lbranch_target_l313:
	cmpl %ecx,%eax
	je _i_109
.Lbranch_target_l302:
.Lbranch_target_l312:
	cmpl %ecx,%eax
.Lbranch_target_l319:
	jl .L_i_106_l318
_i_110:
.Lbranch_target_l301:
.Lbranch_target_l311:
	movl $83,%ecx
	cmpl %ecx,%eax
.Lbranch_target_l317:
	je _i_109
.L_i_106_l316:
	movl 4(%esp),%ecx
	jmp _i_106
.L_i_106_l318:
	movl 4(%esp),%ecx
	jmp _i_106
_i_109:
	movl $0,%eax
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
_i_106:
	jmp _i_104
.L_i_104_l320:
	movl 4(%esp),%ecx
	jmp _i_104
.L_i_104_l322:
	movl 4(%esp),%ecx
_i_104:
	movl 20(%esp),%eax
	movl (%eax),%eax
.L_i_102_l324:
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
.Linitialize_continuations_l330:
.Lproc_body_start_l329:
.Lbranch_target_l390:
.Lbranch_target_l408:
	movl %eax,12(%esp)
	movl $0,%eax
	movl %ecx,16(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_112
.Lbranch_target_l389:
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
.Lbranch_target_l387:
.Lbranch_target_l407:
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
.Lbranch_target_l412:
	je .L_i_114_l411
.Lbranch_target_l386:
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
.Lcall_successor_l385:
.Lbranch_target_l382:
.Lbranch_target_l406:
	leal 212(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
.Lbranch_target_l410:
	je .L_i_116_l409
.Lbranch_target_l381:
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
.Lcall_successor_l380:
.Lbranch_target_l377:
.Lbranch_target_l405:
	movl 24(%esp),%eax
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne _i_118
.Lbranch_target_l376:
.Lbranch_target_l404:
	leal 212(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne _i_118
.Lbranch_target_l375:
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
.L_i_116_l409:
	movl 24(%esp),%eax
_i_116:
	jmp _i_114
.L_i_114_l411:
	movl %edx,40(%esp)
	movl 24(%esp),%eax
_i_114:
.Lbranch_target_l373:
.Lbranch_target_l403:
	movl $0,%ecx
	movl 12(%esp),%edx
	cmpl %ecx,%edx
.Lbranch_target_l414:
	jne .L_i_120_l413
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
.Lbranch_target_l372:
.Lbranch_target_l402:
	movl $0,%ecx
	movl %eax,52(%esp)
	movl 60(%esp),%eax
	cmpl %ecx,%eax
	jne _i_125
.Lbranch_target_l371:
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
.L_i_126_l416:
	movl 192(%esp),%edx
	movl 16(%esp),%ecx
	jmp _i_126
.L_i_120_l413:
	movl %edx,%eax
_i_120:
.Lbranch_target_l370:
.Lbranch_target_l401:
	movl 24(%esp),%ecx
	movl (%ecx),%edx
	movl %eax,12(%esp)
	movl $0,%eax
	cmpl %eax,%edx
	jne _i_128
.Lbranch_target_l369:
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
.Lcall_successor_l368:
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
.Lcall_successor_l365:
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
.Lbranch_target_l352:
.Lbranch_target_l397:
	movl %eax,108(%esp)
	movl $0,%eax
	movl %ecx,112(%esp)
	movl 108(%esp),%ecx
	cmpl %eax,%ecx
	jne _i_130
.Lbranch_target_l351:
	leal _i_new_he,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l350:
.Lbranch_target_l347:
.Lbranch_target_l396:
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
.Lbranch_target_l346:
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
.Lcall_successor_l345:
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
.Lcall_successor_l342:
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
.Lbranch_target_l339:
.Lbranch_target_l395:
	movl $0,%eax
	movl 112(%esp),%ecx
	cmpl %eax,%ecx
	je _i_142
.Lbranch_target_l338:
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
.Lbranch_target_l337:
.Lbranch_target_l394:
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
.Lbranch_target_l336:
	movl (%esp),%eax
	leal _i_hsplit,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l335:
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
.Lbranch_target_l362:
.Lbranch_target_l400:
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
.Lbranch_target_l361:
.Lbranch_target_l399:
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
.Lcall_successor_l360:
.Lbranch_target_l357:
.Lbranch_target_l398:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_138
_i_131:
	movl $0,%eax
	movl 108(%esp),%ecx
	movl (%ecx),%ecx
.L_i_133_l415:
	movl %eax,112(%esp)
	movl %ecx,%eax
	movl 112(%esp),%ecx
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
.Lcall_successor_l356:
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
.Lstackdata_l418:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l385
.long .Lframe_l419
.section .pcmap_data
.Lframe_l419:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l418
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
.long .Lcall_successor_l380
.long .Lframe_l420
.section .pcmap_data
.Lframe_l420:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l418
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
.long .Lcall_successor_l368
.long .Lframe_l421
.section .pcmap_data
.Lframe_l421:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l418
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
.long .Lcall_successor_l365
.long .Lframe_l422
.section .pcmap_data
.Lframe_l422:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l418
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
.long .Lcall_successor_l350
.long .Lframe_l423
.section .pcmap_data
.Lframe_l423:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l418
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
.long .Lcall_successor_l345
.long .Lframe_l424
.section .pcmap_data
.Lframe_l424:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l418
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
.long .Lcall_successor_l342
.long .Lframe_l425
.section .pcmap_data
.Lframe_l425:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l418
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
.long .Lcall_successor_l335
.long .Lframe_l426
.section .pcmap_data
.Lframe_l426:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l418
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
.long .Lcall_successor_l360
.long .Lframe_l427
.section .pcmap_data
.Lframe_l427:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l418
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
.long .Lcall_successor_l356
.long .Lframe_l428
.section .pcmap_data
.Lframe_l428:
.long 0x80000014
.long 0xffffff2c
.long 0xffffff54
.long .Lstackdata_l418
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
.Linitialize_continuations_l430:
.Lproc_body_start_l429:
.Lbranch_target_l512:
.Lbranch_target_l535:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_147
.Lbranch_target_l511:
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
.Lbranch_target_l509:
.Lbranch_target_l534:
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
.Lbranch_target_l541:
	je .L_i_149_l540
.Lbranch_target_l508:
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
.Lcall_successor_l507:
.Lbranch_target_l504:
.Lbranch_target_l533:
	leal 252(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
.Lbranch_target_l539:
	je .L_i_151_l538
.Lbranch_target_l503:
	leal _PL_tainted,%eax
	movl (%eax),%eax
	movl (%eax),%eax
.Lbranch_target_l502:
.Lbranch_target_l532:
	leal _PL_tainting,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
.Lbranch_target_l537:
	je .L_i_153_l536
.Lbranch_target_l501:
	movl 12(%esp),%ecx
	movl %ecx,%edx
.Lbranch_target_l500:
.Lbranch_target_l531:
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
.Lbranch_target_l499:
	movl %edx,%eax
	leal _Perl_sv_tainted,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l498:
.Lbranch_target_l495:
.Lbranch_target_l530:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_156
.Lbranch_target_l494:
	movl $1,%eax
	jmp _i_157
_i_156:
	movl $0,%eax
_i_157:
	leal _PL_tainted,%ecx
	movl %eax,(%ecx)
	jmp _i_153
.L_i_153_l536:
	movl %eax,48(%esp)
_i_153:
	movl 12(%esp),%eax
	leal _Perl_newSVsv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l493:
	leal _Perl_sv_2mortal,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l490:
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
.Lcall_successor_l487:
.Lbranch_target_l484:
.Lbranch_target_l529:
	movl $0,%eax
	movl 48(%esp),%ecx
	cmpl %eax,%ecx
	je _i_158
.Lbranch_target_l483:
	movl $1,%eax
	leal _PL_tainted,%ecx
	movl %eax,(%ecx)
_i_158:
.Lbranch_target_l482:
.Lbranch_target_l528:
	movl 20(%esp),%eax
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne _i_160
.Lbranch_target_l481:
.Lbranch_target_l527:
	leal 252(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne _i_160
.Lbranch_target_l480:
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
.L_i_151_l538:
	movl 20(%esp),%eax
_i_151:
	jmp _i_149
.L_i_149_l540:
	movl %edx,36(%esp)
	movl 20(%esp),%eax
_i_149:
.Lbranch_target_l478:
.Lbranch_target_l526:
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
.Lbranch_target_l477:
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
.Lcall_successor_l476:
_i_164:
.Lbranch_target_l473:
.Lbranch_target_l525:
	movl $0,%ecx
	movl 8(%esp),%edx
	cmpl %ecx,%edx
.Lbranch_target_l543:
	jne .L_i_165_l542
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
.Lbranch_target_l472:
.Lbranch_target_l524:
	movl $0,%ecx
	movl %eax,92(%esp)
	movl 80(%esp),%eax
	cmpl %ecx,%eax
	jne _i_170
.Lbranch_target_l471:
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
.L_i_171_l547:
	movl %ecx,%edx
	movl %eax,%ecx
	movl 92(%esp),%eax
	jmp _i_171
.L_i_165_l542:
	movl %eax,76(%esp)
_i_165:
.Lbranch_target_l470:
.Lbranch_target_l523:
	movl 20(%esp),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
.Lbranch_target_l545:
	jne .L_i_173_l544
.Lbranch_target_l469:
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
.Lcall_successor_l468:
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
.Lcall_successor_l465:
	jmp _i_173
.L_i_173_l544:
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
.Lbranch_target_l452:
.Lbranch_target_l519:
	movl %eax,136(%esp)
	movl $0,%eax
	movl %ecx,140(%esp)
	movl 136(%esp),%ecx
	cmpl %eax,%ecx
	jne _i_175
.Lbranch_target_l451:
	leal _i_new_he,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l450:
.Lbranch_target_l447:
.Lbranch_target_l518:
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
.Lbranch_target_l446:
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
.Lcall_successor_l445:
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
.Lcall_successor_l442:
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
.Lbranch_target_l439:
.Lbranch_target_l517:
	movl $0,%eax
	movl 140(%esp),%ecx
	cmpl %eax,%ecx
	je _i_187
.Lbranch_target_l438:
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
.Lbranch_target_l437:
.Lbranch_target_l516:
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
.Lbranch_target_l436:
	movl (%esp),%eax
	leal _i_hsplit,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l435:
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
.Lbranch_target_l462:
.Lbranch_target_l522:
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
.Lbranch_target_l461:
.Lbranch_target_l521:
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
.Lcall_successor_l460:
.Lbranch_target_l457:
.Lbranch_target_l520:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_183
_i_176:
	movl $0,%eax
	movl 136(%esp),%ecx
	movl (%ecx),%ecx
.L_i_178_l546:
	movl %eax,140(%esp)
	movl %ecx,%eax
	movl 140(%esp),%ecx
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
.Lcall_successor_l456:
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
.Lstackdata_l549:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l507
.long .Lframe_l550
.section .pcmap_data
.Lframe_l550:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l498
.long .Lframe_l551
.section .pcmap_data
.Lframe_l551:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l493
.long .Lframe_l552
.section .pcmap_data
.Lframe_l552:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l490
.long .Lframe_l553
.section .pcmap_data
.Lframe_l553:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l487
.long .Lframe_l554
.section .pcmap_data
.Lframe_l554:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l476
.long .Lframe_l555
.section .pcmap_data
.Lframe_l555:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l468
.long .Lframe_l556
.section .pcmap_data
.Lframe_l556:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l465
.long .Lframe_l557
.section .pcmap_data
.Lframe_l557:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l450
.long .Lframe_l558
.section .pcmap_data
.Lframe_l558:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l445
.long .Lframe_l559
.section .pcmap_data
.Lframe_l559:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l442
.long .Lframe_l560
.section .pcmap_data
.Lframe_l560:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l435
.long .Lframe_l561
.section .pcmap_data
.Lframe_l561:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l460
.long .Lframe_l562
.section .pcmap_data
.Lframe_l562:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.long .Lcall_successor_l456
.long .Lframe_l563
.section .pcmap_data
.Lframe_l563:
.long 0x80000010
.long 0xffffff04
.long 0xffffff28
.long .Lstackdata_l549
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
.Linitialize_continuations_l565:
.Lproc_body_start_l564:
.Lbranch_target_l624:
.Lbranch_target_l643:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_192
.Lbranch_target_l623:
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
.Lbranch_target_l621:
.Lbranch_target_l642:
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
.Lbranch_target_l645:
	je .L_i_194_l644
.Lbranch_target_l620:
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
.Lcall_successor_l619:
.Lbranch_target_l616:
.Lbranch_target_l641:
	leal 196(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_196
.Lbranch_target_l615:
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
.Lcall_successor_l614:
	movl %eax,%ecx
.Lbranch_target_l611:
.Lbranch_target_l640:
	movl $0,%edx
	cmpl %edx,%eax
	je _i_196
.Lbranch_target_l610:
	movl (%ecx),%eax
	movl %eax,52(%esp)
	movl 52(%esp),%ecx
	movl %ecx,%eax
	leal _Perl_mg_clear,%edx
	movl (%edx),%edx
	call *%edx
.Lcall_successor_l609:
.Lbranch_target_l606:
.Lbranch_target_l639:
	leal 196(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_198
.Lbranch_target_l605:
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
.Lcall_successor_l604:
.Lbranch_target_l601:
.Lbranch_target_l638:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_200
.Lbranch_target_l600:
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
.Lcall_successor_l599:
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
.L_i_194_l644:
	movl %edx,28(%esp)
_i_194:
	movl (%esp),%eax
	movl (%eax),%ecx
.Lbranch_target_l594:
.Lbranch_target_l637:
	movl (%ecx),%edx
	movl $0,%eax
	cmpl %eax,%edx
	jne _i_202
.Lbranch_target_l593:
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
.Lbranch_target_l591:
.Lbranch_target_l636:
	movl $0,%ecx
	movl %eax,56(%esp)
	movl 64(%esp),%eax
	cmpl %ecx,%eax
	jne _i_207
.Lbranch_target_l590:
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
.Lbranch_target_l569:
.Lbranch_target_l628:
	movl %eax,92(%esp)
	movl $0,%eax
	cmpl %eax,%ecx
	jne _i_210
.Lbranch_target_l568:
	movl $0,%eax
	leal 196(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 208(%esp), %esp
	ret
_i_210:
.Lbranch_target_l589:
.Lbranch_target_l635:
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
.Lbranch_target_l588:
.Lbranch_target_l634:
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
.Lcall_successor_l587:
.Lbranch_target_l584:
.Lbranch_target_l633:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_218
_i_211:
	movl $0,%eax
	movl 100(%esp),%ecx
	movl (%ecx),%edx
.L_i_213_l647:
	movl %ecx,88(%esp)
	movl %edx,%ecx
	movl 72(%esp),%edx
	jmp _i_213
_i_218:
	movl 100(%esp),%eax
	movl (%eax),%ecx
	movl 88(%esp),%edx
	movl %ecx,(%edx)
.Lbranch_target_l583:
.Lbranch_target_l632:
	movl $0,%ecx
	movl 92(%esp),%eax
	cmpl %ecx,%eax
	je _i_220
.Lbranch_target_l582:
.Lbranch_target_l631:
	movl (%edx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_220
.Lbranch_target_l581:
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
.Lbranch_target_l580:
.Lbranch_target_l630:
	movl $2,%eax
	movl 8(%esp),%ecx
	andl %eax,%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je _i_222
.Lbranch_target_l579:
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
.Lcall_successor_l578:
_i_223:
.Lbranch_target_l575:
.Lbranch_target_l629:
	movl $32,%ecx
	movl %eax,52(%esp)
	movl 72(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 100(%esp),%ecx
	cmpl %eax,%ecx
	jne _i_224
.Lbranch_target_l574:
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
.Lcall_successor_l573:
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
.L_i_208_l646:
	movl 76(%esp),%edx
	movl 72(%esp),%ecx
	jmp _i_208
.section .pcmap_data
.Lstackdata_l649:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l619
.long .Lframe_l650
.section .pcmap_data
.Lframe_l650:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l649
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
.long .Lcall_successor_l614
.long .Lframe_l651
.section .pcmap_data
.Lframe_l651:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l649
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
.long .Lcall_successor_l609
.long .Lframe_l652
.section .pcmap_data
.Lframe_l652:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l649
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
.long .Lcall_successor_l604
.long .Lframe_l653
.section .pcmap_data
.Lframe_l653:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l649
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
.long .Lcall_successor_l599
.long .Lframe_l654
.section .pcmap_data
.Lframe_l654:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l649
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
.long .Lcall_successor_l587
.long .Lframe_l655
.section .pcmap_data
.Lframe_l655:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l649
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
.long .Lcall_successor_l578
.long .Lframe_l656
.section .pcmap_data
.Lframe_l656:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l649
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
.long .Lcall_successor_l573
.long .Lframe_l657
.section .pcmap_data
.Lframe_l657:
.long 0x80000010
.long 0xffffff3c
.long 0xffffff58
.long .Lstackdata_l649
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
.Linitialize_continuations_l659:
.Lproc_body_start_l658:
.Lbranch_target_l724:
.Lbranch_target_l745:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne _i_227
.Lbranch_target_l723:
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
.Lbranch_target_l721:
.Lbranch_target_l744:
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
.Lbranch_target_l747:
	je .L_i_229_l746
.Lbranch_target_l720:
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
.Lcall_successor_l719:
.Lbranch_target_l716:
.Lbranch_target_l743:
	leal 220(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_231
.Lbranch_target_l715:
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
.Lcall_successor_l714:
	movl %eax,%ecx
.Lbranch_target_l711:
.Lbranch_target_l742:
	movl $0,%edx
	cmpl %edx,%eax
	je _i_231
.Lbranch_target_l710:
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,52(%esp)
	movl 52(%esp),%ecx
	movl %ecx,%eax
	leal _Perl_mg_clear,%edx
	movl (%edx),%edx
	call *%edx
.Lcall_successor_l709:
.Lbranch_target_l706:
.Lbranch_target_l741:
	leal 220(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_233
.Lbranch_target_l705:
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
.Lcall_successor_l704:
.Lbranch_target_l701:
.Lbranch_target_l740:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_235
.Lbranch_target_l700:
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
.Lcall_successor_l699:
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
.L_i_229_l746:
	movl %edx,28(%esp)
_i_229:
	movl (%esp),%eax
	movl (%eax),%ecx
.Lbranch_target_l694:
.Lbranch_target_l739:
	movl (%ecx),%edx
	movl $0,%eax
	cmpl %eax,%edx
	jne _i_237
.Lbranch_target_l693:
	movl $0,%eax
	leal 220(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %esp
	ret
_i_237:
.Lbranch_target_l691:
.Lbranch_target_l738:
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
.Lbranch_target_l690:
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
.Lcall_successor_l689:
_i_241:
.Lbranch_target_l686:
.Lbranch_target_l737:
	movl $0,%ecx
	movl 8(%esp),%edx
	cmpl %ecx,%edx
.Lbranch_target_l749:
	jne .L_i_242_l748
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
.Lbranch_target_l685:
.Lbranch_target_l736:
	movl $0,%ecx
	movl %eax,88(%esp)
	movl 76(%esp),%eax
	cmpl %ecx,%eax
	jne _i_247
.Lbranch_target_l684:
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
.L_i_248_l755:
	movl %ecx,%edx
	movl %eax,%ecx
	movl 88(%esp),%eax
	jmp _i_248
.L_i_242_l748:
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
.Lbranch_target_l663:
.Lbranch_target_l728:
	movl %eax,108(%esp)
	movl $0,%eax
	cmpl %eax,%ecx
	jne _i_250
.Lbranch_target_l662:
	movl $0,%eax
	leal 220(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %esp
	ret
_i_250:
.Lbranch_target_l683:
.Lbranch_target_l735:
	movl $4,%eax
	movl %eax,112(%esp)
	movl %ecx,%eax
	movl %ecx,116(%esp)
	movl 112(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	cmpl %edx,%eax
.Lbranch_target_l753:
	je _i_254
.L_i_251_l752:
	movl %edx,8(%esp)
	jmp _i_251
_i_254:
	movl $4,%eax
.Lbranch_target_l682:
.Lbranch_target_l734:
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
.Lbranch_target_l751:
	je _i_256
.L_i_251_l750:
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
.Lcall_successor_l681:
.Lbranch_target_l678:
.Lbranch_target_l733:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_258
_i_251:
	movl $0,%eax
	movl 116(%esp),%ecx
	movl (%ecx),%edx
.L_i_253_l754:
	movl %ecx,104(%esp)
	movl %edx,%ecx
	movl 8(%esp),%edx
	jmp _i_253
_i_258:
	movl 116(%esp),%eax
	movl (%eax),%ecx
	movl 104(%esp),%edx
	movl %ecx,(%edx)
.Lbranch_target_l677:
.Lbranch_target_l732:
	movl $0,%ecx
	movl 108(%esp),%eax
	cmpl %ecx,%eax
	je _i_260
.Lbranch_target_l676:
.Lbranch_target_l731:
	movl (%edx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_260
.Lbranch_target_l675:
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
.Lbranch_target_l674:
.Lbranch_target_l730:
	movl $2,%eax
	movl 4(%esp),%ecx
	andl %eax,%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je _i_262
.Lbranch_target_l673:
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
.Lcall_successor_l672:
_i_263:
.Lbranch_target_l669:
.Lbranch_target_l729:
	movl $32,%ecx
	movl %eax,52(%esp)
	movl 60(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 116(%esp),%ecx
	cmpl %eax,%ecx
	jne _i_264
.Lbranch_target_l668:
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
.Lcall_successor_l667:
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
.Lstackdata_l757:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l719
.long .Lframe_l758
.section .pcmap_data
.Lframe_l758:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l757
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
.long .Lcall_successor_l714
.long .Lframe_l759
.section .pcmap_data
.Lframe_l759:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l757
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
.long .Lcall_successor_l709
.long .Lframe_l760
.section .pcmap_data
.Lframe_l760:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l757
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
.long .Lcall_successor_l704
.long .Lframe_l761
.section .pcmap_data
.Lframe_l761:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l757
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
.long .Lcall_successor_l699
.long .Lframe_l762
.section .pcmap_data
.Lframe_l762:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l757
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
.long .Lcall_successor_l689
.long .Lframe_l763
.section .pcmap_data
.Lframe_l763:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l757
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
.long .Lcall_successor_l681
.long .Lframe_l764
.section .pcmap_data
.Lframe_l764:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l757
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
.long .Lcall_successor_l672
.long .Lframe_l765
.section .pcmap_data
.Lframe_l765:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l757
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
.long .Lcall_successor_l667
.long .Lframe_l766
.section .pcmap_data
.Lframe_l766:
.long 0x80000010
.long 0xffffff24
.long 0xffffff40
.long .Lstackdata_l757
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
