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
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,4(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 40(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l7:
Lproc_body_start_l6:
	movl %ecx,8(%esp)
	movl $-12,%ecx
	movl %edx,12(%esp)
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,16(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-12,%ecx
	movl %ebx,20(%esp)
	leal 40(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl $-40,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	movl %edx,24(%esp)
	call tig_print
Ljoin_l14:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	movl $-12,%eax
	leal 44(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl $-44,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	call fb_27
Ljoin_l11:
	movl $8,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
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
	leal -36(%esp), %esp
	movl $4,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl %eax,(%esp)
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l24:
Lproc_body_start_l23:
	movl %edx,4(%esp)
	movl $-12,%edx
	movl %ecx,8(%esp)
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,12(%esp)
	leal 36(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $5,%ecx
	cmpl %ecx,%eax
	jl Ljoin_l29
Ljoin_l30:
	jmp LifFalse_35
LifFalse_35:
	movl $0,%eax
	movl %ebp,20(%esp)
	movl %ebx,16(%esp)
	jmp LifEnd_36
Ljoin_l29:
	jmp LifTrue_34
LifTrue_34:
	leal -8(%esp), %esp
	movl $-12,%ecx
	leal 44(%esp), %eax
	addl %ecx,%eax
	movl $1,%ecx
	movl $4,%edx
	movl %ebx,24(%esp)
	movl $-12,%ebx
	movl %ebp,28(%esp)
	leal 44(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl $8,%ecx
	movl $-12,%ebp
	leal 44(%esp), %ebx
	addl %ebp,%ebx
	addl %ecx,%ebx
	movl $-40,%ecx
	leal 44(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebx),%ecx
	movl %ecx,(%ebp)
	movl $-44,%ecx
	leal 44(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	call a_a_28
Ljoin_l28:
	jmp LifEnd_36
LifEnd_36:
	movl $8,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	movl 20(%esp),%ebp
	leal 44(%esp), %esp
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
.long 0xffffffdc
.long 0x8000000c
.long 0xffffffe8
.long Lstackdata_l35
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0x4000000a
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
	movl $4,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 24(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l39:
Lproc_body_start_l38:
	movl %eax,(%esp)
	movl $-8,%eax
	movl %ecx,4(%esp)
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,8(%esp)
	leal 24(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal -8(%esp), %esp
	movl $-8,%eax
	leal 32(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-8,%ecx
	movl %ebx,20(%esp)
	leal 32(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl $-32,%edx
	leal 32(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	leal Lgbl_38,%ecx
	movl $-28,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call fa_26
Ljoin_l43:
	movl $4,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
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
	movl $-4,%ecx
	movl %eax,4(%esp)
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	movl $-4,%eax
	leal 32(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $4,%ecx
	movl %edx,16(%esp)
	movl $-32,%edx
	movl %ebx,20(%esp)
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal Lgbl_40,%ecx
	movl $-28,%ebx
	leal 32(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call fa_26
Ljoin_l62:
	leal -4(%esp), %esp
	movl $-4,%eax
	leal 28(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $1,%ecx
	movl $-28,%edx
	leal 28(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call fb_27
Ljoin_l59:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_41,%eax
	movl $-24,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,16(%esp)
	call tig_print
Ljoin_l56:
	leal Cmm.global_area,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
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
