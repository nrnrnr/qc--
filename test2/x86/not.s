.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
ge:
	leal -4(%esp), %esp
	movl $4,%edx
	leal 4(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
initialize_continuations_l4:
proc_body_start_l3:
	cmpl %edx,%eax
	jl join_l8
join_l7:
	movl $1,%eax
	movl $4,%edx
	movl %ecx,(%esp)
	leal 4(%esp), %ecx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
join_l8:
	movl $0,%eax
	movl $4,%edx
	movl %ecx,(%esp)
	leal 4(%esp), %ecx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
stackdata_l15:
.long 0
.section .text
