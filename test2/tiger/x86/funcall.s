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
.long 0xffffffffffffffff
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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl %eax,4(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 40(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l7:
Lproc_body_start_l6:
	movl %edi,8(%esp)
	leal 40(%esp), %edi
	movl %edi,12(%esp)
	movl $-12,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl 4(%esp),%esi
	movl %esi,(%edi)
	leal 40(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 40(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	movl %edx,24(%esp)
	call tig_print
Ljoin_l14:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal -4(%esp), %esp
	leal 44(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%eax
	leal 44(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	leal 44(%esp), %esi
	movl $-44,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call fb_27
Ljoin_l11:
	leal 40(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 48(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l19:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l14
.long Lframe_l20
.section .pcmap_data
Lframe_l20:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff0
.long Lstackdata_l19
.long 8
.long 6
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long a_a_28_gc_data
.section .pcmap
.long Ljoin_l11
.long Lframe_l21
.section .pcmap_data
Lframe_l21:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff0
.long Lstackdata_l19
.long 8
.long 6
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
	leal -48(%esp), %esp
	leal 48(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 48(%esp), %ecx
	movl %edx,(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l24:
Lproc_body_start_l23:
	movl %edx,4(%esp)
	leal 48(%esp), %edx
	movl %edx,8(%esp)
	movl $-12,%edx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 48(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 48(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 48(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $5,%ecx
	cmpl %ecx,%edx
	jl Ljoin_l29
Ljoin_l30:
	jmp LifFalse_35
LifFalse_35:
	movl $0,%eax
	movl %edi,20(%esp)
	movl %esi,32(%esp)
	jmp LifEnd_36
Ljoin_l29:
	jmp LifTrue_34
LifTrue_34:
	leal -8(%esp), %esp
	leal 56(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 56(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	leal 56(%esp), %edx
	movl %edi,28(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	leal 56(%esp), %edi
	movl %edi,32(%esp)
	movl $-52,%edi
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	movl %esi,40(%esp)
	movl 36(%esp),%esi
	addl %esi,%edi
	movl (%edx),%esi
	movl %esi,(%edi)
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	call a_a_28
Ljoin_l28:
	jmp LifEnd_36
LifEnd_36:
	leal 48(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 32(%esp),%esi
	movl 20(%esp),%edi
	leal 56(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l35:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l28
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0x8000000c
.long 0xffffffd0
.long 0xffffffe0
.long Lstackdata_l35
.long 8
.long 5
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
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
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l39:
Lproc_body_start_l38:
	movl %edi,(%esp)
	leal 28(%esp), %edi
	movl %edi,4(%esp)
	movl $-8,%edi
	movl %edi,8(%esp)
	movl 4(%esp),%edi
	movl %esi,12(%esp)
	movl 8(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 28(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal -8(%esp), %esp
	leal 36(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 36(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	leal 36(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal Lgbl_38,%edi
	leal 36(%esp), %esi
	movl $-32,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl %edx,24(%esp)
	call fa_26
Ljoin_l43:
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%esi
	movl (%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l48:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l43
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l48
.long 8
.long 3
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
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
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l52:
Lproc_body_start_l51:
	leal 24(%esp), %edx
	movl %edi,4(%esp)
	movl $-4,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal -8(%esp), %esp
	leal 32(%esp), %eax
	movl $-4,%edi
	addl %edi,%eax
	movl $4,%edi
	leal 32(%esp), %edx
	movl %edi,16(%esp)
	movl $-32,%edi
	addl %edi,%edx
	movl 16(%esp),%edi
	movl %edi,(%edx)
	leal Lgbl_40,%edi
	leal 32(%esp), %edx
	movl %edi,20(%esp)
	movl $-28,%edi
	addl %edi,%edx
	movl 20(%esp),%edi
	movl %edi,(%edx)
	movl %ecx,24(%esp)
	call fa_26
Ljoin_l62:
	leal -4(%esp), %esp
	leal 28(%esp), %eax
	movl $-4,%edi
	addl %edi,%eax
	movl $1,%edi
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	call fb_27
Ljoin_l59:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_41,%eax
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l56:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	leal 24(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l67:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l62
.long Lframe_l68
.section .pcmap_data
Lframe_l68:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff8
.long Lstackdata_l67
.long 8
.long 4
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l59
.long Lframe_l69
.section .pcmap_data
Lframe_l69:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff8
.long Lstackdata_l67
.long 8
.long 4
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l56
.long Lframe_l70
.section .pcmap_data
Lframe_l70:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff8
.long Lstackdata_l67
.long 8
.long 4
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
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
