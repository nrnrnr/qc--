.globl tiger_main
.globl Cmm.global_area
.globl Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ:
Cmm.global_area:
.skip 4
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
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl %eax,4(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l7:
Lproc_body_start_l6:
	movl %edx,8(%esp)
	leal 40(%esp), %edx
	movl %eax,12(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 40(%esp), %eax
	movl %ecx,16(%esp)
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl %ebx,20(%esp)
	movl $-40,%ebx
	addl %ebx,%ecx
	movl (%eax),%ebx
	movl %ebx,(%ecx)
	movl %edx,24(%esp)
	call tig_print
Ljoin_l14:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 44(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	leal 44(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 44(%esp), %edx
	movl $-44,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	call fb_27
Ljoin_l11:
	leal 40(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
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
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe8
.long Lstackdata_l19
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0xfffffff0
.long 0x80000000
.long 0
.long a_a_28_gc_data
.section .pcmap
.long Ljoin_l11
.long Lframe_l21
.section .pcmap_data
Lframe_l21:
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe8
.long Lstackdata_l19
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0x80000000
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
	leal -40(%esp), %esp
	leal 40(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 40(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l24:
Lproc_body_start_l23:
	movl %ecx,4(%esp)
	leal 40(%esp), %ecx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $5,%eax
	cmpl %eax,%ecx
	jl Ljoin_l29
Ljoin_l30:
	jmp LifFalse_35
LifFalse_35:
	movl $0,%eax
	movl %esi,20(%esp)
	movl %ebp,16(%esp)
	movl %ebx,12(%esp)
	movl %edx,24(%esp)
	jmp LifEnd_36
Ljoin_l29:
	jmp LifTrue_34
LifTrue_34:
	leal -8(%esp), %esp
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 48(%esp), %ecx
	movl %ebx,20(%esp)
	movl $-12,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $1,%ecx
	addl %ecx,%ebx
	leal 48(%esp), %ecx
	movl %ebp,24(%esp)
	movl $-12,%ebp
	addl %ebp,%ecx
	movl $8,%ebp
	addl %ebp,%ecx
	leal 48(%esp), %ebp
	movl %esi,28(%esp)
	movl $-44,%esi
	addl %esi,%ebp
	movl (%ecx),%esi
	movl %esi,(%ebp)
	leal 48(%esp), %ebp
	movl $-48,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	movl %edx,32(%esp)
	call a_a_28
Ljoin_l28:
	jmp LifEnd_36
LifEnd_36:
	leal 40(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	movl 16(%esp),%ebp
	movl 20(%esp),%esi
	leal 48(%esp), %esp
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
.long 0xffffffd8
.long 0x8000000c
.long 0xfffffff0
.long Lstackdata_l35
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l39:
Lproc_body_start_l38:
	movl %eax,(%esp)
	leal 24(%esp), %eax
	movl %edx,4(%esp)
	movl $-8,%edx
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	leal 24(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal -8(%esp), %esp
	leal 32(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 32(%esp), %edx
	movl %ecx,16(%esp)
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 32(%esp), %ecx
	movl %ebx,20(%esp)
	movl $-32,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	leal Lgbl_38,%ecx
	leal 32(%esp), %ebx
	movl $-28,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call fa_26
Ljoin_l43:
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	leal 28(%esp), %esp
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
.long 0xffffffe8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l48
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
	movl (%ecx),%edx
Linitialize_continuations_l52:
Lproc_body_start_l51:
	leal 24(%esp), %ecx
	movl %eax,4(%esp)
	movl $-4,%eax
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 32(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	movl %edx,16(%esp)
	leal 32(%esp), %edx
	movl %ebx,20(%esp)
	movl $-32,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal Lgbl_40,%ecx
	leal 32(%esp), %edx
	movl $-28,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call fa_26
Ljoin_l62:
	leal -4(%esp), %esp
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%ecx
	leal 28(%esp), %edx
	movl $-28,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call fb_27
Ljoin_l59:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_41,%eax
	leal 24(%esp), %edx
	movl $-24,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %ecx,16(%esp)
	call tig_print
Ljoin_l56:
	leal Cmm.global_area,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
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
.long 0xffffffe8
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l67
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l59
.long Lframe_l69
.section .pcmap_data
Lframe_l69:
.long 0xffffffe8
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l67
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l56
.long Lframe_l70
.section .pcmap_data
Lframe_l70:
.long 0xffffffe8
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l67
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0xfffffff8
.long 0x80000000
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
