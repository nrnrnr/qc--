.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffffffffffff
.section .text
main:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $0,%edi
	leal 8(%esp), %esi
	movl $-8,%ebp
	addl %ebp,%esi
	movl %edi,(%esi)
	movl %eax,4(%esp)
	call exit
Lpostcall_l7:
.section .pcmap_data
Lstackdata_l14:
.long 0
.section .pcmap
.long Lpostcall_l7
.long Lframe_l15
.section .pcmap_data
Lframe_l15:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long Lstackdata_l14
.long 8
.long 0
.long 0
.long 1
.long 0x40000007
.long 0
.long 0x40000009
.long 0
.long 0x4000000a
.long 0
.long 0x4000000b
.long 0
.long 0
.section .text
