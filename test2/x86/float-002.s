.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.section .text
main:
	leal -52(%esp), %esp
	movl $4,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $2139095040,%eax
	movl $-24,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-24,%eax
	leal 52(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-52,%edx
	leal 52(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l149:
	movl $2139095040,%ecx
	movl $-24,%edx
	movl %ebx,40(%esp)
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l146:
	movl $2139095040,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l143:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op1,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $2139095040,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-44,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 44(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-32,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 48(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-28,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l140:
	movl $-8388608,%eax
	movl $-24,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-24,%eax
	leal 52(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-52,%edx
	leal 52(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l137:
	movl $-8388608,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l134:
	movl $-8388608,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l131:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op2,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-8388608,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-44,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 44(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-32,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 48(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-28,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l128:
	movl $0,%eax
	movl $-24,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-24,%eax
	leal 52(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-52,%edx
	leal 52(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l125:
	movl $0,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l122:
	movl $0,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l119:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op3,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-44,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 44(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-32,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 48(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-28,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l116:
	movl $-2147483648,%eax
	movl $-24,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-24,%eax
	leal 52(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-52,%edx
	leal 52(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l113:
	movl $-2147483648,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l110:
	movl $-2147483648,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l107:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op4,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-2147483648,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-44,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 44(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-32,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 48(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-28,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l104:
	movl $2139095073,%eax
	movl $-24,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-24,%eax
	leal 52(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-52,%edx
	leal 52(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l101:
	movl $2139095073,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l98:
	movl $2139095073,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l95:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op5,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $2139095073,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-44,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 44(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-32,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 48(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-28,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l92:
	movl $2139095117,%eax
	movl $-24,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-24,%eax
	leal 52(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-52,%edx
	leal 52(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l89:
	movl $2139095117,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l86:
	movl $2139095117,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-52,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l83:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op6,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $2139095117,%ecx
	movl $-24,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	flds (%ebx)
	movl $-44,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 44(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-32,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl 48(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-28,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l80:
	movl $0,%eax
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $2146435072,%eax
	movl $-16,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-20,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-52,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l77:
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $2146435072,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l74:
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $2146435072,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l71:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op7,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $2146435072,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-44,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl $-32,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl $-28,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l68:
	movl $0,%eax
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-1048576,%eax
	movl $-16,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-20,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-52,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l65:
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-1048576,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l62:
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-1048576,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l59:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op8,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-1048576,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-44,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl $-32,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl $-28,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l56:
	movl $0,%eax
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $-16,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-20,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-52,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l53:
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $0,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l50:
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $0,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l47:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op9,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $0,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-44,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl $-32,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl $-28,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l44:
	movl $0,%eax
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-2147483648,%eax
	movl $-16,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-20,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-52,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l41:
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-2147483648,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l38:
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-2147483648,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l35:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op10,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-2147483648,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-44,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl $-32,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl $-28,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l32:
	movl $33,%eax
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $2146435072,%eax
	movl $-16,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-20,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-52,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l29:
	movl $33,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $2146435072,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l26:
	movl $33,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $2146435072,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l23:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op11,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $33,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $2146435072,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-44,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl $-32,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl $-28,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l20:
	movl $77,%eax
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $2146435072,%eax
	movl $-16,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-20,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-52,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
Ljoin_l17:
	movl $77,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $2146435072,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,44(%esp)
	call isinf
Ljoin_l14:
	movl $77,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $2146435072,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl %eax,48(%esp)
	call finite
Ljoin_l11:
	leal fmt,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal op12,%ecx
	movl $-48,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $77,%ecx
	movl $-20,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $2146435072,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-20,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-44,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-36,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl $-32,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl $-28,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 52(%esp), %ecx
	movl $0,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 40(%esp),%ebx
	leal 52(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l156:
.long 0
.section .pcmap
.long Ljoin_l149
.long Lframe_l157
.section .pcmap_data
Lframe_l157:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
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
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l146
.long Lframe_l158
.section .pcmap_data
Lframe_l158:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l143
.long Lframe_l159
.section .pcmap_data
Lframe_l159:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l140
.long Lframe_l160
.section .pcmap_data
Lframe_l160:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l137
.long Lframe_l161
.section .pcmap_data
Lframe_l161:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l134
.long Lframe_l162
.section .pcmap_data
Lframe_l162:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l131
.long Lframe_l163
.section .pcmap_data
Lframe_l163:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l128
.long Lframe_l164
.section .pcmap_data
Lframe_l164:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l125
.long Lframe_l165
.section .pcmap_data
Lframe_l165:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l122
.long Lframe_l166
.section .pcmap_data
Lframe_l166:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l119
.long Lframe_l167
.section .pcmap_data
Lframe_l167:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l116
.long Lframe_l168
.section .pcmap_data
Lframe_l168:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l113
.long Lframe_l169
.section .pcmap_data
Lframe_l169:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l110
.long Lframe_l170
.section .pcmap_data
Lframe_l170:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l107
.long Lframe_l171
.section .pcmap_data
Lframe_l171:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l104
.long Lframe_l172
.section .pcmap_data
Lframe_l172:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l101
.long Lframe_l173
.section .pcmap_data
Lframe_l173:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l98
.long Lframe_l174
.section .pcmap_data
Lframe_l174:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l95
.long Lframe_l175
.section .pcmap_data
Lframe_l175:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l92
.long Lframe_l176
.section .pcmap_data
Lframe_l176:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l89
.long Lframe_l177
.section .pcmap_data
Lframe_l177:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l86
.long Lframe_l178
.section .pcmap_data
Lframe_l178:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l83
.long Lframe_l179
.section .pcmap_data
Lframe_l179:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l80
.long Lframe_l180
.section .pcmap_data
Lframe_l180:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l77
.long Lframe_l181
.section .pcmap_data
Lframe_l181:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l74
.long Lframe_l182
.section .pcmap_data
Lframe_l182:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l71
.long Lframe_l183
.section .pcmap_data
Lframe_l183:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l68
.long Lframe_l184
.section .pcmap_data
Lframe_l184:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l65
.long Lframe_l185
.section .pcmap_data
Lframe_l185:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l62
.long Lframe_l186
.section .pcmap_data
Lframe_l186:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l59
.long Lframe_l187
.section .pcmap_data
Lframe_l187:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l56
.long Lframe_l188
.section .pcmap_data
Lframe_l188:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l53
.long Lframe_l189
.section .pcmap_data
Lframe_l189:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l50
.long Lframe_l190
.section .pcmap_data
Lframe_l190:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l47
.long Lframe_l191
.section .pcmap_data
Lframe_l191:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l44
.long Lframe_l192
.section .pcmap_data
Lframe_l192:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l41
.long Lframe_l193
.section .pcmap_data
Lframe_l193:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l38
.long Lframe_l194
.section .pcmap_data
Lframe_l194:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l35
.long Lframe_l195
.section .pcmap_data
Lframe_l195:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l32
.long Lframe_l196
.section .pcmap_data
Lframe_l196:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l29
.long Lframe_l197
.section .pcmap_data
Lframe_l197:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l26
.long Lframe_l198
.section .pcmap_data
Lframe_l198:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l23
.long Lframe_l199
.section .pcmap_data
Lframe_l199:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l20
.long Lframe_l200
.section .pcmap_data
Lframe_l200:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l17
.long Lframe_l201
.section .pcmap_data
Lframe_l201:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l14
.long Lframe_l202
.section .pcmap_data
Lframe_l202:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l11
.long Lframe_l203
.section .pcmap_data
Lframe_l203:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l8
.long Lframe_l204
.section .pcmap_data
Lframe_l204:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000005
.long 0x80000000
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
.long 0
.long 0x80000000
.section .text
.section .data
op1:
.byte 37
.byte 112
.byte 105
.byte 110
.byte 102
.byte 51
.byte 50
.byte 0
op2:
.byte 37
.byte 109
.byte 105
.byte 110
.byte 102
.byte 51
.byte 50
.byte 0
op3:
.byte 37
.byte 112
.byte 122
.byte 101
.byte 114
.byte 111
.byte 51
.byte 50
.byte 0
op4:
.byte 37
.byte 109
.byte 122
.byte 101
.byte 114
.byte 111
.byte 51
.byte 50
.byte 0
op5:
.byte 37
.byte 78
.byte 97
.byte 78
.byte 51
.byte 50
.byte 40
.byte 51
.byte 51
.byte 58
.byte 58
.byte 98
.byte 105
.byte 116
.byte 115
.byte 50
.byte 51
.byte 41
.byte 0
op6:
.byte 37
.byte 78
.byte 97
.byte 78
.byte 51
.byte 50
.byte 40
.byte 55
.byte 55
.byte 58
.byte 58
.byte 98
.byte 105
.byte 116
.byte 115
.byte 53
.byte 50
.byte 41
.byte 0
op7:
.byte 37
.byte 112
.byte 105
.byte 110
.byte 102
.byte 54
.byte 52
.byte 0
op8:
.byte 37
.byte 109
.byte 105
.byte 110
.byte 102
.byte 54
.byte 52
.byte 0
op9:
.byte 37
.byte 112
.byte 122
.byte 101
.byte 114
.byte 111
.byte 54
.byte 52
.byte 0
op10:
.byte 37
.byte 109
.byte 122
.byte 101
.byte 114
.byte 111
.byte 54
.byte 52
.byte 0
op11:
.byte 37
.byte 78
.byte 97
.byte 78
.byte 54
.byte 52
.byte 40
.byte 51
.byte 51
.byte 58
.byte 58
.byte 98
.byte 105
.byte 116
.byte 115
.byte 50
.byte 51
.byte 41
.byte 0
op12:
.byte 37
.byte 78
.byte 97
.byte 78
.byte 54
.byte 52
.byte 40
.byte 55
.byte 55
.byte 58
.byte 58
.byte 98
.byte 105
.byte 116
.byte 115
.byte 53
.byte 50
.byte 41
.byte 0
fmt:
.byte 37
.byte 50
.byte 48
.byte 115
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 57
.byte 102
.byte 32
.byte 40
.byte 110
.byte 97
.byte 110
.byte 61
.byte 61
.byte 37
.byte 100
.byte 44
.byte 32
.byte 105
.byte 110
.byte 102
.byte 61
.byte 61
.byte 37
.byte 50
.byte 100
.byte 44
.byte 32
.byte 102
.byte 105
.byte 110
.byte 105
.byte 116
.byte 101
.byte 61
.byte 37
.byte 100
.byte 41
.byte 10
.byte 0
