.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .text
main:
	leal -56(%esp), %esp
	leal 56(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 56(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 56(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl $2139095040,%ecx
	leal 56(%esp), %edx
	movl %eax,40(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
.Lcall_successor_l148:
	movl $2139095040,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isinf
.Lcall_successor_l145:
	movl $2139095040,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call finite
.Lcall_successor_l142:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op1,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2139095040,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l139:
	movl $-8388608,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
.Lcall_successor_l136:
	movl $-8388608,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isinf
.Lcall_successor_l133:
	movl $-8388608,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call finite
.Lcall_successor_l130:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op2,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-8388608,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l127:
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
.Lcall_successor_l124:
	movl $0,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isinf
.Lcall_successor_l121:
	movl $0,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call finite
.Lcall_successor_l118:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op3,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l115:
	movl $-2147483648,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
.Lcall_successor_l112:
	movl $-2147483648,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isinf
.Lcall_successor_l109:
	movl $-2147483648,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call finite
.Lcall_successor_l106:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op4,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-2147483648,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l103:
	movl $2139095073,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
.Lcall_successor_l100:
	movl $2139095073,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isinf
.Lcall_successor_l97:
	movl $2139095073,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call finite
.Lcall_successor_l94:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op5,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2139095073,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l91:
	movl $2139095117,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
.Lcall_successor_l88:
	movl $2139095117,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isinf
.Lcall_successor_l85:
	movl $2139095117,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-28,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call finite
.Lcall_successor_l82:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op6,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2139095117,%eax
	leal 56(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 56(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l79:
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
.Lcall_successor_l76:
	movl $0,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-24,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isinf
.Lcall_successor_l73:
	movl $0,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-24,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call finite
.Lcall_successor_l70:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op7,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l67:
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-1048576,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
.Lcall_successor_l64:
	movl $0,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-24,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-1048576,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isinf
.Lcall_successor_l61:
	movl $0,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-24,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-1048576,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call finite
.Lcall_successor_l58:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op8,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-1048576,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l55:
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
.Lcall_successor_l52:
	movl $0,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-24,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isinf
.Lcall_successor_l49:
	movl $0,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-24,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call finite
.Lcall_successor_l46:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op9,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l43:
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-2147483648,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isnan
.Lcall_successor_l40:
	movl $0,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-24,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-2147483648,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call isinf
.Lcall_successor_l37:
	movl $0,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-24,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-2147483648,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call finite
.Lcall_successor_l34:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op10,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-2147483648,%eax
	leal 56(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 56(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l31:
	movl $33,%eax
	leal 56(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call isnan
.Lcall_successor_l28:
	movl $33,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call isinf
.Lcall_successor_l25:
	movl $33,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call finite
.Lcall_successor_l22:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op11,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $33,%eax
	leal 56(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l19:
	movl $77,%eax
	leal 56(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call isnan
.Lcall_successor_l16:
	movl $77,%ecx
	leal 56(%esp), %edx
	movl %eax,44(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call isinf
.Lcall_successor_l13:
	movl $77,%ecx
	leal 56(%esp), %edx
	movl %eax,48(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call finite
.Lcall_successor_l10:
	leal fmt,%ecx
	leal 56(%esp), %edx
	movl %eax,52(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal op12,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $77,%eax
	leal 56(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 56(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 56(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l155:
.long 0
.section .pcmap
.long .Lcall_successor_l148
.long .Lframe_l156
.section .pcmap_data
.Lframe_l156:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l145
.long .Lframe_l157
.section .pcmap_data
.Lframe_l157:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l142
.long .Lframe_l158
.section .pcmap_data
.Lframe_l158:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l139
.long .Lframe_l159
.section .pcmap_data
.Lframe_l159:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l136
.long .Lframe_l160
.section .pcmap_data
.Lframe_l160:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l133
.long .Lframe_l161
.section .pcmap_data
.Lframe_l161:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l130
.long .Lframe_l162
.section .pcmap_data
.Lframe_l162:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l127
.long .Lframe_l163
.section .pcmap_data
.Lframe_l163:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l124
.long .Lframe_l164
.section .pcmap_data
.Lframe_l164:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l121
.long .Lframe_l165
.section .pcmap_data
.Lframe_l165:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l118
.long .Lframe_l166
.section .pcmap_data
.Lframe_l166:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l115
.long .Lframe_l167
.section .pcmap_data
.Lframe_l167:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l112
.long .Lframe_l168
.section .pcmap_data
.Lframe_l168:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l109
.long .Lframe_l169
.section .pcmap_data
.Lframe_l169:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l106
.long .Lframe_l170
.section .pcmap_data
.Lframe_l170:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l103
.long .Lframe_l171
.section .pcmap_data
.Lframe_l171:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l100
.long .Lframe_l172
.section .pcmap_data
.Lframe_l172:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l97
.long .Lframe_l173
.section .pcmap_data
.Lframe_l173:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l94
.long .Lframe_l174
.section .pcmap_data
.Lframe_l174:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l91
.long .Lframe_l175
.section .pcmap_data
.Lframe_l175:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l88
.long .Lframe_l176
.section .pcmap_data
.Lframe_l176:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l85
.long .Lframe_l177
.section .pcmap_data
.Lframe_l177:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l82
.long .Lframe_l178
.section .pcmap_data
.Lframe_l178:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l79
.long .Lframe_l179
.section .pcmap_data
.Lframe_l179:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l76
.long .Lframe_l180
.section .pcmap_data
.Lframe_l180:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l73
.long .Lframe_l181
.section .pcmap_data
.Lframe_l181:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l70
.long .Lframe_l182
.section .pcmap_data
.Lframe_l182:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l67
.long .Lframe_l183
.section .pcmap_data
.Lframe_l183:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l64
.long .Lframe_l184
.section .pcmap_data
.Lframe_l184:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l61
.long .Lframe_l185
.section .pcmap_data
.Lframe_l185:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l58
.long .Lframe_l186
.section .pcmap_data
.Lframe_l186:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l55
.long .Lframe_l187
.section .pcmap_data
.Lframe_l187:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l52
.long .Lframe_l188
.section .pcmap_data
.Lframe_l188:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l49
.long .Lframe_l189
.section .pcmap_data
.Lframe_l189:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l46
.long .Lframe_l190
.section .pcmap_data
.Lframe_l190:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l43
.long .Lframe_l191
.section .pcmap_data
.Lframe_l191:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l40
.long .Lframe_l192
.section .pcmap_data
.Lframe_l192:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l37
.long .Lframe_l193
.section .pcmap_data
.Lframe_l193:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l34
.long .Lframe_l194
.section .pcmap_data
.Lframe_l194:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l31
.long .Lframe_l195
.section .pcmap_data
.Lframe_l195:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l28
.long .Lframe_l196
.section .pcmap_data
.Lframe_l196:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l25
.long .Lframe_l197
.section .pcmap_data
.Lframe_l197:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l22
.long .Lframe_l198
.section .pcmap_data
.Lframe_l198:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l19
.long .Lframe_l199
.section .pcmap_data
.Lframe_l199:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l16
.long .Lframe_l200
.section .pcmap_data
.Lframe_l200:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l13
.long .Lframe_l201
.section .pcmap_data
.Lframe_l201:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l202
.section .pcmap_data
.Lframe_l202:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l203
.section .pcmap_data
.Lframe_l203:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff0
.long .Lstackdata_l155
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
