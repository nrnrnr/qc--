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
.Linitialize_continuations_l36:
.Lproc_body_start_l35:
	leal _PL_he_root,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne .Ljoin_l42
.Ljoin_l43:
	leal _i_more_he,%ecx
	movl (%ecx),%ecx
	movl %eax,(%esp)
	call *%ecx
.Ljoin_l41:
	movl (%esp),%eax
	jmp _i_21
.Ljoin_l42:
	jmp _i_21
_i_21:
	leal _PL_he_root,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%edx
	movl %eax,(%esp)
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl %edx,%eax
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
.long .Ljoin_l41
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
.Linitialize_continuations_l52:
.Lproc_body_start_l51:
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
.Ljoin_l69:
	leal _PL_he_root,%ecx
	movl %eax,(%ecx)
	leal _PL_he_root,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $996,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	jmp _i_26
_i_26:
	cmpl %edx,%eax
	jb .Ljoin_l65
.Ljoin_l66:
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
.Ljoin_l65:
	jmp _i_25
_i_25:
	movl $12,%ecx
	movl %eax,4(%esp)
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
	movl $12,%eax
	addl %eax,%ecx
	movl %ecx,%eax
	jmp _i_26
.section .pcmap_data
.Lstackdata_l74:
.long 0
.section .pcmap
.long .Ljoin_l69
.long .Lframe_l75
.section .pcmap_data
.Lframe_l75:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffff8
.long .Lstackdata_l74
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
.Linitialize_continuations_l78:
.Lproc_body_start_l77:
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
.Ljoin_l86:
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
.Ljoin_l83:
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
.Lstackdata_l91:
.long 0
.section .pcmap
.long .Ljoin_l86
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffd8
.long .Lstackdata_l91
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
.long .Ljoin_l83
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffd8
.long .Lstackdata_l91
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
.Ljoin_l100:
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
.long .Ljoin_l100
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
	leal -168(%esp), %esp
	leal 168(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 168(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 168(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 168(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l109:
.Lproc_body_start_l108:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l161
.Ljoin_l162:
	movl $0,%eax
	leal 168(%esp), %ecx
	movl %ecx,156(%esp)
	movl $12,%ecx
	movl %ecx,160(%esp)
	movl 156(%esp),%ecx
	movl %edx,32(%esp)
	movl 160(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 180(%esp), %esp
	ret
.Ljoin_l161:
	jmp _i_31
_i_31:
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
	je .Ljoin_l158
.Ljoin_l159:
	leal -4(%esp), %esp
	movl 4(%esp),%ecx
	movl %ecx,%eax
	movl $80,%ecx
	movl %ecx,24(%esp)
	leal 172(%esp), %ecx
	movl %ecx,28(%esp)
	movl $-172,%ecx
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
.Ljoin_l157:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l153
.Ljoin_l154:
	leal _Perl_sv_newmortal,%eax
	movl (%eax),%eax
	call *%eax
.Ljoin_l152:
	leal -12(%esp), %esp
	movl %eax,120(%esp)
	movl 12(%esp),%eax
	leal 180(%esp), %ecx
	movl $-180,%edx
	addl %edx,%ecx
	movl 120(%esp),%edx
	movl %edx,(%ecx)
	leal 180(%esp), %ecx
	movl %ecx,160(%esp)
	movl $-176,%ecx
	movl %ecx,164(%esp)
	movl 160(%esp),%ecx
	movl 164(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 180(%esp), %ecx
	movl $-172,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_mg_copy,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l149:
	leal _PL_hv_fetch_sv,%eax
	movl (%eax),%eax
	movl 108(%esp),%ecx
	movl %ecx,(%eax)
	leal 168(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 180(%esp), %esp
	ret
.Ljoin_l153:
	jmp _i_35
_i_35:
	movl 32(%esp),%edx
	jmp _i_33
.Ljoin_l158:
	jmp _i_33
_i_33:
	movl (%esp),%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl %eax,36(%esp)
	movl $0,%eax
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l144
.Ljoin_l145:
	movl $0,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l142
.Ljoin_l143:
	movl $1,%eax
	movl %eax,44(%esp)
	movl $8,%eax
	movl %eax,48(%esp)
	movl 40(%esp),%eax
	movl 48(%esp),%ecx
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
	movl 44(%esp),%ecx
	imull %eax,%ecx
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	movl %edx,32(%esp)
	call *%ecx
.Ljoin_l141:
	movl 40(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $1,%edx
	movl $8,%ecx
	movl %ecx,60(%esp)
	movl 48(%esp),%ecx
	movl %edx,64(%esp)
	movl 60(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $2,%edx
	movl %ecx,68(%esp)
	movl %edx,%ecx
	movl 68(%esp),%edx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	movl 64(%esp),%ecx
	imull %edx,%ecx
	leal 176(%esp), %edx
	movl %ecx,72(%esp)
	movl $-172,%ecx
	addl %ecx,%edx
	movl 72(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 176(%esp), %edx
	movl %ecx,76(%esp)
	movl $-176,%ecx
	addl %ecx,%edx
	movl 76(%esp),%ecx
	movl %ecx,(%edx)
	leal _memset,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l138:
	jmp _i_40
_i_40:
	movl 32(%esp),%edx
	jmp _i_37
.Ljoin_l142:
	jmp _i_39
_i_39:
	movl $0,%eax
	leal 168(%esp), %ecx
	movl %ecx,140(%esp)
	movl $12,%ecx
	movl %ecx,144(%esp)
	movl 140(%esp),%ecx
	movl %edx,32(%esp)
	movl 144(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 180(%esp), %esp
	ret
.Ljoin_l144:
	jmp _i_37
_i_37:
_i_41:
	movl 12(%esp),%eax
	movl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,72(%esp)
	movl $0,%eax
	jmp _i_45
_i_45:
	movl %eax,76(%esp)
	movl 72(%esp),%eax
	movl %eax,80(%esp)
	movl $1,%eax
	movl %eax,84(%esp)
	movl 80(%esp),%eax
	movl %ecx,88(%esp)
	movl 84(%esp),%ecx
	subl %ecx,%eax
	movl $0,%ecx
	movl %eax,72(%esp)
	movl 80(%esp),%eax
	cmpl %ecx,%eax
	jne .Ljoin_l133
.Ljoin_l134:
	movl 76(%esp),%eax
_i_42:
	movl $8,%ecx
	movl %eax,92(%esp)
	movl 40(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,96(%esp)
	movl 92(%esp),%ecx
	movl %ecx,%eax
	movl 96(%esp),%ecx
	andl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp _i_50
_i_50:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l121
.Ljoin_l122:
	movl $0,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l119
.Ljoin_l120:
	movl $0,%eax
	leal _Perl_newSV,%ecx
	movl (%ecx),%ecx
	movl %edx,32(%esp)
	call *%ecx
.Ljoin_l118:
	leal -16(%esp), %esp
	movl %eax,124(%esp)
	movl 16(%esp),%eax
	leal 184(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 184(%esp), %ecx
	movl $-180,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 184(%esp), %ecx
	movl $-176,%edx
	addl %edx,%ecx
	movl 124(%esp),%edx
	movl %edx,(%ecx)
	leal 184(%esp), %ecx
	movl $-172,%edx
	addl %edx,%ecx
	movl 108(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_hv_store,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l115:
	leal 168(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 180(%esp), %esp
	ret
.Ljoin_l119:
	jmp _i_57
_i_57:
	movl $0,%eax
	leal 168(%esp), %ecx
	movl %ecx,100(%esp)
	movl $12,%ecx
	movl %ecx,104(%esp)
	movl 100(%esp),%ecx
	movl %edx,32(%esp)
	movl 104(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 180(%esp), %esp
	ret
.Ljoin_l121:
	jmp _i_47
_i_47:
	movl $4,%ecx
	movl %eax,112(%esp)
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 92(%esp),%ecx
	cmpl %ecx,%eax
	je .Ljoin_l131
.Ljoin_l132:
	jmp .Ljoin_l167
.Ljoin_l167:
	movl %edx,32(%esp)
	jmp _i_48
.Ljoin_l131:
	jmp _i_51
_i_51:
	movl $4,%eax
	movl %eax,116(%esp)
	movl 112(%esp),%eax
	movl 116(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 4(%esp),%ecx
	cmpl %ecx,%eax
	je .Ljoin_l129
.Ljoin_l130:
	jmp .Ljoin_l166
.Ljoin_l166:
	movl %edx,32(%esp)
	jmp _i_48
.Ljoin_l129:
	jmp _i_53
_i_53:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,128(%esp)
	movl 120(%esp),%eax
	movl 128(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 176(%esp), %ecx
	movl %ecx,132(%esp)
	movl $-176,%ecx
	movl %ecx,136(%esp)
	movl 132(%esp),%ecx
	movl %edx,40(%esp)
	movl 136(%esp),%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 176(%esp), %ecx
	movl %ecx,140(%esp)
	movl $-172,%ecx
	movl %ecx,144(%esp)
	movl 140(%esp),%ecx
	movl 144(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l128:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l124
.Ljoin_l125:
	jmp _i_48
_i_48:
	movl 112(%esp),%eax
	movl (%eax),%eax
	movl 32(%esp),%edx
	jmp _i_50
.Ljoin_l124:
	jmp _i_55
_i_55:
	movl $8,%eax
	movl 112(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	leal 168(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 180(%esp), %esp
	ret
.Ljoin_l133:
	jmp _i_44
_i_44:
	movl 88(%esp),%eax
	movl $1,%ecx
	movl %eax,164(%esp)
	addl %ecx,%eax
	movl $33,%ecx
	movl %eax,88(%esp)
	movl 76(%esp),%eax
	imull %eax,%ecx
	movl 164(%esp),%eax
	movsbl (%eax),%eax
	addl %eax,%ecx
	movl %ecx,%eax
	movl 88(%esp),%ecx
	jmp _i_45
.section .pcmap_data
.Lstackdata_l169:
.long 0
.section .pcmap
.long .Ljoin_l157
.long .Lframe_l170
.section .pcmap_data
.Lframe_l170:
.long 0x80000010
.long 0xffffff58
.long 0xffffff78
.long .Lstackdata_l169
.long 0
.long 24
.long 0
.long 1
.long 0xffffff58
.long 0xffffff64
.long 0xffffff5c
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
.section .pcmap
.long .Ljoin_l152
.long .Lframe_l171
.section .pcmap_data
.Lframe_l171:
.long 0x80000010
.long 0xffffff58
.long 0xffffff78
.long .Lstackdata_l169
.long 0
.long 24
.long 0
.long 1
.long 0xffffff58
.long 0xffffff64
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l149
.long .Lframe_l172
.section .pcmap_data
.Lframe_l172:
.long 0x80000010
.long 0xffffff58
.long 0xffffff78
.long .Lstackdata_l169
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
.section .pcmap
.long .Ljoin_l141
.long .Lframe_l173
.section .pcmap_data
.Lframe_l173:
.long 0x80000010
.long 0xffffff58
.long 0xffffff78
.long .Lstackdata_l169
.long 0
.long 24
.long 0
.long 1
.long 0xffffff58
.long 0xffffff64
.long 0xffffff5c
.long 0xffffff60
.long 0xffffff80
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l138
.long .Lframe_l174
.section .pcmap_data
.Lframe_l174:
.long 0x80000010
.long 0xffffff58
.long 0xffffff78
.long .Lstackdata_l169
.long 0
.long 24
.long 0
.long 1
.long 0xffffff58
.long 0xffffff64
.long 0xffffff5c
.long 0xffffff60
.long 0xffffff80
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l118
.long .Lframe_l175
.section .pcmap_data
.Lframe_l175:
.long 0x80000010
.long 0xffffff58
.long 0xffffff78
.long .Lstackdata_l169
.long 0
.long 24
.long 0
.long 1
.long 0xffffff58
.long 0xffffff64
.long 0xffffff5c
.long 0
.long 0
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
.section .pcmap
.long .Ljoin_l115
.long .Lframe_l176
.section .pcmap_data
.Lframe_l176:
.long 0x80000010
.long 0xffffff58
.long 0xffffff78
.long .Lstackdata_l169
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
.long .Ljoin_l128
.long .Lframe_l177
.section .pcmap_data
.Lframe_l177:
.long 0x80000010
.long 0xffffff58
.long 0xffffff78
.long .Lstackdata_l169
.long 0
.long 24
.long 0
.long 1
.long 0xffffff58
.long 0xffffff64
.long 0xffffff5c
.long 0xffffff60
.long 0
.long 0xffffffb4
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
.section .text
_Perl_hv_fetch_ent:
	leal -224(%esp), %esp
	leal 224(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 224(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 224(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 224(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l180:
.Lproc_body_start_l179:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l249
.Ljoin_l250:
	movl $0,%eax
	leal 224(%esp), %ecx
	movl %ecx,208(%esp)
	movl $12,%ecx
	movl %ecx,212(%esp)
	movl 208(%esp),%ecx
	movl %edx,32(%esp)
	movl 212(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 236(%esp), %esp
	ret
.Ljoin_l249:
	jmp _i_60
_i_60:
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
	je .Ljoin_l246
.Ljoin_l247:
	leal -4(%esp), %esp
	movl 4(%esp),%ecx
	movl %ecx,%eax
	movl $80,%ecx
	movl %ecx,24(%esp)
	leal 228(%esp), %ecx
	movl %ecx,28(%esp)
	movl $-228,%ecx
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
.Ljoin_l245:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l241
.Ljoin_l242:
	leal _Perl_sv_newmortal,%eax
	movl (%eax),%eax
	call *%eax
.Ljoin_l240:
	movl %eax,148(%esp)
	movl 12(%esp),%eax
	leal _Perl_newSVsv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l237:
	leal _Perl_sv_2mortal,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l234:
	leal -12(%esp), %esp
	movl %eax,24(%esp)
	movl 12(%esp),%eax
	leal 236(%esp), %ecx
	movl $-236,%edx
	addl %edx,%ecx
	movl 160(%esp),%edx
	movl %edx,(%ecx)
	leal 236(%esp), %ecx
	movl %ecx,200(%esp)
	movl $-232,%ecx
	movl %ecx,204(%esp)
	movl 200(%esp),%ecx
	movl 204(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $-2,%ecx
	movl %ecx,208(%esp)
	leal 236(%esp), %ecx
	movl %ecx,212(%esp)
	movl $-228,%ecx
	movl %ecx,216(%esp)
	movl 212(%esp),%ecx
	movl 216(%esp),%edx
	addl %edx,%ecx
	movl 208(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_mg_copy,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l231:
	leal _PL_hv_fetch_ent_mh,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l227
.Ljoin_l228:
	movl $12,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l226:
	leal _PL_hv_fetch_ent_mh,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp _i_66
.Ljoin_l227:
	jmp _i_66
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
	leal 224(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 236(%esp), %esp
	ret
.Ljoin_l241:
	jmp _i_64
_i_64:
	movl 32(%esp),%edx
	jmp _i_62
.Ljoin_l246:
	jmp _i_62
_i_62:
	movl (%esp),%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl %eax,36(%esp)
	movl $0,%eax
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l221
.Ljoin_l222:
	movl $0,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l219
.Ljoin_l220:
	movl $1,%eax
	movl %eax,44(%esp)
	movl $8,%eax
	movl %eax,48(%esp)
	movl 40(%esp),%eax
	movl 48(%esp),%ecx
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
	movl 44(%esp),%ecx
	imull %eax,%ecx
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	movl %edx,32(%esp)
	call *%ecx
.Ljoin_l218:
	movl 40(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $1,%edx
	movl $8,%ecx
	movl %ecx,60(%esp)
	movl 48(%esp),%ecx
	movl %edx,64(%esp)
	movl 60(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $2,%edx
	movl %ecx,68(%esp)
	movl %edx,%ecx
	movl 68(%esp),%edx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	movl 64(%esp),%ecx
	imull %edx,%ecx
	leal 232(%esp), %edx
	movl %ecx,72(%esp)
	movl $-228,%ecx
	addl %ecx,%edx
	movl 72(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 232(%esp), %edx
	movl %ecx,76(%esp)
	movl $-232,%ecx
	addl %ecx,%edx
	movl 76(%esp),%ecx
	movl %ecx,(%edx)
	leal _memset,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l215:
	jmp _i_76
_i_76:
	movl 32(%esp),%edx
	jmp _i_73
.Ljoin_l219:
	jmp _i_75
_i_75:
	movl $0,%eax
	leal 224(%esp), %ecx
	movl %ecx,180(%esp)
	movl $12,%ecx
	movl %ecx,184(%esp)
	movl 180(%esp),%ecx
	movl %edx,32(%esp)
	movl 184(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 236(%esp), %esp
	ret
.Ljoin_l221:
	jmp _i_73
_i_73:
	movl $8,%eax
	movl %eax,72(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 72(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $262144,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l210
.Ljoin_l211:
	movl 12(%esp),%eax
	movl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,88(%esp)
	movl $4,%eax
	movl %eax,92(%esp)
	movl 88(%esp),%eax
	movl %ecx,96(%esp)
	movl 92(%esp),%ecx
	addl %ecx,%eax
	leal 224(%esp), %ecx
	movl %eax,100(%esp)
	movl $-4,%eax
	addl %eax,%ecx
	movl 100(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl 96(%esp),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	jmp _i_79
.Ljoin_l210:
	jmp _i_78
_i_78:
	leal -4(%esp), %esp
	movl 16(%esp),%ecx
	movl %ecx,%eax
	leal 228(%esp), %ecx
	movl %ecx,80(%esp)
	movl $-4,%ecx
	movl %ecx,84(%esp)
	movl 80(%esp),%ecx
	movl %edx,36(%esp)
	movl 84(%esp),%edx
	addl %edx,%ecx
	leal 228(%esp), %edx
	movl %ecx,88(%esp)
	movl $-228,%ecx
	addl %ecx,%edx
	movl 88(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _Perl_sv_2pv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l209:
	movl 32(%esp),%edx
	jmp _i_79
_i_79:
	movl $0,%ecx
	movl %eax,104(%esp)
	movl 8(%esp),%eax
	cmpl %ecx,%eax
	jne .Ljoin_l206
_i_82:
	movl 104(%esp),%eax
	movl %eax,%ecx
	leal 224(%esp), %eax
	movl %eax,108(%esp)
	movl $-4,%eax
	movl %eax,112(%esp)
	movl 108(%esp),%eax
	movl %ecx,116(%esp)
	movl 112(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	jmp _i_86
_i_86:
	movl %eax,120(%esp)
	movl $1,%eax
	movl %eax,124(%esp)
	movl 120(%esp),%eax
	movl %ecx,128(%esp)
	movl 124(%esp),%ecx
	subl %ecx,%eax
	movl $0,%ecx
	movl %eax,132(%esp)
	movl 120(%esp),%eax
	cmpl %ecx,%eax
	jne .Ljoin_l204
.Ljoin_l205:
	movl 128(%esp),%eax
_i_83:
	movl %eax,8(%esp)
	jmp _i_80
.Ljoin_l204:
	jmp _i_85
_i_85:
	movl 116(%esp),%eax
	movl $1,%ecx
	movl %eax,216(%esp)
	addl %ecx,%eax
	movl $33,%ecx
	movl %eax,116(%esp)
	movl 128(%esp),%eax
	imull %eax,%ecx
	movl 216(%esp),%eax
	movsbl (%eax),%eax
	addl %eax,%ecx
	movl 132(%esp),%eax
	jmp _i_86
.Ljoin_l206:
	jmp _i_80
_i_80:
	movl $8,%ecx
	movl 40(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,136(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 136(%esp),%ecx
	andl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp _i_91
_i_91:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l192
.Ljoin_l193:
	movl $0,%eax
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l190
.Ljoin_l191:
	movl $0,%eax
	leal _Perl_newSV,%ecx
	movl (%ecx),%ecx
	movl %edx,32(%esp)
	call *%ecx
.Ljoin_l189:
	leal -12(%esp), %esp
	movl %eax,160(%esp)
	movl 12(%esp),%eax
	leal 236(%esp), %ecx
	movl $-236,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 236(%esp), %ecx
	movl $-232,%edx
	addl %edx,%ecx
	movl 160(%esp),%edx
	movl %edx,(%ecx)
	leal 236(%esp), %ecx
	movl $-228,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_hv_store_ent,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l186:
	leal 224(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 236(%esp), %esp
	ret
.Ljoin_l190:
	jmp _i_98
_i_98:
	movl $0,%eax
	leal 224(%esp), %ecx
	movl %ecx,140(%esp)
	movl $12,%ecx
	movl %ecx,144(%esp)
	movl 140(%esp),%ecx
	movl %edx,32(%esp)
	movl 144(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 236(%esp), %esp
	ret
.Ljoin_l192:
	jmp _i_88
_i_88:
	movl $4,%ecx
	movl %eax,152(%esp)
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 8(%esp),%ecx
	cmpl %ecx,%eax
	je .Ljoin_l202
.Ljoin_l203:
	jmp .Ljoin_l255
.Ljoin_l255:
	movl %edx,32(%esp)
	jmp _i_89
.Ljoin_l202:
	jmp _i_92
_i_92:
	movl $4,%eax
	movl %eax,156(%esp)
	movl 152(%esp),%eax
	movl 156(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	leal 224(%esp), %ecx
	movl %eax,160(%esp)
	movl $-4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl 160(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l200
.Ljoin_l201:
	jmp .Ljoin_l254
.Ljoin_l254:
	movl %edx,32(%esp)
	jmp _i_89
.Ljoin_l200:
	jmp _i_94
_i_94:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,172(%esp)
	movl 160(%esp),%ecx
	movl %ecx,%eax
	movl 172(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 232(%esp), %ecx
	movl %ecx,176(%esp)
	movl $-4,%ecx
	movl %ecx,180(%esp)
	movl 176(%esp),%ecx
	movl %edx,40(%esp)
	movl 180(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 232(%esp), %edx
	movl %ecx,184(%esp)
	movl $-228,%ecx
	addl %ecx,%edx
	movl 184(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 232(%esp), %ecx
	movl $-232,%edx
	addl %edx,%ecx
	movl 112(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l199:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l195
.Ljoin_l196:
	jmp _i_89
_i_89:
	movl 152(%esp),%eax
	movl (%eax),%eax
	movl 32(%esp),%edx
	jmp _i_91
.Ljoin_l195:
	jmp _i_96
_i_96:
	movl 152(%esp),%eax
	leal 224(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 236(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l257:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Ljoin_l245
.long .Lframe_l258
.section .pcmap_data
.Lframe_l258:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
.long 0
.long 30
.long 0
.long 1
.long 0xffffff20
.long 0xffffff2c
.long 0xffffff24
.long 0xffffff28
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l240
.long .Lframe_l259
.section .pcmap_data
.Lframe_l259:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
.long 0
.long 30
.long 0
.long 1
.long 0xffffff20
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
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l237
.long .Lframe_l260
.section .pcmap_data
.Lframe_l260:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
.long 0
.long 30
.long 0
.long 1
.long 0xffffff20
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long .Ljoin_l234
.long .Lframe_l261
.section .pcmap_data
.Lframe_l261:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
.long 0
.long 30
.long 0
.long 1
.long 0xffffff20
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long .Ljoin_l231
.long .Lframe_l262
.section .pcmap_data
.Lframe_l262:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
.long 0
.long 30
.long 0
.long 1
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long .Ljoin_l226
.long .Lframe_l263
.section .pcmap_data
.Lframe_l263:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
.long 0
.long 30
.long 0
.long 1
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long .Ljoin_l218
.long .Lframe_l264
.section .pcmap_data
.Lframe_l264:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
.long 0
.long 30
.long 0
.long 1
.long 0xffffff20
.long 0xffffff2c
.long 0xffffff24
.long 0xffffff28
.long 0xffffff48
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l215
.long .Lframe_l265
.section .pcmap_data
.Lframe_l265:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
.long 0
.long 30
.long 0
.long 1
.long 0xffffff20
.long 0xffffff2c
.long 0xffffff24
.long 0xffffff28
.long 0xffffff48
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l209
.long .Lframe_l266
.section .pcmap_data
.Lframe_l266:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
.long 0
.long 30
.long 0
.long 1
.long 0xffffff20
.long 0xffffff2c
.long 0xffffff24
.long 0xffffff28
.long 0xffffff48
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l189
.long .Lframe_l267
.section .pcmap_data
.Lframe_l267:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
.long 0
.long 30
.long 0
.long 1
.long 0xffffff20
.long 0xffffff2c
.long 0
.long 0xffffff28
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l186
.long .Lframe_l268
.section .pcmap_data
.Lframe_l268:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
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
.long .Ljoin_l199
.long .Lframe_l269
.section .pcmap_data
.Lframe_l269:
.long 0x80000010
.long 0xffffff20
.long 0xffffff40
.long .Lstackdata_l257
.long 0
.long 30
.long 0
.long 1
.long 0xffffff20
.long 0xffffff2c
.long 0xffffff24
.long 0xffffff28
.long 0
.long 0xffffff88
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
.Linitialize_continuations_l272:
.Lproc_body_start_l271:
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
	jmp _i_102
_i_102:
	movl $0,%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	jne .Ljoin_l274
_i_100:
	leal 28(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 36(%esp), %esp
	ret
.Ljoin_l274:
	jmp _i_101
_i_101:
	movl $12,%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
	movl $65,%ecx
	cmpl %ecx,%eax
	jl .Ljoin_l282
.Ljoin_l283:
	movl $90,%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l280
.Ljoin_l281:
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
	cmpl %ecx,%eax
	je .Ljoin_l278
.Ljoin_l279:
	cmpl %ecx,%eax
	jl .Ljoin_l277
_i_110:
	movl $83,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l275
.Ljoin_l276:
	jmp _i_106
.Ljoin_l275:
	jmp _i_109
.Ljoin_l277:
	jmp _i_106
.Ljoin_l278:
	jmp _i_109
_i_109:
	movl $0,%eax
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
	jmp _i_106
_i_106:
	jmp _i_104
.Ljoin_l280:
	jmp _i_104
.Ljoin_l282:
	jmp _i_104
_i_104:
	movl 20(%esp),%eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	movl 4(%esp),%eax
	jmp _i_102
.section .text
_Perl_hv_store:
	leal -224(%esp), %esp
	leal 224(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 224(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 224(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 224(%esp), %edx
	movl %eax,8(%esp)
	movl $16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 224(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l293:
.Lproc_body_start_l292:
	movl %eax,12(%esp)
	movl $0,%eax
	movl %ecx,16(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l356
.Ljoin_l357:
	movl $0,%eax
	leal 224(%esp), %ecx
	movl %ecx,204(%esp)
	movl $16,%ecx
	movl %ecx,208(%esp)
	movl 204(%esp),%ecx
	movl %edx,40(%esp)
	movl 208(%esp),%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %esp
	ret
.Ljoin_l356:
	jmp _i_112
_i_112:
	movl %ecx,%eax
	movl %eax,20(%esp)
	movl (%eax),%eax
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
	je .Ljoin_l353
.Ljoin_l354:
	leal -8(%esp), %esp
	movl 8(%esp),%ecx
	movl %ecx,%eax
	leal 232(%esp), %ecx
	movl %ecx,40(%esp)
	movl $-8,%ecx
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	movl %edx,48(%esp)
	movl 44(%esp),%edx
	addl %edx,%ecx
	leal 232(%esp), %edx
	movl %ecx,52(%esp)
	movl $-232,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 232(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	leal 232(%esp), %edx
	movl %ecx,56(%esp)
	movl $-228,%ecx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l352:
	leal 224(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l348
.Ljoin_l349:
	leal -12(%esp), %esp
	movl 12(%esp),%ecx
	movl %ecx,%eax
	leal 236(%esp), %edx
	movl $-236,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal 236(%esp), %edx
	movl $-232,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	leal 236(%esp), %edx
	movl $-228,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal _Perl_mg_copy,%edx
	movl (%edx),%edx
	call *%edx
.Ljoin_l347:
	movl 24(%esp),%eax
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne .Ljoin_l343
.Ljoin_l344:
	leal 224(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne .Ljoin_l341
.Ljoin_l342:
	movl $0,%eax
	leal 224(%esp), %ecx
	movl $16,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %esp
	ret
.Ljoin_l341:
	jmp _i_118
.Ljoin_l343:
	jmp _i_118
_i_118:
	jmp _i_116
.Ljoin_l348:
	jmp _i_116
_i_116:
	movl 40(%esp),%edx
	jmp _i_114
.Ljoin_l353:
	jmp _i_114
_i_114:
	movl $0,%eax
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l339
_i_122:
	movl 16(%esp),%eax
	movl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,52(%esp)
	movl $0,%eax
	jmp _i_126
_i_126:
	movl %eax,56(%esp)
	movl 52(%esp),%eax
	movl %eax,60(%esp)
	movl $1,%eax
	movl %eax,64(%esp)
	movl 60(%esp),%eax
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	subl %ecx,%eax
	movl $0,%ecx
	movl %eax,52(%esp)
	movl 60(%esp),%eax
	cmpl %ecx,%eax
	jne .Ljoin_l337
.Ljoin_l338:
	movl 56(%esp),%eax
_i_123:
	movl %eax,12(%esp)
	movl %eax,%ecx
	jmp _i_120
.Ljoin_l337:
	jmp _i_125
_i_125:
	movl 68(%esp),%eax
	movl $1,%ecx
	movl %eax,212(%esp)
	addl %ecx,%eax
	movl $33,%ecx
	movl %eax,68(%esp)
	movl 56(%esp),%eax
	imull %eax,%ecx
	movl 212(%esp),%eax
	movsbl (%eax),%eax
	addl %eax,%ecx
	movl %ecx,%eax
	movl 68(%esp),%ecx
	jmp _i_126
.Ljoin_l339:
	jmp _i_120
_i_120:
	movl 24(%esp),%eax
	movl (%eax),%eax
	movl %eax,72(%esp)
	movl $0,%eax
	movl 72(%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l335
.Ljoin_l336:
	movl $1,%eax
	movl $8,%ecx
	movl %eax,76(%esp)
	movl 24(%esp),%eax
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
	movl 76(%esp),%ecx
	imull %eax,%ecx
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	movl %edx,40(%esp)
	call *%ecx
.Ljoin_l334:
	movl 24(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $1,%edx
	movl $8,%ecx
	movl %ecx,88(%esp)
	movl 32(%esp),%ecx
	movl %edx,92(%esp)
	movl 88(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $2,%edx
	movl %ecx,96(%esp)
	movl %edx,%ecx
	movl 96(%esp),%edx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	movl 92(%esp),%ecx
	imull %edx,%ecx
	leal 232(%esp), %edx
	movl %ecx,100(%esp)
	movl $-228,%ecx
	addl %ecx,%edx
	movl 100(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 232(%esp), %edx
	movl %ecx,104(%esp)
	movl $-232,%ecx
	addl %ecx,%edx
	movl 104(%esp),%ecx
	movl %ecx,(%edx)
	leal _memset,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l331:
	movl 40(%esp),%edx
	jmp _i_128
.Ljoin_l335:
	jmp _i_128
_i_128:
	movl $8,%eax
	movl %eax,100(%esp)
	movl 24(%esp),%ecx
	movl %ecx,%eax
	movl 100(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,104(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 104(%esp),%ecx
	andl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl %eax,108(%esp)
	movl 24(%esp),%ecx
	movl (%ecx),%eax
	movl %eax,112(%esp)
	movl 108(%esp),%eax
	movl 112(%esp),%ecx
	addl %ecx,%eax
	movl $1,%ecx
	movl %eax,116(%esp)
	movl (%eax),%eax
	jmp _i_133
_i_133:
	movl %eax,120(%esp)
	movl $0,%eax
	movl %ecx,124(%esp)
	movl 120(%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l314
.Ljoin_l315:
	leal _i_new_he,%eax
	movl (%eax),%eax
	movl %edx,40(%esp)
	call *%eax
.Ljoin_l313:
	movl $8,%ecx
	movl %eax,120(%esp)
	movl (%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $536870912,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l309
.Ljoin_l310:
	leal -8(%esp), %esp
	movl 24(%esp),%eax
	leal 232(%esp), %ecx
	movl %ecx,148(%esp)
	movl $-232,%ecx
	movl %ecx,152(%esp)
	movl 148(%esp),%ecx
	movl 152(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %ecx
	movl $-228,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_share_hek,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l308:
	movl $4,%ecx
	movl %eax,148(%esp)
	movl 120(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 148(%esp),%ecx
	movl %ecx,(%eax)
	jmp _i_141
.Ljoin_l309:
	jmp _i_140
_i_140:
	leal -8(%esp), %esp
	movl 24(%esp),%eax
	leal 232(%esp), %ecx
	movl %ecx,136(%esp)
	movl $-232,%ecx
	movl %ecx,140(%esp)
	movl 136(%esp),%ecx
	movl 140(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %ecx
	movl $-228,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal _i_save_hek,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l305:
	movl $4,%ecx
	movl %eax,136(%esp)
	movl 120(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 136(%esp),%ecx
	movl %ecx,(%eax)
	jmp _i_141
_i_141:
	movl $8,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	movl 116(%esp),%eax
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl %edx,(%eax)
	movl $12,%eax
	movl %eax,152(%esp)
	movl 24(%esp),%ecx
	movl %ecx,%eax
	movl 152(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,156(%esp)
	movl $1,%eax
	addl %eax,%ecx
	movl 156(%esp),%eax
	movl %ecx,(%eax)
	movl $0,%eax
	movl 124(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l301
.Ljoin_l302:
	movl $4,%eax
	movl %eax,160(%esp)
	movl 24(%esp),%ecx
	movl %ecx,%eax
	movl 160(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,164(%esp)
	movl $1,%eax
	addl %eax,%ecx
	movl 164(%esp),%eax
	movl %ecx,(%eax)
	movl $12,%eax
	movl %eax,168(%esp)
	movl 24(%esp),%ecx
	movl %ecx,%eax
	movl 168(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	movl %eax,172(%esp)
	movl 24(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 172(%esp),%ecx
	cmpl %eax,%ecx
	jbe .Ljoin_l299
.Ljoin_l300:
	movl (%esp),%eax
	leal _i_hsplit,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l298:
	movl 120(%esp),%edx
	jmp _i_144
.Ljoin_l299:
	jmp _i_144
_i_144:
	jmp _i_142
.Ljoin_l301:
	jmp _i_142
_i_142:
	movl $8,%eax
	addl %eax,%edx
	movl %edx,%eax
	leal 224(%esp), %ecx
	movl $16,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %esp
	ret
.Ljoin_l314:
	jmp _i_130
_i_130:
	movl $4,%eax
	movl %eax,176(%esp)
	movl %ecx,%eax
	movl 176(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 12(%esp),%ecx
	cmpl %ecx,%eax
	je .Ljoin_l327
.Ljoin_l328:
	jmp .Ljoin_l362
.Ljoin_l362:
	movl %edx,40(%esp)
	jmp _i_131
.Ljoin_l327:
	jmp _i_134
_i_134:
	movl $4,%eax
	movl %eax,180(%esp)
	movl 120(%esp),%eax
	movl 180(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 4(%esp),%ecx
	cmpl %ecx,%eax
	je .Ljoin_l325
.Ljoin_l326:
	jmp .Ljoin_l361
.Ljoin_l361:
	movl %edx,40(%esp)
	jmp _i_131
.Ljoin_l325:
	jmp _i_136
_i_136:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,192(%esp)
	movl 128(%esp),%eax
	movl 192(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 232(%esp), %ecx
	movl %ecx,196(%esp)
	movl $-232,%ecx
	movl %ecx,200(%esp)
	movl 196(%esp),%ecx
	movl %edx,48(%esp)
	movl 200(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 232(%esp), %ecx
	movl %ecx,204(%esp)
	movl $-228,%ecx
	movl %ecx,208(%esp)
	movl 204(%esp),%ecx
	movl 208(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l324:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l320
.Ljoin_l321:
	jmp _i_131
_i_131:
	movl $0,%eax
	movl 120(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,120(%esp)
	movl %eax,%ecx
	movl 120(%esp),%eax
	movl 40(%esp),%edx
	jmp _i_133
.Ljoin_l320:
	jmp _i_138
_i_138:
	movl $8,%eax
	movl 120(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_free,%edx
	movl (%edx),%edx
	call *%edx
.Ljoin_l319:
	movl $8,%eax
	movl 120(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	addl %eax,%ecx
	movl %ecx,%eax
	leal 224(%esp), %ecx
	movl $16,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l364:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Ljoin_l352
.long .Lframe_l365
.section .pcmap_data
.Lframe_l365:
.long 0x80000014
.long 0xffffff20
.long 0xffffff48
.long .Lstackdata_l364
.long 0
.long 27
.long 0
.long 1
.long 0xffffff20
.long 0xffffff30
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff38
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l347
.long .Lframe_l366
.section .pcmap_data
.Lframe_l366:
.long 0x80000014
.long 0xffffff20
.long 0xffffff48
.long .Lstackdata_l364
.long 0
.long 27
.long 0
.long 1
.long 0xffffff20
.long 0xffffff30
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff38
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l334
.long .Lframe_l367
.section .pcmap_data
.Lframe_l367:
.long 0x80000014
.long 0xffffff20
.long 0xffffff48
.long .Lstackdata_l364
.long 0
.long 27
.long 0
.long 1
.long 0xffffff20
.long 0xffffff30
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff38
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l331
.long .Lframe_l368
.section .pcmap_data
.Lframe_l368:
.long 0x80000014
.long 0xffffff20
.long 0xffffff48
.long .Lstackdata_l364
.long 0
.long 27
.long 0
.long 1
.long 0xffffff20
.long 0xffffff30
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff38
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l313
.long .Lframe_l369
.section .pcmap_data
.Lframe_l369:
.long 0x80000014
.long 0xffffff20
.long 0xffffff48
.long .Lstackdata_l364
.long 0
.long 27
.long 0
.long 1
.long 0xffffff20
.long 0xffffff30
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff38
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
.long .Ljoin_l308
.long .Lframe_l370
.section .pcmap_data
.Lframe_l370:
.long 0x80000014
.long 0xffffff20
.long 0xffffff48
.long .Lstackdata_l364
.long 0
.long 27
.long 0
.long 1
.long 0xffffff20
.long 0
.long 0
.long 0xffffff28
.long 0
.long 0xffffff38
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
.long .Ljoin_l305
.long .Lframe_l371
.section .pcmap_data
.Lframe_l371:
.long 0x80000014
.long 0xffffff20
.long 0xffffff48
.long .Lstackdata_l364
.long 0
.long 27
.long 0
.long 1
.long 0xffffff20
.long 0
.long 0
.long 0xffffff28
.long 0
.long 0xffffff38
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
.long .Ljoin_l298
.long .Lframe_l372
.section .pcmap_data
.Lframe_l372:
.long 0x80000014
.long 0xffffff20
.long 0xffffff48
.long .Lstackdata_l364
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
.long .Ljoin_l324
.long .Lframe_l373
.section .pcmap_data
.Lframe_l373:
.long 0x80000014
.long 0xffffff20
.long 0xffffff48
.long .Lstackdata_l364
.long 0
.long 27
.long 0
.long 1
.long 0xffffff20
.long 0xffffff30
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff38
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
.long .Ljoin_l319
.long .Lframe_l374
.section .pcmap_data
.Lframe_l374:
.long 0x80000014
.long 0xffffff20
.long 0xffffff48
.long .Lstackdata_l364
.long 0
.long 27
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff28
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
	leal -296(%esp), %esp
	leal 296(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 296(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 296(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 296(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l377:
.Lproc_body_start_l376:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l462
.Ljoin_l463:
	movl $0,%eax
	leal 296(%esp), %ecx
	movl %ecx,272(%esp)
	movl $12,%ecx
	movl %ecx,276(%esp)
	movl 272(%esp),%ecx
	movl %edx,36(%esp)
	movl 276(%esp),%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 308(%esp), %esp
	ret
.Ljoin_l462:
	jmp _i_147
_i_147:
	movl %ecx,%eax
	movl %eax,16(%esp)
	movl (%eax),%eax
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
	je .Ljoin_l459
.Ljoin_l460:
	leal -8(%esp), %esp
	movl 8(%esp),%ecx
	movl %ecx,%eax
	leal 304(%esp), %ecx
	movl %ecx,36(%esp)
	movl $-8,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,44(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	leal 304(%esp), %edx
	movl %ecx,48(%esp)
	movl $-304,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 304(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	leal 304(%esp), %edx
	movl %ecx,52(%esp)
	movl $-300,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l458:
	leal 296(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l454
.Ljoin_l455:
	leal _PL_tainted,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal _PL_tainting,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	je .Ljoin_l452
.Ljoin_l453:
	movl 12(%esp),%ecx
	movl %ecx,%edx
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
	je .Ljoin_l450
.Ljoin_l451:
	movl %edx,%eax
	leal _Perl_sv_tainted,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l449:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l445
.Ljoin_l446:
	movl $1,%eax
	jmp _i_157
.Ljoin_l445:
	jmp _i_156
.Ljoin_l450:
	jmp _i_156
_i_156:
	movl $0,%eax
	jmp _i_157
_i_157:
	leal _PL_tainted,%ecx
	movl %eax,(%ecx)
	movl 48(%esp),%eax
	jmp _i_153
.Ljoin_l452:
	jmp _i_153
_i_153:
	movl %eax,48(%esp)
	movl 12(%esp),%eax
	leal _Perl_newSVsv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l444:
	leal _Perl_sv_2mortal,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l441:
	leal -12(%esp), %esp
	movl %eax,24(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	leal 308(%esp), %edx
	movl $-308,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 308(%esp), %edx
	movl $-304,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl $-2,%edx
	leal 308(%esp), %ecx
	movl %ecx,68(%esp)
	movl $-300,%ecx
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
.Ljoin_l438:
	movl $0,%eax
	movl 48(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l434
.Ljoin_l435:
	movl $1,%eax
	leal _PL_tainted,%ecx
	movl %eax,(%ecx)
	jmp _i_158
.Ljoin_l434:
	jmp _i_158
_i_158:
	movl 20(%esp),%eax
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne .Ljoin_l432
.Ljoin_l433:
	leal 296(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne .Ljoin_l430
.Ljoin_l431:
	movl $0,%eax
	leal 296(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 308(%esp), %esp
	ret
.Ljoin_l430:
	jmp _i_160
.Ljoin_l432:
	jmp _i_160
_i_160:
	jmp _i_151
.Ljoin_l454:
	jmp _i_151
_i_151:
	movl 36(%esp),%edx
	jmp _i_149
.Ljoin_l459:
	jmp _i_149
_i_149:
	movl $8,%eax
	movl %eax,68(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 68(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $262144,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l427
.Ljoin_l428:
	movl 12(%esp),%eax
	movl (%eax),%ecx
	movl %eax,84(%esp)
	movl $4,%eax
	addl %eax,%ecx
	leal 296(%esp), %eax
	movl %eax,88(%esp)
	movl $-12,%eax
	movl %eax,92(%esp)
	movl 88(%esp),%eax
	movl %ecx,96(%esp)
	movl 92(%esp),%ecx
	addl %ecx,%eax
	movl 96(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl 84(%esp),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	jmp _i_164
.Ljoin_l427:
	jmp _i_163
_i_163:
	leal -4(%esp), %esp
	movl 16(%esp),%eax
	leal 300(%esp), %ecx
	movl %ecx,76(%esp)
	movl $-12,%ecx
	movl %ecx,80(%esp)
	movl 76(%esp),%ecx
	movl %edx,40(%esp)
	movl 80(%esp),%edx
	addl %edx,%ecx
	leal 300(%esp), %edx
	movl %ecx,84(%esp)
	movl $-300,%ecx
	addl %ecx,%edx
	movl 84(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _Perl_sv_2pv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l426:
	movl 36(%esp),%edx
	jmp _i_164
_i_164:
	movl $0,%ecx
	movl %eax,100(%esp)
	movl 8(%esp),%eax
	cmpl %ecx,%eax
	jne .Ljoin_l423
_i_167:
	movl 100(%esp),%eax
	movl %eax,%ecx
	leal 296(%esp), %eax
	movl %eax,104(%esp)
	movl $-12,%eax
	movl %eax,108(%esp)
	movl 104(%esp),%eax
	movl %ecx,112(%esp)
	movl 108(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	jmp _i_171
_i_171:
	movl %eax,116(%esp)
	movl $1,%eax
	movl %eax,120(%esp)
	movl 116(%esp),%eax
	movl %ecx,124(%esp)
	movl 120(%esp),%ecx
	subl %ecx,%eax
	movl $0,%ecx
	movl %eax,128(%esp)
	movl 116(%esp),%eax
	cmpl %ecx,%eax
	jne .Ljoin_l421
.Ljoin_l422:
	movl 124(%esp),%eax
_i_168:
	movl %eax,8(%esp)
	jmp _i_165
.Ljoin_l421:
	jmp _i_170
_i_170:
	movl 112(%esp),%eax
	movl $1,%ecx
	movl %eax,280(%esp)
	addl %ecx,%eax
	movl $33,%ecx
	movl %eax,112(%esp)
	movl 124(%esp),%eax
	imull %eax,%ecx
	movl 280(%esp),%eax
	movsbl (%eax),%eax
	addl %eax,%ecx
	movl 128(%esp),%eax
	jmp _i_171
.Ljoin_l423:
	jmp _i_165
_i_165:
	movl 20(%esp),%ecx
	movl (%ecx),%eax
	movl %eax,132(%esp)
	movl $0,%eax
	movl 132(%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l419
.Ljoin_l420:
	movl $1,%eax
	movl $8,%ecx
	movl %eax,136(%esp)
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
	movl 136(%esp),%ecx
	imull %eax,%ecx
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	movl %edx,36(%esp)
	call *%ecx
.Ljoin_l418:
	movl 20(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $1,%edx
	movl $8,%ecx
	movl %ecx,148(%esp)
	movl 28(%esp),%ecx
	movl %edx,152(%esp)
	movl 148(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $2,%edx
	movl %ecx,156(%esp)
	movl %edx,%ecx
	movl 156(%esp),%edx
	shll %cl, %edx
	movl $1,%ecx
	shll %cl, %edx
	movl $16,%ecx
	subl %ecx,%edx
	movl 152(%esp),%ecx
	imull %edx,%ecx
	leal 304(%esp), %edx
	movl %ecx,160(%esp)
	movl $-300,%ecx
	addl %ecx,%edx
	movl 160(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 304(%esp), %edx
	movl %ecx,164(%esp)
	movl $-304,%ecx
	addl %ecx,%edx
	movl 164(%esp),%ecx
	movl %ecx,(%edx)
	leal _memset,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l415:
	movl 36(%esp),%edx
	jmp _i_173
.Ljoin_l419:
	jmp _i_173
_i_173:
	movl $8,%eax
	movl %eax,160(%esp)
	movl 20(%esp),%ecx
	movl %ecx,%eax
	movl 160(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,164(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 164(%esp),%ecx
	andl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl %eax,168(%esp)
	movl 20(%esp),%ecx
	movl (%ecx),%eax
	movl %eax,172(%esp)
	movl 168(%esp),%eax
	movl 172(%esp),%ecx
	addl %ecx,%eax
	movl $1,%ecx
	movl %eax,176(%esp)
	movl (%eax),%eax
	jmp _i_178
_i_178:
	movl %eax,180(%esp)
	movl $0,%eax
	movl %ecx,184(%esp)
	movl 180(%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l398
.Ljoin_l399:
	leal _i_new_he,%eax
	movl (%eax),%eax
	movl %edx,36(%esp)
	call *%eax
.Ljoin_l397:
	movl $8,%ecx
	movl %eax,180(%esp)
	movl (%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $536870912,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l393
.Ljoin_l394:
	leal -8(%esp), %esp
	movl 108(%esp),%eax
	leal 304(%esp), %ecx
	movl %ecx,212(%esp)
	movl $-12,%ecx
	movl %ecx,216(%esp)
	movl 212(%esp),%ecx
	movl 216(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 304(%esp), %edx
	movl %ecx,220(%esp)
	movl $-304,%ecx
	addl %ecx,%edx
	movl 220(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 304(%esp), %ecx
	movl $-300,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_share_hek,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l392:
	movl $4,%ecx
	movl %eax,216(%esp)
	movl 180(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 216(%esp),%ecx
	movl %ecx,(%eax)
	jmp _i_186
.Ljoin_l393:
	jmp _i_185
_i_185:
	leal -8(%esp), %esp
	movl 108(%esp),%eax
	leal 304(%esp), %ecx
	movl %ecx,196(%esp)
	movl $-12,%ecx
	movl %ecx,200(%esp)
	movl 196(%esp),%ecx
	movl 200(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 304(%esp), %edx
	movl %ecx,204(%esp)
	movl $-304,%ecx
	addl %ecx,%edx
	movl 204(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 304(%esp), %ecx
	movl $-300,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal _i_save_hek,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l389:
	movl $4,%ecx
	movl %eax,200(%esp)
	movl 180(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 200(%esp),%ecx
	movl %ecx,(%eax)
	jmp _i_186
_i_186:
	movl $8,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	movl 176(%esp),%eax
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl %edx,(%eax)
	movl $12,%eax
	movl %eax,220(%esp)
	movl 20(%esp),%ecx
	movl %ecx,%eax
	movl 220(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,224(%esp)
	movl $1,%eax
	addl %eax,%ecx
	movl 224(%esp),%eax
	movl %ecx,(%eax)
	movl $0,%eax
	movl 184(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l385
.Ljoin_l386:
	movl $4,%eax
	movl %eax,228(%esp)
	movl 20(%esp),%ecx
	movl %ecx,%eax
	movl 228(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,232(%esp)
	movl $1,%eax
	addl %eax,%ecx
	movl 232(%esp),%eax
	movl %ecx,(%eax)
	movl $12,%eax
	movl %eax,236(%esp)
	movl 20(%esp),%ecx
	movl %ecx,%eax
	movl 236(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	movl %eax,240(%esp)
	movl 20(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 240(%esp),%ecx
	cmpl %eax,%ecx
	jbe .Ljoin_l383
.Ljoin_l384:
	movl (%esp),%eax
	leal _i_hsplit,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l382:
	movl 180(%esp),%edx
	jmp _i_189
.Ljoin_l383:
	jmp _i_189
_i_189:
	jmp _i_187
.Ljoin_l385:
	jmp _i_187
_i_187:
	movl %edx,%eax
	leal 296(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 308(%esp), %esp
	ret
.Ljoin_l398:
	jmp _i_175
_i_175:
	movl $4,%eax
	movl %eax,244(%esp)
	movl %ecx,%eax
	movl 244(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 8(%esp),%ecx
	cmpl %ecx,%eax
	je .Ljoin_l411
.Ljoin_l412:
	jmp .Ljoin_l468
.Ljoin_l468:
	movl %edx,36(%esp)
	jmp _i_176
.Ljoin_l411:
	jmp _i_179
_i_179:
	movl $4,%eax
	movl %eax,248(%esp)
	movl 180(%esp),%eax
	movl 248(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	leal 296(%esp), %ecx
	movl %eax,252(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl 252(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l409
.Ljoin_l410:
	jmp .Ljoin_l467
.Ljoin_l467:
	movl %edx,36(%esp)
	jmp _i_176
.Ljoin_l409:
	jmp _i_181
_i_181:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,264(%esp)
	movl 188(%esp),%ecx
	movl %ecx,%eax
	movl 264(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 304(%esp), %ecx
	movl %ecx,268(%esp)
	movl $-12,%ecx
	movl %ecx,272(%esp)
	movl 268(%esp),%ecx
	movl %edx,44(%esp)
	movl 272(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 304(%esp), %edx
	movl %ecx,276(%esp)
	movl $-300,%ecx
	addl %ecx,%edx
	movl 276(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 304(%esp), %ecx
	movl $-304,%edx
	addl %edx,%ecx
	movl 108(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l408:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l404
.Ljoin_l405:
	jmp _i_176
_i_176:
	movl $0,%eax
	movl 180(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,180(%esp)
	movl %eax,%ecx
	movl 180(%esp),%eax
	movl 36(%esp),%edx
	jmp _i_178
.Ljoin_l404:
	jmp _i_183
_i_183:
	movl $8,%eax
	movl 180(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_free,%edx
	movl (%edx),%edx
	call *%edx
.Ljoin_l403:
	movl $8,%eax
	movl 180(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,%eax
	leal 296(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 308(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l470:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Ljoin_l458
.long .Lframe_l471
.section .pcmap_data
.Lframe_l471:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0xfffffee4
.long 0xfffffedc
.long 0xfffffee0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l449
.long .Lframe_l472
.section .pcmap_data
.Lframe_l472:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0xfffffee4
.long 0xfffffedc
.long 0xfffffee0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l444
.long .Lframe_l473
.section .pcmap_data
.Lframe_l473:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0
.long 0xfffffedc
.long 0xfffffee0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l441
.long .Lframe_l474
.section .pcmap_data
.Lframe_l474:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0
.long 0xfffffedc
.long 0xfffffee0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l438
.long .Lframe_l475
.section .pcmap_data
.Lframe_l475:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0xfffffee4
.long 0xfffffedc
.long 0xfffffee0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l426
.long .Lframe_l476
.section .pcmap_data
.Lframe_l476:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0
.long 0xfffffedc
.long 0xfffffee0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l418
.long .Lframe_l477
.section .pcmap_data
.Lframe_l477:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0
.long 0xfffffedc
.long 0xfffffee0
.long 0xfffffeec
.long 0xffffff3c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l415
.long .Lframe_l478
.section .pcmap_data
.Lframe_l478:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0
.long 0xfffffedc
.long 0xfffffee0
.long 0xfffffeec
.long 0xffffff3c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l397
.long .Lframe_l479
.section .pcmap_data
.Lframe_l479:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0
.long 0xfffffedc
.long 0xfffffee0
.long 0xfffffeec
.long 0xffffff3c
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
.long .Ljoin_l392
.long .Lframe_l480
.section .pcmap_data
.Lframe_l480:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0
.long 0xfffffedc
.long 0
.long 0xfffffeec
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
.long .Ljoin_l389
.long .Lframe_l481
.section .pcmap_data
.Lframe_l481:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0
.long 0xfffffedc
.long 0
.long 0xfffffeec
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
.long .Ljoin_l382
.long .Lframe_l482
.section .pcmap_data
.Lframe_l482:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
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
.long .Ljoin_l408
.long .Lframe_l483
.section .pcmap_data
.Lframe_l483:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0xfffffed8
.long 0
.long 0xfffffedc
.long 0xfffffee0
.long 0xfffffeec
.long 0xffffff3c
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
.long .Ljoin_l403
.long .Lframe_l484
.section .pcmap_data
.Lframe_l484:
.long 0x80000010
.long 0xfffffed8
.long 0xfffffefc
.long .Lstackdata_l470
.long 0
.long 36
.long 0
.long 1
.long 0
.long 0
.long 0xfffffedc
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
	leal -228(%esp), %esp
	leal 228(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 228(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 228(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 228(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l487:
.Lproc_body_start_l486:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l549
.Ljoin_l550:
	movl $0,%eax
	leal 228(%esp), %ecx
	movl %ecx,208(%esp)
	movl $12,%ecx
	movl %ecx,212(%esp)
	movl 208(%esp),%ecx
	movl %edx,28(%esp)
	movl 212(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %esp
	ret
.Ljoin_l549:
	jmp _i_192
_i_192:
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
	je .Ljoin_l546
.Ljoin_l547:
	leal -8(%esp), %esp
	movl 8(%esp),%ecx
	movl %ecx,%eax
	leal 236(%esp), %ecx
	movl %ecx,28(%esp)
	movl $-8,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,36(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	leal 236(%esp), %edx
	movl %ecx,40(%esp)
	movl $-236,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 236(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	leal 236(%esp), %edx
	movl %ecx,44(%esp)
	movl $-232,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l545:
	leal 228(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l541
.Ljoin_l542:
	leal -12(%esp), %esp
	movl 12(%esp),%ecx
	movl %ecx,%eax
	leal 240(%esp), %edx
	movl $-240,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal 240(%esp), %edx
	movl $-236,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%edx
	leal 240(%esp), %ecx
	movl %ecx,52(%esp)
	movl $-232,%ecx
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
.Ljoin_l540:
	movl %eax,%ecx
	movl $0,%edx
	cmpl %edx,%eax
	je .Ljoin_l536
.Ljoin_l537:
	movl (%ecx),%eax
	movl %eax,52(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	leal _Perl_mg_clear,%edx
	movl (%edx),%edx
	call *%edx
.Ljoin_l535:
	leal 228(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l531
.Ljoin_l532:
	leal -4(%esp), %esp
	movl 56(%esp),%ecx
	movl %ecx,%eax
	movl $112,%edx
	leal 232(%esp), %ecx
	movl %ecx,188(%esp)
	movl $-232,%ecx
	movl %ecx,192(%esp)
	movl 188(%esp),%ecx
	movl %edx,196(%esp)
	movl 192(%esp),%edx
	addl %edx,%ecx
	movl 196(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_mg_find,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l530:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l526
.Ljoin_l527:
	leal -4(%esp), %esp
	movl 56(%esp),%ecx
	movl %ecx,%eax
	movl $112,%edx
	leal 232(%esp), %ecx
	movl %ecx,200(%esp)
	movl $-232,%ecx
	movl %ecx,204(%esp)
	movl 200(%esp),%ecx
	movl %edx,208(%esp)
	movl 204(%esp),%edx
	addl %edx,%ecx
	movl 208(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_sv_unmagic,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l525:
	movl 52(%esp),%eax
	leal 228(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %esp
	ret
.Ljoin_l526:
	jmp _i_200
_i_200:
	movl $0,%eax
	leal 228(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %esp
	ret
.Ljoin_l531:
	jmp _i_198
_i_198:
	jmp _i_196
.Ljoin_l536:
	jmp _i_196
.Ljoin_l541:
	jmp _i_196
_i_196:
	movl 28(%esp),%edx
	jmp _i_194
.Ljoin_l546:
	jmp _i_194
_i_194:
	movl (%esp),%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl %eax,56(%esp)
	movl $0,%eax
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l519
.Ljoin_l520:
	movl $0,%eax
	leal 228(%esp), %ecx
	movl %ecx,176(%esp)
	movl $12,%ecx
	movl %ecx,180(%esp)
	movl 176(%esp),%ecx
	movl %edx,28(%esp)
	movl 180(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %esp
	ret
.Ljoin_l519:
	jmp _i_202
_i_202:
_i_204:
	movl 12(%esp),%eax
	movl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,64(%esp)
	movl $0,%eax
	jmp _i_208
_i_208:
	movl %eax,68(%esp)
	movl 64(%esp),%eax
	movl %eax,72(%esp)
	movl $1,%eax
	movl %eax,76(%esp)
	movl 72(%esp),%eax
	movl %ecx,80(%esp)
	movl 76(%esp),%ecx
	subl %ecx,%eax
	movl $0,%ecx
	movl %eax,64(%esp)
	movl 72(%esp),%eax
	cmpl %ecx,%eax
	jne .Ljoin_l516
.Ljoin_l517:
	movl 68(%esp),%eax
_i_205:
	movl $8,%ecx
	movl %eax,84(%esp)
	movl 60(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,88(%esp)
	movl 84(%esp),%ecx
	movl %ecx,%eax
	movl 88(%esp),%ecx
	andl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl %eax,92(%esp)
	movl 60(%esp),%ecx
	movl (%ecx),%eax
	movl %eax,96(%esp)
	movl 92(%esp),%eax
	movl 96(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,100(%esp)
	movl $1,%eax
	jmp _i_213
_i_213:
	movl %eax,104(%esp)
	movl $0,%eax
	cmpl %eax,%ecx
	jne .Ljoin_l490
.Ljoin_l491:
	movl $0,%eax
	leal 228(%esp), %ecx
	movl %ecx,108(%esp)
	movl $12,%ecx
	movl %ecx,112(%esp)
	movl 108(%esp),%ecx
	movl %edx,28(%esp)
	movl 112(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %esp
	ret
.Ljoin_l490:
	jmp _i_210
_i_210:
	movl $4,%eax
	movl %eax,116(%esp)
	movl %ecx,%eax
	movl %ecx,120(%esp)
	movl 116(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 84(%esp),%ecx
	cmpl %ecx,%eax
	je .Ljoin_l514
.Ljoin_l515:
	jmp .Ljoin_l555
.Ljoin_l555:
	movl %edx,28(%esp)
	jmp _i_211
.Ljoin_l514:
	jmp _i_214
_i_214:
	movl $4,%eax
	movl %eax,124(%esp)
	movl 120(%esp),%eax
	movl 124(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 4(%esp),%ecx
	cmpl %ecx,%eax
	je .Ljoin_l512
.Ljoin_l513:
	jmp .Ljoin_l554
.Ljoin_l554:
	movl %edx,28(%esp)
	jmp _i_211
.Ljoin_l512:
	jmp _i_216
_i_216:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,136(%esp)
	movl 128(%esp),%eax
	movl 136(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 236(%esp), %ecx
	movl %ecx,140(%esp)
	movl $-236,%ecx
	movl %ecx,144(%esp)
	movl 140(%esp),%ecx
	movl %edx,36(%esp)
	movl 144(%esp),%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 236(%esp), %ecx
	movl %ecx,148(%esp)
	movl $-232,%ecx
	movl %ecx,152(%esp)
	movl 148(%esp),%ecx
	movl 152(%esp),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l511:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l507
.Ljoin_l508:
	jmp _i_211
_i_211:
	movl $0,%eax
	movl 120(%esp),%ecx
	movl (%ecx),%edx
	movl %ecx,100(%esp)
	movl %edx,%ecx
	movl 28(%esp),%edx
	jmp _i_213
.Ljoin_l507:
	jmp _i_218
_i_218:
	movl 120(%esp),%eax
	movl (%eax),%ecx
	movl 100(%esp),%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl 104(%esp),%eax
	cmpl %ecx,%eax
	je .Ljoin_l505
.Ljoin_l506:
	movl (%edx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l503
.Ljoin_l504:
	movl $4,%eax
	movl 60(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,148(%esp)
	movl $1,%eax
	movl %eax,152(%esp)
	movl 148(%esp),%eax
	movl 152(%esp),%ecx
	subl %ecx,%eax
	movl %eax,(%edx)
	jmp _i_220
.Ljoin_l503:
	jmp _i_220
.Ljoin_l505:
	jmp _i_220
_i_220:
	movl $2,%eax
	movl 8(%esp),%ecx
	andl %eax,%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je .Ljoin_l501
.Ljoin_l502:
	movl $0,%eax
	jmp _i_223
.Ljoin_l501:
	jmp _i_222
_i_222:
	movl $8,%eax
	movl 120(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_mortalcopy,%edx
	movl (%edx),%edx
	call *%edx
.Ljoin_l500:
	jmp _i_223
_i_223:
	movl $32,%ecx
	movl %eax,52(%esp)
	movl 60(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 120(%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l496
.Ljoin_l497:
	movl $8,%eax
	movl (%esp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,164(%esp)
	movl $1073741824,%eax
	movl %eax,168(%esp)
	movl 164(%esp),%eax
	movl %ecx,172(%esp)
	movl 168(%esp),%ecx
	orl %ecx,%eax
	movl 172(%esp),%ecx
	movl %eax,(%ecx)
	jmp _i_225
.Ljoin_l496:
	jmp _i_224
_i_224:
	leal -4(%esp), %esp
	movl 4(%esp),%eax
	leal 232(%esp), %ecx
	movl %ecx,160(%esp)
	movl $-232,%ecx
	movl %ecx,164(%esp)
	movl 160(%esp),%ecx
	movl 164(%esp),%edx
	addl %edx,%ecx
	movl 124(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_hv_free_ent,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l495:
	movl 60(%esp),%edx
	jmp _i_225
_i_225:
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%ecx
	subl %ecx,%eax
	movl %eax,(%edx)
	movl 52(%esp),%eax
	leal 228(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %esp
	ret
.Ljoin_l516:
	jmp _i_207
_i_207:
	movl 80(%esp),%eax
	movl $1,%ecx
	movl %eax,216(%esp)
	addl %ecx,%eax
	movl $33,%ecx
	movl %eax,80(%esp)
	movl 68(%esp),%eax
	imull %eax,%ecx
	movl 216(%esp),%eax
	movsbl (%eax),%eax
	addl %eax,%ecx
	movl %ecx,%eax
	movl 80(%esp),%ecx
	jmp _i_208
.section .pcmap_data
.Lstackdata_l557:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Ljoin_l545
.long .Lframe_l558
.section .pcmap_data
.Lframe_l558:
.long 0x80000010
.long 0xffffff1c
.long 0xffffff38
.long .Lstackdata_l557
.long 0
.long 25
.long 0
.long 1
.long 0xffffff1c
.long 0xffffff28
.long 0xffffff20
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l540
.long .Lframe_l559
.section .pcmap_data
.Lframe_l559:
.long 0x80000010
.long 0xffffff1c
.long 0xffffff38
.long .Lstackdata_l557
.long 0
.long 25
.long 0
.long 1
.long 0xffffff1c
.long 0xffffff28
.long 0xffffff20
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l535
.long .Lframe_l560
.section .pcmap_data
.Lframe_l560:
.long 0x80000010
.long 0xffffff1c
.long 0xffffff38
.long .Lstackdata_l557
.long 0
.long 25
.long 0
.long 1
.long 0xffffff1c
.long 0xffffff28
.long 0xffffff20
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
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
.section .pcmap
.long .Ljoin_l530
.long .Lframe_l561
.section .pcmap_data
.Lframe_l561:
.long 0x80000010
.long 0xffffff1c
.long 0xffffff38
.long .Lstackdata_l557
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
.section .pcmap
.long .Ljoin_l525
.long .Lframe_l562
.section .pcmap_data
.Lframe_l562:
.long 0x80000010
.long 0xffffff1c
.long 0xffffff38
.long .Lstackdata_l557
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
.section .pcmap
.long .Ljoin_l511
.long .Lframe_l563
.section .pcmap_data
.Lframe_l563:
.long 0x80000010
.long 0xffffff1c
.long 0xffffff38
.long .Lstackdata_l557
.long 0
.long 25
.long 0
.long 1
.long 0xffffff1c
.long 0xffffff28
.long 0xffffff20
.long 0xffffff24
.long 0xffffff58
.long 0xffffff84
.long 0xffffff70
.long 0xffffff94
.long 0xffffff80
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l500
.long .Lframe_l564
.section .pcmap_data
.Lframe_l564:
.long 0x80000010
.long 0xffffff1c
.long 0xffffff38
.long .Lstackdata_l557
.long 0
.long 25
.long 0
.long 1
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff58
.long 0
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
.section .pcmap
.long .Ljoin_l495
.long .Lframe_l565
.section .pcmap_data
.Lframe_l565:
.long 0x80000010
.long 0xffffff1c
.long 0xffffff38
.long .Lstackdata_l557
.long 0
.long 25
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
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
.section .text
_Perl_hv_delete_ent:
	leal -272(%esp), %esp
	leal 272(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 272(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 272(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 272(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l568:
.Lproc_body_start_l567:
	movl %eax,8(%esp)
	movl $0,%eax
	movl %ecx,12(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l636
.Ljoin_l637:
	movl $0,%eax
	leal 272(%esp), %ecx
	movl %ecx,248(%esp)
	movl $12,%ecx
	movl %ecx,252(%esp)
	movl 248(%esp),%ecx
	movl %edx,28(%esp)
	movl 252(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 284(%esp), %esp
	ret
.Ljoin_l636:
	jmp _i_227
_i_227:
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
	je .Ljoin_l633
.Ljoin_l634:
	leal -8(%esp), %esp
	movl 8(%esp),%ecx
	movl %ecx,%eax
	leal 280(%esp), %ecx
	movl %ecx,28(%esp)
	movl $-8,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,36(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	leal 280(%esp), %edx
	movl %ecx,40(%esp)
	movl $-280,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 280(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	leal 280(%esp), %edx
	movl %ecx,44(%esp)
	movl $-276,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l632:
	leal 272(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l628
.Ljoin_l629:
	leal -12(%esp), %esp
	movl 12(%esp),%ecx
	movl %ecx,%eax
	leal 284(%esp), %edx
	movl $-284,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%edx
	leal 284(%esp), %ecx
	movl %ecx,52(%esp)
	movl $-280,%ecx
	movl %ecx,56(%esp)
	movl 52(%esp),%ecx
	movl %edx,60(%esp)
	movl 56(%esp),%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	leal 284(%esp), %ecx
	movl $-276,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_hv_fetch_ent,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l627:
	movl %eax,%ecx
	movl $0,%edx
	cmpl %edx,%eax
	je .Ljoin_l623
.Ljoin_l624:
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,52(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	leal _Perl_mg_clear,%edx
	movl (%edx),%edx
	call *%edx
.Ljoin_l622:
	leal 272(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l618
.Ljoin_l619:
	leal -4(%esp), %esp
	movl 56(%esp),%ecx
	movl %ecx,%eax
	movl $112,%edx
	leal 276(%esp), %ecx
	movl %ecx,228(%esp)
	movl $-276,%ecx
	movl %ecx,232(%esp)
	movl 228(%esp),%ecx
	movl %edx,236(%esp)
	movl 232(%esp),%edx
	addl %edx,%ecx
	movl 236(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_mg_find,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l617:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l613
.Ljoin_l614:
	leal -4(%esp), %esp
	movl 56(%esp),%ecx
	movl %ecx,%eax
	movl $112,%edx
	leal 276(%esp), %ecx
	movl %ecx,240(%esp)
	movl $-276,%ecx
	movl %ecx,244(%esp)
	movl 240(%esp),%ecx
	movl %edx,248(%esp)
	movl 244(%esp),%edx
	addl %edx,%ecx
	movl 248(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_sv_unmagic,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l612:
	movl 52(%esp),%eax
	leal 272(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 284(%esp), %esp
	ret
.Ljoin_l613:
	jmp _i_235
_i_235:
	movl $0,%eax
	leal 272(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 284(%esp), %esp
	ret
.Ljoin_l618:
	jmp _i_233
_i_233:
	jmp _i_231
.Ljoin_l623:
	jmp _i_231
.Ljoin_l628:
	jmp _i_231
_i_231:
	movl 28(%esp),%edx
	jmp _i_229
.Ljoin_l633:
	jmp _i_229
_i_229:
	movl (%esp),%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl %eax,56(%esp)
	movl $0,%eax
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l606
.Ljoin_l607:
	movl $0,%eax
	leal 272(%esp), %ecx
	movl %ecx,216(%esp)
	movl $12,%ecx
	movl %ecx,220(%esp)
	movl 216(%esp),%ecx
	movl %edx,28(%esp)
	movl 220(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 284(%esp), %esp
	ret
.Ljoin_l606:
	jmp _i_237
_i_237:
	movl $8,%eax
	movl %eax,64(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 64(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $262144,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l603
.Ljoin_l604:
	movl 12(%esp),%eax
	movl (%eax),%ecx
	movl %eax,80(%esp)
	movl $4,%eax
	addl %eax,%ecx
	leal 272(%esp), %eax
	movl %eax,84(%esp)
	movl $-12,%eax
	movl %eax,88(%esp)
	movl 84(%esp),%eax
	movl %ecx,92(%esp)
	movl 88(%esp),%ecx
	addl %ecx,%eax
	movl 92(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl 80(%esp),%eax
	movl (%eax),%eax
	movl (%eax),%eax
	jmp _i_241
.Ljoin_l603:
	jmp _i_240
_i_240:
	leal -4(%esp), %esp
	movl 16(%esp),%eax
	leal 276(%esp), %ecx
	movl %ecx,72(%esp)
	movl $-12,%ecx
	movl %ecx,76(%esp)
	movl 72(%esp),%ecx
	movl %edx,32(%esp)
	movl 76(%esp),%edx
	addl %edx,%ecx
	leal 276(%esp), %edx
	movl %ecx,80(%esp)
	movl $-276,%ecx
	addl %ecx,%edx
	movl 80(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal _Perl_sv_2pv,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l602:
	movl 28(%esp),%edx
	jmp _i_241
_i_241:
	movl $0,%ecx
	movl %eax,96(%esp)
	movl 8(%esp),%eax
	cmpl %ecx,%eax
	jne .Ljoin_l599
_i_244:
	movl 96(%esp),%eax
	movl %eax,%ecx
	leal 272(%esp), %eax
	movl %eax,100(%esp)
	movl $-12,%eax
	movl %eax,104(%esp)
	movl 100(%esp),%eax
	movl %ecx,108(%esp)
	movl 104(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	jmp _i_248
_i_248:
	movl %eax,112(%esp)
	movl $1,%eax
	movl %eax,116(%esp)
	movl 112(%esp),%eax
	movl %ecx,120(%esp)
	movl 116(%esp),%ecx
	subl %ecx,%eax
	movl $0,%ecx
	movl %eax,124(%esp)
	movl 112(%esp),%eax
	cmpl %ecx,%eax
	jne .Ljoin_l597
.Ljoin_l598:
	movl 120(%esp),%eax
_i_245:
	movl %eax,8(%esp)
	jmp _i_242
.Ljoin_l597:
	jmp _i_247
_i_247:
	movl 108(%esp),%eax
	movl $1,%ecx
	movl %eax,256(%esp)
	addl %ecx,%eax
	movl $33,%ecx
	movl %eax,108(%esp)
	movl 120(%esp),%eax
	imull %eax,%ecx
	movl 256(%esp),%eax
	movsbl (%eax),%eax
	addl %eax,%ecx
	movl 124(%esp),%eax
	jmp _i_248
.Ljoin_l599:
	jmp _i_242
_i_242:
	movl $8,%ecx
	movl 60(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,128(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 128(%esp),%ecx
	andl %ecx,%eax
	movl $2,%ecx
	shll %cl, %eax
	movl %eax,132(%esp)
	movl 60(%esp),%ecx
	movl (%ecx),%eax
	movl %eax,136(%esp)
	movl 132(%esp),%eax
	movl 136(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %eax,140(%esp)
	movl $1,%eax
	jmp _i_253
_i_253:
	movl %eax,144(%esp)
	movl $0,%eax
	cmpl %eax,%ecx
	jne .Ljoin_l571
.Ljoin_l572:
	movl $0,%eax
	leal 272(%esp), %ecx
	movl %ecx,148(%esp)
	movl $12,%ecx
	movl %ecx,152(%esp)
	movl 148(%esp),%ecx
	movl %edx,28(%esp)
	movl 152(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 284(%esp), %esp
	ret
.Ljoin_l571:
	jmp _i_250
_i_250:
	movl $4,%eax
	movl %eax,156(%esp)
	movl %ecx,%eax
	movl %ecx,160(%esp)
	movl 156(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl 8(%esp),%ecx
	cmpl %ecx,%eax
	je .Ljoin_l595
.Ljoin_l596:
	jmp .Ljoin_l642
.Ljoin_l642:
	movl %edx,28(%esp)
	jmp _i_251
.Ljoin_l595:
	jmp _i_254
_i_254:
	movl $4,%eax
	movl %eax,164(%esp)
	movl 160(%esp),%eax
	movl 164(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	leal 272(%esp), %ecx
	movl %eax,168(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl 168(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l593
.Ljoin_l594:
	jmp .Ljoin_l641
.Ljoin_l641:
	movl %edx,28(%esp)
	jmp _i_251
.Ljoin_l593:
	jmp _i_256
_i_256:
	leal -8(%esp), %esp
	movl $4,%eax
	movl %eax,180(%esp)
	movl 168(%esp),%ecx
	movl %ecx,%eax
	movl 180(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 280(%esp), %ecx
	movl %ecx,184(%esp)
	movl $-12,%ecx
	movl %ecx,188(%esp)
	movl 184(%esp),%ecx
	movl %edx,36(%esp)
	movl 188(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 280(%esp), %edx
	movl %ecx,192(%esp)
	movl $-276,%ecx
	addl %ecx,%edx
	movl 192(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 280(%esp), %ecx
	movl $-280,%edx
	addl %edx,%ecx
	movl 104(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_my_memcmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l592:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l588
.Ljoin_l589:
	jmp _i_251
_i_251:
	movl $0,%eax
	movl 160(%esp),%ecx
	movl (%ecx),%edx
	movl %ecx,140(%esp)
	movl %edx,%ecx
	movl 28(%esp),%edx
	jmp _i_253
.Ljoin_l588:
	jmp _i_258
_i_258:
	movl 160(%esp),%eax
	movl (%eax),%ecx
	movl 140(%esp),%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl 144(%esp),%eax
	cmpl %ecx,%eax
	je .Ljoin_l586
.Ljoin_l587:
	movl (%edx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l584
.Ljoin_l585:
	movl $4,%eax
	movl 60(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,188(%esp)
	movl $1,%eax
	movl %eax,192(%esp)
	movl 188(%esp),%eax
	movl 192(%esp),%ecx
	subl %ecx,%eax
	movl %eax,(%edx)
	jmp _i_260
.Ljoin_l584:
	jmp _i_260
.Ljoin_l586:
	jmp _i_260
_i_260:
	movl $2,%eax
	movl 4(%esp),%ecx
	andl %eax,%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je .Ljoin_l582
.Ljoin_l583:
	movl $0,%eax
	jmp _i_263
.Ljoin_l582:
	jmp _i_262
_i_262:
	movl $8,%eax
	movl 160(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_mortalcopy,%edx
	movl (%edx),%edx
	call *%edx
.Ljoin_l581:
	jmp _i_263
_i_263:
	movl $32,%ecx
	movl %eax,52(%esp)
	movl 60(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 160(%esp),%ecx
	cmpl %eax,%ecx
	jne .Ljoin_l577
.Ljoin_l578:
	movl $8,%eax
	movl (%esp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,204(%esp)
	movl $1073741824,%eax
	movl %eax,208(%esp)
	movl 204(%esp),%eax
	movl %ecx,212(%esp)
	movl 208(%esp),%ecx
	orl %ecx,%eax
	movl 212(%esp),%ecx
	movl %eax,(%ecx)
	jmp _i_265
.Ljoin_l577:
	jmp _i_264
_i_264:
	leal -4(%esp), %esp
	movl 4(%esp),%eax
	leal 276(%esp), %ecx
	movl %ecx,200(%esp)
	movl $-276,%ecx
	movl %ecx,204(%esp)
	movl 200(%esp),%ecx
	movl 204(%esp),%edx
	addl %edx,%ecx
	movl 164(%esp),%edx
	movl %edx,(%ecx)
	leal _Perl_hv_free_ent,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Ljoin_l576:
	movl 60(%esp),%edx
	jmp _i_265
_i_265:
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%ecx
	subl %ecx,%eax
	movl %eax,(%edx)
	movl 52(%esp),%eax
	leal 272(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 284(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l644:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Ljoin_l632
.long .Lframe_l645
.section .pcmap_data
.Lframe_l645:
.long 0x80000010
.long 0xfffffef0
.long 0xffffff0c
.long .Lstackdata_l644
.long 0
.long 27
.long 0
.long 1
.long 0xfffffef0
.long 0xfffffefc
.long 0xfffffef4
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l627
.long .Lframe_l646
.section .pcmap_data
.Lframe_l646:
.long 0x80000010
.long 0xfffffef0
.long 0xffffff0c
.long .Lstackdata_l644
.long 0
.long 27
.long 0
.long 1
.long 0xfffffef0
.long 0xfffffefc
.long 0xfffffef4
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l622
.long .Lframe_l647
.section .pcmap_data
.Lframe_l647:
.long 0x80000010
.long 0xfffffef0
.long 0xffffff0c
.long .Lstackdata_l644
.long 0
.long 27
.long 0
.long 1
.long 0xfffffef0
.long 0xfffffefc
.long 0xfffffef4
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l617
.long .Lframe_l648
.section .pcmap_data
.Lframe_l648:
.long 0x80000010
.long 0xfffffef0
.long 0xffffff0c
.long .Lstackdata_l644
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
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l612
.long .Lframe_l649
.section .pcmap_data
.Lframe_l649:
.long 0x80000010
.long 0xfffffef0
.long 0xffffff0c
.long .Lstackdata_l644
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
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l602
.long .Lframe_l650
.section .pcmap_data
.Lframe_l650:
.long 0x80000010
.long 0xfffffef0
.long 0xffffff0c
.long .Lstackdata_l644
.long 0
.long 27
.long 0
.long 1
.long 0xfffffef0
.long 0
.long 0xfffffef4
.long 0xfffffef8
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
.section .pcmap
.long .Ljoin_l592
.long .Lframe_l651
.section .pcmap_data
.Lframe_l651:
.long 0x80000010
.long 0xfffffef0
.long 0xffffff0c
.long .Lstackdata_l644
.long 0
.long 27
.long 0
.long 1
.long 0xfffffef0
.long 0
.long 0xfffffef4
.long 0xfffffef8
.long 0xffffff2c
.long 0xffffff80
.long 0xffffff50
.long 0xffffff90
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
.section .pcmap
.long .Ljoin_l581
.long .Lframe_l652
.section .pcmap_data
.Lframe_l652:
.long 0x80000010
.long 0xfffffef0
.long 0xffffff0c
.long .Lstackdata_l644
.long 0
.long 27
.long 0
.long 1
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
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
.section .pcmap
.long .Ljoin_l576
.long .Lframe_l653
.section .pcmap_data
.Lframe_l653:
.long 0x80000010
.long 0xfffffef0
.long 0xffffff0c
.long .Lstackdata_l644
.long 0
.long 27
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
