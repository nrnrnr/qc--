.globl tiger_main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
.align 32
gc_data:
.long 0
.long 6
Lgbl_29:
.long 1
.byte 10
.byte 0
.long 6
Lgbl_31:
.long 1
.byte 32
.byte 0
.long 29
Lgbl_28:
.long 24
.byte 112
.byte 114
.byte 105
.byte 110
.byte 116
.byte 105
.byte 110
.byte 103
.byte 32
.byte 97
.byte 114
.byte 114
.byte 97
.byte 121
.byte 32
.byte 111
.byte 102
.byte 32
.byte 115
.byte 105
.byte 122
.byte 101
.byte 58
.byte 32
.byte 0
.section .text
tiger_main:
	leal -76(%esp), %esp
	movl $4,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l10:
Lproc_body_start_l9:
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $44,%eax
	movl $-76,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl %edi,44(%esp)
	movl %esi,40(%esp)
	movl %ebp,36(%esp)
	movl %ebx,32(%esp)
	call tig_alloc
Ljoin_l61:
	movl $11,%ecx
	jmp Lloop_start_25
Lloop_start_25:
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l57
Ljoin_l58:
	jmp Lloop_end_24
Lloop_end_24:
	movl $10,%edx
	movl %edx,(%eax)
	movl $4,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl $4,%eax
	movl $-12,%ebp
	leal 76(%esp), %edx
	addl %ebp,%edx
	addl %eax,%edx
	movl $-76,%eax
	leal 76(%esp), %ebp
	addl %eax,%ebp
	movl (%edx),%eax
	movl %eax,(%ebp)
	movl $1,%eax
	movl $-72,%ebp
	leal 76(%esp), %edx
	addl %ebp,%edx
	movl %eax,(%edx)
	movl $7,%eax
	movl $-68,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	call tig_bounds_check
Ljoin_l56:
	movl $71,%eax
	movl $8,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $-76,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $3,%eax
	movl $-72,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $8,%eax
	movl $-68,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
Ljoin_l53:
	movl $71,%eax
	movl $16,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $-76,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $5,%eax
	movl $-72,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $9,%eax
	movl $-68,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
Ljoin_l50:
	movl $71,%eax
	movl $24,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $-76,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $7,%eax
	movl $-72,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $10,%eax
	movl $-68,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
Ljoin_l47:
	movl $71,%eax
	movl $32,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $-76,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $9,%eax
	movl $-72,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $11,%eax
	movl $-68,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
Ljoin_l44:
	movl $71,%eax
	movl $40,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Lgbl_28,%eax
	movl $-76,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l41:
	movl $4,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-76,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_sizea
Ljoin_l38:
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_printi
Ljoin_l35:
	leal Lgbl_29,%eax
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l32:
	movl $0,%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_32
Lloop_start_32:
	movl $8,%eax
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $9,%ecx
	cmpl %ecx,%eax
	jle Lif_true_l65
Lif_false_l66:
	movl $0,%eax
	jmp Lend_if_l67
Lif_true_l65:
	movl $1,%eax
	jmp Lend_if_l67
Lend_if_l67:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l28
Ljoin_l29:
	jmp Lloop_end_30
Lloop_end_30:
	leal Lgbl_29,%eax
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_print
Ljoin_l15:
	leal 76(%esp), %edx
	movl $0,%ecx
	leal 76(%esp), %edi
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 76(%esp), %esp
	ret
Ljoin_l28:
	jmp Lloop_body_33
Lloop_body_33:
	movl $4,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	movl $-12,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl $-72,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl $18,%ecx
	movl $-68,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_bounds_check
Ljoin_l27:
	movl $4,%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	movl $4,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ebx,%eax
	movl $-76,%ebx
	leal 76(%esp), %edx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	call tig_chr
Ljoin_l24:
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l21:
	leal Lgbl_31,%eax
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l18:
	movl $1,%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $8,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	jmp Lloop_start_32
Ljoin_l57:
	jmp Lloop_body_26
Lloop_body_26:
	movl $80,%edx
	movl $4,%ebx
	movl $1,%ebp
	movl %ecx,%esi
	subl %ebp,%esi
	imull %ebx,%esi
	movl %eax,%ebx
	addl %esi,%ebx
	movl %edx,(%ebx)
	movl $1,%edx
	subl %edx,%ecx
	jmp Lloop_start_25
killer_C7:
	movl $0,%eax
	leal 76(%esp), %ecx
	movl $0,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 76(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l71:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l61
.long Lframe_l72
.section .pcmap_data
Lframe_l72:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l56
.long Lframe_l73
.section .pcmap_data
Lframe_l73:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l53
.long Lframe_l74
.section .pcmap_data
Lframe_l74:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l50
.long Lframe_l75
.section .pcmap_data
Lframe_l75:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l47
.long Lframe_l76
.section .pcmap_data
Lframe_l76:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l44
.long Lframe_l77
.section .pcmap_data
Lframe_l77:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l41
.long Lframe_l78
.section .pcmap_data
Lframe_l78:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l38
.long Lframe_l79
.section .pcmap_data
Lframe_l79:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l35
.long Lframe_l80
.section .pcmap_data
Lframe_l80:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l32
.long Lframe_l81
.section .pcmap_data
Lframe_l81:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l27
.long Lframe_l82
.section .pcmap_data
Lframe_l82:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l24
.long Lframe_l83
.section .pcmap_data
Lframe_l83:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l21
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l18
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l15
.long Lframe_l86
.section .pcmap_data
Lframe_l86:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l71
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 3
.long 1
.long 1
.long 0
.long 6
.long 1
.long 0
.long 1
.long 0
.long 0
.long 1
