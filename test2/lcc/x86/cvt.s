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
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	leal i_2,%ecx
	leal 64(%esp), %edx
	movl %eax,60(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal c,%eax
	movsbl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal s,%eax
	movswl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal i,%eax
	leal 64(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal l,%eax
	leal 64(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal C,%eax
	movzbl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal S,%eax
	movzwl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal I,%eax
	leal 64(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal L,%eax
	leal 64(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal f,%eax
	flds (%eax)
	leal 64(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal d,%eax
	leal 64(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal D,%eax
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call printf
.Ljoin_l9:
L.1:
	leal 64(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l16:
.long 0
.section .pcmap
.long .Ljoin_l9
.long .Lframe_l17
.section .pcmap_data
.Lframe_l17:
.long 0x80000004
.long 0xffffffc0
.long 0xfffffffc
.long .Lstackdata_l16
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
main:
	leal -452(%esp), %esp
	leal 452(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l20:
.Lproc_body_start_l19:
	leal c,%ecx
	movl $1,%edx
	movl %eax,252(%esp)
	movl %edx,%eax
	movb %al,(%ecx)
	movsbl (%ecx),%eax
	leal s,%ecx
	movl %eax,256(%esp)
	movl %eax,%edx
	movl %edx,%eax
	movw %ax,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	movl %edx,%eax
	leal C,%ecx
	movl %eax,260(%esp)
	movl %ecx,264(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	movl 264(%esp),%ecx
	movb %al,(%ecx)
	leal S,%eax
	movl %eax,268(%esp)
	movl 260(%esp),%ecx
	movl %ecx,%eax
	movl 268(%esp),%ecx
	movw %ax,(%ecx)
	leal I,%eax
	movl 260(%esp),%ecx
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 452(%esp), %eax
	movl $-212,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 452(%esp), %eax
	movl $-212,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-212,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Ljoin_l79:
	leal s,%eax
	movl $2,%ecx
	movl %eax,272(%esp)
	movl %ecx,%eax
	movl 272(%esp),%ecx
	movw %ax,(%ecx)
	movswl (%ecx),%eax
	leal c,%ecx
	movl %eax,276(%esp)
	movl %eax,%edx
	movl %edx,%eax
	movb %al,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	movl %edx,%eax
	leal C,%ecx
	movl %eax,280(%esp)
	movl %ecx,284(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	movl 284(%esp),%ecx
	movb %al,(%ecx)
	leal S,%eax
	movl %eax,288(%esp)
	movl 280(%esp),%ecx
	movl %ecx,%eax
	movl 288(%esp),%ecx
	movw %ax,(%ecx)
	leal I,%eax
	movl 280(%esp),%ecx
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 452(%esp), %eax
	movl $-220,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 452(%esp), %eax
	movl $-220,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-220,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Ljoin_l76:
	leal i,%eax
	movl $3,%ecx
	movl %ecx,(%eax)
	movl (%eax),%eax
	leal c,%ecx
	movl %eax,292(%esp)
	movl %eax,%edx
	movl %edx,%eax
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,296(%esp)
	movl %edx,%eax
	movl 296(%esp),%ecx
	movw %ax,(%ecx)
	leal l,%eax
	movl %edx,(%eax)
	movl %edx,%eax
	leal C,%ecx
	movl %eax,300(%esp)
	movl %ecx,304(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	movl 304(%esp),%ecx
	movb %al,(%ecx)
	leal S,%eax
	movl %eax,308(%esp)
	movl 300(%esp),%ecx
	movl %ecx,%eax
	movl 308(%esp),%ecx
	movw %ax,(%ecx)
	leal I,%eax
	movl 300(%esp),%ecx
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 452(%esp), %eax
	movl $-228,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 452(%esp), %eax
	movl $-228,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-228,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Ljoin_l73:
	leal l,%eax
	movl $4,%ecx
	movl %ecx,(%eax)
	movl (%eax),%eax
	leal c,%ecx
	movl %eax,312(%esp)
	movl %eax,%edx
	movl %edx,%eax
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,316(%esp)
	movl %edx,%eax
	movl 316(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	movl %edx,%eax
	leal C,%ecx
	movl %eax,320(%esp)
	movl %ecx,324(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	movl 324(%esp),%ecx
	movb %al,(%ecx)
	leal S,%eax
	movl %eax,328(%esp)
	movl 320(%esp),%ecx
	movl %ecx,%eax
	movl 328(%esp),%ecx
	movw %ax,(%ecx)
	leal I,%eax
	movl 320(%esp),%ecx
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 452(%esp), %eax
	movl $-236,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 452(%esp), %eax
	movl $-236,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-236,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Ljoin_l70:
	leal C,%eax
	movl $5,%ecx
	movl %eax,332(%esp)
	movl %ecx,%eax
	movl 332(%esp),%ecx
	movb %al,(%ecx)
	movzbl (%ecx),%eax
	leal c,%ecx
	movl %eax,336(%esp)
	movl %eax,%edx
	movl %edx,%eax
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,340(%esp)
	movl %edx,%eax
	movl 340(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	movl %edx,%eax
	leal S,%ecx
	movl %eax,344(%esp)
	movl %ecx,348(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	movl 348(%esp),%ecx
	movw %ax,(%ecx)
	leal I,%eax
	movl 344(%esp),%ecx
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 452(%esp), %eax
	movl $-244,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 452(%esp), %eax
	movl $-244,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-244,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Ljoin_l67:
	leal S,%eax
	movl $6,%ecx
	movl %eax,352(%esp)
	movl %ecx,%eax
	movl 352(%esp),%ecx
	movw %ax,(%ecx)
	movzwl (%ecx),%eax
	leal c,%ecx
	movl %eax,356(%esp)
	movl %eax,%edx
	movl %edx,%eax
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,360(%esp)
	movl %edx,%eax
	movl 360(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	movl %edx,%eax
	leal C,%ecx
	movl %eax,364(%esp)
	movl %ecx,368(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	movl 368(%esp),%ecx
	movb %al,(%ecx)
	leal I,%eax
	movl 364(%esp),%ecx
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 452(%esp), %eax
	movl $-252,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 452(%esp), %eax
	movl $-252,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-252,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Ljoin_l64:
	leal I,%eax
	movl $7,%ecx
	movl %ecx,(%eax)
	movl (%eax),%eax
	movl %eax,%ecx
	leal c,%edx
	movl %eax,372(%esp)
	movl %ecx,%eax
	movb %al,(%edx)
	leal s,%eax
	movl %eax,376(%esp)
	movl %ecx,%eax
	movl 376(%esp),%edx
	movw %ax,(%edx)
	leal i,%eax
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	leal C,%eax
	movl %eax,380(%esp)
	movl 372(%esp),%ecx
	movl %ecx,%eax
	movl 380(%esp),%edx
	movb %al,(%edx)
	leal S,%eax
	movl %eax,384(%esp)
	movl %ecx,%eax
	movl 384(%esp),%edx
	movw %ax,(%edx)
	leal L,%eax
	movl %ecx,(%eax)
	movl $1,%eax
	movl %ecx,%edx
	andl %eax,%edx
	leal 452(%esp), %eax
	movl %eax,388(%esp)
	movl $-204,%eax
	movl %eax,392(%esp)
	movl 388(%esp),%eax
	movl 392(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	movl $1,%eax
	movl 372(%esp),%ecx
	movl %ecx,396(%esp)
	movl %eax,%ecx
	movl 396(%esp),%eax
	shrl %cl, %eax
	leal 452(%esp), %ecx
	movl $-204,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f_4,%eax
	fldl (%eax)
	fmulp
	faddp
	leal 452(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 452(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 452(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Ljoin_l61:
	leal L,%eax
	movl $8,%ecx
	movl %ecx,(%eax)
	movl (%eax),%eax
	movl %eax,%ecx
	leal c,%edx
	movl %eax,400(%esp)
	movl %ecx,%eax
	movb %al,(%edx)
	leal s,%eax
	movl %eax,404(%esp)
	movl %ecx,%eax
	movl 404(%esp),%edx
	movw %ax,(%edx)
	leal i,%eax
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	leal C,%eax
	movl %eax,408(%esp)
	movl 400(%esp),%ecx
	movl %ecx,%eax
	movl 408(%esp),%edx
	movb %al,(%edx)
	leal S,%eax
	movl %eax,412(%esp)
	movl %ecx,%eax
	movl 412(%esp),%edx
	movw %ax,(%edx)
	movzwl (%edx),%eax
	leal I,%edx
	movl %eax,(%edx)
	movl $1,%eax
	movl %ecx,%edx
	andl %eax,%edx
	leal 452(%esp), %eax
	movl %eax,416(%esp)
	movl $-204,%eax
	movl %eax,420(%esp)
	movl 416(%esp),%eax
	movl 420(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	movl $1,%eax
	movl 400(%esp),%ecx
	movl %ecx,424(%esp)
	movl %eax,%ecx
	movl 424(%esp),%eax
	shrl %cl, %eax
	leal 452(%esp), %ecx
	movl $-204,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f_4,%eax
	fldl (%eax)
	fmulp
	faddp
	leal 452(%esp), %eax
	movl $-268,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 452(%esp), %eax
	movl $-268,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 452(%esp), %eax
	movl $-268,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-268,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Ljoin_l58:
	leal f,%eax
	leal f_5,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 452(%esp), %ecx
	movl $-452,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 452(%esp), %eax
	movl $-452,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal c,%ecx
	movl %eax,428(%esp)
	movl %eax,%edx
	movl %edx,%eax
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,432(%esp)
	movl %edx,%eax
	movl 432(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	leal f_9,%eax
	leal 452(%esp), %ecx
	movl $-448,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 452(%esp), %eax
	movl $-452,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-448,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l54
.Ljoin_l55:
	leal 452(%esp), %eax
	movl $-448,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-452,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.8
.Ljoin_l54:
	jmp L.7
L.7:
	leal 452(%esp), %eax
	movl $-452,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.8
L.8:
	leal C,%ecx
	movb %al,(%ecx)
	leal f,%eax
	leal 452(%esp), %ecx
	movl $-444,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal f_9,%eax
	leal 452(%esp), %ecx
	movl $-440,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 452(%esp), %eax
	movl $-444,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-440,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l52
.Ljoin_l53:
	leal 452(%esp), %eax
	movl $-440,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-444,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.12
.Ljoin_l52:
	jmp L.11
L.11:
	leal 452(%esp), %eax
	movl $-444,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.12
L.12:
	leal S,%ecx
	movw %ax,(%ecx)
	leal f,%eax
	leal 452(%esp), %ecx
	movl $-436,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal f_9,%eax
	leal 452(%esp), %ecx
	movl $-432,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 452(%esp), %eax
	movl $-436,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-432,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l50
.Ljoin_l51:
	leal 452(%esp), %eax
	movl $-432,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-436,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.15
.Ljoin_l50:
	jmp L.14
L.14:
	leal 452(%esp), %eax
	movl $-436,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.15
L.15:
	leal I,%ecx
	movl %eax,(%ecx)
	leal f,%eax
	leal 452(%esp), %ecx
	movl $-428,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal f_9,%eax
	leal 452(%esp), %ecx
	movl $-424,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 452(%esp), %eax
	movl $-428,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-424,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l48
.Ljoin_l49:
	leal 452(%esp), %eax
	movl $-424,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-428,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.18
.Ljoin_l48:
	jmp L.17
L.17:
	leal 452(%esp), %eax
	movl $-428,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.18
L.18:
	leal L,%ecx
	movl %eax,(%ecx)
	leal f,%eax
	flds (%eax)
	leal 452(%esp), %eax
	movl $-276,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 452(%esp), %eax
	movl $-276,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-276,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Ljoin_l47:
	leal d,%eax
	leal f_19,%ecx
	fildq (%ecx)
	fistpq (%eax)
	leal 452(%esp), %ecx
	movl $-420,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-420,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal c,%ecx
	movl %eax,436(%esp)
	movl %eax,%edx
	movl %edx,%eax
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,440(%esp)
	movl %edx,%eax
	movl 440(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	leal f_23,%eax
	leal 452(%esp), %ecx
	movl $-412,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-420,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-412,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l43
.Ljoin_l44:
	leal 452(%esp), %eax
	movl $-412,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-420,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.22
.Ljoin_l43:
	jmp L.21
L.21:
	leal 452(%esp), %eax
	movl $-420,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.22
L.22:
	leal C,%ecx
	movb %al,(%ecx)
	leal d,%eax
	leal 452(%esp), %ecx
	movl $-404,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_23,%eax
	leal 452(%esp), %ecx
	movl $-396,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-404,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-396,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l41
.Ljoin_l42:
	leal 452(%esp), %eax
	movl $-396,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-404,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.26
.Ljoin_l41:
	jmp L.25
L.25:
	leal 452(%esp), %eax
	movl $-404,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.26
L.26:
	leal S,%ecx
	movw %ax,(%ecx)
	leal d,%eax
	leal 452(%esp), %ecx
	movl $-388,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_23,%eax
	leal 452(%esp), %ecx
	movl $-380,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-388,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-380,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l39
.Ljoin_l40:
	leal 452(%esp), %eax
	movl $-380,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-388,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.29
.Ljoin_l39:
	jmp L.28
L.28:
	leal 452(%esp), %eax
	movl $-388,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.29
L.29:
	leal I,%ecx
	movl %eax,(%ecx)
	leal d,%eax
	leal 452(%esp), %ecx
	movl $-372,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_23,%eax
	leal 452(%esp), %ecx
	movl $-364,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-372,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-364,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l37
.Ljoin_l38:
	leal 452(%esp), %eax
	movl $-364,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-372,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.32
.Ljoin_l37:
	jmp L.31
L.31:
	leal 452(%esp), %eax
	movl $-372,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.32
L.32:
	leal L,%ecx
	movl %eax,(%ecx)
	leal d,%eax
	leal 452(%esp), %ecx
	movl $-284,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-284,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 452(%esp), %eax
	movl $-284,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Ljoin_l36:
	leal D,%eax
	leal f_33,%ecx
	fildq (%ecx)
	fistpq (%eax)
	leal 452(%esp), %ecx
	movl $-356,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-356,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal c,%ecx
	movl %eax,444(%esp)
	movl %eax,%edx
	movl %edx,%eax
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,448(%esp)
	movl %edx,%eax
	movl 448(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	leal f_37,%eax
	leal 452(%esp), %ecx
	movl $-348,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-356,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-348,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l32
.Ljoin_l33:
	leal 452(%esp), %eax
	movl $-348,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-356,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.36
.Ljoin_l32:
	jmp L.35
L.35:
	leal 452(%esp), %eax
	movl $-356,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.36
L.36:
	leal C,%ecx
	movb %al,(%ecx)
	leal D,%eax
	leal 452(%esp), %ecx
	movl $-340,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_37,%eax
	leal 452(%esp), %ecx
	movl $-332,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-340,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-332,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l30
.Ljoin_l31:
	leal 452(%esp), %eax
	movl $-332,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-340,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.40
.Ljoin_l30:
	jmp L.39
L.39:
	leal 452(%esp), %eax
	movl $-340,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.40
L.40:
	leal S,%ecx
	movw %ax,(%ecx)
	leal D,%eax
	leal 452(%esp), %ecx
	movl $-324,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_37,%eax
	leal 452(%esp), %ecx
	movl $-316,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-324,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-316,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l28
.Ljoin_l29:
	leal 452(%esp), %eax
	movl $-316,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-324,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.43
.Ljoin_l28:
	jmp L.42
L.42:
	leal 452(%esp), %eax
	movl $-324,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.43
L.43:
	leal I,%ecx
	movl %eax,(%ecx)
	leal D,%eax
	leal 452(%esp), %ecx
	movl $-308,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_37,%eax
	leal 452(%esp), %ecx
	movl $-300,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-308,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-300,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja .Ljoin_l26
.Ljoin_l27:
	leal 452(%esp), %eax
	movl $-300,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-308,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.46
.Ljoin_l26:
	jmp L.45
L.45:
	leal 452(%esp), %eax
	movl $-308,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 452(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.46
L.46:
	leal L,%ecx
	movl %eax,(%ecx)
	leal D,%eax
	leal 452(%esp), %ecx
	movl $-292,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 452(%esp), %eax
	movl $-292,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 452(%esp), %eax
	movl $-292,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
.Ljoin_l25:
	leal p,%eax
	movl $0,%ecx
	movl %ecx,(%eax)
	movl %ecx,(%eax)
	movl %ecx,(%eax)
	movl %ecx,(%eax)
	leal P,%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $0,%edx
	movl %edx,(%ecx)
	movl %edx,(%ecx)
	movl %edx,(%ecx)
	movl %edx,(%ecx)
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 452(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 252(%esp),%edx
	movl %edx,(%ecx)
	leal 452(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l86:
.long 0
.section .pcmap
.long .Ljoin_l79
.long .Lframe_l87
.section .pcmap_data
.Lframe_l87:
.long 0x80000004
.long 0xfffffe3c
.long 0xffffff38
.long .Lstackdata_l86
.long 0
.long 82
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe3c
.long 0
.long 0xfffffe40
.long 0xfffffe44
.long 0xfffffe48
.long 0xfffffe4c
.long 0xfffffe50
.long 0xfffffe54
.long 0xfffffe58
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe5c
.long 0
.long 0xfffffe64
.long 0xfffffe6c
.long 0xfffffe74
.long 0xfffffe7c
.long 0xfffffe84
.long 0xfffffe8c
.long 0xfffffe94
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0xfffffea4
.long 0xfffffeac
.long 0xfffffeb4
.long 0xfffffebc
.long 0xfffffec4
.long 0xfffffecc
.long 0xfffffed4
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l76
.long .Lframe_l88
.section .pcmap_data
.Lframe_l88:
.long 0x80000004
.long 0xfffffe3c
.long 0xffffff38
.long .Lstackdata_l86
.long 0
.long 82
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe3c
.long 0
.long 0xfffffe40
.long 0xfffffe44
.long 0xfffffe48
.long 0xfffffe4c
.long 0xfffffe50
.long 0xfffffe54
.long 0xfffffe58
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe5c
.long 0
.long 0xfffffe64
.long 0xfffffe6c
.long 0xfffffe74
.long 0xfffffe7c
.long 0xfffffe84
.long 0xfffffe8c
.long 0xfffffe94
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0xfffffea4
.long 0xfffffeac
.long 0xfffffeb4
.long 0xfffffebc
.long 0xfffffec4
.long 0xfffffecc
.long 0xfffffed4
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l73
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x80000004
.long 0xfffffe3c
.long 0xffffff38
.long .Lstackdata_l86
.long 0
.long 82
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe3c
.long 0
.long 0xfffffe40
.long 0xfffffe44
.long 0xfffffe48
.long 0xfffffe4c
.long 0xfffffe50
.long 0xfffffe54
.long 0xfffffe58
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe5c
.long 0
.long 0xfffffe64
.long 0xfffffe6c
.long 0xfffffe74
.long 0xfffffe7c
.long 0xfffffe84
.long 0xfffffe8c
.long 0xfffffe94
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0xfffffea4
.long 0xfffffeac
.long 0xfffffeb4
.long 0xfffffebc
.long 0xfffffec4
.long 0xfffffecc
.long 0xfffffed4
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l70
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x80000004
.long 0xfffffe3c
.long 0xffffff38
.long .Lstackdata_l86
.long 0
.long 82
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe3c
.long 0
.long 0xfffffe40
.long 0xfffffe44
.long 0xfffffe48
.long 0xfffffe4c
.long 0xfffffe50
.long 0xfffffe54
.long 0xfffffe58
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe5c
.long 0
.long 0xfffffe64
.long 0xfffffe6c
.long 0xfffffe74
.long 0xfffffe7c
.long 0xfffffe84
.long 0xfffffe8c
.long 0xfffffe94
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0xfffffea4
.long 0xfffffeac
.long 0xfffffeb4
.long 0xfffffebc
.long 0xfffffec4
.long 0xfffffecc
.long 0xfffffed4
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l67
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x80000004
.long 0xfffffe3c
.long 0xffffff38
.long .Lstackdata_l86
.long 0
.long 82
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe3c
.long 0
.long 0xfffffe40
.long 0xfffffe44
.long 0xfffffe48
.long 0xfffffe4c
.long 0xfffffe50
.long 0xfffffe54
.long 0xfffffe58
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe5c
.long 0
.long 0xfffffe64
.long 0xfffffe6c
.long 0xfffffe74
.long 0xfffffe7c
.long 0xfffffe84
.long 0xfffffe8c
.long 0xfffffe94
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0xfffffea4
.long 0xfffffeac
.long 0xfffffeb4
.long 0xfffffebc
.long 0xfffffec4
.long 0xfffffecc
.long 0xfffffed4
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l64
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000004
.long 0xfffffe3c
.long 0xffffff38
.long .Lstackdata_l86
.long 0
.long 82
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe3c
.long 0
.long 0xfffffe40
.long 0xfffffe44
.long 0xfffffe48
.long 0xfffffe4c
.long 0xfffffe50
.long 0xfffffe54
.long 0xfffffe58
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe5c
.long 0
.long 0xfffffe64
.long 0xfffffe6c
.long 0xfffffe74
.long 0xfffffe7c
.long 0xfffffe84
.long 0xfffffe8c
.long 0xfffffe94
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0xfffffea4
.long 0xfffffeac
.long 0xfffffeb4
.long 0xfffffebc
.long 0xfffffec4
.long 0xfffffecc
.long 0xfffffed4
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l61
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x80000004
.long 0xfffffe3c
.long 0xffffff38
.long .Lstackdata_l86
.long 0
.long 82
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe3c
.long 0
.long 0xfffffe40
.long 0xfffffe44
.long 0xfffffe48
.long 0xfffffe4c
.long 0xfffffe50
.long 0xfffffe54
.long 0xfffffe58
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe5c
.long 0
.long 0xfffffe64
.long 0xfffffe6c
.long 0xfffffe74
.long 0xfffffe7c
.long 0xfffffe84
.long 0xfffffe8c
.long 0xfffffe94
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0xfffffea4
.long 0xfffffeac
.long 0xfffffeb4
.long 0xfffffebc
.long 0xfffffec4
.long 0xfffffecc
.long 0xfffffed4
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l58
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x80000004
.long 0xfffffe3c
.long 0xffffff38
.long .Lstackdata_l86
.long 0
.long 82
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe3c
.long 0
.long 0xfffffe40
.long 0xfffffe44
.long 0xfffffe48
.long 0xfffffe4c
.long 0xfffffe50
.long 0xfffffe54
.long 0xfffffe58
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe5c
.long 0
.long 0xfffffe64
.long 0xfffffe6c
.long 0xfffffe74
.long 0xfffffe7c
.long 0xfffffe84
.long 0xfffffe8c
.long 0xfffffe94
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0xfffffea4
.long 0xfffffeac
.long 0xfffffeb4
.long 0xfffffebc
.long 0xfffffec4
.long 0xfffffecc
.long 0xfffffed4
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l47
.long .Lframe_l95
.section .pcmap_data
.Lframe_l95:
.long 0x80000004
.long 0xfffffe3c
.long 0xffffff38
.long .Lstackdata_l86
.long 0
.long 82
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe3c
.long 0
.long 0xfffffe40
.long 0xfffffe44
.long 0xfffffe48
.long 0xfffffe4c
.long 0xfffffe50
.long 0xfffffe54
.long 0xfffffe58
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe5c
.long 0
.long 0xfffffe64
.long 0xfffffe6c
.long 0xfffffe74
.long 0xfffffe7c
.long 0xfffffe84
.long 0xfffffe8c
.long 0xfffffe94
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0xfffffea4
.long 0xfffffeac
.long 0xfffffeb4
.long 0xfffffebc
.long 0xfffffec4
.long 0xfffffecc
.long 0xfffffed4
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l36
.long .Lframe_l96
.section .pcmap_data
.Lframe_l96:
.long 0x80000004
.long 0xfffffe3c
.long 0xffffff38
.long .Lstackdata_l86
.long 0
.long 82
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe3c
.long 0
.long 0xfffffe40
.long 0xfffffe44
.long 0xfffffe48
.long 0xfffffe4c
.long 0xfffffe50
.long 0xfffffe54
.long 0xfffffe58
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe5c
.long 0
.long 0xfffffe64
.long 0xfffffe6c
.long 0xfffffe74
.long 0xfffffe7c
.long 0xfffffe84
.long 0xfffffe8c
.long 0xfffffe94
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0xfffffea4
.long 0xfffffeac
.long 0xfffffeb4
.long 0xfffffebc
.long 0xfffffec4
.long 0xfffffecc
.long 0xfffffed4
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l25
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x80000004
.long 0xfffffe3c
.long 0xffffff38
.long .Lstackdata_l86
.long 0
.long 82
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff2c
.long 0
.long 0
.long 0
.long 0xffffff24
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe3c
.long 0
.long 0xfffffe40
.long 0xfffffe44
.long 0xfffffe48
.long 0xfffffe4c
.long 0xfffffe50
.long 0xfffffe54
.long 0xfffffe58
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe5c
.long 0
.long 0xfffffe64
.long 0xfffffe6c
.long 0xfffffe74
.long 0xfffffe7c
.long 0xfffffe84
.long 0xfffffe8c
.long 0xfffffe94
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0xfffffea4
.long 0xfffffeac
.long 0xfffffeb4
.long 0xfffffebc
.long 0xfffffec4
.long 0xfffffecc
.long 0xfffffed4
.long 0xfffffedc
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
