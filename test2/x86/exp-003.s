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
initialize_continuations_l4:
proc_body_start_l3:
	leal _PL_he_root,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l10
join_l11:
	leal _i_more_he,%eax
	movl (%eax),%edx
	movl %ecx,(%esp)
	call *%edx
join_l9:
	movl (%esp),%ecx
	jmp _i_21
join_l10:
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
stackdata_l16:
.long 0
.section .pcmap
.long join_l9
.long frame_l17
.section .pcmap_data
frame_l17:
.long 0xfffffffc
.long 0x80000004
.long 0xfffffffc
.long stackdata_l16
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .text
_i_del_he:
	movl %esp,%edx
	movl (%edx),%ecx
initialize_continuations_l21:
proc_body_start_l20:
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
.section .pcmap_data
stackdata_l29:
.long 0
.section .text
_i_more_he:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l33:
proc_body_start_l32:
	movl $1008,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ecx
	movl %edx,(%esp)
	call *%ecx
join_l39:
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
	jb join_l35
join_l36:
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
join_l35:
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
stackdata_l44:
.long 0
.section .pcmap
.long join_l39
.long frame_l45
.section .pcmap_data
frame_l45:
.long 0xfffffff8
.long 0x80000004
.long 0xfffffff8
.long stackdata_l44
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
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
initialize_continuations_l49:
proc_body_start_l48:
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
	movl %eax,4(%esp)
	movl %ecx,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%ebx
	call *%ebx
join_l57:
	leal -8(%esp), %esp
	movl %eax,28(%esp)
	movl 8(%esp),%eax
	movl $8,%ecx
	movl 28(%esp),%edx
	movl %edx,%ebx
	addl %ecx,%ebx
	movl $-32,%ecx
	movl %edx,28(%esp)
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $1,%edx
	movl 12(%esp),%ebx
	imull %ebx,%edx
	movl $-28,%ecx
	movl %ebx,12(%esp)
	leal 32(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	leal _Perl_my_bcopy,%edx
	movl (%edx),%ebx
	call *%ebx
join_l54:
	movl $0,%eax
	movl $8,%ecx
	movl 20(%esp),%edx
	movl %edx,%ebx
	addl %ecx,%ebx
	movl %edx,20(%esp)
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
stackdata_l62:
.long 0
.section .pcmap
.long join_l57
.long frame_l63
.section .pcmap_data
frame_l63:
.long 0xffffffe8
.long 0x8000000c
.long 0xfffffff4
.long stackdata_l62
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l54
.long frame_l64
.section .pcmap_data
frame_l64:
.long 0xffffffe8
.long 0x8000000c
.long 0xfffffff4
.long stackdata_l62
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
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
.section .text
_Perl_unshare_hek:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l68:
proc_body_start_l67:
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
	movl %ecx,12(%esp)
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
join_l72:
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
stackdata_l77:
.long 0
.section .pcmap
.long join_l72
.long frame_l78
.section .pcmap_data
frame_l78:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffff4
.long stackdata_l77
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
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
initialize_continuations_l82:
proc_body_start_l81:
	movl %edx,8(%esp)
	movl $0,%edx
	movl %eax,12(%esp)
	movl (%esp),%eax
	cmpl %edx,%eax
	jne join_l134
join_l135:
	movl $0,%eax
	movl $12,%edx
	movl %ecx,16(%esp)
	leal 60(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %esp
	ret
join_l134:
	jmp _i_31
_i_31:
	movl $32768,%edx
	movl %eax,(%esp)
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
	je join_l131
join_l132:
	leal -4(%esp), %esp
	movl %ecx,%eax
	movl $80,%edx
	movl $-64,%ebx
	movl %ecx,4(%esp)
	leal 64(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	leal _Perl_mg_find,%ecx
	movl (%ecx),%edx
	call *%edx
join_l130:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l126
join_l127:
	leal _Perl_sv_newmortal,%ebx
	movl (%ebx),%eax
	call *%eax
join_l125:
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
	movl %ecx,64(%esp)
	call *%ebx
join_l122:
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
join_l126:
	jmp _i_35
_i_35:
	movl (%esp),%ecx
	jmp _i_33
join_l131:
	jmp _i_33
_i_33:
	movl (%ecx),%eax
	movl (%eax),%edx
	movl $0,%ebx
	cmpl %ebx,%edx
	jne join_l117
join_l118:
	movl $0,%edx
	movl 12(%esp),%ebx
	cmpl %edx,%ebx
	je join_l115
join_l116:
	movl $16,%edx
	movl %ebx,12(%esp)
	movl $1,%ebx
	movl %ecx,(%esp)
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
join_l114:
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
	movl %ecx,44(%esp)
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
join_l111:
	jmp _i_40
_i_40:
	movl 32(%esp),%edi
	movl 28(%esp),%esi
	movl 24(%esp),%ebp
	movl (%esp),%ecx
	movl 36(%esp),%eax
	jmp _i_37
join_l115:
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
join_l117:
	jmp _i_37
_i_37:
_i_41:
	movl 4(%esp),%edx
	movl %edx,%ebx
	movl %ecx,(%esp)
	movl %eax,36(%esp)
	movl 8(%esp),%eax
	movl %eax,%ecx
	movl %eax,8(%esp)
	movl $0,%eax
	jmp _i_45
_i_45:
	movl %edx,4(%esp)
	movl $1,%edx
	movl %edi,32(%esp)
	movl %ecx,%edi
	subl %edx,%edi
	movl $0,%edx
	cmpl %edx,%ecx
	jne join_l106
join_l107:
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
	jne join_l94
join_l95:
	movl $0,%ebx
	movl 12(%esp),%ecx
	cmpl %ebx,%ecx
	je join_l92
join_l93:
	movl $0,%edi
	movl %eax,48(%esp)
	movl %edi,%eax
	leal _Perl_newSV,%edi
	movl (%edi),%ebx
	call *%ebx
join_l91:
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
join_l88:
	movl $12,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	movl 32(%esp),%edi
	leal 72(%esp), %esp
	ret
join_l92:
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
join_l94:
	jmp _i_47
_i_47:
	movl $4,%edi
	movl %edx,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl (%edi),%ebx
	cmpl %eax,%ebx
	je join_l104
join_l105:
	jmp join_l140
join_l140:
	movl %eax,48(%esp)
	movl %edx,56(%esp)
	movl 4(%esp),%edi
	movl 8(%esp),%ebx
	jmp _i_48
join_l104:
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
	je join_l102
join_l103:
	jmp join_l139
join_l139:
	movl %eax,48(%esp)
	movl %edx,56(%esp)
	movl %ecx,%ebx
	movl 4(%esp),%edi
	jmp _i_48
join_l102:
	jmp _i_53
_i_53:
	leal -8(%esp), %esp
	movl $8,%ebx
	movl $4,%edi
	movl %ecx,16(%esp)
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
join_l101:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l97
join_l98:
	jmp _i_48
_i_48:
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %edi,4(%esp)
	movl %ebx,8(%esp)
	movl %ecx,%edx
	movl 48(%esp),%eax
	jmp _i_50
join_l97:
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
join_l106:
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
stackdata_l142:
.long 0
.section .pcmap
.long join_l130
.long frame_l143
.section .pcmap_data
frame_l143:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l142
.long 0x80000008
.long 0x80000015
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l125
.long frame_l144
.section .pcmap_data
frame_l144:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l142
.long 0x80000008
.long 0x80000015
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l122
.long frame_l145
.section .pcmap_data
frame_l145:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l142
.long 0x80000008
.long 0x80000015
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l114
.long frame_l146
.section .pcmap_data
frame_l146:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l142
.long 0x80000008
.long 0x80000015
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l111
.long frame_l147
.section .pcmap_data
frame_l147:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l142
.long 0x80000008
.long 0x80000015
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l101
.long frame_l148
.section .pcmap_data
frame_l148:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l142
.long 0x80000008
.long 0x80000015
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l91
.long frame_l149
.section .pcmap_data
frame_l149:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l142
.long 0x80000008
.long 0x80000015
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l88
.long frame_l150
.section .pcmap_data
frame_l150:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l142
.long 0x80000008
.long 0x80000015
.long 0x80000000
.long 0x80000000
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
initialize_continuations_l154:
proc_body_start_l153:
	movl %edx,8(%esp)
	movl $0,%edx
	movl %eax,12(%esp)
	movl (%esp),%eax
	cmpl %edx,%eax
	jne join_l223
join_l224:
	movl $0,%eax
	movl $12,%edx
	movl %ecx,16(%esp)
	leal 60(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %esp
	ret
join_l223:
	jmp _i_60
_i_60:
	movl $32768,%edx
	movl %eax,(%esp)
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
	je join_l220
join_l221:
	leal -4(%esp), %esp
	movl %ecx,%eax
	movl $80,%edx
	movl $-64,%ebx
	movl %ecx,4(%esp)
	leal 64(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	leal _Perl_mg_find,%ecx
	movl (%ecx),%edx
	call *%edx
join_l219:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l215
join_l216:
	leal _Perl_sv_newmortal,%ebx
	movl (%ebx),%eax
	call *%eax
join_l214:
	movl %eax,48(%esp)
	movl 4(%esp),%eax
	leal _Perl_newSVsv,%ecx
	movl (%ecx),%edx
	call *%edx
join_l211:
	leal _Perl_sv_2mortal,%ecx
	movl (%ecx),%edx
	call *%edx
join_l208:
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
	movl %edx,16(%esp)
	movl $-64,%edx
	movl %ecx,60(%esp)
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal _Perl_mg_copy,%ecx
	movl (%ecx),%ebx
	call *%ebx
join_l205:
	movl $4,%eax
	leal _PL_hv_fetch_ent_mh,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne join_l201
join_l202:
	movl $12,%eax
	leal _Perl_safemalloc,%ecx
	movl (%ecx),%edx
	call *%edx
join_l200:
	movl $4,%ecx
	leal _PL_hv_fetch_ent_mh,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	jmp _i_66
join_l201:
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
join_l215:
	jmp _i_64
_i_64:
	movl (%esp),%ecx
	jmp _i_62
join_l220:
	jmp _i_62
_i_62:
	movl (%ecx),%eax
	movl (%eax),%edx
	movl $0,%ebx
	cmpl %ebx,%edx
	jne join_l195
join_l196:
	movl $0,%edx
	movl 8(%esp),%ebx
	cmpl %edx,%ebx
	je join_l193
join_l194:
	movl $16,%edx
	movl %ebx,8(%esp)
	movl $1,%ebx
	movl %ecx,(%esp)
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
join_l192:
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
	movl %ecx,44(%esp)
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
join_l189:
	jmp _i_76
_i_76:
	movl 32(%esp),%edi
	movl 28(%esp),%esi
	movl 24(%esp),%ebp
	movl (%esp),%ecx
	movl 36(%esp),%eax
	jmp _i_73
join_l193:
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
join_l195:
	jmp _i_73
_i_73:
	movl $262144,%edx
	movl $8,%ebx
	movl %ecx,(%esp)
	movl %eax,36(%esp)
	movl 4(%esp),%eax
	movl %eax,%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	andl %edx,%ebx
	movl $0,%edx
	cmpl %edx,%ebx
	je join_l184
join_l185:
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
join_l184:
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
	movl %eax,8(%esp)
	leal _Perl_sv_2pv,%ecx
	movl (%ecx),%edx
	call *%edx
join_l183:
	movl %edi,32(%esp)
	movl %eax,%ecx
	movl 4(%esp),%eax
	jmp _i_79
_i_79:
	movl $0,%edx
	movl 12(%esp),%edi
	cmpl %edx,%edi
	jne join_l180
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
	jne join_l178
join_l179:
_i_83:
	movl 28(%esp),%esi
	movl 24(%esp),%ebp
	jmp _i_80
join_l178:
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
join_l180:
	jmp _i_80
_i_80:
	movl 36(%esp),%ebx
	movl (%ebx),%edx
	movl %ebx,36(%esp)
	movl $2,%ebx
	movl %esi,28(%esp)
	movl $8,%esi
	movl %eax,4(%esp)
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
	jne join_l166
join_l167:
	movl $0,%eax
	movl 8(%esp),%ecx
	cmpl %eax,%ecx
	je join_l164
join_l165:
	movl $0,%eax
	leal _Perl_newSV,%esi
	movl (%esi),%ebx
	call *%ebx
join_l163:
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
join_l160:
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
join_l164:
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
join_l166:
	jmp _i_88
_i_88:
	movl $4,%esi
	movl %edx,%ebx
	addl %esi,%ebx
	movl (%ebx),%esi
	movl (%esi),%ebx
	cmpl %edi,%ebx
	je join_l176
join_l177:
	jmp join_l229
join_l229:
	movl %edx,52(%esp)
	jmp _i_89
join_l176:
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
	je join_l174
join_l175:
	jmp join_l228
join_l228:
	movl %edx,52(%esp)
	jmp _i_89
join_l174:
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
	movl %ecx,52(%esp)
	movl %edx,60(%esp)
	call *%ebx
join_l173:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l169
join_l170:
	jmp _i_89
_i_89:
	movl 52(%esp),%eax
	movl (%eax),%eax
	movl %eax,%edx
	jmp _i_91
join_l169:
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
stackdata_l231:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l219
.long frame_l232
.section .pcmap_data
frame_l232:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l214
.long frame_l233
.section .pcmap_data
frame_l233:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l211
.long frame_l234
.section .pcmap_data
frame_l234:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l208
.long frame_l235
.section .pcmap_data
frame_l235:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l205
.long frame_l236
.section .pcmap_data
frame_l236:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l200
.long frame_l237
.section .pcmap_data
frame_l237:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l192
.long frame_l238
.section .pcmap_data
frame_l238:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l189
.long frame_l239
.section .pcmap_data
frame_l239:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l183
.long frame_l240
.section .pcmap_data
frame_l240:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l173
.long frame_l241
.section .pcmap_data
frame_l241:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l163
.long frame_l242
.section .pcmap_data
frame_l242:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l160
.long frame_l243
.section .pcmap_data
frame_l243:
.long 0xffffffc4
.long 0x80000010
.long 0xffffffd4
.long stackdata_l231
.long 0x80000008
.long 0x8000001b
.long 0x80000000
.long 0x80000000
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
initialize_continuations_l247:
proc_body_start_l246:
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
	movl %eax,4(%esp)
	movl 8(%esp),%eax
	movl %ecx,(%eax)
	jmp _i_102
_i_102:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne join_l249
_i_100:
	movl $8,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 24(%esp), %esp
	ret
join_l249:
	jmp _i_101
_i_101:
	movl $12,%ecx
	movl %eax,8(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movsbl (%eax),%ecx
	movl $65,%eax
	cmpl %eax,%ecx
	jl join_l257
join_l258:
	movl $90,%eax
	cmpl %eax,%ecx
	jg join_l255
join_l256:
	movl $1,%eax
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
	movl $12,%eax
	movl %ecx,4(%esp)
	movl %edx,%ecx
	addl %eax,%ecx
	movsbl (%ecx),%eax
	movl $80,%ecx
	cmpl %ecx,%eax
	je join_l253
join_l254:
	cmpl %ecx,%eax
	jl join_l252
_i_110:
	movl $83,%ecx
	cmpl %ecx,%eax
	je join_l250
join_l251:
	jmp _i_106
join_l250:
	jmp _i_109
join_l252:
	jmp _i_106
join_l253:
	jmp _i_109
_i_109:
	movl $0,%eax
	movl 8(%esp),%ecx
	movl %eax,(%ecx)
	movl %ecx,8(%esp)
	jmp _i_106
_i_106:
	jmp _i_104
join_l255:
	jmp _i_104
join_l257:
	jmp _i_104
_i_104:
	movl (%edx),%eax
	movl %eax,%edx
	movl 8(%esp),%eax
	jmp _i_102
.section .pcmap_data
stackdata_l265:
.long 0
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
initialize_continuations_l269:
proc_body_start_l268:
	movl %eax,12(%esp)
	movl $0,%eax
	movl %ecx,16(%esp)
	movl (%esp),%ecx
	cmpl %eax,%ecx
	jne join_l332
join_l333:
	movl $0,%eax
	movl $16,%ecx
	movl %edx,20(%esp)
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal 84(%esp), %esp
	ret
join_l332:
	jmp _i_112
_i_112:
	movl %ecx,%eax
	movl %ecx,(%esp)
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
	je join_l329
join_l330:
	leal -8(%esp), %esp
	movl $-8,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl $-76,%edx
	leal 76(%esp), %eax
	addl %edx,%eax
	movl (%ebx),%edx
	movl %edx,(%eax)
	movl $-4,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl $-72,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	movl 8(%esp),%eax
	leal _i_hv_magic_check,%ebx
	movl (%ebx),%edx
	movl %ecx,36(%esp)
	call *%edx
join_l328:
	movl $-8,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je join_l324
join_l325:
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
	movl %edx,16(%esp)
	leal 80(%esp), %edx
	addl %ebx,%edx
	movl 20(%esp),%ebx
	movl %ebx,(%edx)
	leal _Perl_mg_copy,%edx
	movl (%edx),%edx
	movl %ecx,24(%esp)
	call *%edx
join_l323:
	movl 28(%esp),%eax
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne join_l319
join_l320:
	movl $-4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne join_l317
join_l318:
	movl $0,%eax
	movl $16,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%ebx
	leal 84(%esp), %esp
	ret
join_l317:
	jmp _i_118
join_l319:
	jmp _i_118
_i_118:
	movl %ebx,8(%esp)
	movl %eax,28(%esp)
	jmp _i_116
join_l324:
	jmp _i_116
_i_116:
	movl 28(%esp),%ecx
	jmp _i_114
join_l329:
	jmp _i_114
_i_114:
	movl $0,%edx
	movl 16(%esp),%eax
	cmpl %edx,%eax
	jne join_l315
_i_122:
	movl 4(%esp),%edx
	movl %edx,%eax
	movl %edx,4(%esp)
	movl 8(%esp),%ebx
	movl %ebx,%edx
	movl %ecx,28(%esp)
	movl $0,%ecx
	jmp _i_126
_i_126:
	movl %ebx,8(%esp)
	movl $1,%ebx
	movl %ebp,32(%esp)
	movl %edx,%ebp
	subl %ebx,%ebp
	movl $0,%ebx
	cmpl %ebx,%edx
	jne join_l313
join_l314:
_i_123:
	movl %ecx,%eax
	movl 32(%esp),%ebp
	movl 28(%esp),%ecx
	jmp _i_120
join_l313:
	jmp _i_125
_i_125:
	movl $1,%ebx
	movl %eax,%edx
	addl %ebx,%edx
	movsbl (%eax),%ebx
	movl $33,%eax
	imull %ecx,%eax
	addl %ebx,%eax
	movl %eax,%ecx
	movl %edx,%eax
	movl %ebp,%edx
	movl 32(%esp),%ebp
	movl 8(%esp),%ebx
	jmp _i_126
join_l315:
	jmp _i_120
_i_120:
	movl (%ecx),%edx
	movl $0,%ebx
	cmpl %ebx,%edx
	jne join_l311
join_l312:
	movl $16,%edx
	movl $1,%ebx
	movl %esi,36(%esp)
	movl $2,%esi
	movl %edi,40(%esp)
	movl $1,%edi
	movl %eax,16(%esp)
	movl $8,%eax
	movl %ebp,32(%esp)
	movl %ecx,%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	addl %edi,%eax
	movl %ecx,28(%esp)
	movl %esi,%ecx
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
join_l310:
	movl 28(%esp),%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	movl (%ecx),%eax
	movl $16,%edx
	movl $1,%ebx
	movl $2,%esi
	movl $1,%edi
	movl $8,%ebp
	movl %edx,52(%esp)
	movl %ecx,%edx
	addl %ebp,%edx
	movl (%edx),%ebp
	addl %edi,%ebp
	movl %ecx,36(%esp)
	movl %esi,%ecx
	shll %cl, %ebp
	movl %ebx,%ecx
	shll %cl, %ebp
	movl 52(%esp),%ecx
	subl %ecx,%ebp
	movl $1,%ecx
	imull %ebp,%ecx
	movl $-72,%ebp
	leal 76(%esp), %ebx
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl $0,%ecx
	movl $-76,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	leal _memset,%ecx
	movl (%ecx),%ebp
	call *%ebp
join_l307:
	movl 40(%esp),%edi
	movl 36(%esp),%esi
	movl 32(%esp),%ebp
	movl 16(%esp),%eax
	movl 28(%esp),%ecx
	jmp _i_128
join_l311:
	jmp _i_128
_i_128:
	movl (%ecx),%edx
	movl $2,%ebx
	movl %eax,16(%esp)
	movl $8,%eax
	movl %ebp,32(%esp)
	movl %ecx,%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	movl %ecx,28(%esp)
	movl 16(%esp),%ebp
	movl %ebp,%ecx
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
	jne join_l290
join_l291:
	leal _i_new_he,%eax
	movl (%eax),%ecx
	movl %edx,52(%esp)
	call *%ecx
join_l289:
	movl $536870912,%ecx
	movl $8,%edx
	movl %esi,36(%esp)
	movl %ebp,16(%esp)
	movl (%esp),%ebp
	movl %ebp,%esi
	addl %edx,%esi
	movl (%esi),%edx
	andl %ecx,%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	je join_l285
join_l286:
	leal -8(%esp), %esp
	movl %eax,64(%esp)
	movl 12(%esp),%eax
	movl $-76,%esi
	leal 76(%esp), %ecx
	addl %esi,%ecx
	movl 16(%esp),%esi
	movl %esi,(%ecx)
	movl $-72,%ecx
	leal 76(%esp), %esi
	addl %ecx,%esi
	movl 24(%esp),%ecx
	movl %ecx,(%esi)
	leal _Perl_share_hek,%ecx
	movl (%ecx),%esi
	call *%esi
join_l284:
	movl $4,%ecx
	movl 56(%esp),%edx
	movl %edx,%esi
	addl %ecx,%esi
	movl %eax,(%esi)
	jmp _i_141
join_l285:
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
join_l281:
	movl $4,%ecx
	movl 56(%esp),%edx
	movl %edx,%esi
	addl %ecx,%esi
	movl %eax,(%esi)
	jmp _i_141
_i_141:
	movl $8,%eax
	movl %edx,%esi
	addl %eax,%esi
	movl 12(%esp),%eax
	movl %eax,(%esi)
	movl (%ebx),%eax
	movl %eax,(%edx)
	movl %edx,(%ebx)
	movl $12,%ebx
	movl 28(%esp),%eax
	movl %eax,%esi
	addl %ebx,%esi
	movl $1,%ebx
	movl (%esi),%ecx
	addl %ebx,%ecx
	movl %ecx,(%esi)
	movl $0,%ecx
	movl 52(%esp),%esi
	cmpl %ecx,%esi
	je join_l277
join_l278:
	movl $4,%ecx
	movl %eax,%esi
	addl %ecx,%esi
	movl $1,%ecx
	movl (%esi),%ebx
	addl %ecx,%ebx
	movl %ebx,(%esi)
	movl $12,%ebx
	movl %eax,%esi
	addl %ebx,%esi
	movl (%esi),%ebx
	movl $8,%esi
	addl %esi,%eax
	movl (%eax),%esi
	cmpl %esi,%ebx
	jbe join_l275
join_l276:
	movl %ebp,%eax
	leal _i_hsplit,%ebp
	movl (%ebp),%ebx
	movl %edx,56(%esp)
	call *%ebx
join_l274:
	movl 56(%esp),%edx
	jmp _i_144
join_l275:
	jmp _i_144
_i_144:
	jmp _i_142
join_l277:
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
	movl 32(%esp),%ebp
	movl 24(%esp),%ebx
	movl 36(%esp),%esi
	leal 84(%esp), %esp
	ret
join_l290:
	jmp _i_130
_i_130:
	movl $4,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl (%edx),%eax
	cmpl %ebp,%eax
	je join_l303
join_l304:
	jmp join_l338
join_l338:
	movl %edi,40(%esp)
	movl %ecx,56(%esp)
	movl 8(%esp),%edi
	jmp _i_131
join_l303:
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
	je join_l301
join_l302:
	jmp join_l337
join_l337:
	movl %edi,40(%esp)
	movl %ecx,56(%esp)
	movl %edx,%edi
	jmp _i_131
join_l301:
	jmp _i_136
_i_136:
	leal -8(%esp), %esp
	movl $8,%eax
	movl %edx,16(%esp)
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
	movl %edx,12(%esp)
	leal 76(%esp), %edx
	addl %edi,%edx
	movl 16(%esp),%edi
	movl %edi,(%edx)
	leal _Perl_my_memcmp,%edx
	movl (%edx),%edx
	movl %ecx,64(%esp)
	call *%edx
join_l300:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l296
join_l297:
	jmp _i_131
_i_131:
	movl $0,%eax
	movl 56(%esp),%edx
	movl (%edx),%edx
	movl %edi,8(%esp)
	movl %edx,%ecx
	movl %eax,%edx
	movl 40(%esp),%edi
	jmp _i_133
join_l296:
	jmp _i_138
_i_138:
	movl $8,%eax
	movl 56(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_free,%edx
	movl (%edx),%edi
	movl %ecx,56(%esp)
	call *%edi
join_l295:
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
	movl 32(%esp),%ebp
	movl 24(%esp),%ebx
	movl 40(%esp),%edi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
stackdata_l340:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long join_l328
.long frame_l341
.section .pcmap_data
frame_l341:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long stackdata_l340
.long 0x80000008
.long 0x80000017
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
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
.long 0xffffffcc
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
.long join_l323
.long frame_l342
.section .pcmap_data
frame_l342:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long stackdata_l340
.long 0x80000008
.long 0x80000017
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffbc
.long 0xffffffc0
.long 0x40000007
.long 0xffffffc8
.long 0xffffffcc
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
.long join_l310
.long frame_l343
.section .pcmap_data
frame_l343:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long stackdata_l340
.long 0x80000008
.long 0x80000017
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
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
.long join_l307
.long frame_l344
.section .pcmap_data
frame_l344:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long stackdata_l340
.long 0x80000008
.long 0x80000017
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffcc
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
.long join_l300
.long frame_l345
.section .pcmap_data
frame_l345:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long stackdata_l340
.long 0x80000008
.long 0x80000017
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffbc
.long 0xffffffc0
.long 0x4000000b
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd8
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
.section .pcmap
.long join_l295
.long frame_l346
.section .pcmap_data
frame_l346:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long stackdata_l340
.long 0x80000008
.long 0x80000017
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0x4000000a
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
.section .pcmap
.long join_l289
.long frame_l347
.section .pcmap_data
frame_l347:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long stackdata_l340
.long 0x80000008
.long 0x80000017
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd8
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
.section .pcmap
.long join_l284
.long frame_l348
.section .pcmap_data
frame_l348:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long stackdata_l340
.long 0x80000008
.long 0x80000017
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0x4000000b
.long 0x40000009
.long 0
.long 0
.long 0xffffffc8
.long 0
.long 0xffffffd8
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
.section .pcmap
.long join_l281
.long frame_l349
.section .pcmap_data
frame_l349:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long stackdata_l340
.long 0x80000008
.long 0x80000017
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0x4000000b
.long 0x40000009
.long 0
.long 0
.long 0xffffffc8
.long 0
.long 0xffffffd8
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
.section .pcmap
.long join_l274
.long frame_l350
.section .pcmap_data
frame_l350:
.long 0xffffffbc
.long 0x80000014
.long 0xffffffd0
.long stackdata_l340
.long 0x80000008
.long 0x80000017
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
initialize_continuations_l354:
proc_body_start_l353:
	movl %edx,8(%esp)
	movl $0,%edx
	movl %eax,12(%esp)
	movl (%esp),%eax
	cmpl %edx,%eax
	jne join_l439
join_l440:
	movl $0,%eax
	movl $12,%edx
	movl %ecx,16(%esp)
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 84(%esp), %esp
	ret
join_l439:
	jmp _i_147
_i_147:
	movl %eax,%edx
	movl %eax,(%esp)
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
	je join_l436
join_l437:
	leal -8(%esp), %esp
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
	movl %eax,32(%esp)
	movl 8(%esp),%eax
	leal _i_hv_magic_check,%ecx
	movl (%ecx),%ebx
	call *%ebx
join_l435:
	movl $-8,%eax
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je join_l431
join_l432:
	leal _PL_tainted,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	leal _PL_tainting,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	je join_l429
join_l430:
	movl 4(%esp),%ecx
	movl %ecx,%edx
	movl $57344,%ebx
	movl %ecx,4(%esp)
	movl $8,%ecx
	movl %ebp,28(%esp)
	movl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	andl %ebx,%ecx
	movl $0,%ebx
	cmpl %ebx,%ecx
	je join_l427
join_l428:
	movl %eax,32(%esp)
	movl %edx,%eax
	leal _Perl_sv_tainted,%edx
	movl (%edx),%ecx
	call *%ecx
join_l426:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l422
join_l423:
	movl $1,%eax
	jmp _i_157
join_l422:
	jmp _i_156
join_l427:
	jmp join_l444
join_l444:
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
join_l429:
	jmp _i_153
_i_153:
	movl %eax,32(%esp)
	movl 4(%esp),%eax
	leal _Perl_newSVsv,%ecx
	movl (%ecx),%edx
	call *%edx
join_l421:
	leal _Perl_sv_2mortal,%ecx
	movl (%ecx),%edx
	call *%edx
join_l418:
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
	movl %edx,16(%esp)
	movl $-76,%edx
	movl %ecx,20(%esp)
	leal 84(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal _Perl_mg_copy,%ecx
	movl (%ecx),%ebx
	call *%ebx
join_l415:
	movl $0,%eax
	movl 32(%esp),%ecx
	cmpl %eax,%ecx
	je join_l411
join_l412:
	movl $1,%eax
	leal _PL_tainted,%ecx
	movl %eax,(%ecx)
	jmp _i_158
join_l411:
	jmp _i_158
_i_158:
	movl 24(%esp),%eax
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne join_l409
join_l410:
	movl $-4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne join_l407
join_l408:
	movl $0,%eax
	movl $12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 84(%esp), %esp
	ret
join_l407:
	jmp _i_160
join_l409:
	jmp _i_160
_i_160:
	movl %eax,24(%esp)
	jmp _i_151
join_l431:
	jmp _i_151
_i_151:
	movl 24(%esp),%eax
	jmp _i_149
join_l436:
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
	je join_l404
join_l405:
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
join_l404:
	jmp _i_163
_i_163:
	leal -4(%esp), %esp
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl $-76,%ecx
	leal 76(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl %ebx,%eax
	leal _Perl_sv_2pv,%ebx
	movl (%ebx),%ecx
	call *%ecx
join_l403:
	jmp _i_164
_i_164:
	movl $0,%ebx
	movl 12(%esp),%ecx
	cmpl %ebx,%ecx
	jne join_l400
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
	jne join_l398
join_l399:
_i_168:
	movl 36(%esp),%esi
	movl 28(%esp),%ebp
	jmp _i_165
join_l398:
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
join_l400:
	jmp _i_165
_i_165:
	movl 24(%esp),%edx
	movl (%edx),%ebx
	movl %edx,24(%esp)
	movl $0,%edx
	cmpl %edx,%ebx
	jne join_l396
join_l397:
	movl $16,%edx
	movl $1,%ebx
	movl %ebp,28(%esp)
	movl $2,%ebp
	movl %edi,40(%esp)
	movl $1,%edi
	movl %eax,44(%esp)
	movl $8,%eax
	movl %esi,36(%esp)
	movl %ecx,12(%esp)
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
join_l395:
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
join_l392:
	movl %esi,24(%esp)
	movl 40(%esp),%edi
	movl 36(%esp),%esi
	movl 28(%esp),%ebp
	movl 12(%esp),%ecx
	movl 44(%esp),%eax
	jmp _i_173
join_l396:
	jmp _i_173
_i_173:
	movl 24(%esp),%edx
	movl (%edx),%ebx
	movl %eax,44(%esp)
	movl $2,%eax
	movl %ecx,12(%esp)
	movl $8,%ecx
	movl %edi,40(%esp)
	movl %edx,%edi
	addl %ecx,%edi
	movl (%edi),%ecx
	movl %edx,24(%esp)
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
	jne join_l375
join_l376:
	leal _i_new_he,%eax
	movl (%eax),%ecx
	movl %edx,52(%esp)
	call *%ecx
join_l374:
	movl $536870912,%ecx
	movl $8,%edx
	movl %ebp,28(%esp)
	movl %edi,12(%esp)
	movl (%esp),%edi
	movl %edi,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	andl %ecx,%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	je join_l370
join_l371:
	leal -8(%esp), %esp
	movl $-12,%ebp
	leal 80(%esp), %ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl $-80,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%ebp),%ecx
	movl %ecx,(%edx)
	movl %eax,64(%esp)
	movl 52(%esp),%eax
	movl $-76,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal _Perl_share_hek,%ecx
	movl (%ecx),%edx
	call *%edx
join_l369:
	movl $4,%ecx
	movl 56(%esp),%edx
	movl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp _i_186
join_l370:
	jmp _i_185
_i_185:
	leal -8(%esp), %esp
	movl $-12,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $-80,%edx
	leal 80(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	movl %eax,64(%esp)
	movl 52(%esp),%eax
	movl $-76,%edx
	leal 80(%esp), %ebp
	addl %edx,%ebp
	movl 20(%esp),%edx
	movl %edx,(%ebp)
	leal _i_save_hek,%edx
	movl (%edx),%ebp
	call *%ebp
join_l366:
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
	movl %ebp,24(%esp)
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl %ebp,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%ebx
	je join_l362
join_l363:
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
	jbe join_l360
join_l361:
	movl %edi,%eax
	leal _i_hsplit,%edi
	movl (%edi),%ebp
	movl %edx,56(%esp)
	call *%ebp
join_l359:
	movl 56(%esp),%edx
	jmp _i_189
join_l360:
	jmp _i_189
_i_189:
	jmp _i_187
join_l362:
	jmp _i_187
_i_187:
	movl %edx,%eax
	movl $12,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%ebp
	movl 20(%esp),%ebx
	movl 40(%esp),%edi
	leal 84(%esp), %esp
	ret
join_l375:
	jmp _i_175
_i_175:
	movl $4,%ebx
	movl %ecx,%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	movl (%ebx),%eax
	cmpl %edi,%eax
	je join_l388
join_l389:
	jmp join_l446
join_l446:
	movl %esi,36(%esp)
	movl %edi,12(%esp)
	movl %edx,52(%esp)
	movl %ecx,56(%esp)
	movl 44(%esp),%ebx
	jmp _i_176
join_l388:
	jmp _i_179
_i_179:
	movl $4,%eax
	movl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $-12,%ebx
	movl %edi,12(%esp)
	leal 72(%esp), %edi
	addl %ebx,%edi
	movl (%edi),%ebx
	movl (%ebx),%edi
	cmpl %edi,%eax
	je join_l386
join_l387:
	jmp join_l445
join_l445:
	movl %esi,36(%esp)
	movl %edx,52(%esp)
	movl %ecx,56(%esp)
	movl 44(%esp),%ebx
	jmp _i_176
join_l386:
	jmp _i_181
_i_181:
	leal -8(%esp), %esp
	movl $8,%eax
	movl $4,%edi
	movl %ecx,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	addl %eax,%edi
	movl $-12,%eax
	leal 80(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $-76,%ebx
	movl %esi,44(%esp)
	leal 80(%esp), %esi
	addl %ebx,%esi
	movl (%eax),%ebx
	movl %ebx,(%esi)
	movl $-80,%ebx
	leal 80(%esp), %esi
	addl %ebx,%esi
	movl 52(%esp),%ebx
	movl %ebx,(%esi)
	movl %edi,%eax
	leal _Perl_my_memcmp,%edi
	movl (%edi),%esi
	movl %edx,60(%esp)
	movl %ecx,64(%esp)
	call *%esi
join_l385:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l381
join_l382:
	jmp _i_176
_i_176:
	movl $0,%eax
	movl 56(%esp),%edi
	movl (%edi),%edi
	movl %ebx,44(%esp)
	movl %eax,%ebx
	movl %edi,%ecx
	movl 36(%esp),%esi
	movl 12(%esp),%edi
	movl 52(%esp),%edx
	jmp _i_178
join_l381:
	jmp _i_183
_i_183:
	movl $8,%eax
	movl 56(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal _Perl_sv_free,%edx
	movl (%edx),%esi
	movl %ecx,56(%esp)
	call *%esi
join_l380:
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
stackdata_l448:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long join_l435
.long frame_l449
.section .pcmap_data
frame_l449:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l426
.long frame_l450
.section .pcmap_data
frame_l450:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l421
.long frame_l451
.section .pcmap_data
frame_l451:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l418
.long frame_l452
.section .pcmap_data
frame_l452:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l415
.long frame_l453
.section .pcmap_data
frame_l453:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l403
.long frame_l454
.section .pcmap_data
frame_l454:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l395
.long frame_l455
.section .pcmap_data
frame_l455:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l392
.long frame_l456
.section .pcmap_data
frame_l456:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l385
.long frame_l457
.section .pcmap_data
frame_l457:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l380
.long frame_l458
.section .pcmap_data
frame_l458:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l374
.long frame_l459
.section .pcmap_data
frame_l459:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l369
.long frame_l460
.section .pcmap_data
frame_l460:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l366
.long frame_l461
.section .pcmap_data
frame_l461:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l359
.long frame_l462
.section .pcmap_data
frame_l462:
.long 0xffffffb8
.long 0x80000010
.long 0xffffffc8
.long stackdata_l448
.long 0x80000008
.long 0x80000020
.long 0x80000000
.long 0x80000000
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
initialize_continuations_l466:
proc_body_start_l465:
	movl %edx,8(%esp)
	movl $0,%edx
	movl %eax,12(%esp)
	movl (%esp),%eax
	cmpl %edx,%eax
	jne join_l528
join_l529:
	movl $0,%eax
	movl $12,%edx
	movl %ecx,16(%esp)
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 80(%esp), %esp
	ret
join_l528:
	jmp _i_192
_i_192:
	movl $32768,%edx
	movl %eax,(%esp)
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
	je join_l525
join_l526:
	leal -8(%esp), %esp
	movl $-8,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl $-76,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	movl $-4,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl $-72,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	movl %ecx,%eax
	leal _i_hv_magic_check,%edx
	movl (%edx),%ebx
	movl %ecx,8(%esp)
	call *%ebx
join_l524:
	movl $-8,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je join_l520
join_l521:
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
	movl %edx,20(%esp)
	movl $-72,%edx
	movl %ecx,16(%esp)
	leal 80(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal _Perl_hv_fetch,%ecx
	movl (%ecx),%ebx
	call *%ebx
join_l519:
	movl %eax,%ecx
	movl $0,%edx
	cmpl %edx,%eax
	je join_l515
join_l516:
	movl (%ecx),%eax
	movl %eax,24(%esp)
	leal _Perl_mg_clear,%ecx
	movl (%ecx),%edx
	call *%edx
join_l514:
	movl $-4,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne join_l510
join_l511:
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
join_l509:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l505
join_l506:
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
join_l504:
	movl 24(%esp),%eax
	movl $12,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 80(%esp), %esp
	ret
join_l505:
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
join_l510:
	jmp _i_198
_i_198:
	jmp _i_196
join_l515:
	jmp _i_196
join_l520:
	jmp _i_196
_i_196:
	movl (%esp),%ecx
	jmp _i_194
join_l525:
	jmp _i_194
_i_194:
	movl (%ecx),%eax
	movl (%eax),%edx
	movl $0,%ebx
	cmpl %ebx,%edx
	jne join_l498
join_l499:
	movl $0,%eax
	movl $12,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 80(%esp), %esp
	ret
join_l498:
	jmp _i_202
_i_202:
_i_204:
	movl 4(%esp),%edx
	movl %edx,%ebx
	movl %ecx,(%esp)
	movl %edx,4(%esp)
	movl 8(%esp),%edx
	movl %edx,%ecx
	movl %edx,8(%esp)
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
	jne join_l495
join_l496:
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
	jne join_l469
join_l470:
	movl $0,%ebx
	movl %ebx,%eax
	movl $12,%ebx
	leal 68(%esp), %edx
	addl %ebx,%edx
	movl 16(%esp),%ebx
	movl %ebx,(%edx)
	movl 28(%esp),%ebp
	movl 20(%esp),%ebx
	movl 32(%esp),%esi
	leal 80(%esp), %esp
	ret
join_l469:
	jmp _i_210
_i_210:
	movl $4,%ebx
	movl %edi,40(%esp)
	movl %ecx,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	movl (%ebx),%edi
	cmpl %edx,%edi
	je join_l493
join_l494:
	jmp join_l534
join_l534:
	movl %eax,48(%esp)
	movl %edx,56(%esp)
	movl %ecx,52(%esp)
	movl 4(%esp),%ebx
	movl 8(%esp),%edi
	jmp _i_211
join_l493:
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
	je join_l491
join_l492:
	jmp join_l533
join_l533:
	movl %eax,48(%esp)
	movl %edx,56(%esp)
	movl %ecx,52(%esp)
	movl %ebx,%edi
	movl 4(%esp),%ebx
	jmp _i_211
join_l491:
	jmp _i_216
_i_216:
	leal -8(%esp), %esp
	movl $8,%edi
	movl %ebx,16(%esp)
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
join_l490:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l486
join_l487:
	jmp _i_211
_i_211:
	movl $0,%eax
	movl 52(%esp),%edx
	movl (%edx),%esi
	movl %ebx,4(%esp)
	movl %edi,8(%esp)
	movl %esi,%ecx
	movl %edx,%esi
	movl %eax,%ebp
	movl 40(%esp),%edi
	movl 48(%esp),%eax
	movl 56(%esp),%edx
	jmp _i_213
join_l486:
	jmp _i_218
_i_218:
	movl 52(%esp),%eax
	movl (%eax),%ecx
	movl 44(%esp),%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	cmpl %ecx,%ebp
	je join_l484
join_l485:
	movl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne join_l482
join_l483:
	movl $4,%ecx
	movl 48(%esp),%edx
	movl %edx,%ebp
	addl %ecx,%ebp
	movl $1,%ecx
	movl (%ebp),%esi
	subl %ecx,%esi
	movl %esi,(%ebp)
	movl %edx,48(%esp)
	jmp _i_220
join_l482:
	jmp _i_220
join_l484:
	jmp _i_220
_i_220:
	movl $2,%ebp
	movl 12(%esp),%esi
	andl %ebp,%esi
	movl $0,%ebp
	cmpl %ebp,%esi
	je join_l480
join_l481:
	movl $0,%ecx
	jmp _i_223
join_l480:
	jmp _i_222
_i_222:
	movl $8,%ebp
	movl %eax,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	movl %eax,52(%esp)
	movl %ebp,%eax
	leal _Perl_sv_mortalcopy,%ebp
	movl (%ebp),%esi
	call *%esi
join_l479:
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
	jne join_l475
join_l476:
	movl $8,%eax
	movl (%esp),%edx
	addl %eax,%edx
	movl $1073741824,%eax
	movl (%edx),%ebp
	orl %eax,%ebp
	movl %ebp,(%edx)
	jmp _i_225
join_l475:
	jmp _i_224
_i_224:
	leal -4(%esp), %esp
	movl %eax,56(%esp)
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
join_l474:
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
	movl 28(%esp),%ebp
	movl 20(%esp),%ebx
	movl 32(%esp),%esi
	movl 40(%esp),%edi
	leal 80(%esp), %esp
	ret
join_l495:
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
stackdata_l536:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long join_l524
.long frame_l537
.section .pcmap_data
frame_l537:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long stackdata_l536
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l519
.long frame_l538
.section .pcmap_data
frame_l538:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long stackdata_l536
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l514
.long frame_l539
.section .pcmap_data
frame_l539:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long stackdata_l536
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l509
.long frame_l540
.section .pcmap_data
frame_l540:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long stackdata_l536
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l504
.long frame_l541
.section .pcmap_data
frame_l541:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long stackdata_l536
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l490
.long frame_l542
.section .pcmap_data
frame_l542:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long stackdata_l536
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l479
.long frame_l543
.section .pcmap_data
frame_l543:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long stackdata_l536
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l474
.long frame_l544
.section .pcmap_data
frame_l544:
.long 0xffffffbc
.long 0x80000010
.long 0xffffffcc
.long stackdata_l536
.long 0x80000008
.long 0x80000018
.long 0x80000000
.long 0x80000000
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
.section .text
_Perl_hv_delete_ent:
	leal -76(%esp), %esp
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 76(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	movl %ecx,4(%esp)
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 76(%esp), %ecx
	movl (%ecx),%ecx
initialize_continuations_l548:
proc_body_start_l547:
	movl %edx,8(%esp)
	movl $0,%edx
	movl %eax,12(%esp)
	movl (%esp),%eax
	cmpl %edx,%eax
	jne join_l616
join_l617:
	movl $0,%eax
	movl $12,%edx
	movl %ecx,16(%esp)
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 88(%esp), %esp
	ret
join_l616:
	jmp _i_227
_i_227:
	movl $32768,%edx
	movl %eax,(%esp)
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
	je join_l613
join_l614:
	leal -8(%esp), %esp
	movl $-8,%eax
	leal 84(%esp), %edx
	addl %eax,%edx
	movl $-84,%eax
	leal 84(%esp), %ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	movl $-4,%eax
	leal 84(%esp), %ebx
	addl %eax,%ebx
	movl $-80,%eax
	leal 84(%esp), %edx
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	movl %ecx,%eax
	leal _i_hv_magic_check,%edx
	movl (%edx),%ebx
	movl %ecx,8(%esp)
	call *%ebx
join_l612:
	movl $-8,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je join_l608
join_l609:
	leal -12(%esp), %esp
	movl 12(%esp),%eax
	movl $-88,%ecx
	leal 88(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%edx
	movl $-84,%ebx
	movl %ecx,16(%esp)
	leal 88(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $-80,%ecx
	leal 88(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal _Perl_hv_fetch_ent,%edx
	movl (%edx),%ebx
	movl %ecx,24(%esp)
	call *%ebx
join_l607:
	movl %eax,%ecx
	movl $0,%edx
	cmpl %edx,%eax
	je join_l603
join_l604:
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,24(%esp)
	leal _Perl_mg_clear,%ecx
	movl (%ecx),%edx
	call *%edx
join_l602:
	movl $-4,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne join_l598
join_l599:
	leal -4(%esp), %esp
	movl 28(%esp),%eax
	movl $112,%ebx
	movl $-80,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	leal _Perl_mg_find,%edx
	movl (%edx),%ebx
	call *%ebx
join_l597:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l593
join_l594:
	leal -4(%esp), %esp
	movl 28(%esp),%eax
	movl $112,%ebx
	movl $-80,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	leal _Perl_sv_unmagic,%edx
	movl (%edx),%ebx
	call *%ebx
join_l592:
	movl 24(%esp),%eax
	movl $12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 88(%esp), %esp
	ret
join_l593:
	jmp _i_235
_i_235:
	movl $0,%eax
	movl $12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 88(%esp), %esp
	ret
join_l598:
	jmp _i_233
_i_233:
	jmp _i_231
join_l603:
	jmp _i_231
join_l608:
	jmp _i_231
_i_231:
	movl (%esp),%ecx
	jmp _i_229
join_l613:
	jmp _i_229
_i_229:
	movl (%ecx),%eax
	movl (%eax),%edx
	movl $0,%ebx
	cmpl %ebx,%edx
	jne join_l586
join_l587:
	movl $0,%eax
	movl $12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 88(%esp), %esp
	ret
join_l586:
	jmp _i_237
_i_237:
	movl $262144,%edx
	movl $8,%ebx
	movl %ebp,28(%esp)
	movl %ecx,(%esp)
	movl 4(%esp),%ecx
	movl %ecx,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	andl %edx,%ebx
	movl $0,%edx
	cmpl %edx,%ebx
	je join_l583
join_l584:
	movl $4,%edx
	movl (%ecx),%ebp
	addl %edx,%ebp
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl (%ebp),%edx
	movl %edx,(%ebx)
	movl (%ecx),%edx
	movl (%edx),%ecx
	jmp _i_241
join_l583:
	jmp _i_240
_i_240:
	leal -4(%esp), %esp
	movl $-12,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	movl $-80,%edx
	leal 80(%esp), %ebp
	addl %edx,%ebp
	movl (%ebx),%edx
	movl %edx,(%ebp)
	movl %eax,36(%esp)
	movl %ecx,%eax
	leal _Perl_sv_2pv,%ecx
	movl (%ecx),%edx
	call *%edx
join_l582:
	movl %eax,%ecx
	movl 32(%esp),%eax
	jmp _i_241
_i_241:
	movl $0,%edx
	movl 12(%esp),%ebx
	cmpl %edx,%ebx
	jne join_l579
_i_244:
	movl %ecx,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl (%ebx),%ebp
	movl $0,%ebx
	jmp _i_248
_i_248:
	movl %esi,36(%esp)
	movl $1,%esi
	movl %edi,40(%esp)
	movl %ebp,%edi
	subl %esi,%edi
	movl $0,%esi
	cmpl %esi,%ebp
	jne join_l577
join_l578:
_i_245:
	movl 40(%esp),%edi
	movl 36(%esp),%esi
	jmp _i_242
join_l577:
	jmp _i_247
_i_247:
	movl $1,%esi
	movl %edx,%ebp
	addl %esi,%ebp
	movsbl (%edx),%esi
	movl $33,%edx
	imull %ebx,%edx
	addl %esi,%edx
	movl %edx,%ebx
	movl %ebp,%edx
	movl %edi,%ebp
	movl 40(%esp),%edi
	movl 36(%esp),%esi
	jmp _i_248
join_l579:
	jmp _i_242
_i_242:
	movl (%eax),%ebp
	movl $2,%edx
	movl %esi,36(%esp)
	movl $8,%esi
	movl %ecx,44(%esp)
	movl %eax,%ecx
	addl %esi,%ecx
	movl (%ecx),%esi
	movl %ebx,%ecx
	andl %esi,%ecx
	movl %ecx,48(%esp)
	movl %edx,%ecx
	movl 48(%esp),%edx
	shll %cl, %edx
	addl %ebp,%edx
	movl (%edx),%ebp
	movl $1,%ecx
	jmp _i_253
_i_253:
	movl $0,%esi
	cmpl %esi,%ebp
	jne join_l551
join_l552:
	movl $0,%esi
	movl %esi,%eax
	movl $12,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	movl 16(%esp),%esi
	movl %esi,(%ebx)
	movl 28(%esp),%ebp
	movl 20(%esp),%ebx
	movl 36(%esp),%esi
	leal 88(%esp), %esp
	ret
join_l551:
	jmp _i_250
_i_250:
	movl $4,%esi
	movl %edi,40(%esp)
	movl %ebp,%edi
	addl %esi,%edi
	movl (%edi),%esi
	movl (%esi),%edi
	cmpl %ebx,%edi
	je join_l575
join_l576:
	jmp join_l622
join_l622:
	movl %ebx,12(%esp)
	movl %eax,32(%esp)
	movl %ebp,52(%esp)
	movl 44(%esp),%ebp
	jmp _i_251
join_l575:
	jmp _i_254
_i_254:
	movl $4,%edi
	movl %ebp,%esi
	addl %edi,%esi
	movl (%esi),%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl $-12,%esi
	movl %ebx,12(%esp)
	leal 76(%esp), %ebx
	addl %esi,%ebx
	movl (%ebx),%esi
	movl (%esi),%ebx
	cmpl %ebx,%edi
	je join_l573
join_l574:
	jmp join_l621
join_l621:
	movl %eax,32(%esp)
	movl %ebp,52(%esp)
	movl 44(%esp),%ebp
	jmp _i_251
join_l573:
	jmp _i_256
_i_256:
	leal -8(%esp), %esp
	movl $8,%ebx
	movl $4,%edi
	movl %ebp,%esi
	addl %edi,%esi
	movl (%esi),%edi
	addl %ebx,%edi
	movl $-12,%ebx
	leal 84(%esp), %esi
	addl %ebx,%esi
	movl (%esi),%ebx
	movl $-80,%esi
	movl %ebp,60(%esp)
	leal 84(%esp), %ebp
	addl %esi,%ebp
	movl (%ebx),%esi
	movl %esi,(%ebp)
	movl $-84,%ebp
	leal 84(%esp), %esi
	addl %ebp,%esi
	movl 52(%esp),%ebp
	movl %ebp,(%esi)
	movl %eax,40(%esp)
	movl %edi,%eax
	leal _Perl_my_memcmp,%edi
	movl (%edi),%esi
	movl %edx,68(%esp)
	movl %ecx,64(%esp)
	call *%esi
join_l572:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l568
join_l569:
	jmp _i_251
_i_251:
	movl $0,%esi
	movl 52(%esp),%eax
	movl (%eax),%edi
	movl %ebp,44(%esp)
	movl %eax,%edx
	movl %edi,%ebp
	movl %esi,%ecx
	movl 40(%esp),%edi
	movl 12(%esp),%ebx
	movl 32(%esp),%eax
	jmp _i_253
join_l568:
	jmp _i_258
_i_258:
	movl 52(%esp),%eax
	movl (%eax),%ecx
	movl 60(%esp),%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl 56(%esp),%esi
	cmpl %ecx,%esi
	je join_l566
join_l567:
	movl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne join_l564
join_l565:
	movl $4,%ecx
	movl 32(%esp),%edx
	movl %edx,%esi
	addl %ecx,%esi
	movl $1,%ecx
	movl (%esi),%edi
	subl %ecx,%edi
	movl %edi,(%esi)
	movl %edx,32(%esp)
	jmp _i_260
join_l564:
	jmp _i_260
join_l566:
	jmp _i_260
_i_260:
	movl $2,%esi
	movl 8(%esp),%edi
	andl %esi,%edi
	movl $0,%esi
	cmpl %esi,%edi
	je join_l562
join_l563:
	movl $0,%ecx
	jmp _i_263
join_l562:
	jmp _i_262
_i_262:
	movl $8,%esi
	movl %eax,%edi
	addl %esi,%edi
	movl (%edi),%esi
	movl %eax,52(%esp)
	movl %esi,%eax
	leal _Perl_sv_mortalcopy,%esi
	movl (%esi),%edi
	call *%edi
join_l561:
	movl %eax,%ecx
	movl 52(%esp),%eax
	jmp _i_263
_i_263:
	movl $32,%edx
	movl 32(%esp),%edi
	movl %edi,%esi
	addl %edx,%esi
	movl (%esi),%edx
	cmpl %edx,%eax
	jne join_l557
join_l558:
	movl $8,%eax
	movl (%esp),%edx
	addl %eax,%edx
	movl $1073741824,%eax
	movl (%edx),%esi
	orl %eax,%esi
	movl %esi,(%edx)
	jmp _i_265
join_l557:
	jmp _i_264
_i_264:
	leal -4(%esp), %esp
	movl %eax,56(%esp)
	movl 4(%esp),%eax
	movl $-80,%edx
	leal 80(%esp), %esi
	addl %edx,%esi
	movl 56(%esp),%edx
	movl %edx,(%esi)
	leal _Perl_hv_free_ent,%edx
	movl (%edx),%esi
	movl %ecx,28(%esp)
	call *%esi
join_l556:
	movl 24(%esp),%ecx
	jmp _i_265
_i_265:
	movl $12,%edx
	addl %edx,%edi
	movl $1,%edx
	movl (%edi),%esi
	subl %edx,%esi
	movl %esi,(%edi)
	movl %ecx,%eax
	movl $12,%ecx
	leal 76(%esp), %esi
	addl %ecx,%esi
	movl 16(%esp),%ecx
	movl %ecx,(%esi)
	movl 28(%esp),%ebp
	movl 20(%esp),%ebx
	movl 36(%esp),%esi
	movl 40(%esp),%edi
	leal 88(%esp), %esp
	ret
.section .pcmap_data
stackdata_l624:
.long 3
.long 0xfffffff4
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long join_l612
.long frame_l625
.section .pcmap_data
frame_l625:
.long 0xffffffb4
.long 0x80000010
.long 0xffffffc4
.long stackdata_l624
.long 0x80000008
.long 0x8000001a
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb4
.long 0xffffffb8
.long 0xffffffbc
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
.long 0
.long 0
.section .pcmap
.long join_l607
.long frame_l626
.section .pcmap_data
frame_l626:
.long 0xffffffb4
.long 0x80000010
.long 0xffffffc4
.long stackdata_l624
.long 0x80000008
.long 0x8000001a
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb4
.long 0xffffffb8
.long 0xffffffbc
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
.long 0
.long 0
.section .pcmap
.long join_l602
.long frame_l627
.section .pcmap_data
frame_l627:
.long 0xffffffb4
.long 0x80000010
.long 0xffffffc4
.long stackdata_l624
.long 0x80000008
.long 0x8000001a
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb4
.long 0xffffffb8
.long 0xffffffbc
.long 0xffffffc0
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
.section .pcmap
.long join_l597
.long frame_l628
.section .pcmap_data
frame_l628:
.long 0xffffffb4
.long 0x80000010
.long 0xffffffc4
.long stackdata_l624
.long 0x80000008
.long 0x8000001a
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l592
.long frame_l629
.section .pcmap_data
frame_l629:
.long 0xffffffb4
.long 0x80000010
.long 0xffffffc4
.long stackdata_l624
.long 0x80000008
.long 0x8000001a
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l582
.long frame_l630
.section .pcmap_data
frame_l630:
.long 0xffffffb4
.long 0x80000010
.long 0xffffffc4
.long stackdata_l624
.long 0x80000008
.long 0x8000001a
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb4
.long 0
.long 0xffffffbc
.long 0xffffffc0
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
.long 0
.section .pcmap
.long join_l572
.long frame_l631
.section .pcmap_data
frame_l631:
.long 0xffffffb4
.long 0x80000010
.long 0xffffffc4
.long stackdata_l624
.long 0x80000008
.long 0x8000001a
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0xffffffd8
.long 0x4000000b
.long 0xffffffdc
.long 0xffffffb4
.long 0
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffd4
.long 0xffffffec
.long 0x40000009
.long 0xffffffe8
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
.section .pcmap
.long join_l561
.long frame_l632
.section .pcmap_data
frame_l632:
.long 0xffffffb4
.long 0x80000010
.long 0xffffffc4
.long stackdata_l624
.long 0x80000008
.long 0x8000001a
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0xffffffd8
.long 0x4000000b
.long 0xffffffdc
.long 0xffffffb4
.long 0
.long 0
.long 0
.long 0xffffffd4
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
.long 0
.section .pcmap
.long join_l556
.long frame_l633
.section .pcmap_data
frame_l633:
.long 0xffffffb4
.long 0x80000010
.long 0xffffffc4
.long stackdata_l624
.long 0x80000008
.long 0x8000001a
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0xffffffd8
.long 0x4000000b
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
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
.section .text
