.globl print
.globl main
.globl P
.globl p
.globl D
.globl d
.globl f
.globl L
.globl I
.globl S
.globl C
.globl l
.globl i
.globl s
.globl c
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
.section .text
print:
	leal -64(%esp), %esp
	leal 64(%esp), %eax
	movl (%eax),%eax
	movl %eax,60(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal i_2,%eax
	leal 64(%esp), %edx
	movl $-64,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal c,%eax
	movsbl (%eax),%eax
	leal 64(%esp), %edx
	movl $-60,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal s,%eax
	movswl (%eax),%eax
	leal 64(%esp), %edx
	movl $-56,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i,%eax
	leal 64(%esp), %edx
	movl $-52,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal l,%eax
	leal 64(%esp), %edx
	movl $-48,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal C,%eax
	movzbl (%eax),%eax
	leal 64(%esp), %edx
	movl $-44,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal S,%eax
	movzwl (%eax),%eax
	leal 64(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal I,%eax
	leal 64(%esp), %edx
	movl $-36,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal L,%eax
	leal 64(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal f,%eax
	flds (%eax)
	leal 64(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal d,%eax
	leal 64(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal D,%eax
	leal 64(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	call printf
.Lcall_successor_l8:
L.1:
	leal 64(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l15:
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l16
.section .pcmap_data
.Lframe_l16:
.long 0x80000004
.long 0xffffffc0
.long 0xfffffffc
.long .Lstackdata_l15
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
main:
	leal -260(%esp), %esp
	leal 260(%esp), %eax
	movl (%eax),%eax
	movl %eax,256(%esp)
	movl %edi,252(%esp)
.Linitialize_continuations_l18:
.Lproc_body_start_l17:
	leal c,%ecx
	movl $1,%eax
	movb %al,(%ecx)
	movsbl (%ecx),%ecx
	leal s,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal i,%eax
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	leal C,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal S,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 260(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 260(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 260(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Lcall_successor_l65:
	leal s,%ecx
	movl $2,%eax
	movw %ax,(%ecx)
	movswl (%ecx),%ecx
	leal c,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal i,%eax
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	leal C,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal S,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 260(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 260(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 260(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Lcall_successor_l62:
	leal i,%eax
	movl $3,%ecx
	movl %ecx,(%eax)
	movl (%eax),%ecx
	leal c,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal s,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal l,%eax
	movl %ecx,(%eax)
	leal C,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal S,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 260(%esp), %eax
	movl $-252,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 260(%esp), %eax
	movl $-252,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 260(%esp), %eax
	movl $-252,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Lcall_successor_l59:
	leal l,%eax
	movl $4,%ecx
	movl %ecx,(%eax)
	movl (%eax),%ecx
	leal c,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal s,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal i,%eax
	movl %ecx,(%eax)
	leal C,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal S,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 260(%esp), %eax
	movl $-244,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 260(%esp), %eax
	movl $-244,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 260(%esp), %eax
	movl $-244,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Lcall_successor_l56:
	leal C,%ecx
	movl $5,%eax
	movb %al,(%ecx)
	movzbl (%ecx),%ecx
	leal c,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal s,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal i,%eax
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	leal S,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 260(%esp), %eax
	movl $-236,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 260(%esp), %eax
	movl $-236,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 260(%esp), %eax
	movl $-236,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Lcall_successor_l53:
	leal S,%ecx
	movl $6,%eax
	movw %ax,(%ecx)
	movzwl (%ecx),%ecx
	leal c,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal s,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal i,%eax
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	leal C,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 260(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 260(%esp), %eax
	movl $-228,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 260(%esp), %eax
	movl $-228,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 260(%esp), %eax
	movl $-228,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Lcall_successor_l50:
	leal I,%eax
	movl $7,%ecx
	movl %ecx,(%eax)
	movl (%eax),%edx
	leal c,%ecx
	movl %edx,%eax
	movb %al,(%ecx)
	leal s,%ecx
	movl %edx,%eax
	movw %ax,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	leal C,%ecx
	movl %edx,%eax
	movb %al,(%ecx)
	leal S,%ecx
	movl %edx,%eax
	movw %ax,(%ecx)
	leal L,%eax
	movl %edx,(%eax)
	movl $1,%ecx
	movl %edx,%eax
	andl %ecx,%eax
	leal 260(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fildl (%eax)
	movl $1,%ecx
	shrl %cl, %edx
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f_4,%eax
	fldl (%eax)
	fmulp
	faddp
	leal 260(%esp), %eax
	movl $-220,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 260(%esp), %eax
	movl $-220,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 260(%esp), %eax
	movl $-220,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 260(%esp), %eax
	movl $-220,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Lcall_successor_l47:
	leal L,%eax
	movl $8,%ecx
	movl %ecx,(%eax)
	movl (%eax),%edx
	leal c,%ecx
	movl %edx,%eax
	movb %al,(%ecx)
	leal s,%ecx
	movl %edx,%eax
	movw %ax,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	leal C,%ecx
	movl %edx,%eax
	movb %al,(%ecx)
	leal S,%ecx
	movl %edx,%eax
	movw %ax,(%ecx)
	movzwl (%ecx),%eax
	leal I,%ecx
	movl %eax,(%ecx)
	movl $1,%ecx
	movl %edx,%eax
	andl %ecx,%eax
	leal 260(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fildl (%eax)
	movl $1,%ecx
	shrl %cl, %edx
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f_4,%eax
	fldl (%eax)
	fmulp
	faddp
	leal 260(%esp), %eax
	movl $-212,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 260(%esp), %eax
	movl $-212,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 260(%esp), %eax
	movl $-212,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 260(%esp), %eax
	movl $-212,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Lcall_successor_l44:
	leal f,%ecx
	leal f_5,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 260(%esp), %eax
	movl $-204,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 260(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal c,%ecx
	movb %al,(%ecx)
	leal s,%ecx
	movw %ax,(%ecx)
	leal i,%ecx
	movl %eax,(%ecx)
	leal l,%ecx
	movl %eax,(%ecx)
	leal f_9,%ecx
	leal 260(%esp), %eax
	movl $-200,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l69:
	leal 260(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-200,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.7
.Lbranch_target_l41:
	leal 260(%esp), %eax
	movl $-200,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.8
L.7:
	leal 260(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.8:
	leal C,%ecx
	movb %al,(%ecx)
	leal f,%ecx
	leal 260(%esp), %eax
	movl $-196,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal f_9,%ecx
	leal 260(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l72:
	leal 260(%esp), %eax
	movl $-196,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-192,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.11
.Lbranch_target_l40:
	leal 260(%esp), %eax
	movl $-192,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-196,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.12
L.11:
	leal 260(%esp), %eax
	movl $-196,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.12:
	leal S,%ecx
	movw %ax,(%ecx)
	leal f,%ecx
	leal 260(%esp), %eax
	movl $-188,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal f_9,%ecx
	leal 260(%esp), %eax
	movl $-184,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l73:
	leal 260(%esp), %eax
	movl $-188,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-184,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.14
.Lbranch_target_l39:
	leal 260(%esp), %eax
	movl $-184,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-188,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.15
L.14:
	leal 260(%esp), %eax
	movl $-188,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.15:
	leal I,%ecx
	movl %eax,(%ecx)
	leal f,%ecx
	leal 260(%esp), %eax
	movl $-180,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal f_9,%ecx
	leal 260(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l74:
	leal 260(%esp), %eax
	movl $-180,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.17
.Lbranch_target_l38:
	leal 260(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-180,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.18
L.17:
	leal 260(%esp), %eax
	movl $-180,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.18:
	leal L,%ecx
	movl %eax,(%ecx)
	leal f,%eax
	flds (%eax)
	leal 260(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 260(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 260(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Lcall_successor_l37:
	leal d,%ecx
	leal f_19,%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 260(%esp), %eax
	movl $-172,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 260(%esp), %eax
	movl $-172,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal c,%ecx
	movb %al,(%ecx)
	leal s,%ecx
	movw %ax,(%ecx)
	leal i,%ecx
	movl %eax,(%ecx)
	leal l,%ecx
	movl %eax,(%ecx)
	leal f_23,%ecx
	leal 260(%esp), %eax
	movl $-164,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
.Lbranch_target_l70:
	leal 260(%esp), %eax
	movl $-172,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-164,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.21
.Lbranch_target_l34:
	leal 260(%esp), %eax
	movl $-164,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-172,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.22
L.21:
	leal 260(%esp), %eax
	movl $-172,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.22:
	leal C,%ecx
	movb %al,(%ecx)
	leal d,%ecx
	leal 260(%esp), %eax
	movl $-156,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal f_23,%ecx
	leal 260(%esp), %eax
	movl $-148,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
.Lbranch_target_l75:
	leal 260(%esp), %eax
	movl $-156,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.25
.Lbranch_target_l33:
	leal 260(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-156,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.26
L.25:
	leal 260(%esp), %eax
	movl $-156,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.26:
	leal S,%ecx
	movw %ax,(%ecx)
	leal d,%ecx
	leal 260(%esp), %eax
	movl $-140,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal f_23,%ecx
	leal 260(%esp), %eax
	movl $-132,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
.Lbranch_target_l76:
	leal 260(%esp), %eax
	movl $-140,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.28
.Lbranch_target_l32:
	leal 260(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-140,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.29
L.28:
	leal 260(%esp), %eax
	movl $-140,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.29:
	leal I,%ecx
	movl %eax,(%ecx)
	leal d,%ecx
	leal 260(%esp), %eax
	movl $-124,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal f_23,%ecx
	leal 260(%esp), %eax
	movl $-116,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
.Lbranch_target_l77:
	leal 260(%esp), %eax
	movl $-124,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.31
.Lbranch_target_l31:
	leal 260(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-124,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.32
L.31:
	leal 260(%esp), %eax
	movl $-124,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.32:
	leal L,%ecx
	movl %eax,(%ecx)
	leal d,%ecx
	leal 260(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 260(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 260(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Lcall_successor_l30:
	leal D,%ecx
	leal f_33,%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 260(%esp), %eax
	movl $-108,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 260(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal c,%ecx
	movb %al,(%ecx)
	leal s,%ecx
	movw %ax,(%ecx)
	leal i,%ecx
	movl %eax,(%ecx)
	leal l,%ecx
	movl %eax,(%ecx)
	leal f_37,%ecx
	leal 260(%esp), %eax
	movl $-100,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
.Lbranch_target_l71:
	leal 260(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.35
.Lbranch_target_l27:
	leal 260(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.36
L.35:
	leal 260(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.36:
	leal C,%ecx
	movb %al,(%ecx)
	leal D,%ecx
	leal 260(%esp), %eax
	movl $-92,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal f_37,%ecx
	leal 260(%esp), %eax
	movl $-84,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
.Lbranch_target_l78:
	leal 260(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.39
.Lbranch_target_l26:
	leal 260(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.40
L.39:
	leal 260(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.40:
	leal S,%ecx
	movw %ax,(%ecx)
	leal D,%ecx
	leal 260(%esp), %eax
	movl $-76,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal f_37,%ecx
	leal 260(%esp), %eax
	movl $-68,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
.Lbranch_target_l79:
	leal 260(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.42
.Lbranch_target_l25:
	leal 260(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.43
L.42:
	leal 260(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.43:
	leal I,%ecx
	movl %eax,(%ecx)
	leal D,%ecx
	leal 260(%esp), %eax
	movl $-60,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal f_37,%ecx
	leal 260(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
.Lbranch_target_l80:
	leal 260(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.45
.Lbranch_target_l24:
	leal 260(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.46
L.45:
	leal 260(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 260(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
L.46:
	leal L,%ecx
	movl %eax,(%ecx)
	leal D,%ecx
	leal 260(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 260(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 260(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Lcall_successor_l23:
	leal p,%ecx
	movl $0,%eax
	movl %eax,(%ecx)
	movl %eax,(%ecx)
	movl %eax,(%ecx)
	movl %eax,(%ecx)
	leal P,%edx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	movl %eax,(%edx)
	movl %eax,(%edx)
	movl %eax,(%edx)
	movl %eax,(%edx)
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 260(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 256(%esp),%edx
	movl %edx,(%ecx)
	movl 252(%esp),%edi
	leal 260(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l84:
.long 0
.section .pcmap
.long .Lcall_successor_l65
.long .Lframe_l85
.section .pcmap_data
.Lframe_l85:
.long 0x80000004
.long 0xfffffefc
.long 0xfffffffc
.long .Lstackdata_l84
.long 1
.long 82
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff38
.long 0xffffff3c
.long 0xffffff40
.long 0xffffff44
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff50
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff54
.long 0
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0xffffff84
.long 0xffffff8c
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l62
.long .Lframe_l86
.section .pcmap_data
.Lframe_l86:
.long 0x80000004
.long 0xfffffefc
.long 0xfffffffc
.long .Lstackdata_l84
.long 1
.long 82
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff38
.long 0xffffff3c
.long 0xffffff40
.long 0xffffff44
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff50
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff54
.long 0
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0xffffff84
.long 0xffffff8c
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l59
.long .Lframe_l87
.section .pcmap_data
.Lframe_l87:
.long 0x80000004
.long 0xfffffefc
.long 0xfffffffc
.long .Lstackdata_l84
.long 1
.long 82
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff38
.long 0xffffff3c
.long 0xffffff40
.long 0xffffff44
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff50
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff54
.long 0
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0xffffff84
.long 0xffffff8c
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l56
.long .Lframe_l88
.section .pcmap_data
.Lframe_l88:
.long 0x80000004
.long 0xfffffefc
.long 0xfffffffc
.long .Lstackdata_l84
.long 1
.long 82
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff38
.long 0xffffff3c
.long 0xffffff40
.long 0xffffff44
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff50
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff54
.long 0
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0xffffff84
.long 0xffffff8c
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l53
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x80000004
.long 0xfffffefc
.long 0xfffffffc
.long .Lstackdata_l84
.long 1
.long 82
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff38
.long 0xffffff3c
.long 0xffffff40
.long 0xffffff44
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff50
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff54
.long 0
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0xffffff84
.long 0xffffff8c
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l50
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x80000004
.long 0xfffffefc
.long 0xfffffffc
.long .Lstackdata_l84
.long 1
.long 82
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff38
.long 0xffffff3c
.long 0xffffff40
.long 0xffffff44
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff50
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff54
.long 0
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0xffffff84
.long 0xffffff8c
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l47
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x80000004
.long 0xfffffefc
.long 0xfffffffc
.long .Lstackdata_l84
.long 1
.long 82
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff38
.long 0xffffff3c
.long 0xffffff40
.long 0xffffff44
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff50
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff54
.long 0
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0xffffff84
.long 0xffffff8c
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l44
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000004
.long 0xfffffefc
.long 0xfffffffc
.long .Lstackdata_l84
.long 1
.long 82
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff38
.long 0xffffff3c
.long 0xffffff40
.long 0xffffff44
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff50
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff54
.long 0
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0xffffff84
.long 0xffffff8c
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l37
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x80000004
.long 0xfffffefc
.long 0xfffffffc
.long .Lstackdata_l84
.long 1
.long 82
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff38
.long 0xffffff3c
.long 0xffffff40
.long 0xffffff44
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff50
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff54
.long 0
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0xffffff84
.long 0xffffff8c
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l30
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x80000004
.long 0xfffffefc
.long 0xfffffffc
.long .Lstackdata_l84
.long 1
.long 82
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff38
.long 0xffffff3c
.long 0xffffff40
.long 0xffffff44
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff50
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff54
.long 0
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0xffffff84
.long 0xffffff8c
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l95
.section .pcmap_data
.Lframe_l95:
.long 0x80000004
.long 0xfffffefc
.long 0xfffffffc
.long .Lstackdata_l84
.long 1
.long 82
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff34
.long 0
.long 0xffffff38
.long 0xffffff3c
.long 0xffffff40
.long 0xffffff44
.long 0xffffff48
.long 0xffffff4c
.long 0xffffff50
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff54
.long 0
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0xffffff84
.long 0xffffff8c
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .bss
.align 4
P:
.skip 4, 0
.align 4
p:
.skip 4, 0
.align 4
D:
.skip 8, 0
.align 4
d:
.skip 8, 0
.align 4
f:
.skip 4, 0
.align 4
L:
.skip 4, 0
.align 4
I:
.skip 4, 0
.align 2
S:
.skip 2, 0
C:
.skip 1, 0
.align 4
l:
.skip 4, 0
.align 4
i:
.skip 4, 0
.align 2
s:
.skip 2, 0
c:
.skip 1, 0
.section .data
.align 4
f_37:
.long 0
.long 0x41e00000
.align 4
f_33:
.long 0
.long 0x40260000
.align 4
f_23:
.long 0
.long 0x41e00000
.align 4
f_19:
.long 0
.long 0x40240000
.align 4
f_9:
.long 0x4f000000
.align 4
f_5:
.long 0x41100000
.align 4
f_4:
.long 0
.long 0x40000000
i_2:
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 108
.byte 100
.byte 32
.byte 37
.byte 117
.byte 32
.byte 37
.byte 117
.byte 32
.byte 37
.byte 117
.byte 32
.byte 37
.byte 108
.byte 117
.byte 32
.byte 37
.byte 102
.byte 32
.byte 37
.byte 102
.byte 32
.byte 37
.byte 108
.byte 102
.byte 10
.byte 0
