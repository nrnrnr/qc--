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
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l36:
Lproc_body_start_l35:
	leal _PL_he_root,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l42
Ljoin_l43:
	leal _i_more_he,%ecx
	movl (%ecx),%ecx
	movl %eax,(%esp)
	call *%ecx
Ljoin_l41:
	movl (%esp),%eax
	jmp _i_21
Ljoin_l42:
	jmp _i_21
_i_21:
	leal _PL_he_root,%edx
	movl (%edx),%edx
	movl (%edx),%ecx
	movl %edx,4(%esp)
	movl (%ecx),%edx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	movl %edx,(%ecx)
	movl %eax,(%esp)
	movl 8(%esp),%eax
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l48:
.long 0
.section .pcmap
.long Ljoin_l41
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff4
.long Lstackdata_l48
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
	movl %esp,%edx
	movl (%edx),%edx
Linitialize_continuations_l52:
Lproc_body_start_l51:
	leal _PL_he_root,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal _PL_he_root,%ecx
	movl %eax,(%ecx)
_i_23:
	movl %esp,%ecx
	movl $0,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	ret
.section .text
_i_more_he:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l63:
Lproc_body_start_l62:
	movl $1008,%eax
	leal _Perl_safemalloc,%edx
	movl (%edx),%edx
	movl %ecx,(%esp)
	call *%edx
Ljoin_l69:
	leal _PL_he_root,%edx
	movl %eax,(%edx)
	leal _PL_he_root,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl $996,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	jmp _i_26
_i_26:
	cmpl %eax,%edx
	jb Ljoin_l65
Ljoin_l66:
	movl $0,%ecx
	movl %ecx,(%edx)
_i_24:
	leal 8(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
Ljoin_l65:
	jmp _i_25
_i_25:
	movl $12,%ecx
	movl %edi,4(%esp)
	movl %edx,%edi
	addl %ecx,%edi
	movl %edi,(%edx)
	movl $12,%edi
	addl %edi,%edx
	movl 4(%esp),%edi
	jmp _i_26
.section .pcmap_data
Lstackdata_l74:
.long 0
.section .pcmap
.long Ljoin_l69
.long Lframe_l75
.section .pcmap_data
Lframe_l75:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffff8
.long Lstackdata_l74
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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l78:
Lproc_body_start_l77:
	movl %edi,4(%esp)
	movl $1,%edi
	movl %edi,8(%esp)
	movl $8,%edi
	movl %esi,16(%esp)
	movl %edi,12(%esp)
	movl (%esp),%edi
	movl %edi,%esi
	movl 12(%esp),%edi
	addl %edi,%esi
	movl 8(%esp),%edi
	addl %edi,%esi
	imull %esi,%edi
	movl %eax,20(%esp)
	movl %edi,%eax
	leal _Perl_safemalloc,%edi
	movl (%edi),%edi
	movl %edx,28(%esp)
	movl %ecx,24(%esp)
	call *%edi
Ljoin_l86:
	leal -8(%esp), %esp
	movl %eax,40(%esp)
	movl 28(%esp),%eax
	movl $8,%edi
	movl 40(%esp),%esi
	movl %esi,%ecx
	addl %edi,%ecx
	leal 48(%esp), %edi
	movl $-48,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $1,%edi
	movl 8(%esp),%ecx
	imull %ecx,%edi
	leal 48(%esp), %edx
	movl %edi,44(%esp)
	movl $-44,%edi
	addl %edi,%edx
	movl 44(%esp),%edi
	movl %edi,(%edx)
	leal _Perl_my_bcopy,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l83:
	movl $0,%eax
	movl $8,%edx
	movl %esi,%ecx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,%edi
	addl %ecx,%edi
	movb %al,(%edi)
	movl $4,%ecx
	movl %esi,%edi
	addl %ecx,%edi
	movl %edx,(%edi)
	movl 24(%esp),%edx
	movl %edx,(%esi)
	movl %esi,%eax
	leal 40(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 48(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l91:
.long 0
.section .pcmap
.long Ljoin_l86
.long Lframe_l92
.section .pcmap_data
Lframe_l92:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l91
.long 2
.long 7
.long 0
.long 1
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffdc
.long 0xffffffec
.long 0xffffffd8
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l83
.long Lframe_l93
.section .pcmap_data
Lframe_l93:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l91
.long 2
.long 7
.long 0
.long 1
.long 10
.long 0xffffffe8
.long 11
.long 0xffffffdc
.long 0
.long 0xffffffd8
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.section .text
_Perl_unshare_hek:
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l96:
Lproc_body_start_l95:
	leal -8(%esp), %esp
	movl $8,%edx
	movl %edi,8(%esp)
	movl %eax,%edi
	addl %edx,%edi
	movl %eax,12(%esp)
	movl %edi,%eax
	movl $4,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edx
	movl %edx,%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 32(%esp), %esi
	movl %edi,24(%esp)
	movl $-28,%edi
	addl %edi,%esi
	movl (%edx),%edi
	movl %edi,(%esi)
	leal 32(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	leal _Perl_unsharepvn,%edi
	movl (%edi),%edi
	movl %ecx,28(%esp)
	call *%edi
Ljoin_l100:
_i_29:
	leal 24(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%esi
	movl (%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l105:
.long 0
.section .pcmap
.long Ljoin_l100
.long Lframe_l106
.section .pcmap_data
Lframe_l106:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long Lstackdata_l105
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff4
.long 11
.long 0xffffffe8
.long 0
.long 0
.long 0
.section .text
_Perl_hv_fetch:
	leal -96(%esp), %esp
	leal 96(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 96(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 96(%esp), %edx
	movl %ecx,4(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 96(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l109:
Lproc_body_start_l108:
	movl %edi,8(%esp)
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l161
Ljoin_l162:
	movl $0,%eax
	leal 96(%esp), %ecx
	movl $12,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 108(%esp), %esp
	ret
Ljoin_l161:
	jmp _i_31
_i_31:
	movl $8,%edi
	movl %edi,12(%esp)
	movl %eax,%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $32768,%esi
	andl %esi,%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l158
Ljoin_l159:
	leal -4(%esp), %esp
	movl %eax,24(%esp)
	movl $80,%edi
	leal 100(%esp), %esi
	movl %edi,28(%esp)
	movl $-100,%edi
	addl %edi,%esi
	movl 28(%esp),%edi
	movl %edi,(%esi)
	leal _Perl_mg_find,%edi
	movl (%edi),%edi
	movl %edx,36(%esp)
	movl %ecx,32(%esp)
	call *%edi
Ljoin_l157:
	movl $0,%edi
	cmpl %edi,%eax
	je Ljoin_l153
Ljoin_l154:
	leal _Perl_sv_newmortal,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l152:
	leal -12(%esp), %esp
	movl %eax,84(%esp)
	movl 32(%esp),%eax
	leal 108(%esp), %edi
	movl $-108,%esi
	addl %esi,%edi
	movl 84(%esp),%esi
	movl %esi,(%edi)
	leal 108(%esp), %edi
	movl $-104,%ecx
	addl %ecx,%edi
	movl 12(%esp),%ecx
	movl %ecx,(%edi)
	leal 108(%esp), %edi
	movl $-100,%ecx
	addl %ecx,%edi
	movl 16(%esp),%ecx
	movl %ecx,(%edi)
	leal _Perl_mg_copy,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l149:
	leal _PL_hv_fetch_sv,%edx
	movl (%edx),%eax
	movl %esi,(%eax)
	leal 96(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 108(%esp), %esp
	ret
Ljoin_l153:
	jmp _i_35
_i_35:
	movl 32(%esp),%edx
	movl 20(%esp),%eax
	movl 28(%esp),%ecx
	jmp _i_33
Ljoin_l158:
	jmp _i_33
_i_33:
	movl (%eax),%edi
	movl (%edi),%esi
	movl %edi,36(%esp)
	movl $0,%edi
	cmpl %edi,%esi
	jne Ljoin_l144
Ljoin_l145:
	movl $0,%edi
	cmpl %edi,%ecx
	je Ljoin_l142
Ljoin_l143:
	movl $1,%edi
	movl $8,%esi
	movl %edi,40(%esp)
	movl %esi,44(%esp)
	movl 36(%esp),%edi
	movl %edi,%esi
	movl 44(%esp),%edi
	addl %edi,%esi
	movl (%esi),%edi
	movl $1,%esi
	addl %esi,%edi
	movl $2,%esi
	movl %ecx,28(%esp)
	movl %esi,%ecx
	shll %cl, %edi
	movl $1,%ecx
	shll %cl, %edi
	movl $16,%esi
	subl %esi,%edi
	movl 40(%esp),%esi
	imull %edi,%esi
	movl %eax,20(%esp)
	movl %esi,%eax
	leal _Perl_safemalloc,%edi
	movl (%edi),%edi
	movl %edx,32(%esp)
	call *%edi
Ljoin_l141:
	movl 36(%esp),%edi
	movl %eax,(%edi)
	leal -8(%esp), %esp
	movl (%edi),%eax
	movl $1,%esi
	movl $8,%edx
	movl %edi,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $2,%ecx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	imull %edx,%esi
	leal 104(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	movl $0,%esi
	leal 104(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	leal _memset,%esi
	movl (%esi),%esi
	call *%esi
Ljoin_l138:
	jmp _i_40
_i_40:
	movl 32(%esp),%edx
	movl 20(%esp),%eax
	movl 28(%esp),%ecx
	jmp _i_37
Ljoin_l142:
	jmp _i_39
_i_39:
	movl $0,%eax
	leal 96(%esp), %ecx
	movl $12,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 108(%esp), %esp
	ret
Ljoin_l144:
	jmp _i_37
_i_37:
_i_41:
	movl (%esp),%edi
	movl %edi,%esi
	movl %edx,32(%esp)
	movl 4(%esp),%edx
	movl %edx,%edi
	movl $0,%edx
	jmp _i_45
_i_45:
	movl %edx,48(%esp)
	movl $1,%edx
	movl %edx,52(%esp)
	movl %edi,%edx
	movl %edi,56(%esp)
	movl 52(%esp),%edi
	subl %edi,%edx
	movl $0,%edi
	movl %edx,60(%esp)
	movl 56(%esp),%edx
	cmpl %edi,%edx
	jne Ljoin_l133
Ljoin_l134:
	movl 48(%esp),%edx
_i_42:
	movl $8,%edi
	movl %edx,64(%esp)
	movl 36(%esp),%esi
	movl %esi,%edx
	addl %edi,%edx
	movl (%edx),%edx
	movl %edx,68(%esp)
	movl 64(%esp),%edi
	movl %edi,%edx
	movl 68(%esp),%edi
	andl %edi,%edx
	movl $2,%edi
	movl %ecx,28(%esp)
	movl %edi,%ecx
	shll %cl, %edx
	movl (%esi),%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	jmp _i_50
_i_50:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l121
Ljoin_l122:
	movl $0,%edx
	movl 28(%esp),%ecx
	cmpl %edx,%ecx
	je Ljoin_l119
Ljoin_l120:
	movl $0,%edi
	movl %eax,20(%esp)
	movl %edi,%eax
	leal _Perl_newSV,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l118:
	leal -16(%esp), %esp
	movl %eax,88(%esp)
	movl 36(%esp),%eax
	leal 112(%esp), %edi
	movl $-112,%esi
	addl %esi,%edi
	movl 16(%esp),%esi
	movl %esi,(%edi)
	leal 112(%esp), %edi
	movl $-108,%esi
	addl %esi,%edi
	movl 20(%esp),%esi
	movl %esi,(%edi)
	leal 112(%esp), %edi
	movl $-104,%esi
	addl %esi,%edi
	movl 88(%esp),%esi
	movl %esi,(%edi)
	leal 112(%esp), %edi
	movl $-100,%esi
	addl %esi,%edi
	movl 80(%esp),%esi
	movl %esi,(%edi)
	leal _Perl_hv_store,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l115:
	leal 96(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 108(%esp), %esp
	ret
Ljoin_l119:
	jmp _i_57
_i_57:
	movl $0,%eax
	leal 96(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 108(%esp), %esp
	ret
Ljoin_l121:
	jmp _i_47
_i_47:
	movl $4,%edi
	movl %edx,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl (%edi),%edi
	movl 64(%esp),%esi
	cmpl %esi,%edi
	je Ljoin_l131
Ljoin_l132:
	jmp Ljoin_l167
Ljoin_l167:
	movl %eax,20(%esp)
	movl %edx,88(%esp)
	jmp _i_48
Ljoin_l131:
	jmp _i_51
_i_51:
	movl $4,%edi
	movl %edx,%ecx
	addl %edi,%ecx
	movl (%ecx),%ecx
	addl %edi,%ecx
	movl (%ecx),%edi
	movl 4(%esp),%ecx
	cmpl %ecx,%edi
	je Ljoin_l129
Ljoin_l130:
	jmp Ljoin_l166
Ljoin_l166:
	movl %eax,20(%esp)
	movl %edx,88(%esp)
	jmp _i_48
Ljoin_l129:
	jmp _i_53
_i_53:
	leal -8(%esp), %esp
	movl $4,%edi
	movl %edi,84(%esp)
	movl %edx,%edi
	movl 84(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,28(%esp)
	movl %edi,%eax
	leal 104(%esp), %edi
	movl $-104,%esi
	addl %esi,%edi
	movl 8(%esp),%esi
	movl %esi,(%edi)
	leal 104(%esp), %edi
	movl %edi,88(%esp)
	movl $-100,%edi
	movl %edi,92(%esp)
	movl 88(%esp),%edi
	movl 92(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal _Perl_my_memcmp,%edi
	movl (%edi),%edi
	movl %edx,96(%esp)
	call *%edi
Ljoin_l128:
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l124
Ljoin_l125:
	jmp _i_48
_i_48:
	movl 88(%esp),%edi
	movl (%edi),%edi
	movl %edi,%edx
	movl 20(%esp),%eax
	jmp _i_50
Ljoin_l124:
	jmp _i_55
_i_55:
	movl $8,%edx
	movl 88(%esp),%eax
	addl %edx,%eax
	leal 96(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 108(%esp), %esp
	ret
Ljoin_l133:
	jmp _i_44
_i_44:
	movl $1,%edi
	movl %esi,%edx
	addl %edi,%edx
	movl $33,%edi
	movl %esi,92(%esp)
	movl 48(%esp),%esi
	imull %esi,%edi
	movl 92(%esp),%esi
	movsbl (%esi),%esi
	addl %esi,%edi
	movl %edx,%esi
	movl %edi,%edx
	movl 60(%esp),%edi
	jmp _i_45
.section .pcmap_data
Lstackdata_l169:
.long 0
.section .pcmap
.long Ljoin_l157
.long Lframe_l170
.section .pcmap_data
Lframe_l170:
.long 0x80000010
.long 0xffffffa0
.long 0xffffffc0
.long Lstackdata_l169
.long 2
.long 24
.long 0
.long 1
.long 10
.long 0xffffffb0
.long 11
.long 0xffffffa8
.long 0xffffffb4
.long 0xffffffa0
.long 0xffffffa4
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
.section .pcmap
.long Ljoin_l152
.long Lframe_l171
.section .pcmap_data
Lframe_l171:
.long 0x80000010
.long 0xffffffa0
.long 0xffffffc0
.long Lstackdata_l169
.long 2
.long 24
.long 0
.long 1
.long 10
.long 0xffffffb0
.long 11
.long 0xffffffa8
.long 0xffffffb4
.long 0xffffffa0
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
.long 0
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
.long Ljoin_l149
.long Lframe_l172
.section .pcmap_data
Lframe_l172:
.long 0x80000010
.long 0xffffffa0
.long 0xffffffc0
.long Lstackdata_l169
.long 2
.long 24
.long 0
.long 1
.long 10
.long 0xffffffb0
.long 11
.long 0xffffffa8
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
.long 0
.long 0
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
.long Ljoin_l141
.long Lframe_l173
.section .pcmap_data
Lframe_l173:
.long 0x80000010
.long 0xffffffa0
.long 0xffffffc0
.long Lstackdata_l169
.long 2
.long 24
.long 0
.long 1
.long 10
.long 0xffffffb0
.long 11
.long 0xffffffa8
.long 0xffffffb4
.long 0xffffffa0
.long 0xffffffa4
.long 0xffffffbc
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l138
.long Lframe_l174
.section .pcmap_data
Lframe_l174:
.long 0x80000010
.long 0xffffffa0
.long 0xffffffc0
.long Lstackdata_l169
.long 2
.long 24
.long 0
.long 1
.long 10
.long 0xffffffb0
.long 11
.long 0xffffffa8
.long 0xffffffb4
.long 0xffffffa0
.long 0xffffffa4
.long 0xffffffbc
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l118
.long Lframe_l175
.section .pcmap_data
Lframe_l175:
.long 0x80000010
.long 0xffffffa0
.long 0xffffffc0
.long Lstackdata_l169
.long 2
.long 24
.long 0
.long 1
.long 10
.long 0xffffffb0
.long 11
.long 0xffffffa8
.long 0xffffffb4
.long 0xffffffa0
.long 0xffffffa4
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
.section .pcmap
.long Ljoin_l115
.long Lframe_l176
.section .pcmap_data
Lframe_l176:
.long 0x80000010
.long 0xffffffa0
.long 0xffffffc0
.long Lstackdata_l169
.long 2
.long 24
.long 0
.long 1
.long 10
.long 0xffffffb0
.long 11
.long 0xffffffa8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l128
.long Lframe_l177
.section .pcmap_data
Lframe_l177:
.long 0x80000010
.long 0xffffffa0
.long 0xffffffc0
.long Lstackdata_l169
.long 2
.long 24
.long 0
.long 1
.long 10
.long 0xffffffb0
.long 11
.long 0xffffffa8
.long 0xffffffb4
.long 0xffffffa0
.long 0xffffffa4
.long 0xffffffbc
.long 0
.long 0xffffffe0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
	leal -112(%esp), %esp
	leal 112(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 112(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 112(%esp), %edx
	movl %ecx,4(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 112(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l180:
Lproc_body_start_l179:
	movl %edi,8(%esp)
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l249
Ljoin_l250:
	movl $0,%eax
	leal 112(%esp), %ecx
	movl $12,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 124(%esp), %esp
	ret
Ljoin_l249:
	jmp _i_60
_i_60:
	movl $8,%edi
	movl %edi,12(%esp)
	movl %eax,%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $32768,%esi
	andl %esi,%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l246
Ljoin_l247:
	leal -4(%esp), %esp
	movl %eax,24(%esp)
	movl $80,%edi
	leal 116(%esp), %esi
	movl %edi,28(%esp)
	movl $-116,%edi
	addl %edi,%esi
	movl 28(%esp),%edi
	movl %edi,(%esi)
	leal _Perl_mg_find,%edi
	movl (%edi),%edi
	movl %edx,36(%esp)
	movl %ecx,32(%esp)
	call *%edi
Ljoin_l245:
	movl $0,%edi
	cmpl %edi,%eax
	je Ljoin_l241
Ljoin_l242:
	leal _Perl_sv_newmortal,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l240:
	movl %eax,80(%esp)
	movl (%esp),%eax
	leal _Perl_newSVsv,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l237:
	leal _Perl_sv_2mortal,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l234:
	leal -12(%esp), %esp
	movl %eax,12(%esp)
	movl 32(%esp),%eax
	leal 124(%esp), %edi
	movl $-124,%esi
	addl %esi,%edi
	movl 92(%esp),%esi
	movl %esi,(%edi)
	leal 124(%esp), %edi
	movl $-120,%ecx
	addl %ecx,%edi
	movl 12(%esp),%ecx
	movl %ecx,(%edi)
	movl $-2,%edi
	leal 124(%esp), %edx
	movl %edi,108(%esp)
	movl $-116,%edi
	addl %edi,%edx
	movl 108(%esp),%edi
	movl %edi,(%edx)
	leal _Perl_mg_copy,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l231:
	leal _PL_hv_fetch_ent_mh,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $0,%ecx
	cmpl %ecx,%edi
	jne Ljoin_l227
Ljoin_l228:
	movl $12,%eax
	leal _Perl_safemalloc,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l226:
	leal _PL_hv_fetch_ent_mh,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	jmp _i_66
Ljoin_l227:
	jmp _i_66
_i_66:
	movl $-2,%edx
	leal _PL_hv_fetch_ent_mh,%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	leal _PL_hv_fetch_ent_mh,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal _PL_hv_fetch_ent_mh,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl %esi,(%edx)
	leal _PL_hv_fetch_ent_mh,%edx
	movl (%edx),%eax
	leal 112(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 124(%esp), %esp
	ret
Ljoin_l241:
	jmp _i_64
_i_64:
	movl 32(%esp),%edx
	movl 20(%esp),%eax
	movl 28(%esp),%ecx
	jmp _i_62
Ljoin_l246:
	jmp _i_62
_i_62:
	movl (%eax),%edi
	movl (%edi),%esi
	movl %edi,36(%esp)
	movl $0,%edi
	cmpl %edi,%esi
	jne Ljoin_l221
Ljoin_l222:
	movl $0,%edi
	movl 4(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l219
Ljoin_l220:
	movl $1,%edi
	movl %edi,40(%esp)
	movl $8,%edi
	movl %edi,44(%esp)
	movl 36(%esp),%edi
	movl %edi,%esi
	movl 44(%esp),%edi
	addl %edi,%esi
	movl (%esi),%edi
	movl $1,%esi
	addl %esi,%edi
	movl $2,%esi
	movl %ecx,28(%esp)
	movl %esi,%ecx
	shll %cl, %edi
	movl $1,%ecx
	shll %cl, %edi
	movl $16,%esi
	subl %esi,%edi
	movl 40(%esp),%esi
	imull %edi,%esi
	movl %eax,20(%esp)
	movl %esi,%eax
	leal _Perl_safemalloc,%edi
	movl (%edi),%edi
	movl %edx,32(%esp)
	call *%edi
Ljoin_l218:
	movl 36(%esp),%edi
	movl %eax,(%edi)
	leal -8(%esp), %esp
	movl (%edi),%eax
	movl $1,%esi
	movl $8,%edx
	movl %edi,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $2,%ecx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	imull %edx,%esi
	leal 120(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	movl $0,%esi
	leal 120(%esp), %ecx
	movl $-120,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	leal _memset,%esi
	movl (%esi),%esi
	call *%esi
Ljoin_l215:
	jmp _i_76
_i_76:
	movl 32(%esp),%edx
	movl 20(%esp),%eax
	movl 28(%esp),%ecx
	jmp _i_73
Ljoin_l219:
	jmp _i_75
_i_75:
	movl $0,%eax
	leal 112(%esp), %ecx
	movl $12,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 124(%esp), %esp
	ret
Ljoin_l221:
	jmp _i_73
_i_73:
	movl $8,%edi
	movl %edi,48(%esp)
	movl (%esp),%esi
	movl %esi,%edi
	movl 48(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $262144,%esi
	andl %esi,%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l210
Ljoin_l211:
	movl (%esp),%edi
	movl %edi,%esi
	movl %edx,32(%esp)
	movl (%esi),%edx
	movl %edx,56(%esp)
	movl $4,%edx
	movl %edx,60(%esp)
	movl 56(%esp),%edx
	movl 60(%esp),%edi
	addl %edi,%edx
	leal 112(%esp), %edi
	movl %edx,64(%esp)
	movl $-4,%edx
	addl %edx,%edi
	movl 64(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%edi)
	movl (%esi),%edx
	movl (%edx),%edx
	jmp _i_79
Ljoin_l210:
	jmp _i_78
_i_78:
	leal -4(%esp), %esp
	movl %eax,24(%esp)
	movl 4(%esp),%eax
	leal 116(%esp), %edi
	movl $-4,%esi
	addl %esi,%edi
	leal 116(%esp), %esi
	movl %edi,56(%esp)
	movl $-116,%edi
	addl %edi,%esi
	movl 56(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal _Perl_sv_2pv,%edi
	movl (%edi),%edi
	movl %edx,36(%esp)
	movl %ecx,32(%esp)
	call *%edi
Ljoin_l209:
	movl %eax,%edx
	movl 20(%esp),%eax
	movl 28(%esp),%ecx
	jmp _i_79
_i_79:
	movl $0,%edi
	cmpl %edi,%ecx
	jne Ljoin_l206
_i_82:
	movl %edx,%edi
	leal 112(%esp), %esi
	movl $-4,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $0,%ecx
	jmp _i_86
_i_86:
	movl %edx,68(%esp)
	movl $1,%edx
	movl %edx,72(%esp)
	movl %esi,%edx
	movl %edi,76(%esp)
	movl 72(%esp),%edi
	subl %edi,%edx
	movl $0,%edi
	cmpl %edi,%esi
	jne Ljoin_l204
Ljoin_l205:
_i_83:
	movl 68(%esp),%edx
	jmp _i_80
Ljoin_l204:
	jmp _i_85
_i_85:
	movl 76(%esp),%edi
	movl $1,%esi
	movl %esi,100(%esp)
	movl %edi,%esi
	movl %edi,104(%esp)
	movl 100(%esp),%edi
	addl %edi,%esi
	movl $33,%edi
	imull %ecx,%edi
	movl 104(%esp),%ecx
	movsbl (%ecx),%ecx
	addl %ecx,%edi
	movl %edi,%ecx
	movl %esi,%edi
	movl %edx,%esi
	movl 68(%esp),%edx
	jmp _i_86
Ljoin_l206:
	jmp _i_80
_i_80:
	movl $8,%edi
	movl %edx,68(%esp)
	movl 36(%esp),%esi
	movl %esi,%edx
	addl %edi,%edx
	movl (%edx),%edx
	movl %ecx,%edi
	andl %edx,%edi
	movl $2,%edx
	movl %ecx,28(%esp)
	movl %edx,%ecx
	shll %cl, %edi
	movl (%esi),%edx
	addl %edx,%edi
	movl (%edi),%edx
	jmp _i_91
_i_91:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l192
Ljoin_l193:
	movl $0,%edx
	movl 4(%esp),%ecx
	cmpl %edx,%ecx
	je Ljoin_l190
Ljoin_l191:
	movl $0,%edi
	movl %eax,20(%esp)
	movl %edi,%eax
	leal _Perl_newSV,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l189:
	leal -12(%esp), %esp
	movl %eax,92(%esp)
	movl 32(%esp),%eax
	leal 124(%esp), %edi
	movl $-124,%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal 124(%esp), %edi
	movl $-120,%esi
	addl %esi,%edi
	movl 92(%esp),%esi
	movl %esi,(%edi)
	leal 124(%esp), %edi
	movl $-116,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	leal _Perl_hv_store_ent,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l186:
	leal 112(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 124(%esp), %esp
	ret
Ljoin_l190:
	jmp _i_98
_i_98:
	movl $0,%eax
	leal 112(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 124(%esp), %esp
	ret
Ljoin_l192:
	jmp _i_88
_i_88:
	movl $4,%edi
	movl %edx,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl (%edi),%edi
	movl 28(%esp),%esi
	cmpl %esi,%edi
	je Ljoin_l202
Ljoin_l203:
	jmp Ljoin_l255
Ljoin_l255:
	movl %eax,20(%esp)
	movl %edx,92(%esp)
	jmp _i_89
Ljoin_l202:
	jmp _i_92
_i_92:
	movl $4,%edi
	movl %edx,%ecx
	addl %edi,%ecx
	movl (%ecx),%ecx
	addl %edi,%ecx
	movl (%ecx),%edi
	leal 112(%esp), %ecx
	movl %edi,84(%esp)
	movl $-4,%edi
	addl %edi,%ecx
	movl (%ecx),%edi
	movl (%edi),%edi
	movl 84(%esp),%ecx
	cmpl %edi,%ecx
	je Ljoin_l200
Ljoin_l201:
	jmp Ljoin_l254
Ljoin_l254:
	movl %eax,20(%esp)
	movl %edx,92(%esp)
	jmp _i_89
Ljoin_l200:
	jmp _i_94
_i_94:
	leal -8(%esp), %esp
	movl $4,%edi
	movl %edx,%ecx
	addl %edi,%ecx
	movl (%ecx),%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl %eax,28(%esp)
	movl %edi,%eax
	leal 120(%esp), %edi
	movl $-4,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 120(%esp), %ecx
	movl %edi,96(%esp)
	movl $-116,%edi
	addl %edi,%ecx
	movl 96(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 120(%esp), %edi
	movl $-120,%ecx
	addl %ecx,%edi
	movl 76(%esp),%ecx
	movl %ecx,(%edi)
	leal _Perl_my_memcmp,%edi
	movl (%edi),%edi
	movl %edx,100(%esp)
	call *%edi
Ljoin_l199:
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l195
Ljoin_l196:
	jmp _i_89
_i_89:
	movl 92(%esp),%edi
	movl (%edi),%edi
	movl %edi,%edx
	movl 20(%esp),%eax
	jmp _i_91
Ljoin_l195:
	jmp _i_96
_i_96:
	movl 92(%esp),%eax
	leal 112(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 124(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l257:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l245
.long Lframe_l258
.section .pcmap_data
Lframe_l258:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
.long 0xffffff98
.long 0xffffffa4
.long 0xffffff90
.long 0xffffff94
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l240
.long Lframe_l259
.section .pcmap_data
Lframe_l259:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
.long 0xffffff98
.long 0xffffffa4
.long 0xffffff90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l237
.long Lframe_l260
.section .pcmap_data
Lframe_l260:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
.long 0xffffff98
.long 0xffffffa4
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
.section .pcmap
.long Ljoin_l234
.long Lframe_l261
.section .pcmap_data
Lframe_l261:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
.long 0xffffff98
.long 0xffffffa4
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
.section .pcmap
.long Ljoin_l231
.long Lframe_l262
.section .pcmap_data
Lframe_l262:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
.long 0xffffff98
.long 0
.long 0xffffff90
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
.section .pcmap
.long Ljoin_l226
.long Lframe_l263
.section .pcmap_data
Lframe_l263:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
.long 0xffffff98
.long 0
.long 0xffffff90
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
.section .pcmap
.long Ljoin_l218
.long Lframe_l264
.section .pcmap_data
Lframe_l264:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
.long 0xffffff98
.long 0xffffffa4
.long 0xffffff90
.long 0xffffff94
.long 0xffffffac
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l215
.long Lframe_l265
.section .pcmap_data
Lframe_l265:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
.long 0xffffff98
.long 0xffffffa4
.long 0xffffff90
.long 0xffffff94
.long 0xffffffac
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l209
.long Lframe_l266
.section .pcmap_data
Lframe_l266:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
.long 0xffffff98
.long 0xffffffa4
.long 0xffffff90
.long 0xffffff94
.long 0xffffffac
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l189
.long Lframe_l267
.section .pcmap_data
Lframe_l267:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
.long 0xffffff98
.long 0xffffffa4
.long 0xffffff90
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l186
.long Lframe_l268
.section .pcmap_data
Lframe_l268:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
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
.long 0
.long 0
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
.long Ljoin_l199
.long Lframe_l269
.section .pcmap_data
Lframe_l269:
.long 0x80000010
.long 0xffffff90
.long 0xffffffb0
.long Lstackdata_l257
.long 2
.long 30
.long 0
.long 1
.long 10
.long 0xffffffa0
.long 11
.long 0xffffff98
.long 0xffffffa4
.long 0xffffff90
.long 0xffffff94
.long 0xffffffac
.long 0
.long 0xffffffd4
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
.section .text
_i_hv_magic_check:
	leal -24(%esp), %esp
	leal 24(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 24(%esp), %ecx
	movl %edx,(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l272:
Lproc_body_start_l271:
	movl (%eax),%eax
	movl %edx,4(%esp)
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $0,%eax
	movl %edx,8(%esp)
	movl (%esp),%edx
	movl %eax,(%edx)
	movl $1,%eax
	movl 4(%esp),%edx
	movl %eax,(%edx)
	jmp _i_102
_i_102:
	movl $0,%eax
	movl 8(%esp),%edx
	cmpl %eax,%edx
	jne Ljoin_l274
_i_100:
	leal 24(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 32(%esp), %esp
	ret
Ljoin_l274:
	jmp _i_101
_i_101:
	movl $12,%eax
	movl %edi,12(%esp)
	movl %edx,%edi
	addl %eax,%edi
	movsbl (%edi),%edi
	movl $65,%eax
	cmpl %eax,%edi
	jl Ljoin_l282
Ljoin_l283:
	movl $90,%eax
	cmpl %eax,%edi
	jg Ljoin_l280
Ljoin_l281:
	movl $1,%edi
	movl (%esp),%eax
	movl %edi,(%eax)
	movl $12,%edi
	movl %edi,16(%esp)
	movl %edx,%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movsbl (%edi),%edi
	movl $80,%esi
	cmpl %esi,%edi
	je Ljoin_l278
Ljoin_l279:
	cmpl %esi,%edi
	jl Ljoin_l277
_i_110:
	movl $83,%esi
	cmpl %esi,%edi
	je Ljoin_l275
Ljoin_l276:
	jmp _i_106
Ljoin_l275:
	jmp _i_109
Ljoin_l277:
	jmp _i_106
Ljoin_l278:
	jmp _i_109
_i_109:
	movl $0,%edi
	movl 4(%esp),%esi
	movl %edi,(%esi)
	jmp _i_106
_i_106:
	movl 20(%esp),%esi
	jmp _i_104
Ljoin_l280:
	jmp _i_104
Ljoin_l282:
	jmp _i_104
_i_104:
	movl (%edx),%edi
	movl %edi,8(%esp)
	movl 12(%esp),%edi
	movl 4(%esp),%edx
	jmp _i_102
.section .text
_Perl_hv_store:
	leal -136(%esp), %esp
	leal 136(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 136(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 136(%esp), %edx
	movl %ecx,4(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 136(%esp), %edx
	movl %ecx,8(%esp)
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 136(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l293:
Lproc_body_start_l292:
	movl %edi,12(%esp)
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l356
Ljoin_l357:
	movl $0,%eax
	leal 136(%esp), %ecx
	movl $16,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	leal 152(%esp), %esp
	ret
Ljoin_l356:
	jmp _i_112
_i_112:
	movl %eax,%edi
	movl %esi,16(%esp)
	movl (%edi),%esi
	movl %edi,20(%esp)
	movl $8,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $57344,%esi
	andl %esi,%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l353
Ljoin_l354:
	leal -8(%esp), %esp
	movl %eax,40(%esp)
	leal 144(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	leal 144(%esp), %esi
	movl %edi,44(%esp)
	movl $-144,%edi
	addl %edi,%esi
	movl 44(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 144(%esp), %edi
	movl $-4,%esi
	addl %esi,%edi
	leal 144(%esp), %esi
	movl %edi,48(%esp)
	movl $-140,%edi
	addl %edi,%esi
	movl 48(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal _i_hv_magic_check,%edi
	movl (%edi),%edi
	movl %edx,56(%esp)
	movl %ecx,52(%esp)
	call *%edi
Ljoin_l352:
	leal 136(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l348
Ljoin_l349:
	leal -12(%esp), %esp
	movl 44(%esp),%eax
	leal 148(%esp), %edi
	movl $-148,%esi
	addl %esi,%edi
	movl 20(%esp),%esi
	movl %esi,(%edi)
	leal 148(%esp), %edi
	movl $-144,%ecx
	addl %ecx,%edi
	movl 12(%esp),%ecx
	movl %ecx,(%edi)
	leal 148(%esp), %edi
	movl $-140,%edx
	addl %edx,%edi
	movl 16(%esp),%edx
	movl %edx,(%edi)
	leal _Perl_mg_copy,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l347:
	movl 28(%esp),%edi
	movl (%edi),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l343
Ljoin_l344:
	leal 136(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l341
Ljoin_l342:
	movl $0,%eax
	leal 136(%esp), %edx
	movl $16,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 12(%esp),%edi
	leal 152(%esp), %esp
	ret
Ljoin_l341:
	jmp _i_118
Ljoin_l343:
	jmp _i_118
_i_118:
	jmp _i_116
Ljoin_l348:
	jmp _i_116
_i_116:
	movl 48(%esp),%edx
	movl 32(%esp),%eax
	movl 44(%esp),%ecx
	jmp _i_114
Ljoin_l353:
	jmp _i_114
_i_114:
	movl $0,%edi
	cmpl %edi,%ecx
	jne Ljoin_l339
_i_122:
	movl (%esp),%edi
	movl %edi,%esi
	movl 4(%esp),%ecx
	movl %ecx,%edi
	movl %edi,52(%esp)
	movl $0,%edi
	jmp _i_126
_i_126:
	movl %edi,56(%esp)
	movl 52(%esp),%edi
	movl %edi,60(%esp)
	movl $1,%edi
	movl %esi,68(%esp)
	movl %edi,64(%esp)
	movl 60(%esp),%edi
	movl %edi,%esi
	movl 64(%esp),%edi
	subl %edi,%esi
	movl $0,%edi
	movl %esi,52(%esp)
	movl 60(%esp),%esi
	cmpl %edi,%esi
	jne Ljoin_l337
Ljoin_l338:
	movl 56(%esp),%edi
_i_123:
	movl %edi,%ecx
	jmp _i_120
Ljoin_l337:
	jmp _i_125
_i_125:
	movl 68(%esp),%edi
	movl $1,%esi
	movl %esi,120(%esp)
	movl %edi,%esi
	movl %edi,124(%esp)
	movl 120(%esp),%edi
	addl %edi,%esi
	movl $33,%edi
	movl %esi,68(%esp)
	movl 56(%esp),%esi
	imull %esi,%edi
	movl 124(%esp),%esi
	movsbl (%esi),%esi
	addl %esi,%edi
	movl 68(%esp),%esi
	jmp _i_126
Ljoin_l339:
	jmp _i_120
_i_120:
	movl 28(%esp),%edi
	movl (%edi),%esi
	movl $0,%edi
	cmpl %edi,%esi
	jne Ljoin_l335
Ljoin_l336:
	movl $1,%edi
	movl $8,%esi
	movl %edi,72(%esp)
	movl %esi,76(%esp)
	movl 28(%esp),%edi
	movl %edi,%esi
	movl 76(%esp),%edi
	addl %edi,%esi
	movl (%esi),%edi
	movl $1,%esi
	addl %esi,%edi
	movl $2,%esi
	movl %ecx,44(%esp)
	movl %esi,%ecx
	shll %cl, %edi
	movl $1,%ecx
	shll %cl, %edi
	movl $16,%esi
	subl %esi,%edi
	movl 72(%esp),%esi
	imull %edi,%esi
	movl %eax,32(%esp)
	movl %esi,%eax
	leal _Perl_safemalloc,%edi
	movl (%edi),%edi
	movl %edx,48(%esp)
	call *%edi
Ljoin_l334:
	movl 28(%esp),%edi
	movl %eax,(%edi)
	leal -8(%esp), %esp
	movl (%edi),%eax
	movl $1,%esi
	movl $8,%edx
	movl %edi,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $2,%ecx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	imull %edx,%esi
	leal 144(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	movl $0,%esi
	leal 144(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	leal _memset,%esi
	movl (%esi),%esi
	call *%esi
Ljoin_l331:
	movl 48(%esp),%edx
	movl 32(%esp),%eax
	movl 44(%esp),%ecx
	jmp _i_128
Ljoin_l335:
	jmp _i_128
_i_128:
	movl $8,%edi
	movl %edi,80(%esp)
	movl 28(%esp),%esi
	movl %esi,%edi
	movl 80(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl %ecx,%esi
	andl %edi,%esi
	movl $2,%edi
	movl %ecx,44(%esp)
	movl %edi,%ecx
	shll %cl, %esi
	movl 28(%esp),%edi
	movl (%edi),%ecx
	addl %ecx,%esi
	movl $1,%ecx
	movl (%esi),%edi
	jmp _i_133
_i_133:
	movl %edi,84(%esp)
	movl $0,%edi
	movl %esi,88(%esp)
	movl 84(%esp),%esi
	cmpl %edi,%esi
	jne Ljoin_l314
Ljoin_l315:
	leal _i_new_he,%edi
	movl (%edi),%edi
	movl %edx,48(%esp)
	movl %eax,32(%esp)
	movl %ecx,92(%esp)
	call *%edi
Ljoin_l313:
	movl $8,%edi
	movl 32(%esp),%esi
	movl %esi,%ecx
	addl %edi,%ecx
	movl (%ecx),%edi
	movl $536870912,%ecx
	andl %ecx,%edi
	movl $0,%ecx
	cmpl %ecx,%edi
	je Ljoin_l309
Ljoin_l310:
	leal -8(%esp), %esp
	movl %eax,92(%esp)
	movl 8(%esp),%eax
	leal 144(%esp), %edi
	movl $-144,%ecx
	addl %ecx,%edi
	movl 12(%esp),%ecx
	movl %ecx,(%edi)
	leal 144(%esp), %edi
	movl $-140,%ecx
	addl %ecx,%edi
	movl 52(%esp),%ecx
	movl %ecx,(%edi)
	leal _Perl_share_hek,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l308:
	movl $4,%edi
	movl 84(%esp),%ecx
	movl %ecx,%edx
	addl %edi,%edx
	movl %eax,(%edx)
	jmp _i_141
Ljoin_l309:
	jmp _i_140
_i_140:
	leal -8(%esp), %esp
	movl %eax,92(%esp)
	movl 8(%esp),%eax
	leal 144(%esp), %edi
	movl $-144,%ecx
	addl %ecx,%edi
	movl 12(%esp),%ecx
	movl %ecx,(%edi)
	leal 144(%esp), %edi
	movl $-140,%ecx
	addl %ecx,%edi
	movl 52(%esp),%ecx
	movl %ecx,(%edi)
	leal _i_save_hek,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l305:
	movl $4,%edi
	movl 84(%esp),%ecx
	movl %ecx,%edx
	addl %edi,%edx
	movl %eax,(%edx)
	jmp _i_141
_i_141:
	movl $8,%edi
	movl %ecx,%edx
	addl %edi,%edx
	movl 8(%esp),%edi
	movl %edi,(%edx)
	movl 88(%esp),%edi
	movl (%edi),%edx
	movl %edx,(%ecx)
	movl %ecx,(%edi)
	movl $12,%edi
	movl 28(%esp),%edx
	movl %edx,%eax
	addl %edi,%eax
	movl (%eax),%edi
	movl %edi,96(%esp)
	movl $1,%edi
	movl %edi,100(%esp)
	movl 96(%esp),%edi
	movl 100(%esp),%esi
	addl %esi,%edi
	movl %edi,(%eax)
	movl $0,%edi
	movl 92(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l301
Ljoin_l302:
	movl $4,%edi
	movl %edx,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl $1,%eax
	addl %eax,%edi
	movl %edi,(%esi)
	movl $12,%edi
	movl %edx,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl $8,%esi
	addl %esi,%edx
	movl (%edx),%esi
	cmpl %esi,%edi
	jbe Ljoin_l299
Ljoin_l300:
	movl 32(%esp),%eax
	leal _i_hsplit,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l298:
	movl 84(%esp),%ecx
	jmp _i_144
Ljoin_l299:
	jmp _i_144
_i_144:
	jmp _i_142
Ljoin_l301:
	jmp _i_142
_i_142:
	movl $8,%edx
	addl %edx,%ecx
	movl %ecx,%eax
	leal 136(%esp), %edx
	movl $16,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 12(%esp),%edi
	leal 152(%esp), %esp
	ret
Ljoin_l314:
	jmp _i_130
_i_130:
	movl $4,%edi
	movl %esi,%ecx
	addl %edi,%ecx
	movl (%ecx),%edi
	movl (%edi),%edi
	movl 44(%esp),%ecx
	cmpl %ecx,%edi
	je Ljoin_l327
Ljoin_l328:
	jmp Ljoin_l362
Ljoin_l362:
	movl %edx,48(%esp)
	movl %eax,32(%esp)
	movl 4(%esp),%esi
	jmp _i_131
Ljoin_l327:
	jmp _i_134
_i_134:
	movl $4,%edi
	movl %edi,104(%esp)
	movl %esi,%edi
	movl 104(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	addl %esi,%edi
	movl (%edi),%edi
	movl 4(%esp),%esi
	cmpl %esi,%edi
	je Ljoin_l325
Ljoin_l326:
	jmp Ljoin_l361
Ljoin_l361:
	movl %edx,48(%esp)
	movl %eax,32(%esp)
	jmp _i_131
Ljoin_l325:
	jmp _i_136
_i_136:
	leal -8(%esp), %esp
	movl $4,%edi
	movl %edi,116(%esp)
	movl 92(%esp),%edi
	movl %edi,%esi
	movl 116(%esp),%edi
	addl %edi,%esi
	movl (%esi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,40(%esp)
	movl %edi,%eax
	leal 144(%esp), %edi
	movl $-144,%esi
	addl %esi,%edi
	movl 8(%esp),%esi
	movl %esi,(%edi)
	leal 144(%esp), %edi
	movl %edi,120(%esp)
	movl $-140,%edi
	movl %edi,124(%esp)
	movl 120(%esp),%edi
	movl 124(%esp),%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal _Perl_my_memcmp,%edi
	movl (%edi),%edi
	movl %edx,56(%esp)
	call *%edi
Ljoin_l324:
	movl $0,%edi
	cmpl %edi,%eax
	je Ljoin_l320
Ljoin_l321:
	jmp _i_131
_i_131:
	movl $0,%edi
	movl 84(%esp),%edx
	movl (%edx),%edx
	movl %edi,%ecx
	movl %edx,%edi
	movl 48(%esp),%edx
	movl 32(%esp),%eax
	movl 88(%esp),%esi
	jmp _i_133
Ljoin_l320:
	jmp _i_138
_i_138:
	movl $8,%edi
	movl 84(%esp),%eax
	movl %eax,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl %edi,%eax
	leal _Perl_sv_free,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l319:
	movl $8,%edx
	movl 84(%esp),%eax
	movl %eax,%ecx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl $8,%edx
	addl %edx,%eax
	leal 136(%esp), %edx
	movl $16,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 12(%esp),%edi
	leal 152(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l364:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long Ljoin_l352
.long Lframe_l365
.section .pcmap_data
Lframe_l365:
.long 0x80000014
.long 0xffffff78
.long 0xffffffa8
.long Lstackdata_l364
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff88
.long 11
.long 0xffffff84
.long 0xffffff98
.long 0xffffff78
.long 0xffffff7c
.long 0xffffff80
.long 0xffffffa4
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
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l347
.long Lframe_l366
.section .pcmap_data
Lframe_l366:
.long 0x80000014
.long 0xffffff78
.long 0xffffffa8
.long Lstackdata_l364
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff88
.long 11
.long 0xffffff84
.long 0xffffff98
.long 0xffffff78
.long 0xffffff7c
.long 0xffffff80
.long 0xffffffa4
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
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l334
.long Lframe_l367
.section .pcmap_data
Lframe_l367:
.long 0x80000014
.long 0xffffff78
.long 0xffffffa8
.long Lstackdata_l364
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff88
.long 11
.long 0xffffff84
.long 0xffffff98
.long 0xffffff78
.long 0xffffff7c
.long 0xffffff80
.long 0xffffffa4
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
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l331
.long Lframe_l368
.section .pcmap_data
Lframe_l368:
.long 0x80000014
.long 0xffffff78
.long 0xffffffa8
.long Lstackdata_l364
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff88
.long 11
.long 0xffffff84
.long 0xffffff98
.long 0xffffff78
.long 0xffffff7c
.long 0xffffff80
.long 0xffffffa4
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
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l313
.long Lframe_l369
.section .pcmap_data
Lframe_l369:
.long 0x80000014
.long 0xffffff78
.long 0xffffffa8
.long Lstackdata_l364
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff88
.long 11
.long 0xffffff84
.long 0xffffff98
.long 0xffffff78
.long 0xffffff7c
.long 0xffffff80
.long 0xffffffa4
.long 0xffffff94
.long 0xffffffd4
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
.section .pcmap
.long Ljoin_l308
.long Lframe_l370
.section .pcmap_data
Lframe_l370:
.long 0x80000014
.long 0xffffff78
.long 0xffffffa8
.long Lstackdata_l364
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff88
.long 11
.long 0xffffff84
.long 0xffffff98
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff94
.long 0xffffffd4
.long 0xffffffcc
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
.section .pcmap
.long Ljoin_l305
.long Lframe_l371
.section .pcmap_data
Lframe_l371:
.long 0x80000014
.long 0xffffff78
.long 0xffffffa8
.long Lstackdata_l364
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff88
.long 11
.long 0xffffff84
.long 0xffffff98
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff94
.long 0xffffffd4
.long 0xffffffcc
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
.section .pcmap
.long Ljoin_l298
.long Lframe_l372
.section .pcmap_data
Lframe_l372:
.long 0x80000014
.long 0xffffff78
.long 0xffffffa8
.long Lstackdata_l364
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff88
.long 11
.long 0xffffff84
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
.section .pcmap
.long Ljoin_l324
.long Lframe_l373
.section .pcmap_data
Lframe_l373:
.long 0x80000014
.long 0xffffff78
.long 0xffffffa8
.long Lstackdata_l364
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff88
.long 11
.long 0xffffff84
.long 0xffffff98
.long 0xffffff78
.long 0xffffff7c
.long 0xffffff80
.long 0xffffffa4
.long 0xffffff94
.long 0
.long 0xffffffcc
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
.section .pcmap
.long Ljoin_l319
.long Lframe_l374
.section .pcmap_data
Lframe_l374:
.long 0x80000014
.long 0xffffff78
.long 0xffffffa8
.long Lstackdata_l364
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff88
.long 11
.long 0xffffff84
.long 0
.long 0
.long 0
.long 0xffffff80
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
.section .text
_Perl_hv_store_ent:
	leal -180(%esp), %esp
	leal 180(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 180(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 180(%esp), %edx
	movl %ecx,4(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 180(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l377:
Lproc_body_start_l376:
	movl %edi,8(%esp)
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l462
Ljoin_l463:
	movl $0,%eax
	leal 180(%esp), %ecx
	movl $12,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 192(%esp), %esp
	ret
Ljoin_l462:
	jmp _i_147
_i_147:
	movl %eax,%edi
	movl %esi,12(%esp)
	movl (%edi),%esi
	movl %edi,16(%esp)
	movl $8,%edi
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	movl %esi,24(%esp)
	movl 20(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $57344,%esi
	andl %esi,%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l459
Ljoin_l460:
	leal -8(%esp), %esp
	movl %eax,36(%esp)
	leal 188(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	leal 188(%esp), %esi
	movl %edi,40(%esp)
	movl $-188,%edi
	addl %edi,%esi
	movl 40(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 188(%esp), %edi
	movl $-4,%esi
	addl %esi,%edi
	leal 188(%esp), %esi
	movl %edi,44(%esp)
	movl $-184,%edi
	addl %edi,%esi
	movl 44(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal _i_hv_magic_check,%edi
	movl (%edi),%edi
	movl %edx,52(%esp)
	movl %ecx,48(%esp)
	call *%edi
Ljoin_l458:
	leal 180(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l454
Ljoin_l455:
	leal _PL_tainted,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	leal _PL_tainting,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $0,%ecx
	cmpl %ecx,%esi
	je Ljoin_l452
Ljoin_l453:
	movl (%esp),%eax
	movl %eax,%esi
	movl $8,%ecx
	movl %esi,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $57344,%edx
	andl %edx,%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	je Ljoin_l450
Ljoin_l451:
	movl %esi,%eax
	leal _Perl_sv_tainted,%esi
	movl (%esi),%esi
	call *%esi
Ljoin_l449:
	movl $0,%esi
	cmpl %esi,%eax
	je Ljoin_l445
Ljoin_l446:
	movl $1,%esi
	jmp _i_157
Ljoin_l445:
	jmp _i_156
Ljoin_l450:
	jmp _i_156
_i_156:
	movl $0,%esi
	jmp _i_157
_i_157:
	leal _PL_tainted,%ecx
	movl %esi,(%ecx)
	jmp _i_153
Ljoin_l452:
	jmp _i_153
_i_153:
	movl (%esp),%eax
	leal _Perl_newSVsv,%esi
	movl (%esi),%esi
	call *%esi
Ljoin_l444:
	leal _Perl_sv_2mortal,%esi
	movl (%esi),%esi
	call *%esi
Ljoin_l441:
	leal -12(%esp), %esp
	movl %eax,12(%esp)
	movl 40(%esp),%eax
	leal 192(%esp), %esi
	movl $-192,%ecx
	addl %ecx,%esi
	movl 16(%esp),%ecx
	movl %ecx,(%esi)
	leal 192(%esp), %esi
	movl $-188,%edx
	addl %edx,%esi
	movl 12(%esp),%edx
	movl %edx,(%esi)
	movl $-2,%esi
	movl %edi,60(%esp)
	leal 192(%esp), %edi
	movl %edi,64(%esp)
	movl $-184,%edi
	movl %edi,68(%esp)
	movl 64(%esp),%edi
	movl %esi,72(%esp)
	movl 68(%esp),%esi
	addl %esi,%edi
	movl 72(%esp),%esi
	movl %esi,(%edi)
	leal _Perl_mg_copy,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l438:
	movl $0,%edi
	movl 48(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l434
Ljoin_l435:
	movl $1,%edi
	leal _PL_tainted,%esi
	movl %edi,(%esi)
	jmp _i_158
Ljoin_l434:
	jmp _i_158
_i_158:
	movl 24(%esp),%edi
	movl (%edi),%esi
	movl $0,%ecx
	cmpl %ecx,%esi
	jne Ljoin_l432
Ljoin_l433:
	leal 180(%esp), %esi
	movl $-4,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $0,%ecx
	cmpl %ecx,%esi
	jne Ljoin_l430
Ljoin_l431:
	movl $0,%eax
	leal 180(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%esi
	movl 8(%esp),%edi
	leal 192(%esp), %esp
	ret
Ljoin_l430:
	jmp _i_160
Ljoin_l432:
	jmp _i_160
_i_160:
	jmp _i_151
Ljoin_l454:
	jmp _i_151
_i_151:
	movl 44(%esp),%edx
	movl 28(%esp),%eax
	movl 40(%esp),%ecx
	jmp _i_149
Ljoin_l459:
	jmp _i_149
_i_149:
	movl $8,%edi
	movl %edi,64(%esp)
	movl (%esp),%esi
	movl %esi,%edi
	movl 64(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $262144,%esi
	andl %esi,%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l427
Ljoin_l428:
	movl (%esp),%edi
	movl (%edi),%esi
	movl %edi,72(%esp)
	movl $4,%edi
	addl %edi,%esi
	leal 180(%esp), %edi
	movl %edi,76(%esp)
	movl $-12,%edi
	movl %edi,80(%esp)
	movl 76(%esp),%edi
	movl %esi,84(%esp)
	movl 80(%esp),%esi
	addl %esi,%edi
	movl 84(%esp),%esi
	movl (%esi),%esi
	movl %esi,(%edi)
	movl 72(%esp),%edi
	movl (%edi),%edi
	movl (%edi),%edi
	jmp _i_164
Ljoin_l427:
	jmp _i_163
_i_163:
	leal -4(%esp), %esp
	movl %eax,32(%esp)
	movl 4(%esp),%eax
	leal 184(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	leal 184(%esp), %esi
	movl %edi,72(%esp)
	movl $-184,%edi
	addl %edi,%esi
	movl 72(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal _Perl_sv_2pv,%edi
	movl (%edi),%edi
	movl %edx,48(%esp)
	movl %ecx,44(%esp)
	call *%edi
Ljoin_l426:
	movl %eax,%edi
	movl 44(%esp),%edx
	movl 28(%esp),%eax
	movl 40(%esp),%ecx
	jmp _i_164
_i_164:
	movl $0,%esi
	cmpl %esi,%ecx
	jne Ljoin_l423
_i_167:
	movl %edi,%esi
	leal 180(%esp), %ecx
	movl %edi,88(%esp)
	movl $-12,%edi
	addl %edi,%ecx
	movl (%ecx),%edi
	movl (%edi),%edi
	movl $0,%ecx
	jmp _i_171
_i_171:
	movl %edi,92(%esp)
	movl $1,%edi
	movl %esi,100(%esp)
	movl %edi,96(%esp)
	movl 92(%esp),%edi
	movl %edi,%esi
	movl 96(%esp),%edi
	subl %edi,%esi
	movl $0,%edi
	movl %esi,104(%esp)
	movl 92(%esp),%esi
	cmpl %edi,%esi
	jne Ljoin_l421
Ljoin_l422:
_i_168:
	movl 88(%esp),%edi
	jmp _i_165
Ljoin_l421:
	jmp _i_170
_i_170:
	movl 100(%esp),%edi
	movl $1,%esi
	movl %esi,160(%esp)
	movl %edi,%esi
	movl %edi,164(%esp)
	movl 160(%esp),%edi
	addl %edi,%esi
	movl $33,%edi
	imull %ecx,%edi
	movl 164(%esp),%ecx
	movsbl (%ecx),%ecx
	addl %ecx,%edi
	movl %edi,%ecx
	movl 104(%esp),%edi
	jmp _i_171
Ljoin_l423:
	jmp _i_165
_i_165:
	movl %edi,88(%esp)
	movl 24(%esp),%esi
	movl (%esi),%edi
	movl %edi,108(%esp)
	movl $0,%edi
	movl 108(%esp),%esi
	cmpl %edi,%esi
	jne Ljoin_l419
Ljoin_l420:
	movl $1,%edi
	movl $8,%esi
	movl %edi,112(%esp)
	movl %esi,116(%esp)
	movl 24(%esp),%edi
	movl %edi,%esi
	movl 116(%esp),%edi
	addl %edi,%esi
	movl (%esi),%edi
	movl $1,%esi
	addl %esi,%edi
	movl $2,%esi
	movl %ecx,40(%esp)
	movl %esi,%ecx
	shll %cl, %edi
	movl $1,%ecx
	shll %cl, %edi
	movl $16,%esi
	subl %esi,%edi
	movl 112(%esp),%esi
	imull %edi,%esi
	movl %eax,28(%esp)
	movl %esi,%eax
	leal _Perl_safemalloc,%edi
	movl (%edi),%edi
	movl %edx,44(%esp)
	call *%edi
Ljoin_l418:
	movl 24(%esp),%edi
	movl %eax,(%edi)
	leal -8(%esp), %esp
	movl (%edi),%eax
	movl $1,%esi
	movl $8,%edx
	movl %edi,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $2,%ecx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	imull %edx,%esi
	leal 188(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	movl $0,%esi
	leal 188(%esp), %ecx
	movl $-188,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	leal _memset,%esi
	movl (%esi),%esi
	call *%esi
Ljoin_l415:
	movl 44(%esp),%edx
	movl 28(%esp),%eax
	movl 40(%esp),%ecx
	jmp _i_173
Ljoin_l419:
	jmp _i_173
_i_173:
	movl $8,%edi
	movl %edi,120(%esp)
	movl 24(%esp),%esi
	movl %esi,%edi
	movl 120(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl %ecx,%esi
	andl %edi,%esi
	movl $2,%edi
	movl %ecx,40(%esp)
	movl %edi,%ecx
	shll %cl, %esi
	movl 24(%esp),%edi
	movl (%edi),%ecx
	addl %ecx,%esi
	movl $1,%ecx
	movl (%esi),%edi
	jmp _i_178
_i_178:
	movl %edi,124(%esp)
	movl $0,%edi
	movl %esi,128(%esp)
	movl 124(%esp),%esi
	cmpl %edi,%esi
	jne Ljoin_l398
Ljoin_l399:
	leal _i_new_he,%edi
	movl (%edi),%edi
	movl %edx,44(%esp)
	movl %eax,28(%esp)
	movl %ecx,132(%esp)
	call *%edi
Ljoin_l397:
	movl $8,%edi
	movl 28(%esp),%esi
	movl %esi,%ecx
	addl %edi,%ecx
	movl (%ecx),%edi
	movl $536870912,%ecx
	andl %ecx,%edi
	movl $0,%ecx
	cmpl %ecx,%edi
	je Ljoin_l393
Ljoin_l394:
	leal -8(%esp), %esp
	movl %eax,132(%esp)
	movl 96(%esp),%eax
	leal 188(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 188(%esp), %ecx
	movl $-188,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 188(%esp), %edi
	movl $-184,%ecx
	addl %ecx,%edi
	movl 48(%esp),%ecx
	movl %ecx,(%edi)
	leal _Perl_share_hek,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l392:
	movl $4,%edi
	movl 124(%esp),%ecx
	movl %ecx,%edx
	addl %edi,%edx
	movl %eax,(%edx)
	jmp _i_186
Ljoin_l393:
	jmp _i_185
_i_185:
	leal -8(%esp), %esp
	movl %eax,132(%esp)
	movl 96(%esp),%eax
	leal 188(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 188(%esp), %ecx
	movl $-188,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 188(%esp), %edi
	movl $-184,%ecx
	addl %ecx,%edi
	movl 48(%esp),%ecx
	movl %ecx,(%edi)
	leal _i_save_hek,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l389:
	movl $4,%edi
	movl 124(%esp),%ecx
	movl %ecx,%edx
	addl %edi,%edx
	movl %eax,(%edx)
	jmp _i_186
_i_186:
	movl $8,%edi
	movl %ecx,%edx
	addl %edi,%edx
	movl 4(%esp),%edi
	movl %edi,(%edx)
	movl 128(%esp),%edi
	movl (%edi),%edx
	movl %edx,(%ecx)
	movl %ecx,(%edi)
	movl $12,%edi
	movl 24(%esp),%edx
	movl %edx,%eax
	addl %edi,%eax
	movl (%eax),%edi
	movl %edi,136(%esp)
	movl $1,%edi
	movl %edi,140(%esp)
	movl 136(%esp),%edi
	movl 140(%esp),%esi
	addl %esi,%edi
	movl %edi,(%eax)
	movl $0,%edi
	movl 132(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l385
Ljoin_l386:
	movl $4,%edi
	movl %edx,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl $1,%eax
	addl %eax,%edi
	movl %edi,(%esi)
	movl $12,%edi
	movl %edx,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl $8,%esi
	addl %esi,%edx
	movl (%edx),%esi
	cmpl %esi,%edi
	jbe Ljoin_l383
Ljoin_l384:
	movl 28(%esp),%eax
	leal _i_hsplit,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l382:
	movl 124(%esp),%ecx
	jmp _i_189
Ljoin_l383:
	jmp _i_189
_i_189:
	jmp _i_187
Ljoin_l385:
	jmp _i_187
_i_187:
	movl %ecx,%eax
	leal 180(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%esi
	movl 8(%esp),%edi
	leal 192(%esp), %esp
	ret
Ljoin_l398:
	jmp _i_175
_i_175:
	movl $4,%edi
	movl %esi,%ecx
	addl %edi,%ecx
	movl (%ecx),%edi
	movl (%edi),%edi
	movl 40(%esp),%ecx
	cmpl %ecx,%edi
	je Ljoin_l411
Ljoin_l412:
	jmp Ljoin_l468
Ljoin_l468:
	movl %edx,44(%esp)
	movl %eax,28(%esp)
	movl 88(%esp),%esi
	jmp _i_176
Ljoin_l411:
	jmp _i_179
_i_179:
	movl $4,%edi
	movl %edi,144(%esp)
	movl %esi,%edi
	movl 144(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	addl %esi,%edi
	movl (%edi),%edi
	leal 180(%esp), %esi
	movl %edi,148(%esp)
	movl $-12,%edi
	addl %edi,%esi
	movl (%esi),%edi
	movl (%edi),%edi
	movl 148(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l409
Ljoin_l410:
	jmp Ljoin_l467
Ljoin_l467:
	movl %edx,44(%esp)
	movl %eax,28(%esp)
	movl 88(%esp),%esi
	jmp _i_176
Ljoin_l409:
	jmp _i_181
_i_181:
	leal -8(%esp), %esp
	movl $4,%edi
	movl %edi,160(%esp)
	movl 132(%esp),%esi
	movl %esi,%edi
	movl 160(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,36(%esp)
	movl %edi,%eax
	leal 188(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 188(%esp), %esi
	movl %edi,164(%esp)
	movl $-184,%edi
	addl %edi,%esi
	movl 164(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 188(%esp), %edi
	movl $-188,%esi
	addl %esi,%edi
	movl 96(%esp),%esi
	movl %esi,(%edi)
	leal _Perl_my_memcmp,%edi
	movl (%edi),%edi
	movl %edx,52(%esp)
	call *%edi
Ljoin_l408:
	movl $0,%edi
	cmpl %edi,%eax
	je Ljoin_l404
Ljoin_l405:
	jmp _i_176
_i_176:
	movl $0,%edi
	movl 124(%esp),%edx
	movl (%edx),%edx
	movl %edi,%ecx
	movl %edx,%edi
	movl 44(%esp),%edx
	movl 28(%esp),%eax
	movl 128(%esp),%esi
	jmp _i_178
Ljoin_l404:
	jmp _i_183
_i_183:
	movl $8,%edi
	movl 124(%esp),%eax
	movl %eax,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl %edi,%eax
	leal _Perl_sv_free,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l403:
	movl $8,%edx
	movl 124(%esp),%eax
	movl %eax,%ecx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 180(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%esi
	movl 8(%esp),%edi
	leal 192(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l470:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long Ljoin_l458
.long Lframe_l471
.section .pcmap_data
Lframe_l471:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0xffffff4c
.long 0xffffff50
.long 0xffffff74
.long 0xffffff64
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l449
.long Lframe_l472
.section .pcmap_data
Lframe_l472:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0xffffff4c
.long 0xffffff50
.long 0xffffff74
.long 0xffffff64
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
.long 0
.long 0
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
.long Ljoin_l444
.long Lframe_l473
.section .pcmap_data
Lframe_l473:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0
.long 0xffffff50
.long 0xffffff74
.long 0xffffff64
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
.long 0
.long 0
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
.long Ljoin_l441
.long Lframe_l474
.section .pcmap_data
Lframe_l474:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0
.long 0xffffff50
.long 0xffffff74
.long 0xffffff64
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
.long 0
.long 0
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
.long Ljoin_l438
.long Lframe_l475
.section .pcmap_data
Lframe_l475:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0xffffff4c
.long 0xffffff50
.long 0xffffff74
.long 0xffffff64
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l426
.long Lframe_l476
.section .pcmap_data
Lframe_l476:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0
.long 0xffffff50
.long 0xffffff74
.long 0xffffff64
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l418
.long Lframe_l477
.section .pcmap_data
Lframe_l477:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0
.long 0xffffff50
.long 0xffffff74
.long 0xffffff64
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l415
.long Lframe_l478
.section .pcmap_data
Lframe_l478:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0
.long 0xffffff50
.long 0xffffff74
.long 0xffffff64
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l397
.long Lframe_l479
.section .pcmap_data
Lframe_l479:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0
.long 0xffffff50
.long 0xffffff74
.long 0xffffff64
.long 0xffffffa4
.long 0xffffffd0
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
.section .pcmap
.long Ljoin_l392
.long Lframe_l480
.section .pcmap_data
Lframe_l480:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0
.long 0xffffff50
.long 0
.long 0xffffff64
.long 0
.long 0xffffffd0
.long 0xffffffc8
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
.section .pcmap
.long Ljoin_l389
.long Lframe_l481
.section .pcmap_data
Lframe_l481:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0
.long 0xffffff50
.long 0
.long 0xffffff64
.long 0
.long 0xffffffd0
.long 0xffffffc8
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
.section .pcmap
.long Ljoin_l382
.long Lframe_l482
.section .pcmap_data
Lframe_l482:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
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
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l408
.long Lframe_l483
.section .pcmap_data
Lframe_l483:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0xffffff68
.long 0
.long 0xffffff50
.long 0xffffff74
.long 0xffffff64
.long 0xffffffa4
.long 0
.long 0xffffffc8
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
.section .pcmap
.long Ljoin_l403
.long Lframe_l484
.section .pcmap_data
Lframe_l484:
.long 0x80000010
.long 0xffffff4c
.long 0xffffff78
.long Lstackdata_l470
.long 2
.long 36
.long 0
.long 1
.long 10
.long 0xffffff58
.long 11
.long 0xffffff54
.long 0
.long 0
.long 0xffffff50
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
.long 0
.long 0
.long 0
.section .text
_Perl_hv_delete:
	leal -116(%esp), %esp
	leal 116(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 116(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 116(%esp), %edx
	movl %ecx,4(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 116(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l487:
Lproc_body_start_l486:
	movl %edi,8(%esp)
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l549
Ljoin_l550:
	movl $0,%eax
	leal 116(%esp), %ecx
	movl $12,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 128(%esp), %esp
	ret
Ljoin_l549:
	jmp _i_192
_i_192:
	movl $8,%edi
	movl %edi,12(%esp)
	movl %eax,%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $32768,%esi
	andl %esi,%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l546
Ljoin_l547:
	leal -8(%esp), %esp
	movl %eax,28(%esp)
	leal 124(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	leal 124(%esp), %esi
	movl %edi,32(%esp)
	movl $-124,%edi
	addl %edi,%esi
	movl 32(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 124(%esp), %edi
	movl $-4,%esi
	addl %esi,%edi
	leal 124(%esp), %esi
	movl %edi,36(%esp)
	movl $-120,%edi
	addl %edi,%esi
	movl 36(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal _i_hv_magic_check,%edi
	movl (%edi),%edi
	movl %edx,44(%esp)
	movl %ecx,40(%esp)
	call *%edi
Ljoin_l545:
	leal 116(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l541
Ljoin_l542:
	leal -12(%esp), %esp
	movl 32(%esp),%eax
	leal 128(%esp), %edi
	movl $-128,%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal 128(%esp), %edi
	movl $-124,%ecx
	addl %ecx,%edi
	movl 16(%esp),%ecx
	movl %ecx,(%edi)
	movl $1,%edi
	leal 128(%esp), %edx
	movl %edi,52(%esp)
	movl $-120,%edi
	addl %edi,%edx
	movl 52(%esp),%edi
	movl %edi,(%edx)
	leal _Perl_hv_fetch,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l540:
	movl %eax,%edi
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l536
Ljoin_l537:
	movl (%edi),%eax
	movl %eax,44(%esp)
	leal _Perl_mg_clear,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l535:
	leal 116(%esp), %edx
	movl $-4,%edi
	addl %edi,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl $0,%edi
	cmpl %edi,%edx
	jne Ljoin_l531
Ljoin_l532:
	leal -4(%esp), %esp
	movl 48(%esp),%eax
	movl $112,%edi
	leal 120(%esp), %esi
	movl $-120,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal _Perl_mg_find,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l530:
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l526
Ljoin_l527:
	leal -4(%esp), %esp
	movl 48(%esp),%eax
	movl $112,%edi
	leal 120(%esp), %esi
	movl $-120,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal _Perl_sv_unmagic,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l525:
	movl 44(%esp),%eax
	leal 116(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 128(%esp), %esp
	ret
Ljoin_l526:
	jmp _i_200
_i_200:
	movl $0,%eax
	leal 116(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 128(%esp), %esp
	ret
Ljoin_l531:
	jmp _i_198
_i_198:
	jmp _i_196
Ljoin_l536:
	jmp _i_196
Ljoin_l541:
	jmp Ljoin_l554
Ljoin_l554:
	movl (%esp),%esi
	jmp _i_196
_i_196:
	movl 36(%esp),%edx
	movl 20(%esp),%eax
	movl 32(%esp),%ecx
	jmp _i_194
Ljoin_l546:
	jmp _i_194
_i_194:
	movl (%eax),%edi
	movl (%edi),%esi
	movl %edx,36(%esp)
	movl $0,%edx
	cmpl %edx,%esi
	jne Ljoin_l519
Ljoin_l520:
	movl $0,%eax
	leal 116(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 128(%esp), %esp
	ret
Ljoin_l519:
	jmp _i_202
_i_202:
_i_204:
	movl (%esp),%edx
	movl %edx,%esi
	movl %edi,48(%esp)
	movl 4(%esp),%edx
	movl %edx,%edi
	movl $0,%edx
	jmp _i_208
_i_208:
	movl %edx,52(%esp)
	movl $1,%edx
	movl %edx,56(%esp)
	movl %edi,%edx
	movl %edi,60(%esp)
	movl 56(%esp),%edi
	subl %edi,%edx
	movl $0,%edi
	movl %edx,64(%esp)
	movl 60(%esp),%edx
	cmpl %edi,%edx
	jne Ljoin_l516
Ljoin_l517:
	movl 52(%esp),%edx
_i_205:
	movl $8,%edi
	movl %edx,68(%esp)
	movl 48(%esp),%esi
	movl %esi,%edx
	addl %edi,%edx
	movl (%edx),%edx
	movl %edx,72(%esp)
	movl 68(%esp),%edi
	movl %edi,%edx
	movl 72(%esp),%edi
	andl %edi,%edx
	movl $2,%edi
	movl %ecx,32(%esp)
	movl %edi,%ecx
	shll %cl, %edx
	movl (%esi),%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $1,%edi
	jmp _i_213
_i_213:
	movl %edx,76(%esp)
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l490
Ljoin_l491:
	movl $0,%eax
	leal 116(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 128(%esp), %esp
	ret
Ljoin_l490:
	jmp _i_210
_i_210:
	movl $4,%edx
	movl %edi,80(%esp)
	movl %ecx,%edi
	addl %edx,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl 68(%esp),%edx
	cmpl %edx,%edi
	je Ljoin_l514
Ljoin_l515:
	jmp Ljoin_l556
Ljoin_l556:
	movl %eax,20(%esp)
	movl %ecx,100(%esp)
	movl 4(%esp),%esi
	jmp _i_211
Ljoin_l514:
	jmp _i_214
_i_214:
	movl $4,%edi
	movl %edi,84(%esp)
	movl %ecx,%edi
	movl 84(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	addl %esi,%edi
	movl (%edi),%edi
	movl 4(%esp),%esi
	cmpl %esi,%edi
	je Ljoin_l512
Ljoin_l513:
	jmp Ljoin_l555
Ljoin_l555:
	movl %eax,20(%esp)
	movl %ecx,100(%esp)
	jmp _i_211
Ljoin_l512:
	jmp _i_216
_i_216:
	leal -8(%esp), %esp
	movl $4,%edi
	movl %edi,96(%esp)
	movl %ecx,%edi
	movl 96(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,28(%esp)
	movl %edi,%eax
	leal 124(%esp), %edi
	movl $-124,%esi
	addl %esi,%edi
	movl 8(%esp),%esi
	movl %esi,(%edi)
	leal 124(%esp), %edi
	movl %edi,100(%esp)
	movl $-120,%edi
	movl %edi,104(%esp)
	movl 100(%esp),%edi
	movl 104(%esp),%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal _Perl_my_memcmp,%edi
	movl (%edi),%edi
	movl %ecx,108(%esp)
	call *%edi
Ljoin_l511:
	movl $0,%edi
	cmpl %edi,%eax
	je Ljoin_l507
Ljoin_l508:
	jmp _i_211
_i_211:
	movl $0,%edi
	movl 100(%esp),%edx
	movl (%edx),%ecx
	movl 20(%esp),%eax
	movl 48(%esp),%esi
	jmp _i_213
Ljoin_l507:
	jmp _i_218
_i_218:
	movl 100(%esp),%edi
	movl (%edi),%esi
	movl 76(%esp),%ecx
	movl %esi,(%ecx)
	movl $0,%esi
	movl 80(%esp),%edx
	cmpl %esi,%edx
	je Ljoin_l505
Ljoin_l506:
	movl (%ecx),%esi
	movl $0,%ecx
	cmpl %ecx,%esi
	jne Ljoin_l503
Ljoin_l504:
	movl $4,%esi
	movl 48(%esp),%ecx
	movl %ecx,%edx
	addl %esi,%edx
	movl (%edx),%esi
	movl $1,%eax
	subl %eax,%esi
	movl %esi,(%edx)
	jmp _i_220
Ljoin_l503:
	jmp _i_220
Ljoin_l505:
	jmp _i_220
_i_220:
	movl $2,%esi
	movl 32(%esp),%ecx
	andl %esi,%ecx
	movl $0,%esi
	cmpl %esi,%ecx
	je Ljoin_l501
Ljoin_l502:
	movl $0,%eax
	jmp _i_223
Ljoin_l501:
	jmp _i_222
_i_222:
	movl $8,%esi
	movl %edi,%ecx
	addl %esi,%ecx
	movl (%ecx),%eax
	leal _Perl_sv_mortalcopy,%esi
	movl (%esi),%esi
	call *%esi
Ljoin_l500:
	jmp _i_223
_i_223:
	movl $32,%esi
	movl 48(%esp),%ecx
	movl %ecx,%edx
	addl %esi,%edx
	movl (%edx),%esi
	cmpl %esi,%edi
	jne Ljoin_l496
Ljoin_l497:
	movl $8,%edx
	movl 20(%esp),%edi
	addl %edx,%edi
	movl (%edi),%edx
	movl $1073741824,%esi
	orl %esi,%edx
	movl %edx,(%edi)
	jmp _i_225
Ljoin_l496:
	jmp _i_224
_i_224:
	leal -4(%esp), %esp
	movl %eax,48(%esp)
	movl 24(%esp),%eax
	leal 120(%esp), %esi
	movl $-120,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal _Perl_hv_free_ent,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l495:
	movl 48(%esp),%ecx
	movl 44(%esp),%eax
	jmp _i_225
_i_225:
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%edi
	subl %edi,%edx
	movl %edx,(%ecx)
	leal 116(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 128(%esp), %esp
	ret
Ljoin_l516:
	jmp _i_207
_i_207:
	movl $1,%edi
	movl %esi,%edx
	addl %edi,%edx
	movl $33,%edi
	movl %esi,104(%esp)
	movl 52(%esp),%esi
	imull %esi,%edi
	movl 104(%esp),%esi
	movsbl (%esi),%esi
	addl %esi,%edi
	movl %edx,%esi
	movl %edi,%edx
	movl 64(%esp),%edi
	jmp _i_208
.section .pcmap_data
Lstackdata_l558:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long Ljoin_l545
.long Lframe_l559
.section .pcmap_data
Lframe_l559:
.long 0x80000010
.long 0xffffff8c
.long 0xffffffb0
.long Lstackdata_l558
.long 2
.long 25
.long 0
.long 1
.long 10
.long 0xffffff9c
.long 11
.long 0xffffff94
.long 0xffffffa0
.long 0xffffff8c
.long 0xffffff90
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
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l540
.long Lframe_l560
.section .pcmap_data
Lframe_l560:
.long 0x80000010
.long 0xffffff8c
.long 0xffffffb0
.long Lstackdata_l558
.long 2
.long 25
.long 0
.long 1
.long 10
.long 0xffffff9c
.long 11
.long 0xffffff94
.long 0xffffffa0
.long 0xffffff8c
.long 0xffffff90
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
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l535
.long Lframe_l561
.section .pcmap_data
Lframe_l561:
.long 0x80000010
.long 0xffffff8c
.long 0xffffffb0
.long Lstackdata_l558
.long 2
.long 25
.long 0
.long 1
.long 10
.long 0xffffff9c
.long 11
.long 0xffffff94
.long 0xffffffa0
.long 0xffffff8c
.long 0xffffff90
.long 0xffffffac
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
.section .pcmap
.long Ljoin_l530
.long Lframe_l562
.section .pcmap_data
Lframe_l562:
.long 0x80000010
.long 0xffffff8c
.long 0xffffffb0
.long Lstackdata_l558
.long 2
.long 25
.long 0
.long 1
.long 10
.long 0xffffff9c
.long 11
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
.section .pcmap
.long Ljoin_l525
.long Lframe_l563
.section .pcmap_data
Lframe_l563:
.long 0x80000010
.long 0xffffff8c
.long 0xffffffb0
.long Lstackdata_l558
.long 2
.long 25
.long 0
.long 1
.long 10
.long 0xffffff9c
.long 11
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
.section .pcmap
.long Ljoin_l511
.long Lframe_l564
.section .pcmap_data
Lframe_l564:
.long 0x80000010
.long 0xffffff8c
.long 0xffffffb0
.long Lstackdata_l558
.long 2
.long 25
.long 0
.long 1
.long 10
.long 0xffffff9c
.long 11
.long 0xffffff94
.long 0xffffffa0
.long 0xffffff8c
.long 0xffffff90
.long 0xffffffac
.long 0xffffffbc
.long 0xffffffdc
.long 0xffffffd0
.long 0xfffffff0
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
.section .pcmap
.long Ljoin_l500
.long Lframe_l565
.section .pcmap_data
Lframe_l565:
.long 0x80000010
.long 0xffffff8c
.long 0xffffffb0
.long Lstackdata_l558
.long 2
.long 25
.long 0
.long 1
.long 10
.long 0xffffff9c
.long 11
.long 0xffffff94
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0xffffffbc
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
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l495
.long Lframe_l566
.section .pcmap_data
Lframe_l566:
.long 0x80000010
.long 0xffffff8c
.long 0xffffffb0
.long Lstackdata_l558
.long 2
.long 25
.long 0
.long 1
.long 10
.long 0xffffff9c
.long 11
.long 0xffffff94
.long 0
.long 0
.long 0
.long 0
.long 0xffffffbc
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
.section .text
_Perl_hv_delete_ent:
	leal -124(%esp), %esp
	leal 124(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 124(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 124(%esp), %edx
	movl %ecx,4(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 124(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l569:
Lproc_body_start_l568:
	movl %edi,8(%esp)
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l637
Ljoin_l638:
	movl $0,%eax
	leal 124(%esp), %ecx
	movl $12,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 136(%esp), %esp
	ret
Ljoin_l637:
	jmp _i_227
_i_227:
	movl $8,%edi
	movl %edi,12(%esp)
	movl %eax,%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $32768,%esi
	andl %esi,%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l634
Ljoin_l635:
	leal -8(%esp), %esp
	movl %eax,28(%esp)
	leal 132(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	leal 132(%esp), %esi
	movl %edi,32(%esp)
	movl $-132,%edi
	addl %edi,%esi
	movl 32(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 132(%esp), %edi
	movl $-4,%esi
	addl %esi,%edi
	leal 132(%esp), %esi
	movl %edi,36(%esp)
	movl $-128,%edi
	addl %edi,%esi
	movl 36(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal _i_hv_magic_check,%edi
	movl (%edi),%edi
	movl %edx,44(%esp)
	movl %ecx,40(%esp)
	call *%edi
Ljoin_l633:
	leal 124(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l629
Ljoin_l630:
	leal -12(%esp), %esp
	movl 32(%esp),%eax
	leal 136(%esp), %edi
	movl $-136,%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	movl $1,%edi
	leal 136(%esp), %ecx
	movl $-132,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 136(%esp), %edi
	movl $-128,%ecx
	addl %ecx,%edi
	movl 44(%esp),%ecx
	movl %ecx,(%edi)
	leal _Perl_hv_fetch_ent,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l628:
	movl %eax,%edi
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l624
Ljoin_l625:
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl %eax,40(%esp)
	leal _Perl_mg_clear,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l623:
	leal 124(%esp), %edi
	movl $-4,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $0,%ecx
	cmpl %ecx,%edi
	jne Ljoin_l619
Ljoin_l620:
	leal -4(%esp), %esp
	movl 44(%esp),%eax
	movl $112,%edi
	leal 128(%esp), %esi
	movl $-128,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal _Perl_mg_find,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l618:
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l614
Ljoin_l615:
	leal -4(%esp), %esp
	movl 44(%esp),%eax
	movl $112,%edi
	leal 128(%esp), %esi
	movl $-128,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal _Perl_sv_unmagic,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l613:
	movl 40(%esp),%eax
	leal 124(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 136(%esp), %esp
	ret
Ljoin_l614:
	jmp _i_235
_i_235:
	movl $0,%eax
	leal 124(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 136(%esp), %esp
	ret
Ljoin_l619:
	jmp _i_233
_i_233:
	jmp _i_231
Ljoin_l624:
	jmp _i_231
Ljoin_l629:
	jmp Ljoin_l642
Ljoin_l642:
	movl (%esp),%esi
	jmp _i_231
_i_231:
	movl 36(%esp),%edx
	movl 20(%esp),%eax
	movl 32(%esp),%ecx
	jmp _i_229
Ljoin_l634:
	jmp _i_229
_i_229:
	movl (%eax),%edi
	movl (%edi),%esi
	movl %edi,44(%esp)
	movl $0,%edi
	cmpl %edi,%esi
	jne Ljoin_l607
Ljoin_l608:
	movl $0,%eax
	leal 124(%esp), %ecx
	movl $12,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 136(%esp), %esp
	ret
Ljoin_l607:
	jmp _i_237
_i_237:
	movl $8,%edi
	movl %edi,48(%esp)
	movl (%esp),%esi
	movl %esi,%edi
	movl 48(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $262144,%esi
	andl %esi,%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l604
Ljoin_l605:
	movl (%esp),%edi
	movl (%edi),%esi
	movl %edx,36(%esp)
	movl $4,%edx
	addl %edx,%esi
	leal 124(%esp), %edx
	movl %edx,56(%esp)
	movl $-12,%edx
	movl %edx,60(%esp)
	movl 56(%esp),%edx
	movl %edi,64(%esp)
	movl 60(%esp),%edi
	addl %edi,%edx
	movl (%esi),%edi
	movl %edi,(%edx)
	movl 64(%esp),%edx
	movl (%edx),%edx
	movl (%edx),%edx
	jmp _i_241
Ljoin_l604:
	jmp _i_240
_i_240:
	leal -4(%esp), %esp
	movl %eax,24(%esp)
	movl 4(%esp),%eax
	leal 128(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	leal 128(%esp), %esi
	movl %edi,56(%esp)
	movl $-128,%edi
	addl %edi,%esi
	movl 56(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal _Perl_sv_2pv,%edi
	movl (%edi),%edi
	movl %edx,40(%esp)
	movl %ecx,36(%esp)
	call *%edi
Ljoin_l603:
	movl %eax,%edx
	movl 20(%esp),%eax
	movl 32(%esp),%ecx
	jmp _i_241
_i_241:
	movl $0,%edi
	cmpl %edi,%ecx
	jne Ljoin_l600
_i_244:
	movl %edx,%edi
	leal 124(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $0,%ecx
	jmp _i_248
_i_248:
	movl %edx,68(%esp)
	movl $1,%edx
	movl %edx,72(%esp)
	movl %esi,%edx
	movl %edi,76(%esp)
	movl 72(%esp),%edi
	subl %edi,%edx
	movl $0,%edi
	cmpl %edi,%esi
	jne Ljoin_l598
Ljoin_l599:
_i_245:
	movl 68(%esp),%edx
	jmp _i_242
Ljoin_l598:
	jmp _i_247
_i_247:
	movl 76(%esp),%edi
	movl $1,%esi
	movl %esi,104(%esp)
	movl %edi,%esi
	movl %edi,108(%esp)
	movl 104(%esp),%edi
	addl %edi,%esi
	movl $33,%edi
	imull %ecx,%edi
	movl 108(%esp),%ecx
	movsbl (%ecx),%ecx
	addl %ecx,%edi
	movl %edi,%ecx
	movl %esi,%edi
	movl %edx,%esi
	movl 68(%esp),%edx
	jmp _i_248
Ljoin_l600:
	jmp _i_242
_i_242:
	movl $8,%edi
	movl %edx,68(%esp)
	movl 44(%esp),%esi
	movl %esi,%edx
	addl %edi,%edx
	movl (%edx),%edx
	movl %ecx,%edi
	andl %edx,%edi
	movl $2,%edx
	movl %ecx,32(%esp)
	movl %edx,%ecx
	shll %cl, %edi
	movl (%esi),%edx
	addl %edx,%edi
	movl (%edi),%edx
	movl $1,%ecx
	jmp _i_253
_i_253:
	movl %edx,80(%esp)
	movl $0,%edx
	movl %ecx,84(%esp)
	movl 80(%esp),%ecx
	cmpl %edx,%ecx
	jne Ljoin_l572
Ljoin_l573:
	movl $0,%eax
	leal 124(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 136(%esp), %esp
	ret
Ljoin_l572:
	jmp _i_250
_i_250:
	movl $4,%edx
	movl %edi,88(%esp)
	movl %ecx,%edi
	addl %edx,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl 32(%esp),%edx
	cmpl %edx,%edi
	je Ljoin_l596
Ljoin_l597:
	jmp Ljoin_l644
Ljoin_l644:
	movl %eax,20(%esp)
	movl 68(%esp),%esi
	jmp _i_251
Ljoin_l596:
	jmp _i_254
_i_254:
	movl $4,%edi
	movl %edi,92(%esp)
	movl %ecx,%edi
	movl 92(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	addl %esi,%edi
	movl (%edi),%edi
	leal 124(%esp), %esi
	movl %edi,96(%esp)
	movl $-12,%edi
	addl %edi,%esi
	movl (%esi),%edi
	movl (%edi),%edi
	movl 96(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l594
Ljoin_l595:
	jmp Ljoin_l643
Ljoin_l643:
	movl %eax,20(%esp)
	movl 68(%esp),%esi
	jmp _i_251
Ljoin_l594:
	jmp _i_256
_i_256:
	leal -8(%esp), %esp
	movl $4,%edi
	movl %ecx,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,28(%esp)
	movl %edi,%eax
	leal 132(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 132(%esp), %esi
	movl %edi,108(%esp)
	movl $-128,%edi
	addl %edi,%esi
	movl 108(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 132(%esp), %edi
	movl $-132,%esi
	addl %esi,%edi
	movl 76(%esp),%esi
	movl %esi,(%edi)
	leal _Perl_my_memcmp,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l593:
	movl $0,%edi
	cmpl %edi,%eax
	je Ljoin_l589
Ljoin_l590:
	jmp _i_251
_i_251:
	movl $0,%edi
	movl 80(%esp),%edx
	movl (%edx),%ecx
	movl %edx,88(%esp)
	movl %ecx,%edx
	movl %edi,%ecx
	movl 88(%esp),%edi
	movl 20(%esp),%eax
	movl 44(%esp),%esi
	jmp _i_253
Ljoin_l589:
	jmp _i_258
_i_258:
	movl 80(%esp),%edi
	movl (%edi),%esi
	movl 88(%esp),%ecx
	movl %esi,(%ecx)
	movl $0,%esi
	movl 84(%esp),%edx
	cmpl %esi,%edx
	je Ljoin_l587
Ljoin_l588:
	movl (%ecx),%esi
	movl $0,%ecx
	cmpl %ecx,%esi
	jne Ljoin_l585
Ljoin_l586:
	movl $4,%esi
	movl 44(%esp),%ecx
	movl %ecx,%edx
	addl %esi,%edx
	movl (%edx),%esi
	movl $1,%eax
	subl %eax,%esi
	movl %esi,(%edx)
	jmp _i_260
Ljoin_l585:
	jmp _i_260
Ljoin_l587:
	jmp _i_260
_i_260:
	movl $2,%esi
	movl 4(%esp),%ecx
	andl %esi,%ecx
	movl $0,%esi
	cmpl %esi,%ecx
	je Ljoin_l583
Ljoin_l584:
	movl $0,%eax
	jmp _i_263
Ljoin_l583:
	jmp _i_262
_i_262:
	movl $8,%esi
	movl %edi,%ecx
	addl %esi,%ecx
	movl (%ecx),%eax
	leal _Perl_sv_mortalcopy,%esi
	movl (%esi),%esi
	call *%esi
Ljoin_l582:
	jmp _i_263
_i_263:
	movl $32,%esi
	movl 44(%esp),%ecx
	movl %ecx,%edx
	addl %esi,%edx
	movl (%edx),%esi
	cmpl %esi,%edi
	jne Ljoin_l578
Ljoin_l579:
	movl $8,%edx
	movl 20(%esp),%edi
	addl %edx,%edi
	movl (%edi),%edx
	movl $1073741824,%esi
	orl %esi,%edx
	movl %edx,(%edi)
	jmp _i_265
Ljoin_l578:
	jmp _i_264
_i_264:
	leal -4(%esp), %esp
	movl %eax,44(%esp)
	movl 24(%esp),%eax
	leal 128(%esp), %esi
	movl $-128,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal _Perl_hv_free_ent,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l577:
	movl 44(%esp),%ecx
	movl 40(%esp),%eax
	jmp _i_265
_i_265:
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%edi
	subl %edi,%edx
	movl %edx,(%ecx)
	leal 124(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 136(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l646:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long Ljoin_l633
.long Lframe_l647
.section .pcmap_data
Lframe_l647:
.long 0x80000010
.long 0xffffff84
.long 0xffffffa8
.long Lstackdata_l646
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff94
.long 11
.long 0xffffff8c
.long 0xffffff98
.long 0xffffff84
.long 0xffffff88
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
.long 0
.long 0
.long 0
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
.long Ljoin_l628
.long Lframe_l648
.section .pcmap_data
Lframe_l648:
.long 0x80000010
.long 0xffffff84
.long 0xffffffa8
.long Lstackdata_l646
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff94
.long 11
.long 0xffffff8c
.long 0xffffff98
.long 0xffffff84
.long 0xffffff88
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
.long 0
.long 0
.long 0
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
.long Ljoin_l623
.long Lframe_l649
.section .pcmap_data
Lframe_l649:
.long 0x80000010
.long 0xffffff84
.long 0xffffffa8
.long Lstackdata_l646
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff94
.long 11
.long 0xffffff8c
.long 0xffffff98
.long 0xffffff84
.long 0xffffff88
.long 0xffffffa4
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
.long 0
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
.long Ljoin_l618
.long Lframe_l650
.section .pcmap_data
Lframe_l650:
.long 0x80000010
.long 0xffffff84
.long 0xffffffa8
.long Lstackdata_l646
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff94
.long 11
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
.long Ljoin_l613
.long Lframe_l651
.section .pcmap_data
Lframe_l651:
.long 0x80000010
.long 0xffffff84
.long 0xffffffa8
.long Lstackdata_l646
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff94
.long 11
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
.long Ljoin_l603
.long Lframe_l652
.section .pcmap_data
Lframe_l652:
.long 0x80000010
.long 0xffffff84
.long 0xffffffa8
.long Lstackdata_l646
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff94
.long 11
.long 0xffffff8c
.long 0xffffff98
.long 0
.long 0xffffff88
.long 0xffffffa4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l593
.long Lframe_l653
.section .pcmap_data
Lframe_l653:
.long 0x80000010
.long 0xffffff84
.long 0xffffffa8
.long Lstackdata_l646
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff94
.long 11
.long 0xffffff8c
.long 0xffffff98
.long 0
.long 0xffffff88
.long 0xffffffa4
.long 0xffffffb0
.long 0xffffffd8
.long 0xffffffc8
.long 0xffffffd4
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
.section .pcmap
.long Ljoin_l582
.long Lframe_l654
.section .pcmap_data
Lframe_l654:
.long 0x80000010
.long 0xffffff84
.long 0xffffffa8
.long Lstackdata_l646
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff94
.long 11
.long 0xffffff8c
.long 0xffffff98
.long 0
.long 0
.long 0
.long 0xffffffb0
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
.section .pcmap
.long Ljoin_l577
.long Lframe_l655
.section .pcmap_data
Lframe_l655:
.long 0x80000010
.long 0xffffff84
.long 0xffffffa8
.long Lstackdata_l646
.long 2
.long 27
.long 0
.long 1
.long 10
.long 0xffffff94
.long 11
.long 0xffffff8c
.long 0
.long 0
.long 0
.long 0
.long 0xffffffb0
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
.long 0
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
