.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
f:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%ecx
Linitialize_continuations_l10:
Lproc_body_start_l9:
	movl %ecx,(%esp)
	call g
Ljoin_l15:
	movl $0,%eax
	leal 4(%esp), %ecx
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	leal 4(%esp), %esp
	ret
k1_U8:
	movl $0,%eax
	leal 4(%esp), %ecx
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l20:
.long 0
.section .pcmap
.long Ljoin_l15
.long Lframe_l21
.section .pcmap_data
Lframe_l21:
.long 0xfffffffc
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l20
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000005
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0x80000001
.long 0x80000002
.long 0
.long k1_U8
.long 0xfffffffc
.section .text
