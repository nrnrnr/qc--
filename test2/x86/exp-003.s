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
	movl (%eax),%ecx
Linitialize_continuations_l36:
Lproc_body_start_l35:
	leal _PL_he_root,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l42
Ljoin_l43:
	leal _i_more_he,%eax
	movl (%eax),%edx
	movl %ecx,(%esp)
	call *%edx
Ljoin_l41:
	movl (%esp),%ecx
	jmp _i_21
Ljoin_l42:
	jmp _i_21
_i_21:
	leal _PL_he_root,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	movl %ecx,(%esp)
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l48:
.long 0
.section .pcmap
.long Ljoin_l41
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0xfffffffc
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l48
.long 0x80000008
.long 0x80000003
.long 0x80000000
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
.long 0x80000000
.section .text
_i_del_he:
	movl %esp,%edx
	movl (%edx),%ecx
Linitialize_continuations_l52:
Lproc_body_start_l51:
	leal _PL_he_root,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl %edx,(%eax)
	leal _PL_he_root,%edx
	movl %eax,(%edx)
_i_23:
	movl $0,%eax
	movl %esp,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	ret
.section .text
_i_more_he:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l63:
Lproc_body_start_l62:
	movl $1008,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	movl %edx,(%esp)
	call *%ecx
Ljoin_l69:
	leal _PL_he_root,%ecx
	movl %eax,(%ecx)
	leal _PL_he_root,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl $996,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	jmp _i_26
_i_26:
	cmpl %edx,%eax
	jb Ljoin_l65
Ljoin_l66:
	movl $0,%ecx
	movl %ecx,(%eax)
_i_24:
	movl $0,%eax
	leal 8(%esp), %ecx
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	leal 8(%esp), %esp
	ret
Ljoin_l65:
	jmp _i_25
_i_25:
	movl $12,%ecx
	movl %ebx,4(%esp)
	movl %eax,%ebx
	addl %ecx,%ebx
	movl %ebx,(%eax)
	movl $12,%ebx
	addl %ebx,%eax
	movl 4(%esp),%ebx
	jmp _i_26
.section .pcmap_data
Lstackdata_l74:
.long 0
.section .pcmap
.long Ljoin_l69
.long Lframe_l75
.section .pcmap_data
Lframe_l75:
.long 0xfffffff8
.long 0x80000004
.long 0xfffffff8
.long Lstackdata_l74
.long 0x80000008
.long 0x80000004
.long 0x80000000
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
.long 0x80000000
.section .text
_i_save_hek:
	leal -24(%esp), %esp
	movl $4,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 24(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 24(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l78:
Lproc_body_start_l77:
	movl %ecx,4(%esp)
	movl $1,%ecx
	movl %edx,8(%esp)
	movl $8,%edx
	movl %ebx,16(%esp)
	movl %eax,12(%esp)
	movl 4(%esp),%eax
	movl %eax,%ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	imull %ebx,%ecx
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ebx
	call *%ebx
Ljoin_l86:
	leal -8(%esp), %esp
	movl %eax,28(%esp)
	movl 8(%esp),%eax
	movl $8,%ecx
	movl 28(%esp),%edx
	movl %edx,%ebx
	addl %ecx,%ebx
	movl $-32,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $1,%edx
	movl 12(%esp),%ebx
	imull %ebx,%edx
	movl $-28,%ecx
	leal 32(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	leal _Perl_my_bcopy,%edx
	movl (%edx),%ebx
	call *%ebx
Ljoin_l83:
	movl $0,%eax
	movl $8,%ecx
	movl 20(%esp),%edx
	movl %edx,%ebx
	addl %ecx,%ebx
	movl 4(%esp),%ecx
	movl %ecx,%edx
	addl %ebx,%edx
	movb %al,(%edx)
	movl $4,%eax
	movl 20(%esp),%edx
	movl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl %edx,%eax
	movl $8,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l91:
.long 0
.section .pcmap
.long Ljoin_l86
.long Lframe_l92
.section .pcmap_data
Lframe_l92:
.long 0xffffffe8
.long 0x8000000c
.long 0xfffffff4
.long Lstackdata_l91
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe8
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l83
.long Lframe_l93
.section .pcmap_data
Lframe_l93:
.long 0xffffffe8
.long 0x8000000c
.long 0xfffffff4
.long Lstackdata_l91
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xffffffec
.long 0xfffffff0
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
_Perl_unshare_hek:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l96:
Lproc_body_start_l95:
	leal -8(%esp), %esp
	movl $8,%ecx
	movl %edx,8(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl %eax,12(%esp)
	movl %edx,%eax
	movl $4,%edx
	movl %ebx,16(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $-16,%ebx
	leal 20(%esp), %ecx
	addl %ebx,%ecx
	movl 12(%esp),%ebx
	movl (%ebx),%ebx
	movl %ebx,(%ecx)
	movl $-20,%ecx
	leal 20(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	leal _Perl_unsharepvn,%edx
	movl (%edx),%ebx
	call *%ebx
Ljoin_l100:
_i_29:
	movl $0,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l105:
.long 0
.section .pcmap
.long Ljoin_l100
.long Lframe_l106
.section .pcmap_data
Lframe_l106:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l105
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x80000000
.section .text
_Perl_hv_fetch:
	leal -60(%esp), %esp
	movl $4,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 60(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	movl %ecx,4(%esp)
	leal 60(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 60(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l109:
Lproc_body_start_l108:
	movl %edx,8(%esp)
	movl $0,%edx
	movl %eax,12(%esp)
	movl (%esp),%eax
	cmpl %edx,%eax
	jne Ljoin_l161
Ljoin_l162:
	movl $0,%eax
	movl $12,%edx
	movl %ecx,16(%esp)
	leal 60(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %esp
	ret
Ljoin_l161:
	jmp _i_31
_i_31:
	movl $32768,%edx
	movl $8,%eax
	movl %ebx,20(%esp)
	movl %ecx,16(%esp)
	movl (%esp),%ecx
	movl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	andl %edx,%eax
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l158
Ljoin_l159:
	leal -4(%esp), %esp
	movl %ecx,%eax
	movl $80,%edx
	movl $-64,%ebx
	leal 64(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	leal _Perl_mg_find,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l157:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l153
Ljoin_l154:
	leal _Perl_sv_newmortal,%ebx
	movl (%ebx),%eax
	call *%eax
Ljoin_l152:
	leal -12(%esp), %esp
	movl %eax,64(%esp)
	movl 12(%esp),%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 64(%esp),%ecx
	movl %ecx,(%edx)
	movl $-68,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl 16(%esp),%edx
	movl %edx,(%ebx)
	movl $-64,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl 20(%esp),%edx
	movl %edx,(%ebx)
	leal _Perl_mg_copy,%edx
	movl (%edx),%ebx
	call *%ebx
Ljoin_l149:
	leal _PL_hv_fetch_sv,%eax
	movl (%eax),%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl $12,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 72(%esp), %esp
	ret
Ljoin_l153:
	jmp _i_35
_i_35:
	movl (%esp),%ecx
	jmp _i_33
Ljoin_l158:
	jmp _i_33
_i_33:
	movl (%ecx),%eax
	movl (%eax),%edx
	movl $0,%ebx
	cmpl %ebx,%edx
	jne Ljoin_l144
Ljoin_l145:
	movl $0,%edx
	movl 12(%esp),%ebx
	cmpl %edx,%ebx
	je Ljoin_l142
Ljoin_l143:
	movl $16,%edx
	movl $1,%ebx
	movl $2,%ecx
	movl %ebp,24(%esp)
	movl $1,%ebp
	movl %esi,28(%esp)
	movl $8,%esi
	movl %edi,32(%esp)
	movl %eax,%edi
	addl %esi,%edi
	movl (%edi),%esi
	addl %ebp,%esi
	shll %cl, %esi
	movl %ebx,%ecx
	shll %cl, %esi
	subl %edx,%esi
	movl $1,%edx
	imull %esi,%edx
	movl %eax,36(%esp)
	movl %edx,%eax
	leal _Perl_safemalloc,%edx
	movl (%edx),%esi
	call *%esi
Ljoin_l141:
	movl 36(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $16,%edx
	movl $1,%esi
	movl $2,%ebx
	movl $1,%ebp
	movl $8,%edi
	movl %edx,48(%esp)
	movl %ecx,%edx
	addl %edi,%edx
	movl (%edx),%edi
	addl %ebp,%edi
	movl %ebx,%ecx
	shll %cl, %edi
	movl %esi,%ecx
	shll %cl, %edi
	movl 48(%esp),%ecx
	subl %ecx,%edi
	movl $1,%ecx
	imull %edi,%ecx
	movl $-64,%edi
	leal 68(%esp), %esi
	addl %edi,%esi
	movl %ecx,(%esi)
	movl $0,%ecx
	movl $-68,%esi
	leal 68(%esp), %edi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal _memset,%ecx
	movl (%ecx),%edi
	call *%edi
Ljoin_l138:
	jmp _i_40
_i_40:
	movl 32(%esp),%edi
	movl 28(%esp),%esi
	movl 24(%esp),%ebp
	movl (%esp),%ecx
	movl 36(%esp),%eax
	jmp _i_37
Ljoin_l142:
	jmp _i_39
_i_39:
	movl $0,%eax
	movl $12,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 72(%esp), %esp
	ret
Ljoin_l144:
	jmp _i_37
_i_37:
_i_41:
	movl 4(%esp),%edx
	movl %edx,%ebx
	movl %eax,36(%esp)
	movl 8(%esp),%eax
	movl %eax,%ecx
	movl $0,%eax
	jmp _i_45
_i_45:
	movl $1,%edx
	movl %edi,32(%esp)
	movl %ecx,%edi
	subl %edx,%edi
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l133
Ljoin_l134:
_i_42:
	movl 36(%esp),%ecx
	movl (%ecx),%edx
	movl $2,%ebx
	movl $8,%edi
	addl %edi,%ecx
	movl (%ecx),%edi
	movl %eax,%ecx
	andl %edi,%ecx
	movl %ecx,44(%esp)
	movl %ebx,%ecx
	movl 44(%esp),%ebx
	shll %cl, %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	jmp _i_50
_i_50:
	movl $0,%ebx
	cmpl %ebx,%edx
	jne Ljoin_l121
Ljoin_l122:
	movl $0,%ebx
	movl 12(%esp),%ecx
	cmpl %ebx,%ecx
	je Ljoin_l119
Ljoin_l120:
	movl $0,%edi
	movl %eax,48(%esp)
	movl %edi,%eax
	leal _Perl_newSV,%edi
	movl (%edi),%ebx
	call *%ebx
Ljoin_l118:
	leal -16(%esp), %esp
	movl %eax,68(%esp)
	movl 16(%esp),%eax
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl $-72,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl $-68,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl %ecx,(%edx)
	movl $-64,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 64(%esp),%ecx
	movl %ecx,(%edx)
	leal _Perl_hv_store,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l115:
	movl $12,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	movl 32(%esp),%edi
	leal 72(%esp), %esp
	ret
Ljoin_l119:
	jmp _i_57
_i_57:
	movl $0,%ecx
	movl %ecx,%eax
	movl $12,%ecx
	leal 60(%esp), %ebx
	addl %ecx,%ebx
	movl 16(%esp),%ecx
	movl %ecx,(%ebx)
	movl 20(%esp),%ebx
	movl 32(%esp),%edi
	leal 72(%esp), %esp
	ret
Ljoin_l121:
	jmp _i_47
_i_47:
	movl $4,%edi
	movl %edx,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl (%edi),%ebx
	cmpl %eax,%ebx
	je Ljoin_l131
Ljoin_l132:
	jmp Ljoin_l167
Ljoin_l167:
	movl %eax,48(%esp)
	movl %edx,56(%esp)
	movl 4(%esp),%edi
	movl 8(%esp),%ebx
	jmp _i_48
Ljoin_l131:
	jmp _i_51
_i_51:
	movl $4,%ebx
	movl %edx,%edi
	addl %ebx,%edi
	movl (%edi),%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl 8(%esp),%ecx
	cmpl %ecx,%ebx
	je Ljoin_l129
Ljoin_l130:
	jmp Ljoin_l166
Ljoin_l166:
	movl %eax,48(%esp)
	movl %edx,56(%esp)
	movl %ecx,%ebx
	movl 4(%esp),%edi
	jmp _i_48
Ljoin_l129:
	jmp _i_53
_i_53:
	leal -8(%esp), %esp
	movl $8,%ebx
	movl $4,%edi
	movl %edx,%ecx
	addl %edi,%ecx
	movl (%ecx),%edi
	addl %ebx,%edi
	movl %eax,56(%esp)
	movl %edi,%eax
	movl $-68,%edi
	leal 68(%esp), %ebx
	addl %edi,%ebx
	movl 12(%esp),%edi
	movl %edi,(%ebx)
	movl $-64,%ebx
	leal 68(%esp), %ecx
	addl %ebx,%ecx
	movl 16(%esp),%ebx
	movl %ebx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	movl %edx,64(%esp)
	call *%ecx
Ljoin_l128:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l124
Ljoin_l125:
	jmp _i_48
_i_48:
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,%edx
	movl 48(%esp),%eax
	jmp _i_50
Ljoin_l124:
	jmp _i_55
_i_55:
	movl $8,%eax
	movl 56(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $12,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	movl 32(%esp),%edi
	leal 72(%esp), %esp
	ret
Ljoin_l133:
	jmp _i_44
_i_44:
	movl $1,%edx
	movl %ebx,%ecx
	addl %edx,%ecx
	movsbl (%ebx),%edx
	movl $33,%ebx
	imull %eax,%ebx
	addl %edx,%ebx
	movl %ebx,%eax
	movl %ecx,%ebx
	movl %edi,%ecx
	movl 32(%esp),%edi
	movl 4(%esp),%edx
	jmp _i_45
.section .pcmap_data
Lstackdata_l169:
.long 0
.section .pcmap
.long Ljoin_l157
.long Lframe_l170
.section .pcmap_data
Lframe_l170:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l169
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffc4
.long 0xffffffc8
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l152
.long Lframe_l171
.section .pcmap_data
Lframe_l171:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l169
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffc4
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
.long 0x80000000
.section .pcmap
.long Ljoin_l149
.long Lframe_l172
.section .pcmap_data
Lframe_l172:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l169
.long 0x80000008
.long 0x80000018
.long 0x80000000
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
.long 0x80000000
.section .pcmap
.long Ljoin_l141
.long Lframe_l173
.section .pcmap_data
Lframe_l173:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l169
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
.long 0xffffffd0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l138
.long Lframe_l174
.section .pcmap_data
Lframe_l174:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l169
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
.long 0xffffffd0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l118
.long Lframe_l175
.section .pcmap_data
Lframe_l175:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l169
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long Ljoin_l115
.long Lframe_l176
.section .pcmap_data
Lframe_l176:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l169
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
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
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long Ljoin_l128
.long Lframe_l177
.section .pcmap_data
Lframe_l177:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l169
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffc4
.long 0x4000000b
.long 0x40000007
.long 0xffffffd0
.long 0
.long 0xfffffff4
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .text
_Perl_hv_fetch_ent:
	leal -60(%esp), %esp
	movl $4,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 60(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	movl %ecx,4(%esp)
	leal 60(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 60(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l180:
Lproc_body_start_l179:
	movl %edx,8(%esp)
	movl $0,%edx
	movl %eax,12(%esp)
	movl (%esp),%eax
	cmpl %edx,%eax
	jne Ljoin_l249
Ljoin_l250:
	movl $0,%eax
	movl $12,%edx
	movl %ecx,16(%esp)
	leal 60(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %esp
	ret
Ljoin_l249:
	jmp _i_60
_i_60:
	movl $32768,%edx
	movl $8,%eax
	movl %ebx,20(%esp)
	movl %ecx,16(%esp)
	movl (%esp),%ecx
	movl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	andl %edx,%eax
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l246
Ljoin_l247:
	leal -4(%esp), %esp
	movl %ecx,%eax
	movl $80,%edx
	movl $-64,%ebx
	leal 64(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	leal _Perl_mg_find,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l245:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l241
Ljoin_l242:
	leal _Perl_sv_newmortal,%ebx
	movl (%ebx),%eax
	call *%eax
Ljoin_l240:
	movl %eax,48(%esp)
	movl 4(%esp),%eax
	leal _Perl_newSVsv,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l237:
	leal _Perl_sv_2mortal,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l234:
	leal -12(%esp), %esp
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 60(%esp),%ecx
	movl %ecx,(%edx)
	movl $-68,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl 16(%esp),%edx
	movl %edx,(%ebx)
	movl $-2,%ebx
	movl $-64,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal _Perl_mg_copy,%ecx
	movl (%ecx),%ebx
	call *%ebx
Ljoin_l231:
	movl $4,%eax
	leal _PL_hv_fetch_ent_mh,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l227
Ljoin_l228:
	movl $12,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l226:
	movl $4,%ecx
	leal _PL_hv_fetch_ent_mh,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	jmp _i_66
Ljoin_l227:
	jmp _i_66
_i_66:
	movl $-2,%eax
	movl $4,%edx
	movl $4,%ecx
	leal _PL_hv_fetch_ent_mh,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $8,%eax
	movl $4,%ebx
	leal _PL_hv_fetch_ent_mh,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	leal _PL_hv_fetch_ent_mh,%edx
	addl %eax,%edx
	movl 48(%esp),%eax
	movl %eax,(%edx)
	leal _PL_hv_fetch_ent_mh,%eax
	movl (%eax),%edx
	movl %edx,%eax
	movl $12,%edx
	leal 60(%esp), %ebx
	addl %edx,%ebx
	movl 16(%esp),%edx
	movl %edx,(%ebx)
	movl 20(%esp),%ebx
	leal 72(%esp), %esp
	ret
Ljoin_l241:
	jmp _i_64
_i_64:
	movl (%esp),%ecx
	jmp _i_62
Ljoin_l246:
	jmp _i_62
_i_62:
	movl (%ecx),%eax
	movl (%eax),%edx
	movl $0,%ebx
	cmpl %ebx,%edx
	jne Ljoin_l221
Ljoin_l222:
	movl $0,%edx
	movl 8(%esp),%ebx
	cmpl %edx,%ebx
	je Ljoin_l219
Ljoin_l220:
	movl $16,%edx
	movl $1,%ebx
	movl $2,%ecx
	movl %ebp,24(%esp)
	movl $1,%ebp
	movl %esi,28(%esp)
	movl $8,%esi
	movl %edi,32(%esp)
	movl %eax,%edi
	addl %esi,%edi
	movl (%edi),%esi
	addl %ebp,%esi
	shll %cl, %esi
	movl %ebx,%ecx
	shll %cl, %esi
	subl %edx,%esi
	movl $1,%edx
	imull %esi,%edx
	movl %eax,36(%esp)
	movl %edx,%eax
	leal _Perl_safemalloc,%edx
	movl (%edx),%esi
	call *%esi
Ljoin_l218:
	movl 36(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $16,%edx
	movl $1,%esi
	movl $2,%ebx
	movl $1,%ebp
	movl $8,%edi
	movl %edx,48(%esp)
	movl %ecx,%edx
	addl %edi,%edx
	movl (%edx),%edi
	addl %ebp,%edi
	movl %ebx,%ecx
	shll %cl, %edi
	movl %esi,%ecx
	shll %cl, %edi
	movl 48(%esp),%ecx
	subl %ecx,%edi
	movl $1,%ecx
	imull %edi,%ecx
	movl $-64,%edi
	leal 68(%esp), %esi
	addl %edi,%esi
	movl %ecx,(%esi)
	movl $0,%ecx
	movl $-68,%esi
	leal 68(%esp), %edi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal _memset,%ecx
	movl (%ecx),%edi
	call *%edi
Ljoin_l215:
	jmp _i_76
_i_76:
	movl 32(%esp),%edi
	movl 28(%esp),%esi
	movl 24(%esp),%ebp
	movl (%esp),%ecx
	movl 36(%esp),%eax
	jmp _i_73
Ljoin_l219:
	jmp _i_75
_i_75:
	movl $0,%eax
	movl $12,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 72(%esp), %esp
	ret
Ljoin_l221:
	jmp _i_73
_i_73:
	movl $262144,%edx
	movl $8,%ebx
	movl %eax,36(%esp)
	movl 4(%esp),%eax
	movl %eax,%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	andl %edx,%ebx
	movl $0,%edx
	cmpl %edx,%ebx
	je Ljoin_l210
Ljoin_l211:
	movl %eax,%ecx
	movl $4,%edx
	movl (%ecx),%ebx
	addl %edx,%ebx
	movl $-4,%edx
	movl %edi,32(%esp)
	leal 60(%esp), %edi
	addl %edx,%edi
	movl (%ebx),%edx
	movl %edx,(%edi)
	movl (%ecx),%edx
	movl (%edx),%ecx
	jmp _i_79
Ljoin_l210:
	jmp _i_78
_i_78:
	leal -4(%esp), %esp
	movl $-4,%edx
	leal 64(%esp), %ebx
	addl %edx,%ebx
	movl $-64,%edx
	leal 64(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	leal _Perl_sv_2pv,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l209:
	movl %edi,32(%esp)
	movl %eax,%ecx
	movl 4(%esp),%eax
	jmp _i_79
_i_79:
	movl $0,%edx
	movl 12(%esp),%edi
	cmpl %edx,%edi
	jne Ljoin_l206
_i_82:
	movl %ecx,%edx
	movl $-4,%edi
	leal 60(%esp), %ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl (%edi),%ebx
	movl $0,%edi
	jmp _i_86
_i_86:
	movl %esi,28(%esp)
	movl $1,%esi
	movl %ebp,24(%esp)
	movl %ebx,%ebp
	subl %esi,%ebp
	movl $0,%esi
	cmpl %esi,%ebx
	jne Ljoin_l204
Ljoin_l205:
_i_83:
	movl %edi,12(%esp)
	movl 28(%esp),%esi
	movl 24(%esp),%ebp
	jmp _i_80
Ljoin_l204:
	jmp _i_85
_i_85:
	movl $1,%esi
	movl %edx,%ebx
	addl %esi,%ebx
	movsbl (%edx),%esi
	movl $33,%edx
	imull %edi,%edx
	addl %esi,%edx
	movl %edx,%edi
	movl %ebx,%edx
	movl %ebp,%ebx
	movl 28(%esp),%esi
	movl 24(%esp),%ebp
	jmp _i_86
Ljoin_l206:
	jmp _i_80
_i_80:
	movl 36(%esp),%ebx
	movl (%ebx),%edx
	movl $2,%ebx
	movl %esi,28(%esp)
	movl $8,%esi
	movl 36(%esp),%eax
	addl %esi,%eax
	movl (%eax),%esi
	movl %edi,%eax
	andl %esi,%eax
	movl %ecx,44(%esp)
	movl %ebx,%ecx
	shll %cl, %eax
	addl %edx,%eax
	movl (%eax),%edx
	jmp _i_91
_i_91:
	movl $0,%eax
	cmpl %eax,%edx
	jne Ljoin_l192
Ljoin_l193:
	movl $0,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	je Ljoin_l190
Ljoin_l191:
	movl $0,%eax
	leal _Perl_newSV,%esi
	movl (%esi),%ebx
	call *%ebx
Ljoin_l189:
	leal -12(%esp), %esp
	movl %eax,60(%esp)
	movl 12(%esp),%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $-68,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 60(%esp),%ecx
	movl %ecx,(%edx)
	movl $-64,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %edi,(%edx)
	leal _Perl_hv_store_ent,%edx
	movl (%edx),%edi
	call *%edi
Ljoin_l186:
	movl $12,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	movl 28(%esp),%esi
	movl 32(%esp),%edi
	leal 72(%esp), %esp
	ret
Ljoin_l190:
	jmp _i_98
_i_98:
	movl $0,%eax
	movl $12,%ecx
	leal 60(%esp), %ebx
	addl %ecx,%ebx
	movl 16(%esp),%ecx
	movl %ecx,(%ebx)
	movl 20(%esp),%ebx
	movl 28(%esp),%esi
	movl 32(%esp),%edi
	leal 72(%esp), %esp
	ret
Ljoin_l192:
	jmp _i_88
_i_88:
	movl $4,%esi
	movl %edx,%ebx
	addl %esi,%ebx
	movl (%ebx),%esi
	movl (%esi),%ebx
	cmpl %edi,%ebx
	je Ljoin_l202
Ljoin_l203:
	jmp Ljoin_l255
Ljoin_l255:
	movl %edx,52(%esp)
	jmp _i_89
Ljoin_l202:
	jmp _i_92
_i_92:
	movl $4,%ebx
	movl %edx,%esi
	addl %ebx,%esi
	movl (%esi),%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $-4,%ecx
	leal 60(%esp), %esi
	addl %ecx,%esi
	movl (%esi),%ecx
	movl (%ecx),%esi
	cmpl %esi,%ebx
	je Ljoin_l200
Ljoin_l201:
	jmp Ljoin_l254
Ljoin_l254:
	movl %edx,52(%esp)
	jmp _i_89
Ljoin_l200:
	jmp _i_94
_i_94:
	leal -8(%esp), %esp
	movl $8,%ebx
	movl $4,%esi
	movl %edx,%ecx
	addl %esi,%ecx
	movl (%ecx),%eax
	addl %ebx,%eax
	movl $-4,%ebx
	leal 68(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $-64,%ecx
	leal 68(%esp), %esi
	addl %ecx,%esi
	movl (%ebx),%ecx
	movl %ecx,(%esi)
	movl $-68,%ecx
	leal 68(%esp), %esi
	addl %ecx,%esi
	movl 52(%esp),%ecx
	movl %ecx,(%esi)
	leal _Perl_my_memcmp,%esi
	movl (%esi),%ebx
	movl %edx,60(%esp)
	call *%ebx
Ljoin_l199:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l195
Ljoin_l196:
	jmp _i_89
_i_89:
	movl 52(%esp),%eax
	movl (%eax),%eax
	movl %eax,%edx
	jmp _i_91
Ljoin_l195:
	jmp _i_96
_i_96:
	movl 52(%esp),%eax
	movl $12,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	movl 28(%esp),%esi
	movl 32(%esp),%edi
	leal 72(%esp), %esp
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
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffc4
.long 0xffffffc8
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l240
.long Lframe_l259
.section .pcmap_data
Lframe_l259:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffc4
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
.long 0x80000000
.section .pcmap
.long Ljoin_l237
.long Lframe_l260
.section .pcmap_data
Lframe_l260:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffc4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long Ljoin_l234
.long Lframe_l261
.section .pcmap_data
Lframe_l261:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffc4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long Ljoin_l231
.long Lframe_l262
.section .pcmap_data
Lframe_l262:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
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
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long Ljoin_l226
.long Lframe_l263
.section .pcmap_data
Lframe_l263:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
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
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long Ljoin_l218
.long Lframe_l264
.section .pcmap_data
Lframe_l264:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
.long 0xffffffd0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l215
.long Lframe_l265
.section .pcmap_data
Lframe_l265:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
.long 0xffffffd0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l209
.long Lframe_l266
.section .pcmap_data
Lframe_l266:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
.long 0xffffffd0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l189
.long Lframe_l267
.section .pcmap_data
Lframe_l267:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffc4
.long 0xffffffc8
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
.long 0x80000000
.section .pcmap
.long Ljoin_l186
.long Lframe_l268
.section .pcmap_data
Lframe_l268:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long Ljoin_l199
.long Lframe_l269
.section .pcmap_data
Lframe_l269:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long Lstackdata_l257
.long 0x80000008
.long 0x8000001e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
.long 0x4000000b
.long 0
.long 0xfffffff0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
_i_hv_magic_check:
	leal -16(%esp), %esp
	movl $4,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl %eax,(%esp)
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l272:
Lproc_body_start_l271:
	movl %edx,4(%esp)
	movl $20,%edx
	movl %ecx,8(%esp)
	movl (%esp),%ecx
	movl (%ecx),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $0,%ecx
	movl %eax,12(%esp)
	movl 4(%esp),%eax
	movl %ecx,(%eax)
	movl $1,%ecx
	movl 8(%esp),%eax
	movl %ecx,(%eax)
	jmp _i_102
_i_102:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l274
_i_100:
	movl $8,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 24(%esp), %esp
	ret
Ljoin_l274:
	jmp _i_101
_i_101:
	movl $12,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movsbl (%eax),%ecx
	movl $65,%eax
	cmpl %eax,%ecx
	jl Ljoin_l282
Ljoin_l283:
	movl $90,%eax
	cmpl %eax,%ecx
	jg Ljoin_l280
Ljoin_l281:
	movl $1,%eax
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
	movl $12,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movsbl (%ecx),%eax
	movl $80,%ecx
	cmpl %ecx,%eax
	je Ljoin_l278
Ljoin_l279:
	cmpl %ecx,%eax
	jl Ljoin_l277
_i_110:
	movl $83,%ecx
	cmpl %ecx,%eax
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
	movl $0,%eax
	movl 8(%esp),%ecx
	movl %eax,(%ecx)
	jmp _i_106
_i_106:
	jmp _i_104
Ljoin_l280:
	jmp _i_104
Ljoin_l282:
	jmp _i_104
_i_104:
	movl (%edx),%eax
	movl %eax,%edx
	movl 8(%esp),%eax
	jmp _i_102
.section .text
_Perl_hv_store:
	leal -68(%esp), %esp
	movl $4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 68(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	movl %ecx,4(%esp)
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $16,%ecx
	movl %edx,8(%esp)
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 68(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l293:
Lproc_body_start_l292:
	movl %eax,12(%esp)
	movl $0,%eax
	movl %ecx,16(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne Ljoin_l356
Ljoin_l357:
	movl $0,%eax
	movl $16,%ecx
	movl %edx,20(%esp)
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal 84(%esp), %esp
	ret
Ljoin_l356:
	jmp _i_112
_i_112:
	movl %ecx,%eax
	movl (%eax),%ecx
	movl %edx,20(%esp)
	movl $57344,%edx
	movl %ebx,24(%esp)
	movl $8,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	andl %edx,%ebx
	movl $0,%edx
	cmpl %edx,%ebx
	je Ljoin_l353
Ljoin_l354:
	leal -8(%esp), %esp
	movl 8(%esp),%eax
	movl $-8,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl $-76,%edx
	movl %ebp,36(%esp)
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl (%ebx),%edx
	movl %edx,(%ebp)
	movl $-4,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl $-72,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl (%ebp),%edx
	movl %edx,(%ebx)
	leal _i_hv_magic_check,%edx
	movl (%edx),%ebx
	movl %ecx,40(%esp)
	call *%ebx
Ljoin_l352:
	movl $-8,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Ljoin_l348
Ljoin_l349:
	leal -12(%esp), %esp
	movl 12(%esp),%eax
	movl $-80,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl $-76,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	movl 16(%esp),%edx
	movl %edx,(%ebx)
	movl $-72,%ebx
	leal 80(%esp), %ebp
	addl %ebx,%ebp
	movl 20(%esp),%ebx
	movl %ebx,(%ebp)
	leal _Perl_mg_copy,%ebp
	movl (%ebp),%ebp
	call *%ebp
Ljoin_l347:
	movl 32(%esp),%eax
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l343
Ljoin_l344:
	movl $-4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l341
Ljoin_l342:
	movl $0,%eax
	movl $16,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%ebx
	movl 28(%esp),%ebp
	leal 84(%esp), %esp
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
	movl 28(%esp),%ebp
	movl 32(%esp),%ecx
	jmp _i_114
Ljoin_l353:
	jmp _i_114
_i_114:
	movl $0,%edx
	movl 16(%esp),%eax
	cmpl %edx,%eax
	jne Ljoin_l339
_i_122:
	movl 4(%esp),%edx
	movl %edx,%eax
	movl 8(%esp),%ebx
	movl %ebx,%edx
	movl %ecx,32(%esp)
	movl $0,%ecx
	jmp _i_126
_i_126:
	movl %ebp,28(%esp)
	movl $1,%ebp
	movl %edx,%ebx
	subl %ebp,%ebx
	movl $0,%ebp
	cmpl %ebp,%edx
	jne Ljoin_l337
Ljoin_l338:
_i_123:
	movl %ecx,16(%esp)
	movl %ecx,%eax
	movl 28(%esp),%ebp
	movl 32(%esp),%ecx
	jmp _i_120
Ljoin_l337:
	jmp _i_125
_i_125:
	movl $1,%ebp
	movl %eax,%edx
	addl %ebp,%edx
	movsbl (%eax),%ebp
	movl $33,%eax
	imull %ecx,%eax
	addl %ebp,%eax
	movl %eax,%ecx
	movl %edx,%eax
	movl %ebx,%edx
	movl 28(%esp),%ebp
	movl 8(%esp),%ebx
	jmp _i_126
Ljoin_l339:
	jmp _i_120
_i_120:
	movl (%ecx),%edx
	movl $0,%ebx
	cmpl %ebx,%edx
	jne Ljoin_l335
Ljoin_l336:
	movl $16,%edx
	movl $1,%ebx
	movl %ebp,28(%esp)
	movl $2,%ebp
	movl %esi,36(%esp)
	movl $1,%esi
	movl %edi,40(%esp)
	movl $8,%edi
	movl %ecx,%eax
	addl %edi,%eax
	movl (%eax),%edi
	addl %esi,%edi
	movl %ecx,32(%esp)
	movl %ebp,%ecx
	shll %cl, %edi
	movl %ebx,%ecx
	shll %cl, %edi
	subl %edx,%edi
	movl $1,%edx
	imull %edi,%edx
	movl %edx,%eax
	leal _Perl_safemalloc,%edx
	movl (%edx),%edi
	call *%edi
Ljoin_l334:
	movl 32(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $16,%edx
	movl $1,%edi
	movl $2,%ebx
	movl $1,%ebp
	movl $8,%esi
	movl %edx,52(%esp)
	movl %ecx,%edx
	addl %esi,%edx
	movl (%edx),%esi
	addl %ebp,%esi
	movl %ebx,%ecx
	shll %cl, %esi
	movl %edi,%ecx
	shll %cl, %esi
	movl 52(%esp),%ecx
	subl %ecx,%esi
	movl $1,%ecx
	imull %esi,%ecx
	movl $-72,%esi
	leal 76(%esp), %edi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl $0,%ecx
	movl $-76,%edi
	leal 76(%esp), %esi
	addl %edi,%esi
	movl %ecx,(%esi)
	leal _memset,%ecx
	movl (%ecx),%esi
	call *%esi
Ljoin_l331:
	movl 40(%esp),%edi
	movl 36(%esp),%esi
	movl 28(%esp),%ebp
	movl 16(%esp),%eax
	movl 32(%esp),%ecx
	jmp _i_128
Ljoin_l335:
	jmp _i_128
_i_128:
	movl (%ecx),%edx
	movl $2,%ebx
	movl $8,%eax
	movl %esi,36(%esp)
	movl %ecx,%esi
	addl %eax,%esi
	movl (%esi),%eax
	movl %ecx,32(%esp)
	movl 16(%esp),%esi
	movl %esi,%ecx
	andl %eax,%ecx
	movl %ecx,48(%esp)
	movl %ebx,%ecx
	movl 48(%esp),%ebx
	shll %cl, %ebx
	addl %edx,%ebx
	movl $1,%edx
	movl (%ebx),%ecx
	jmp _i_133
_i_133:
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l314
Ljoin_l315:
	leal _i_new_he,%eax
	movl (%eax),%ecx
	movl %edx,52(%esp)
	call *%ecx
Ljoin_l313:
	movl $536870912,%ecx
	movl $8,%edx
	movl %edi,40(%esp)
	movl (%esp),%esi
	movl %esi,%edi
	addl %edx,%edi
	movl (%edi),%edx
	andl %ecx,%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	je Ljoin_l309
Ljoin_l310:
	leal -8(%esp), %esp
	movl %eax,64(%esp)
	movl 12(%esp),%eax
	movl $-76,%edi
	leal 76(%esp), %ecx
	addl %edi,%ecx
	movl 16(%esp),%edi
	movl %edi,(%ecx)
	movl $-72,%ecx
	leal 76(%esp), %edi
	addl %ecx,%edi
	movl 24(%esp),%ecx
	movl %ecx,(%edi)
	leal _Perl_share_hek,%ecx
	movl (%ecx),%edi
	call *%edi
Ljoin_l308:
	movl $4,%ecx
	movl 56(%esp),%edx
	movl %edx,%edi
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp _i_141
Ljoin_l309:
	jmp _i_140
_i_140:
	leal -8(%esp), %esp
	movl %eax,64(%esp)
	movl 12(%esp),%eax
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $-72,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal _i_save_hek,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l305:
	movl $4,%ecx
	movl 56(%esp),%edx
	movl %edx,%edi
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp _i_141
_i_141:
	movl $8,%eax
	movl %edx,%edi
	addl %eax,%edi
	movl 12(%esp),%eax
	movl %eax,(%edi)
	movl (%ebx),%eax
	movl %eax,(%edx)
	movl %edx,(%ebx)
	movl $12,%ebx
	movl 32(%esp),%eax
	movl %eax,%edi
	addl %ebx,%edi
	movl $1,%ebx
	movl (%edi),%ecx
	addl %ebx,%ecx
	movl %ecx,(%edi)
	movl $0,%ecx
	movl 52(%esp),%edi
	cmpl %ecx,%edi
	je Ljoin_l301
Ljoin_l302:
	movl $4,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl $1,%ecx
	movl (%edi),%ebx
	addl %ecx,%ebx
	movl %ebx,(%edi)
	movl $12,%ebx
	movl %eax,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	movl $8,%edi
	addl %edi,%eax
	movl (%eax),%edi
	cmpl %edi,%ebx
	jbe Ljoin_l299
Ljoin_l300:
	movl %esi,%eax
	leal _i_hsplit,%esi
	movl (%esi),%ebx
	call *%ebx
Ljoin_l298:
	movl 56(%esp),%edx
	jmp _i_144
Ljoin_l299:
	jmp _i_144
_i_144:
	jmp _i_142
Ljoin_l301:
	jmp _i_142
_i_142:
	movl $8,%eax
	addl %eax,%edx
	movl %edx,%eax
	movl $16,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%ebx
	movl 36(%esp),%esi
	movl 40(%esp),%edi
	leal 84(%esp), %esp
	ret
Ljoin_l314:
	jmp _i_130
_i_130:
	movl $4,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	cmpl %esi,%eax
	je Ljoin_l327
Ljoin_l328:
	jmp Ljoin_l362
Ljoin_l362:
	movl %edi,40(%esp)
	movl %ecx,56(%esp)
	movl 8(%esp),%edi
	jmp _i_131
Ljoin_l327:
	jmp _i_134
_i_134:
	movl $4,%eax
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl 8(%esp),%edx
	cmpl %edx,%eax
	je Ljoin_l325
Ljoin_l326:
	jmp Ljoin_l361
Ljoin_l361:
	movl %edi,40(%esp)
	movl %ecx,56(%esp)
	movl %edx,%edi
	jmp _i_131
Ljoin_l325:
	jmp _i_136
_i_136:
	leal -8(%esp), %esp
	movl $8,%eax
	movl $4,%edx
	movl %edi,48(%esp)
	movl %ecx,%edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %eax,%edx
	movl %edx,%eax
	movl $-76,%edx
	leal 76(%esp), %edi
	addl %edx,%edi
	movl 12(%esp),%edx
	movl %edx,(%edi)
	movl $-72,%edi
	leal 76(%esp), %edx
	addl %edi,%edx
	movl 16(%esp),%edi
	movl %edi,(%edx)
	leal _Perl_my_memcmp,%edx
	movl (%edx),%edx
	movl %ecx,64(%esp)
	call *%edx
Ljoin_l324:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l320
Ljoin_l321:
	jmp _i_131
_i_131:
	movl $0,%eax
	movl 56(%esp),%edx
	movl (%edx),%edx
	movl %edx,%ecx
	movl %eax,%edx
	movl 40(%esp),%edi
	jmp _i_133
Ljoin_l320:
	jmp _i_138
_i_138:
	movl $8,%eax
	movl 56(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_free,%edx
	movl (%edx),%edi
	call *%edi
Ljoin_l319:
	movl $8,%eax
	movl 56(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	addl %eax,%ecx
	movl %ecx,%eax
	movl $16,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%ebx
	movl 36(%esp),%esi
	movl 40(%esp),%edi
	leal 84(%esp), %esp
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
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long Lstackdata_l364
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l347
.long Lframe_l366
.section .pcmap_data
Lframe_l366:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long Lstackdata_l364
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffbc
.long 0xffffffc0
.long 0x40000007
.long 0xffffffc8
.long 0xffffffcc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l334
.long Lframe_l367
.section .pcmap_data
Lframe_l367:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long Lstackdata_l364
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l331
.long Lframe_l368
.section .pcmap_data
Lframe_l368:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long Lstackdata_l364
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l313
.long Lframe_l369
.section .pcmap_data
Lframe_l369:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long Lstackdata_l364
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0x4000000b
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffdc
.long 0xfffffff0
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
.long 0
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
.section .pcmap
.long Ljoin_l308
.long Lframe_l370
.section .pcmap_data
Lframe_l370:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long Lstackdata_l364
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0x4000000a
.long 0
.long 0
.long 0xffffffc8
.long 0
.long 0xffffffdc
.long 0xfffffff0
.long 0xfffffff4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l305
.long Lframe_l371
.section .pcmap_data
Lframe_l371:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long Lstackdata_l364
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0x4000000a
.long 0
.long 0
.long 0xffffffc8
.long 0
.long 0xffffffdc
.long 0xfffffff0
.long 0xfffffff4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l298
.long Lframe_l372
.section .pcmap_data
Lframe_l372:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long Lstackdata_l364
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long Ljoin_l324
.long Lframe_l373
.section .pcmap_data
Lframe_l373:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long Lstackdata_l364
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffbc
.long 0xffffffc0
.long 0x4000000b
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffdc
.long 0
.long 0xfffffff4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l319
.long Lframe_l374
.section .pcmap_data
Lframe_l374:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long Lstackdata_l364
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .text
_Perl_hv_store_ent:
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
	movl $12,%eax
	movl %ecx,4(%esp)
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 72(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l377:
Lproc_body_start_l376:
	movl %edx,8(%esp)
	movl $0,%edx
	movl %eax,12(%esp)
	movl (%esp),%eax
	cmpl %edx,%eax
	jne Ljoin_l462
Ljoin_l463:
	movl $0,%eax
	movl $12,%edx
	movl %ecx,16(%esp)
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 84(%esp), %esp
	ret
Ljoin_l462:
	jmp _i_147
_i_147:
	movl %eax,%edx
	movl (%edx),%eax
	movl %ecx,16(%esp)
	movl $57344,%ecx
	movl %ebx,20(%esp)
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	andl %ecx,%ebx
	movl $0,%ecx
	cmpl %ecx,%ebx
	je Ljoin_l459
Ljoin_l460:
	leal -8(%esp), %esp
	movl %eax,32(%esp)
	movl 8(%esp),%eax
	movl $-8,%ecx
	leal 80(%esp), %ebx
	addl %ecx,%ebx
	movl $-80,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $-4,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl $-76,%ecx
	leal 80(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ebx
	call *%ebx
Ljoin_l458:
	movl $-8,%eax
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Ljoin_l454
Ljoin_l455:
	leal _PL_tainted,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	leal _PL_tainting,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	je Ljoin_l452
Ljoin_l453:
	movl 4(%esp),%ecx
	movl %ecx,%edx
	movl $57344,%ebx
	movl $8,%ecx
	movl %ebp,28(%esp)
	movl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	andl %ebx,%ecx
	movl $0,%ebx
	cmpl %ebx,%ecx
	je Ljoin_l450
Ljoin_l451:
	movl %eax,32(%esp)
	movl %edx,%eax
	leal _Perl_sv_tainted,%edx
	movl (%edx),%ecx
	call *%ecx
Ljoin_l449:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l445
Ljoin_l446:
	movl $1,%eax
	jmp _i_157
Ljoin_l445:
	jmp _i_156
Ljoin_l450:
	jmp Ljoin_l467
Ljoin_l467:
	movl %eax,32(%esp)
	jmp _i_156
_i_156:
	movl $0,%eax
	jmp _i_157
_i_157:
	leal _PL_tainted,%ecx
	movl %eax,(%ecx)
	movl 28(%esp),%ebp
	movl 32(%esp),%eax
	jmp _i_153
Ljoin_l452:
	jmp _i_153
_i_153:
	movl %eax,32(%esp)
	movl 4(%esp),%eax
	leal _Perl_newSVsv,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l444:
	leal _Perl_sv_2mortal,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l441:
	leal -12(%esp), %esp
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl $-84,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl $-80,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	movl 16(%esp),%edx
	movl %edx,(%ebx)
	movl $-2,%ebx
	movl $-76,%edx
	leal 84(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal _Perl_mg_copy,%ecx
	movl (%ecx),%ebx
	call *%ebx
Ljoin_l438:
	movl $0,%eax
	movl 32(%esp),%ecx
	cmpl %eax,%ecx
	je Ljoin_l434
Ljoin_l435:
	movl $1,%eax
	leal _PL_tainted,%ecx
	movl %eax,(%ecx)
	jmp _i_158
Ljoin_l434:
	jmp _i_158
_i_158:
	movl 24(%esp),%eax
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l432
Ljoin_l433:
	movl $-4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l430
Ljoin_l431:
	movl $0,%eax
	movl $12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 84(%esp), %esp
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
	movl 24(%esp),%eax
	jmp _i_149
Ljoin_l459:
	jmp _i_149
_i_149:
	movl $262144,%ecx
	movl $8,%edx
	movl %eax,24(%esp)
	movl 4(%esp),%ebx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%eax),%edx
	andl %ecx,%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	je Ljoin_l427
Ljoin_l428:
	movl $4,%ecx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl $-12,%ecx
	leal 72(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl (%ebx),%eax
	movl (%eax),%eax
	jmp _i_164
Ljoin_l427:
	jmp _i_163
_i_163:
	leal -4(%esp), %esp
	movl %ebx,%eax
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl $-76,%ebx
	leal 76(%esp), %edx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	leal _Perl_sv_2pv,%edx
	movl (%edx),%ebx
	call *%ebx
Ljoin_l426:
	jmp _i_164
_i_164:
	movl $0,%ebx
	movl 12(%esp),%ecx
	cmpl %ebx,%ecx
	jne Ljoin_l423
_i_167:
	movl %eax,%ebx
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	movl $0,%ecx
	jmp _i_171
_i_171:
	movl %ebp,28(%esp)
	movl $1,%ebp
	movl %esi,36(%esp)
	movl %edx,%esi
	subl %ebp,%esi
	movl $0,%ebp
	cmpl %ebp,%edx
	jne Ljoin_l421
Ljoin_l422:
_i_168:
	movl %ecx,12(%esp)
	movl 36(%esp),%esi
	movl 28(%esp),%ebp
	jmp _i_165
Ljoin_l421:
	jmp _i_170
_i_170:
	movl $1,%ebp
	movl %ebx,%edx
	addl %ebp,%edx
	movsbl (%ebx),%ebp
	movl $33,%ebx
	imull %ecx,%ebx
	addl %ebp,%ebx
	movl %ebx,%ecx
	movl %edx,%ebx
	movl %esi,%edx
	movl 36(%esp),%esi
	movl 28(%esp),%ebp
	jmp _i_171
Ljoin_l423:
	jmp _i_165
_i_165:
	movl 24(%esp),%edx
	movl (%edx),%ebx
	movl $0,%edx
	cmpl %edx,%ebx
	jne Ljoin_l419
Ljoin_l420:
	movl $16,%edx
	movl $1,%ebx
	movl %ebp,28(%esp)
	movl $2,%ebp
	movl %edi,40(%esp)
	movl $1,%edi
	movl %eax,44(%esp)
	movl $8,%eax
	movl %esi,36(%esp)
	movl 24(%esp),%esi
	movl %esi,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %edi,%eax
	movl %ebp,%ecx
	shll %cl, %eax
	movl %ebx,%ecx
	shll %cl, %eax
	subl %edx,%eax
	movl $1,%edx
	imull %eax,%edx
	movl %edx,%eax
	leal _Perl_safemalloc,%edx
	movl (%edx),%ecx
	call *%ecx
Ljoin_l418:
	movl %eax,(%esi)
	leal -8(%esp), %esp
	movl (%esi),%eax
	movl $16,%ecx
	movl $1,%edx
	movl $2,%ebx
	movl $1,%ebp
	movl $8,%edi
	movl %ecx,56(%esp)
	movl %esi,%ecx
	addl %edi,%ecx
	movl (%ecx),%edi
	addl %ebp,%edi
	movl %ebx,%ecx
	shll %cl, %edi
	movl %edx,%ecx
	shll %cl, %edi
	movl 56(%esp),%ecx
	subl %ecx,%edi
	movl $1,%ecx
	imull %edi,%ecx
	movl $-76,%edi
	leal 80(%esp), %edx
	addl %edi,%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl $-80,%edx
	leal 80(%esp), %edi
	addl %edx,%edi
	movl %ecx,(%edi)
	leal _memset,%ecx
	movl (%ecx),%edi
	call *%edi
Ljoin_l415:
	movl 40(%esp),%edi
	movl 36(%esp),%esi
	movl 28(%esp),%ebp
	movl 12(%esp),%ecx
	movl 44(%esp),%eax
	jmp _i_173
Ljoin_l419:
	jmp _i_173
_i_173:
	movl 24(%esp),%edx
	movl (%edx),%ebx
	movl %eax,44(%esp)
	movl $2,%eax
	movl $8,%ecx
	movl %edi,40(%esp)
	movl %edx,%edi
	addl %ecx,%edi
	movl (%edi),%ecx
	movl 12(%esp),%edi
	movl %edi,%edx
	andl %ecx,%edx
	movl %eax,%ecx
	shll %cl, %edx
	addl %ebx,%edx
	movl $1,%ebx
	movl (%edx),%ecx
	jmp _i_178
_i_178:
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l398
Ljoin_l399:
	leal _i_new_he,%eax
	movl (%eax),%ecx
	movl %edx,52(%esp)
	call *%ecx
Ljoin_l397:
	movl $536870912,%ecx
	movl $8,%edx
	movl %ebp,28(%esp)
	movl (%esp),%edi
	movl %edi,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	andl %ecx,%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	je Ljoin_l393
Ljoin_l394:
	leal -8(%esp), %esp
	movl %eax,64(%esp)
	movl 52(%esp),%eax
	movl $-12,%ebp
	leal 80(%esp), %ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl $-80,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%ebp),%ecx
	movl %ecx,(%edx)
	movl $-76,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal _Perl_share_hek,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l392:
	movl $4,%ecx
	movl 56(%esp),%edx
	movl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp _i_186
Ljoin_l393:
	jmp _i_185
_i_185:
	leal -8(%esp), %esp
	movl %eax,64(%esp)
	movl 52(%esp),%eax
	movl $-12,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $-80,%edx
	leal 80(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	movl $-76,%edx
	leal 80(%esp), %ebp
	addl %edx,%ebp
	movl 20(%esp),%edx
	movl %edx,(%ebp)
	leal _i_save_hek,%edx
	movl (%edx),%ebp
	call *%ebp
Ljoin_l389:
	movl $4,%ecx
	movl 56(%esp),%edx
	movl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp _i_186
_i_186:
	movl $8,%eax
	movl %edx,%ebp
	addl %eax,%ebp
	movl 8(%esp),%eax
	movl %eax,(%ebp)
	movl 52(%esp),%eax
	movl (%eax),%ebp
	movl %ebp,(%edx)
	movl %edx,(%eax)
	movl $12,%eax
	movl 24(%esp),%ebp
	movl %ebp,%ecx
	addl %eax,%ecx
	movl $1,%eax
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl %ebp,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%ebx
	je Ljoin_l385
Ljoin_l386:
	movl $4,%ecx
	movl 24(%esp),%ebx
	movl %ebx,%ebp
	addl %ecx,%ebp
	movl $1,%ecx
	movl (%ebp),%eax
	addl %ecx,%eax
	movl %eax,(%ebp)
	movl $12,%eax
	movl %ebx,%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $8,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	cmpl %ebp,%eax
	jbe Ljoin_l383
Ljoin_l384:
	movl %edi,%eax
	leal _i_hsplit,%edi
	movl (%edi),%ebp
	call *%ebp
Ljoin_l382:
	movl 56(%esp),%edx
	jmp _i_189
Ljoin_l383:
	jmp _i_189
_i_189:
	jmp _i_187
Ljoin_l385:
	jmp _i_187
_i_187:
	movl %edx,%eax
	movl $12,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	movl 28(%esp),%ebp
	movl 40(%esp),%edi
	leal 84(%esp), %esp
	ret
Ljoin_l398:
	jmp _i_175
_i_175:
	movl $4,%ebx
	movl %ecx,%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	movl (%ebx),%eax
	cmpl %edi,%eax
	je Ljoin_l411
Ljoin_l412:
	jmp Ljoin_l469
Ljoin_l469:
	movl %esi,36(%esp)
	movl %edx,52(%esp)
	movl %ecx,56(%esp)
	movl 44(%esp),%ebx
	jmp _i_176
Ljoin_l411:
	jmp _i_179
_i_179:
	movl $4,%eax
	movl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $-12,%ebx
	leal 72(%esp), %edi
	addl %ebx,%edi
	movl (%edi),%ebx
	movl (%ebx),%edi
	cmpl %edi,%eax
	je Ljoin_l409
Ljoin_l410:
	jmp Ljoin_l468
Ljoin_l468:
	movl %esi,36(%esp)
	movl %edx,52(%esp)
	movl %ecx,56(%esp)
	movl 44(%esp),%ebx
	jmp _i_176
Ljoin_l409:
	jmp _i_181
_i_181:
	leal -8(%esp), %esp
	movl $8,%eax
	movl $4,%edi
	movl %ecx,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	addl %eax,%edi
	movl %edi,%eax
	movl $-12,%edi
	leal 80(%esp), %ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl $-76,%ebx
	movl %esi,44(%esp)
	leal 80(%esp), %esi
	addl %ebx,%esi
	movl (%edi),%ebx
	movl %ebx,(%esi)
	movl $-80,%ebx
	leal 80(%esp), %esi
	addl %ebx,%esi
	movl 52(%esp),%ebx
	movl %ebx,(%esi)
	leal _Perl_my_memcmp,%esi
	movl (%esi),%edi
	movl %edx,60(%esp)
	movl %ecx,64(%esp)
	call *%edi
Ljoin_l408:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l404
Ljoin_l405:
	jmp _i_176
_i_176:
	movl $0,%eax
	movl 56(%esp),%edi
	movl (%edi),%edi
	movl %eax,%ebx
	movl %edi,%ecx
	movl 36(%esp),%esi
	movl 12(%esp),%edi
	movl 52(%esp),%edx
	jmp _i_178
Ljoin_l404:
	jmp _i_183
_i_183:
	movl $8,%eax
	movl 56(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_free,%edx
	movl (%edx),%edi
	call *%edi
Ljoin_l403:
	movl $8,%eax
	movl 56(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,%eax
	movl $12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	movl 36(%esp),%esi
	movl 40(%esp),%edi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l471:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long Ljoin_l458
.long Lframe_l472
.section .pcmap_data
Lframe_l472:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb8
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
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
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l449
.long Lframe_l473
.section .pcmap_data
Lframe_l473:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb8
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffd0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l444
.long Lframe_l474
.section .pcmap_data
Lframe_l474:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb8
.long 0
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffd0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l441
.long Lframe_l475
.section .pcmap_data
Lframe_l475:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb8
.long 0
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffd0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l438
.long Lframe_l476
.section .pcmap_data
Lframe_l476:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb8
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffd0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l426
.long Lframe_l477
.section .pcmap_data
Lframe_l477:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb8
.long 0
.long 0xffffffc0
.long 0xffffffc4
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
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l418
.long Lframe_l478
.section .pcmap_data
Lframe_l478:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffb8
.long 0
.long 0xffffffc0
.long 0xffffffc4
.long 0x4000000a
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
.long 0x80000000
.section .pcmap
.long Ljoin_l415
.long Lframe_l479
.section .pcmap_data
Lframe_l479:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffb8
.long 0
.long 0xffffffc0
.long 0xffffffc4
.long 0x4000000a
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
.long 0x80000000
.section .pcmap
.long Ljoin_l397
.long Lframe_l480
.section .pcmap_data
Lframe_l480:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffb8
.long 0
.long 0xffffffc0
.long 0x4000000b
.long 0xffffffd0
.long 0xffffffe4
.long 0x40000007
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
.long 0x80000000
.section .pcmap
.long Ljoin_l392
.long Lframe_l481
.section .pcmap_data
Lframe_l481:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe0
.long 0x4000000b
.long 0
.long 0xffffffc0
.long 0
.long 0xffffffd0
.long 0
.long 0x40000007
.long 0xfffffff0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l389
.long Lframe_l482
.section .pcmap_data
Lframe_l482:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe0
.long 0x4000000b
.long 0
.long 0xffffffc0
.long 0
.long 0xffffffd0
.long 0
.long 0x40000007
.long 0xfffffff0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l382
.long Lframe_l483
.section .pcmap_data
Lframe_l483:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long Ljoin_l408
.long Lframe_l484
.section .pcmap_data
Lframe_l484:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffb8
.long 0
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffd0
.long 0x40000007
.long 0
.long 0xfffffff0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l403
.long Lframe_l485
.section .pcmap_data
Lframe_l485:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l471
.long 0x80000008
.long 0x80000024
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0xffffffc0
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
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .text
_Perl_hv_delete:
	leal -68(%esp), %esp
	movl $4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 68(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	movl %ecx,4(%esp)
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 68(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l488:
Lproc_body_start_l487:
	movl %edx,8(%esp)
	movl $0,%edx
	movl %eax,12(%esp)
	movl (%esp),%eax
	cmpl %edx,%eax
	jne Ljoin_l550
Ljoin_l551:
	movl $0,%eax
	movl $12,%edx
	movl %ecx,16(%esp)
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 80(%esp), %esp
	ret
Ljoin_l550:
	jmp _i_192
_i_192:
	movl $32768,%edx
	movl $8,%eax
	movl %ebx,20(%esp)
	movl %ecx,16(%esp)
	movl (%esp),%ecx
	movl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	andl %edx,%eax
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l547
Ljoin_l548:
	leal -8(%esp), %esp
	movl %ecx,%eax
	movl $-8,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl $-76,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl $-4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl $-72,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ebx
	call *%ebx
Ljoin_l546:
	movl $-8,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Ljoin_l542
Ljoin_l543:
	leal -12(%esp), %esp
	movl 12(%esp),%eax
	movl $-80,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $-76,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	movl 20(%esp),%edx
	movl %edx,(%ebx)
	movl $1,%ebx
	movl $-72,%edx
	leal 80(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal _Perl_hv_fetch,%ecx
	movl (%ecx),%ebx
	call *%ebx
Ljoin_l541:
	movl %eax,%ecx
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l537
Ljoin_l538:
	movl (%ecx),%eax
	movl %eax,24(%esp)
	leal _Perl_mg_clear,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l536:
	movl $-4,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l532
Ljoin_l533:
	leal -4(%esp), %esp
	movl 28(%esp),%eax
	movl $112,%ebx
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	leal _Perl_mg_find,%edx
	movl (%edx),%ebx
	call *%ebx
Ljoin_l531:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l527
Ljoin_l528:
	leal -4(%esp), %esp
	movl 28(%esp),%eax
	movl $112,%ebx
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	leal _Perl_sv_unmagic,%edx
	movl (%edx),%ebx
	call *%ebx
Ljoin_l526:
	movl 24(%esp),%eax
	movl $12,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 80(%esp), %esp
	ret
Ljoin_l527:
	jmp _i_200
_i_200:
	movl $0,%eax
	movl $12,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 80(%esp), %esp
	ret
Ljoin_l532:
	jmp _i_198
_i_198:
	jmp _i_196
Ljoin_l537:
	jmp _i_196
Ljoin_l542:
	jmp _i_196
_i_196:
	movl (%esp),%ecx
	jmp _i_194
Ljoin_l547:
	jmp _i_194
_i_194:
	movl (%ecx),%eax
	movl (%eax),%edx
	movl $0,%ebx
	cmpl %ebx,%edx
	jne Ljoin_l520
Ljoin_l521:
	movl $0,%eax
	movl $12,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 80(%esp), %esp
	ret
Ljoin_l520:
	jmp _i_202
_i_202:
_i_204:
	movl 4(%esp),%edx
	movl %edx,%ebx
	movl 8(%esp),%edx
	movl %edx,%ecx
	movl $0,%edx
	jmp _i_208
_i_208:
	movl %ebp,28(%esp)
	movl $1,%ebp
	movl %esi,32(%esp)
	movl %ecx,%esi
	subl %ebp,%esi
	movl $0,%ebp
	cmpl %ebp,%ecx
	jne Ljoin_l517
Ljoin_l518:
_i_205:
	movl (%eax),%ecx
	movl $2,%ebp
	movl $8,%ebx
	movl %eax,%esi
	addl %ebx,%esi
	movl (%esi),%ebx
	movl %edx,%esi
	andl %ebx,%esi
	movl %ecx,36(%esp)
	movl %ebp,%ecx
	shll %cl, %esi
	movl 36(%esp),%ecx
	addl %ecx,%esi
	movl (%esi),%ecx
	movl $1,%ebp
	jmp _i_213
_i_213:
	movl $0,%ebx
	cmpl %ebx,%ecx
	jne Ljoin_l491
Ljoin_l492:
	movl $0,%ebx
	movl %ebx,%eax
	movl $12,%ebx
	leal 68(%esp), %edx
	addl %ebx,%edx
	movl 16(%esp),%ebx
	movl %ebx,(%edx)
	movl 20(%esp),%ebx
	movl 28(%esp),%ebp
	movl 32(%esp),%esi
	leal 80(%esp), %esp
	ret
Ljoin_l491:
	jmp _i_210
_i_210:
	movl $4,%ebx
	movl %edi,40(%esp)
	movl %ecx,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	movl (%ebx),%edi
	cmpl %edx,%edi
	je Ljoin_l515
Ljoin_l516:
	jmp Ljoin_l556
Ljoin_l556:
	movl %eax,48(%esp)
	movl %edx,56(%esp)
	movl %ecx,52(%esp)
	movl 4(%esp),%ebx
	movl 8(%esp),%edi
	jmp _i_211
Ljoin_l515:
	jmp _i_214
_i_214:
	movl $4,%edi
	movl %ecx,%ebx
	addl %edi,%ebx
	movl (%ebx),%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl 8(%esp),%ebx
	cmpl %ebx,%edi
	je Ljoin_l513
Ljoin_l514:
	jmp Ljoin_l555
Ljoin_l555:
	movl %eax,48(%esp)
	movl %edx,56(%esp)
	movl %ecx,52(%esp)
	movl %ebx,%edi
	movl 4(%esp),%ebx
	jmp _i_211
Ljoin_l513:
	jmp _i_216
_i_216:
	leal -8(%esp), %esp
	movl $8,%edi
	movl $4,%ebx
	movl %esi,52(%esp)
	movl %ecx,%esi
	addl %ebx,%esi
	movl (%esi),%ebx
	addl %edi,%ebx
	movl %eax,56(%esp)
	movl %ebx,%eax
	movl $-76,%ebx
	leal 76(%esp), %edi
	addl %ebx,%edi
	movl 12(%esp),%ebx
	movl %ebx,(%edi)
	movl $-72,%edi
	leal 76(%esp), %esi
	addl %edi,%esi
	movl 16(%esp),%edi
	movl %edi,(%esi)
	leal _Perl_my_memcmp,%esi
	movl (%esi),%esi
	movl %edx,64(%esp)
	movl %ecx,60(%esp)
	call *%esi
Ljoin_l512:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l508
Ljoin_l509:
	jmp _i_211
_i_211:
	movl $0,%eax
	movl 52(%esp),%edx
	movl (%edx),%esi
	movl %esi,%ecx
	movl %edx,%esi
	movl %eax,%ebp
	movl 40(%esp),%edi
	movl 48(%esp),%eax
	movl 56(%esp),%edx
	jmp _i_213
Ljoin_l508:
	jmp _i_218
_i_218:
	movl 52(%esp),%eax
	movl (%eax),%ecx
	movl 44(%esp),%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	cmpl %ecx,%ebp
	je Ljoin_l506
Ljoin_l507:
	movl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l504
Ljoin_l505:
	movl $4,%ecx
	movl 48(%esp),%edx
	movl %edx,%ebp
	addl %ecx,%ebp
	movl $1,%ecx
	movl (%ebp),%esi
	subl %ecx,%esi
	movl %esi,(%ebp)
	jmp _i_220
Ljoin_l504:
	jmp _i_220
Ljoin_l506:
	jmp _i_220
_i_220:
	movl $2,%ebp
	movl 12(%esp),%esi
	andl %ebp,%esi
	movl $0,%ebp
	cmpl %ebp,%esi
	je Ljoin_l502
Ljoin_l503:
	movl $0,%ecx
	jmp _i_223
Ljoin_l502:
	jmp _i_222
_i_222:
	movl $8,%ebp
	movl %eax,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	movl %ebp,%eax
	leal _Perl_sv_mortalcopy,%ebp
	movl (%ebp),%esi
	call *%esi
Ljoin_l501:
	movl %eax,%ecx
	movl 52(%esp),%eax
	jmp _i_223
_i_223:
	movl $32,%edx
	movl 48(%esp),%esi
	movl %esi,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	cmpl %edx,%eax
	jne Ljoin_l497
Ljoin_l498:
	movl $8,%eax
	movl (%esp),%edx
	addl %eax,%edx
	movl $1073741824,%eax
	movl (%edx),%ebp
	orl %eax,%ebp
	movl %ebp,(%edx)
	jmp _i_225
Ljoin_l497:
	jmp _i_224
_i_224:
	leal -4(%esp), %esp
	movl 4(%esp),%eax
	movl $-72,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	movl 56(%esp),%edx
	movl %edx,(%ebp)
	leal _Perl_hv_free_ent,%edx
	movl (%edx),%ebp
	movl %ecx,28(%esp)
	call *%ebp
Ljoin_l496:
	movl 24(%esp),%ecx
	jmp _i_225
_i_225:
	movl $12,%edx
	addl %edx,%esi
	movl $1,%edx
	movl (%esi),%ebp
	subl %edx,%ebp
	movl %ebp,(%esi)
	movl %ecx,%eax
	movl $12,%ecx
	leal 68(%esp), %ebp
	addl %ecx,%ebp
	movl 16(%esp),%ecx
	movl %ecx,(%ebp)
	movl 20(%esp),%ebx
	movl 28(%esp),%ebp
	movl 32(%esp),%esi
	movl 40(%esp),%edi
	leal 80(%esp), %esp
	ret
Ljoin_l517:
	jmp _i_207
_i_207:
	movl $1,%ebp
	movl %ebx,%ecx
	addl %ebp,%ecx
	movsbl (%ebx),%ebp
	movl $33,%ebx
	imull %edx,%ebx
	addl %ebp,%ebx
	movl %ebx,%edx
	movl %ecx,%ebx
	movl %esi,%ecx
	movl 32(%esp),%esi
	movl 28(%esp),%ebp
	jmp _i_208
.section .pcmap_data
Lstackdata_l558:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long Ljoin_l546
.long Lframe_l559
.section .pcmap_data
Lframe_l559:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long Lstackdata_l558
.long 0x80000008
.long 0x80000019
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
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
.long 0x80000000
.section .pcmap
.long Ljoin_l541
.long Lframe_l560
.section .pcmap_data
Lframe_l560:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long Lstackdata_l558
.long 0x80000008
.long 0x80000019
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
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
.long 0x80000000
.section .pcmap
.long Ljoin_l536
.long Lframe_l561
.section .pcmap_data
Lframe_l561:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long Lstackdata_l558
.long 0x80000008
.long 0x80000019
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
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
.long 0x80000000
.section .pcmap
.long Ljoin_l531
.long Lframe_l562
.section .pcmap_data
Lframe_l562:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long Lstackdata_l558
.long 0x80000008
.long 0x80000019
.long 0x80000000
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
.long 0x80000000
.section .pcmap
.long Ljoin_l526
.long Lframe_l563
.section .pcmap_data
Lframe_l563:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long Lstackdata_l558
.long 0x80000008
.long 0x80000019
.long 0x80000000
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
.long 0x80000000
.section .pcmap
.long Ljoin_l512
.long Lframe_l564
.section .pcmap_data
Lframe_l564:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long Lstackdata_l558
.long 0x80000008
.long 0x80000019
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffbc
.long 0x40000007
.long 0x4000000b
.long 0xffffffc8
.long 0xffffffec
.long 0x40000009
.long 0xfffffff4
.long 0xfffffff0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l501
.long Lframe_l565
.section .pcmap_data
Lframe_l565:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long Lstackdata_l558
.long 0x80000008
.long 0x80000019
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffbc
.long 0
.long 0
.long 0
.long 0xffffffec
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
.long 0x80000000
.section .pcmap
.long Ljoin_l496
.long Lframe_l566
.section .pcmap_data
Lframe_l566:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long Lstackdata_l558
.long 0x80000008
.long 0x80000019
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
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
.long 0x80000000
.section .text
_Perl_hv_delete_ent:
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
	movl $12,%eax
	movl %ecx,4(%esp)
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 72(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l569:
Lproc_body_start_l568:
	movl %edx,8(%esp)
	movl $0,%edx
	movl %eax,12(%esp)
	movl (%esp),%eax
	cmpl %edx,%eax
	jne Ljoin_l637
Ljoin_l638:
	movl $0,%eax
	movl $12,%edx
	movl %ecx,16(%esp)
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 84(%esp), %esp
	ret
Ljoin_l637:
	jmp _i_227
_i_227:
	movl $32768,%edx
	movl $8,%eax
	movl %ebx,20(%esp)
	movl %ecx,16(%esp)
	movl (%esp),%ecx
	movl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	andl %edx,%eax
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l634
Ljoin_l635:
	leal -8(%esp), %esp
	movl %ecx,%eax
	movl $-8,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	movl $-80,%edx
	leal 80(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl $-4,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl $-76,%ecx
	leal 80(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ebx
	call *%ebx
Ljoin_l633:
	movl $-8,%eax
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Ljoin_l629
Ljoin_l630:
	leal -12(%esp), %esp
	movl 12(%esp),%eax
	movl $-84,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%edx
	movl $-80,%ebx
	leal 84(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $-76,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal _Perl_hv_fetch_ent,%edx
	movl (%edx),%ebx
	call *%ebx
Ljoin_l628:
	movl %eax,%ecx
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l624
Ljoin_l625:
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,24(%esp)
	leal _Perl_mg_clear,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l623:
	movl $-4,%eax
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l619
Ljoin_l620:
	leal -4(%esp), %esp
	movl 28(%esp),%eax
	movl $112,%ebx
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	leal _Perl_mg_find,%edx
	movl (%edx),%ebx
	call *%ebx
Ljoin_l618:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l614
Ljoin_l615:
	leal -4(%esp), %esp
	movl 28(%esp),%eax
	movl $112,%ebx
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	leal _Perl_sv_unmagic,%edx
	movl (%edx),%ebx
	call *%ebx
Ljoin_l613:
	movl 24(%esp),%eax
	movl $12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 84(%esp), %esp
	ret
Ljoin_l614:
	jmp _i_235
_i_235:
	movl $0,%eax
	movl $12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 84(%esp), %esp
	ret
Ljoin_l619:
	jmp _i_233
_i_233:
	jmp _i_231
Ljoin_l624:
	jmp _i_231
Ljoin_l629:
	jmp _i_231
_i_231:
	movl (%esp),%ecx
	jmp _i_229
Ljoin_l634:
	jmp _i_229
_i_229:
	movl (%ecx),%eax
	movl (%eax),%edx
	movl $0,%ebx
	cmpl %ebx,%edx
	jne Ljoin_l607
Ljoin_l608:
	movl $0,%eax
	movl $12,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	leal 84(%esp), %esp
	ret
Ljoin_l607:
	jmp _i_237
_i_237:
	movl $262144,%edx
	movl $8,%ebx
	movl %ebp,28(%esp)
	movl 4(%esp),%ecx
	movl %ecx,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	andl %edx,%ebx
	movl $0,%edx
	cmpl %edx,%ebx
	je Ljoin_l604
Ljoin_l605:
	movl $4,%edx
	movl (%ecx),%ebx
	addl %edx,%ebx
	movl $-12,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	movl (%ebx),%edx
	movl %edx,(%ebp)
	movl (%ecx),%edx
	movl (%edx),%ecx
	jmp _i_241
Ljoin_l604:
	jmp _i_240
_i_240:
	leal -4(%esp), %esp
	movl %eax,36(%esp)
	movl %ecx,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	leal _Perl_sv_2pv,%ecx
	movl (%ecx),%ebx
	call *%ebx
Ljoin_l603:
	movl %eax,%ecx
	movl 32(%esp),%eax
	jmp _i_241
_i_241:
	movl $0,%edx
	movl 12(%esp),%ebp
	cmpl %edx,%ebp
	jne Ljoin_l600
_i_244:
	movl %ecx,%edx
	movl $-12,%ebp
	leal 72(%esp), %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl (%ebp),%ebx
	movl $0,%ebp
	jmp _i_248
_i_248:
	movl %esi,36(%esp)
	movl $1,%esi
	movl %edi,40(%esp)
	movl %ebx,%edi
	subl %esi,%edi
	movl $0,%esi
	cmpl %esi,%ebx
	jne Ljoin_l598
Ljoin_l599:
_i_245:
	movl %ebp,12(%esp)
	movl 40(%esp),%edi
	movl 36(%esp),%esi
	jmp _i_242
Ljoin_l598:
	jmp _i_247
_i_247:
	movl $1,%esi
	movl %edx,%ebx
	addl %esi,%ebx
	movsbl (%edx),%esi
	movl $33,%edx
	imull %ebp,%edx
	addl %esi,%edx
	movl %edx,%ebp
	movl %ebx,%edx
	movl %edi,%ebx
	movl 40(%esp),%edi
	movl 36(%esp),%esi
	jmp _i_248
Ljoin_l600:
	jmp _i_242
_i_242:
	movl (%eax),%ebx
	movl $2,%edx
	movl %esi,36(%esp)
	movl $8,%esi
	movl %ecx,44(%esp)
	movl %eax,%ecx
	addl %esi,%ecx
	movl (%ecx),%esi
	movl %ebp,%ecx
	andl %esi,%ecx
	movl %ecx,48(%esp)
	movl %edx,%ecx
	movl 48(%esp),%edx
	shll %cl, %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $1,%ecx
	jmp _i_253
_i_253:
	movl $0,%esi
	cmpl %esi,%ebx
	jne Ljoin_l572
Ljoin_l573:
	movl $0,%esi
	movl %esi,%eax
	movl $12,%esi
	leal 72(%esp), %ebp
	addl %esi,%ebp
	movl 16(%esp),%esi
	movl %esi,(%ebp)
	movl 20(%esp),%ebx
	movl 28(%esp),%ebp
	movl 36(%esp),%esi
	leal 84(%esp), %esp
	ret
Ljoin_l572:
	jmp _i_250
_i_250:
	movl $4,%esi
	movl %edi,40(%esp)
	movl %ebx,%edi
	addl %esi,%edi
	movl (%edi),%esi
	movl (%esi),%edi
	cmpl %ebp,%edi
	je Ljoin_l596
Ljoin_l597:
	jmp Ljoin_l643
Ljoin_l643:
	movl %eax,32(%esp)
	movl 44(%esp),%ebp
	jmp _i_251
Ljoin_l596:
	jmp _i_254
_i_254:
	movl $4,%edi
	movl %ebx,%esi
	addl %edi,%esi
	movl (%esi),%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl $-12,%esi
	leal 72(%esp), %ebp
	addl %esi,%ebp
	movl (%ebp),%esi
	movl (%esi),%ebp
	cmpl %ebp,%edi
	je Ljoin_l594
Ljoin_l595:
	jmp Ljoin_l642
Ljoin_l642:
	movl %eax,32(%esp)
	movl 44(%esp),%ebp
	jmp _i_251
Ljoin_l594:
	jmp _i_256
_i_256:
	leal -8(%esp), %esp
	movl $8,%ebp
	movl $4,%edi
	movl %ebx,%esi
	addl %edi,%esi
	movl (%esi),%edi
	addl %ebp,%edi
	movl %eax,40(%esp)
	movl %edi,%eax
	movl $-12,%edi
	leal 80(%esp), %ebp
	addl %edi,%ebp
	movl (%ebp),%edi
	movl $-76,%ebp
	leal 80(%esp), %esi
	addl %ebp,%esi
	movl (%edi),%ebp
	movl %ebp,(%esi)
	movl $-80,%ebp
	leal 80(%esp), %esi
	addl %ebp,%esi
	movl 52(%esp),%ebp
	movl %ebp,(%esi)
	leal _Perl_my_memcmp,%esi
	movl (%esi),%edi
	movl %edx,64(%esp)
	movl %ecx,60(%esp)
	call *%edi
Ljoin_l593:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l589
Ljoin_l590:
	jmp _i_251
_i_251:
	movl $0,%esi
	movl (%ebx),%eax
	movl %ebx,%edx
	movl %eax,%ebx
	movl %esi,%ecx
	movl 40(%esp),%edi
	movl 12(%esp),%ebp
	movl 32(%esp),%eax
	jmp _i_253
Ljoin_l589:
	jmp _i_258
_i_258:
	movl (%ebx),%eax
	movl 56(%esp),%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl 52(%esp),%edx
	cmpl %eax,%edx
	je Ljoin_l587
Ljoin_l588:
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l585
Ljoin_l586:
	movl $4,%eax
	movl 32(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl $1,%eax
	movl (%edx),%edi
	subl %eax,%edi
	movl %edi,(%edx)
	jmp _i_260
Ljoin_l585:
	jmp _i_260
Ljoin_l587:
	jmp _i_260
_i_260:
	movl $2,%edx
	movl 8(%esp),%edi
	andl %edx,%edi
	movl $0,%edx
	cmpl %edx,%edi
	je Ljoin_l583
Ljoin_l584:
	movl $0,%eax
	jmp _i_263
Ljoin_l583:
	jmp _i_262
_i_262:
	movl $8,%edx
	movl %ebx,%edi
	addl %edx,%edi
	movl (%edi),%edx
	movl %edx,%eax
	leal _Perl_sv_mortalcopy,%edx
	movl (%edx),%edi
	call *%edi
Ljoin_l582:
	jmp _i_263
_i_263:
	movl $32,%ecx
	movl 32(%esp),%edx
	movl %edx,%edi
	addl %ecx,%edi
	movl (%edi),%ecx
	cmpl %ecx,%ebx
	jne Ljoin_l578
Ljoin_l579:
	movl $8,%ecx
	movl (%esp),%edi
	addl %ecx,%edi
	movl $1073741824,%ecx
	movl (%edi),%ebx
	orl %ecx,%ebx
	movl %ebx,(%edi)
	jmp _i_265
Ljoin_l578:
	jmp _i_264
_i_264:
	leal -4(%esp), %esp
	movl %eax,28(%esp)
	movl 4(%esp),%eax
	movl $-76,%ecx
	leal 76(%esp), %edi
	addl %ecx,%edi
	movl %ebx,(%edi)
	leal _Perl_hv_free_ent,%ebx
	movl (%ebx),%edi
	call *%edi
Ljoin_l577:
	movl 32(%esp),%edx
	movl 24(%esp),%eax
	jmp _i_265
_i_265:
	movl $12,%ebx
	addl %ebx,%edx
	movl $1,%ebx
	movl (%edx),%edi
	subl %ebx,%edi
	movl %edi,(%edx)
	movl $12,%edx
	leal 72(%esp), %edi
	addl %edx,%edi
	movl 16(%esp),%edx
	movl %edx,(%edi)
	movl 20(%esp),%ebx
	movl 28(%esp),%ebp
	movl 36(%esp),%esi
	movl 40(%esp),%edi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l645:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long Ljoin_l633
.long Lframe_l646
.section .pcmap_data
Lframe_l646:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l645
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb8
.long 0xffffffbc
.long 0xffffffc0
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
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l628
.long Lframe_l647
.section .pcmap_data
Lframe_l647:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l645
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb8
.long 0xffffffbc
.long 0xffffffc0
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
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l623
.long Lframe_l648
.section .pcmap_data
Lframe_l648:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l645
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb8
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
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
.long 0x80000000
.section .pcmap
.long Ljoin_l618
.long Lframe_l649
.section .pcmap_data
Lframe_l649:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l645
.long 0x80000008
.long 0x8000001b
.long 0x80000000
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
.long 0x80000000
.section .pcmap
.long Ljoin_l613
.long Lframe_l650
.section .pcmap_data
Lframe_l650:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l645
.long 0x80000008
.long 0x8000001b
.long 0x80000000
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
.long 0x80000000
.section .pcmap
.long Ljoin_l603
.long Lframe_l651
.section .pcmap_data
Lframe_l651:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l645
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb8
.long 0
.long 0xffffffc0
.long 0xffffffc4
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
.long 0x80000000
.section .pcmap
.long Ljoin_l593
.long Lframe_l652
.section .pcmap_data
Lframe_l652:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l645
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffb8
.long 0
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffd8
.long 0xffffffec
.long 0x40000009
.long 0x40000007
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
.long 0x80000000
.section .pcmap
.long Ljoin_l582
.long Lframe_l653
.section .pcmap_data
Lframe_l653:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l645
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffb8
.long 0
.long 0
.long 0
.long 0xffffffd8
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
.long 0
.long 0
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
.section .pcmap
.long Ljoin_l577
.long Lframe_l654
.section .pcmap_data
Lframe_l654:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long Lstackdata_l645
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd8
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
.long 0x80000000
.section .text
