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
Lgbl_38:
.long 6
.byte 32
.byte 115
.byte 116
.byte 114
.byte 50
.byte 32
.byte 0
Lgbl_40:
.long 6
.byte 32
.byte 115
.byte 116
.byte 114
.byte 49
.byte 32
.byte 0
Lgbl_41:
.long 1
.byte 10
.byte 0
.section .text
a_a_28:
	leal -28(%esp), %esp
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,4(%esp)
	leal 28(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %esi,8(%esp)
.Linitialize_continuations_l6:
.Lproc_body_start_l5:
	leal 28(%esp), %esi
	movl $-12,%edx
	addl %edx,%esi
	movl %eax,(%esi)
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l13:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 32(%esp), %esi
	movl $-32,%edx
	addl %edx,%esi
	movl (%ecx),%ecx
	movl %ecx,(%esi)
	call fb_27
.Lcall_successor_l10:
	leal 28(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%esi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l18:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l13
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x8000000c
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l18
.long 1
.long 6
.long 2
.long 1
.long 10
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long a_a_28_gc_data
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l20
.section .pcmap_data
.Lframe_l20:
.long 0x8000000c
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l18
.long 1
.long 6
.long 2
.long 1
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
.long a_a_28_gc_data
.section .text
.section .data
a_a_28_gc_data:
.long 3
.long 1
.long 0
.long 1
.long 6
.long 1
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
fa_26:
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
	movl %edx,12(%esp)
	movl %edi,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l22:
.Lproc_body_start_l21:
	leal 28(%esp), %edx
	movl $-12,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l30:
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $5,%eax
	cmpl %eax,%ecx
	jl LifTrue_34
LifFalse_35:
	movl $0,%eax
	jmp LifEnd_36
LifTrue_34:
	leal -8(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	leal 36(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	leal 36(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 36(%esp), %ecx
	movl $-36,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call a_a_28
.Lcall_successor_l26:
LifEnd_36:
	leal 28(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l32:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l26
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x8000000c
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l32
.long 2
.long 5
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long fa_26_gc_data
.section .text
.section .data
fa_26_gc_data:
.long 3
.long 1
.long 0
.long 1
.long 5
.long 1
.long 0
.long 1
.long 0
.long 0
.section .text
fb_27:
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 16(%esp), %edx
	movl (%edx),%edx
	movl %edx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l35:
.Lproc_body_start_l34:
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
	leal -8(%esp), %esp
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal Lgbl_38,%ecx
	leal 24(%esp), %edi
	movl $-20,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call fa_26
.Lcall_successor_l39:
	leal 16(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l44:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l45
.section .pcmap_data
.Lframe_l45:
.long 0x80000008
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l44
.long 1
.long 3
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long fb_27_gc_data
.section .text
.section .data
fb_27_gc_data:
.long 2
.long 1
.long 0
.long 3
.long 1
.long 0
.long 0
.section .text
tiger_main:
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l47:
.Lproc_body_start_l46:
	leal 16(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 24(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal Lgbl_40,%ecx
	leal 24(%esp), %edi
	movl $-20,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call fa_26
.Lcall_successor_l57:
	leal -4(%esp), %esp
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%ecx
	leal 20(%esp), %edi
	movl $-20,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call fb_27
.Lcall_successor_l54:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_41,%eax
	leal 16(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l51:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l62:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l57
.long .Lframe_l63
.section .pcmap_data
.Lframe_l63:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l62
.long 1
.long 4
.long 2
.long 1
.long 11
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l54
.long .Lframe_l64
.section .pcmap_data
.Lframe_l64:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l62
.long 1
.long 4
.long 2
.long 1
.long 11
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l65
.section .pcmap_data
.Lframe_l65:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l62
.long 1
.long 4
.long 2
.long 1
.long 11
.long 0xfffffff4
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
.long 1
.long 1
.long 4
.long 1
.long 0
.long 0
.long 0
