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
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
print:
	leal -60(%esp), %esp
	nop
	nop
	leal 60(%esp), %ecx
	leal 60(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l3:
	nop
	leal i_2,%eax
	movl $-60,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal c,%eax
	movsbl (%eax),%eax
	movl $-56,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal s,%eax
	movswl (%eax),%eax
	movl $-52,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i,%eax
	movl $-48,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal l,%eax
	movl $-44,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal C,%eax
	movzbl (%eax),%eax
	movl $-40,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal S,%eax
	movzwl (%eax),%eax
	movl $-36,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal I,%eax
	movl $-32,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal L,%eax
	movl $-28,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal f,%eax
	flds (%eax)
	movl $-24,%ecx
	leal 60(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	leal d,%eax
	movl $-16,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal D,%eax
	movl $-8,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	nop
	call printf
join_l7:
	nop
	nop
	nop
L.1:
	nop
	nop
	leal 60(%esp), %eax
	movl $0,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 60(%esp), %esp
	ret
main:
	leal -656(%esp), %esp
	nop
	nop
	leal 656(%esp), %ecx
	leal 656(%esp), %edx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
initialize_continuations_l16:
	leal c,%ecx
	movl $1,%edx
	movb %dl,(%ecx)
	movsbl (%ecx),%ecx
	movl %ecx,616(%esp)
	leal s,%ecx
	movl 616(%esp),%edx
	movw %dx,(%ecx)
	leal i,%ecx
	movl 616(%esp),%edx
	movl %edx,(%ecx)
	leal l,%ecx
	movl 616(%esp),%edx
	movl %edx,(%ecx)
	movl 616(%esp),%ecx
	leal C,%edx
	movb %cl,(%edx)
	leal S,%edx
	movw %cx,(%edx)
	leal I,%edx
	movl %ecx,(%edx)
	leal L,%edx
	movl %ecx,(%edx)
	movl $-376,%ecx
	movl %ecx,512(%esp)
	leal 656(%esp), %ecx
	movl %ecx,340(%esp)
	movl 340(%esp),%ecx
	movl 512(%esp),%edx
	addl %edx,%ecx
	movl %ecx,340(%esp)
	movl 340(%esp),%ecx
	movl 616(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	movl %ecx,508(%esp)
	leal 656(%esp), %ecx
	movl %ecx,336(%esp)
	movl 336(%esp),%ecx
	movl 508(%esp),%edx
	addl %edx,%ecx
	movl %ecx,336(%esp)
	movl 336(%esp),%ecx
	fildl (%ecx)
	leal f,%ecx
	fstps (%ecx)
	movl $-376,%ecx
	movl %ecx,516(%esp)
	leal 656(%esp), %ecx
	movl %ecx,344(%esp)
	movl 344(%esp),%ecx
	movl 516(%esp),%edx
	addl %edx,%ecx
	movl %ecx,344(%esp)
	movl 344(%esp),%ecx
	movl 616(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-464,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-464,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-464,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	nop
	nop
	nop
	call print
join_l75:
	nop
	nop
	nop
	leal s,%ecx
	movl $2,%edx
	movw %dx,(%ecx)
	movswl (%ecx),%ecx
	movl %ecx,652(%esp)
	leal c,%ecx
	movl 652(%esp),%edx
	movb %dl,(%ecx)
	leal i,%ecx
	movl 652(%esp),%edx
	movl %edx,(%ecx)
	leal l,%ecx
	movl 652(%esp),%edx
	movl %edx,(%ecx)
	movl 652(%esp),%ecx
	leal C,%edx
	movb %cl,(%edx)
	leal S,%edx
	movw %cx,(%edx)
	leal I,%edx
	movl %ecx,(%edx)
	leal L,%edx
	movl %ecx,(%edx)
	movl $-376,%ecx
	movl %ecx,608(%esp)
	leal 656(%esp), %ecx
	movl %ecx,500(%esp)
	movl 500(%esp),%ecx
	movl 608(%esp),%edx
	addl %edx,%ecx
	movl %ecx,500(%esp)
	movl 500(%esp),%ecx
	movl 652(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	movl %ecx,604(%esp)
	leal 656(%esp), %ecx
	movl %ecx,496(%esp)
	movl 496(%esp),%ecx
	movl 604(%esp),%edx
	addl %edx,%ecx
	movl %ecx,496(%esp)
	movl 496(%esp),%ecx
	fildl (%ecx)
	leal f,%ecx
	fstps (%ecx)
	movl $-376,%ecx
	movl %ecx,612(%esp)
	leal 656(%esp), %ecx
	movl %ecx,504(%esp)
	movl 504(%esp),%ecx
	movl 612(%esp),%edx
	addl %edx,%ecx
	movl %ecx,504(%esp)
	movl 504(%esp),%ecx
	movl 652(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-384,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-384,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-384,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	nop
	nop
	nop
	call print
join_l72:
	nop
	nop
	nop
	leal i,%ecx
	movl $3,%edx
	movl %edx,(%ecx)
	movl (%ecx),%ecx
	movl %ecx,648(%esp)
	leal c,%ecx
	movl 648(%esp),%edx
	movb %dl,(%ecx)
	leal s,%ecx
	movl 648(%esp),%edx
	movw %dx,(%ecx)
	leal l,%ecx
	movl 648(%esp),%edx
	movl %edx,(%ecx)
	movl 648(%esp),%ecx
	leal C,%edx
	movb %cl,(%edx)
	leal S,%edx
	movw %cx,(%edx)
	leal I,%edx
	movl %ecx,(%edx)
	leal L,%edx
	movl %ecx,(%edx)
	movl $-376,%ecx
	movl %ecx,596(%esp)
	leal 656(%esp), %ecx
	movl %ecx,488(%esp)
	movl 488(%esp),%ecx
	movl 596(%esp),%edx
	addl %edx,%ecx
	movl %ecx,488(%esp)
	movl 488(%esp),%ecx
	movl 648(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	movl %ecx,592(%esp)
	leal 656(%esp), %ecx
	movl %ecx,484(%esp)
	movl 484(%esp),%ecx
	movl 592(%esp),%edx
	addl %edx,%ecx
	movl %ecx,484(%esp)
	movl 484(%esp),%ecx
	fildl (%ecx)
	leal f,%ecx
	fstps (%ecx)
	movl $-376,%ecx
	movl %ecx,600(%esp)
	leal 656(%esp), %ecx
	movl %ecx,492(%esp)
	movl 492(%esp),%ecx
	movl 600(%esp),%edx
	addl %edx,%ecx
	movl %ecx,492(%esp)
	movl 492(%esp),%ecx
	movl 648(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-392,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-392,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-392,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	nop
	nop
	nop
	call print
join_l69:
	nop
	nop
	nop
	leal l,%ecx
	movl $4,%edx
	movl %edx,(%ecx)
	movl (%ecx),%ecx
	movl %ecx,644(%esp)
	leal c,%ecx
	movl 644(%esp),%edx
	movb %dl,(%ecx)
	leal s,%ecx
	movl 644(%esp),%edx
	movw %dx,(%ecx)
	leal i,%ecx
	movl 644(%esp),%edx
	movl %edx,(%ecx)
	movl 644(%esp),%ecx
	leal C,%edx
	movb %cl,(%edx)
	leal S,%edx
	movw %cx,(%edx)
	leal I,%edx
	movl %ecx,(%edx)
	leal L,%edx
	movl %ecx,(%edx)
	movl $-376,%ecx
	movl %ecx,584(%esp)
	leal 656(%esp), %ecx
	movl %ecx,476(%esp)
	movl 476(%esp),%ecx
	movl 584(%esp),%edx
	addl %edx,%ecx
	movl %ecx,476(%esp)
	movl 476(%esp),%ecx
	movl 644(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	movl %ecx,580(%esp)
	leal 656(%esp), %ecx
	movl %ecx,472(%esp)
	movl 472(%esp),%ecx
	movl 580(%esp),%edx
	addl %edx,%ecx
	movl %ecx,472(%esp)
	movl 472(%esp),%ecx
	fildl (%ecx)
	leal f,%ecx
	fstps (%ecx)
	movl $-376,%ecx
	movl %ecx,588(%esp)
	leal 656(%esp), %ecx
	movl %ecx,480(%esp)
	movl 480(%esp),%ecx
	movl 588(%esp),%edx
	addl %edx,%ecx
	movl %ecx,480(%esp)
	movl 480(%esp),%ecx
	movl 644(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-400,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-400,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-400,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	nop
	nop
	nop
	call print
join_l66:
	nop
	nop
	nop
	leal C,%ecx
	movl $5,%edx
	movb %dl,(%ecx)
	movzbl (%ecx),%ecx
	movl %ecx,640(%esp)
	leal c,%ecx
	movl 640(%esp),%edx
	movb %dl,(%ecx)
	leal s,%ecx
	movl 640(%esp),%edx
	movw %dx,(%ecx)
	leal i,%ecx
	movl 640(%esp),%edx
	movl %edx,(%ecx)
	leal l,%ecx
	movl 640(%esp),%edx
	movl %edx,(%ecx)
	movl 640(%esp),%ecx
	leal S,%edx
	movw %cx,(%edx)
	leal I,%edx
	movl %ecx,(%edx)
	leal L,%edx
	movl %ecx,(%edx)
	movl $-376,%ecx
	movl %ecx,572(%esp)
	leal 656(%esp), %ecx
	movl %ecx,464(%esp)
	movl 464(%esp),%ecx
	movl 572(%esp),%edx
	addl %edx,%ecx
	movl %ecx,464(%esp)
	movl 464(%esp),%ecx
	movl 640(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	movl %ecx,568(%esp)
	leal 656(%esp), %ecx
	movl %ecx,460(%esp)
	movl 460(%esp),%ecx
	movl 568(%esp),%edx
	addl %edx,%ecx
	movl %ecx,460(%esp)
	movl 460(%esp),%ecx
	fildl (%ecx)
	leal f,%ecx
	fstps (%ecx)
	movl $-376,%ecx
	movl %ecx,576(%esp)
	leal 656(%esp), %ecx
	movl %ecx,468(%esp)
	movl 468(%esp),%ecx
	movl 576(%esp),%edx
	addl %edx,%ecx
	movl %ecx,468(%esp)
	movl 468(%esp),%ecx
	movl 640(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-408,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-408,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-408,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	nop
	nop
	nop
	call print
join_l63:
	nop
	nop
	nop
	leal S,%ecx
	movl $6,%edx
	movw %dx,(%ecx)
	movzwl (%ecx),%ecx
	movl %ecx,636(%esp)
	leal c,%ecx
	movl 636(%esp),%edx
	movb %dl,(%ecx)
	leal s,%ecx
	movl 636(%esp),%edx
	movw %dx,(%ecx)
	leal i,%ecx
	movl 636(%esp),%edx
	movl %edx,(%ecx)
	leal l,%ecx
	movl 636(%esp),%edx
	movl %edx,(%ecx)
	movl 636(%esp),%ecx
	leal C,%edx
	movb %cl,(%edx)
	leal I,%edx
	movl %ecx,(%edx)
	leal L,%edx
	movl %ecx,(%edx)
	movl $-376,%ecx
	movl %ecx,560(%esp)
	leal 656(%esp), %ecx
	movl %ecx,452(%esp)
	movl 452(%esp),%ecx
	movl 560(%esp),%edx
	addl %edx,%ecx
	movl %ecx,452(%esp)
	movl 452(%esp),%ecx
	movl 636(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	movl %ecx,556(%esp)
	leal 656(%esp), %ecx
	movl %ecx,448(%esp)
	movl 448(%esp),%ecx
	movl 556(%esp),%edx
	addl %edx,%ecx
	movl %ecx,448(%esp)
	movl 448(%esp),%ecx
	fildl (%ecx)
	leal f,%ecx
	fstps (%ecx)
	movl $-376,%ecx
	movl %ecx,564(%esp)
	leal 656(%esp), %ecx
	movl %ecx,456(%esp)
	movl 456(%esp),%ecx
	movl 564(%esp),%edx
	addl %edx,%ecx
	movl %ecx,456(%esp)
	movl 456(%esp),%ecx
	movl 636(%esp),%edx
	movl %edx,(%ecx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-416,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-416,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-416,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	nop
	nop
	nop
	call print
join_l60:
	nop
	nop
	nop
	leal I,%ecx
	movl $7,%edx
	movl %edx,(%ecx)
	movl (%ecx),%ecx
	movl %ecx,632(%esp)
	movl 632(%esp),%ecx
	leal c,%edx
	movb %cl,(%edx)
	leal s,%edx
	movw %cx,(%edx)
	leal i,%edx
	movl %ecx,(%edx)
	leal l,%edx
	movl %ecx,(%edx)
	leal C,%ecx
	movl 632(%esp),%edx
	movb %dl,(%ecx)
	leal S,%ecx
	movl 632(%esp),%edx
	movw %dx,(%ecx)
	leal L,%ecx
	movl 632(%esp),%edx
	movl %edx,(%ecx)
	movl $1,%ecx
	movl %ecx,552(%esp)
	movl 632(%esp),%ecx
	movl %ecx,440(%esp)
	movl 440(%esp),%ecx
	movl 552(%esp),%edx
	andl %edx,%ecx
	movl %ecx,440(%esp)
	movl $-376,%ecx
	movl %ecx,436(%esp)
	leal 656(%esp), %ecx
	movl %ecx,548(%esp)
	movl 436(%esp),%ecx
	movl 548(%esp),%edx
	addl %ecx,%edx
	movl %edx,548(%esp)
	movl 440(%esp),%ecx
	movl 548(%esp),%edx
	movl %ecx,(%edx)
	movl $-376,%ecx
	movl %ecx,544(%esp)
	leal 656(%esp), %ecx
	movl %ecx,432(%esp)
	movl 432(%esp),%ecx
	movl 544(%esp),%edx
	addl %edx,%ecx
	movl %ecx,432(%esp)
	movl 432(%esp),%ecx
	fildl (%ecx)
	movl $1,%ecx
	movl 632(%esp),%edx
	movl %edx,444(%esp)
	movl 444(%esp),%edx
	shrl %cl, %edx
	movl %edx,444(%esp)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 444(%esp),%ecx
	movl %ecx,(%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	leal f_4,%ecx
	fldl (%ecx)
	fmulp
	faddp
	movl $-424,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-424,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	leal f,%ecx
	fstps (%ecx)
	movl $-424,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-424,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	nop
	nop
	nop
	call print
join_l57:
	nop
	nop
	nop
	leal L,%ecx
	movl $8,%edx
	movl %edx,(%ecx)
	movl (%ecx),%ecx
	movl %ecx,628(%esp)
	movl 628(%esp),%ecx
	leal c,%edx
	movb %cl,(%edx)
	leal s,%edx
	movw %cx,(%edx)
	leal i,%edx
	movl %ecx,(%edx)
	leal l,%edx
	movl %ecx,(%edx)
	leal C,%ecx
	movl 628(%esp),%edx
	movb %dl,(%ecx)
	leal S,%ecx
	movl 628(%esp),%edx
	movw %dx,(%ecx)
	movzwl (%ecx),%ecx
	movl %ecx,412(%esp)
	leal I,%ecx
	movl %ecx,528(%esp)
	movl 412(%esp),%ecx
	movl 528(%esp),%edx
	movl %ecx,(%edx)
	movl $1,%ecx
	movl %ecx,540(%esp)
	movl 628(%esp),%ecx
	movl %ecx,424(%esp)
	movl 424(%esp),%ecx
	movl 540(%esp),%edx
	andl %edx,%ecx
	movl %ecx,424(%esp)
	movl $-376,%ecx
	movl %ecx,420(%esp)
	leal 656(%esp), %ecx
	movl %ecx,536(%esp)
	movl 420(%esp),%ecx
	movl 536(%esp),%edx
	addl %ecx,%edx
	movl %edx,536(%esp)
	movl 424(%esp),%ecx
	movl 536(%esp),%edx
	movl %ecx,(%edx)
	movl $-376,%ecx
	movl %ecx,532(%esp)
	leal 656(%esp), %ecx
	movl %ecx,416(%esp)
	movl 416(%esp),%ecx
	movl 532(%esp),%edx
	addl %edx,%ecx
	movl %ecx,416(%esp)
	movl 416(%esp),%ecx
	fildl (%ecx)
	movl $1,%ecx
	movl 628(%esp),%edx
	movl %edx,428(%esp)
	movl 428(%esp),%edx
	shrl %cl, %edx
	movl %edx,428(%esp)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 428(%esp),%ecx
	movl %ecx,(%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	leal f_4,%ecx
	fldl (%ecx)
	fmulp
	faddp
	movl $-432,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-432,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	leal f,%ecx
	fstps (%ecx)
	movl $-432,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-432,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	nop
	nop
	nop
	call print
join_l54:
	nop
	nop
	nop
	leal f,%ecx
	leal f_5,%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	flds (%ecx)
	movl $-480,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-480,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal c,%edx
	movb %cl,(%edx)
	leal s,%edx
	movw %cx,(%edx)
	leal i,%edx
	movl %ecx,(%edx)
	leal l,%edx
	movl %ecx,(%edx)
	leal f_9,%ecx
	flds (%ecx)
	movl $-440,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-480,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-440,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l50
join_l51:
	movl $-2147483648,%ecx
	movl %ecx,408(%esp)
	movl $-440,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-480,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 408(%esp),%edx
	addl %edx,%ecx
	jmp L.8
join_l50:
	jmp L.7
L.7:
	movl $-480,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.8
L.8:
	leal C,%edx
	movb %cl,(%edx)
	leal f,%ecx
	flds (%ecx)
	movl $-656,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	leal f_9,%ecx
	flds (%ecx)
	movl $-472,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-656,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-472,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l48
join_l49:
	movl $-2147483648,%ecx
	movl %ecx,404(%esp)
	movl $-472,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-656,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 404(%esp),%edx
	addl %edx,%ecx
	jmp L.12
join_l48:
	jmp L.11
L.11:
	movl $-656,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.12
L.12:
	leal S,%edx
	movw %cx,(%edx)
	leal f,%ecx
	flds (%ecx)
	movl $-648,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	leal f_9,%ecx
	flds (%ecx)
	movl $-640,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-648,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-640,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l46
join_l47:
	movl $-2147483648,%ecx
	movl %ecx,400(%esp)
	movl $-640,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-648,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 400(%esp),%edx
	addl %edx,%ecx
	jmp L.15
join_l46:
	jmp L.14
L.14:
	movl $-648,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.15
L.15:
	leal I,%edx
	movl %ecx,(%edx)
	leal f,%ecx
	flds (%ecx)
	movl $-632,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	leal f_9,%ecx
	flds (%ecx)
	movl $-624,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-632,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-624,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l44
join_l45:
	movl $-2147483648,%ecx
	movl %ecx,396(%esp)
	movl $-624,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-632,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 396(%esp),%edx
	addl %edx,%ecx
	jmp L.18
join_l44:
	jmp L.17
L.17:
	movl $-632,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.18
L.18:
	leal L,%edx
	movl %ecx,(%edx)
	leal f,%ecx
	flds (%ecx)
	movl $-616,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl $-616,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-616,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	nop
	nop
	nop
	call print
join_l43:
	nop
	nop
	nop
	leal d,%ecx
	movl %ecx,624(%esp)
	leal f_19,%ecx
	fildq (%ecx)
	movl 624(%esp),%ecx
	fistpq (%ecx)
	movl $-608,%ecx
	movl %ecx,524(%esp)
	leal 656(%esp), %ecx
	movl %ecx,388(%esp)
	movl 388(%esp),%ecx
	movl 524(%esp),%edx
	addl %edx,%ecx
	movl %ecx,388(%esp)
	movl 624(%esp),%ecx
	fildq (%ecx)
	movl 388(%esp),%ecx
	fistpq (%ecx)
	movl $-608,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal c,%edx
	movb %cl,(%edx)
	leal s,%edx
	movw %cx,(%edx)
	leal i,%edx
	movl %ecx,(%edx)
	leal l,%edx
	movl %ecx,(%edx)
	leal f_23,%ecx
	movl %ecx,392(%esp)
	movl $-448,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 392(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	movl $-608,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-448,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l39
join_l40:
	movl $-2147483648,%ecx
	movl %ecx,384(%esp)
	movl $-448,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-608,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 384(%esp),%edx
	addl %edx,%ecx
	jmp L.22
join_l39:
	jmp L.21
L.21:
	movl $-608,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.22
L.22:
	leal C,%edx
	movb %cl,(%edx)
	leal d,%ecx
	movl %ecx,284(%esp)
	movl $-600,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 284(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal f_23,%ecx
	movl %ecx,288(%esp)
	movl $-592,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 288(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	movl $-600,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-592,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l37
join_l38:
	movl $-2147483648,%ecx
	movl %ecx,380(%esp)
	movl $-592,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-600,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 380(%esp),%edx
	addl %edx,%ecx
	jmp L.26
join_l37:
	jmp L.25
L.25:
	movl $-600,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.26
L.26:
	leal S,%edx
	movw %cx,(%edx)
	leal d,%ecx
	movl %ecx,292(%esp)
	movl $-584,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 292(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal f_23,%ecx
	movl %ecx,296(%esp)
	movl $-576,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 296(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	movl $-584,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-576,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l35
join_l36:
	movl $-2147483648,%ecx
	movl %ecx,376(%esp)
	movl $-576,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-584,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 376(%esp),%edx
	addl %edx,%ecx
	jmp L.29
join_l35:
	jmp L.28
L.28:
	movl $-584,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.29
L.29:
	leal I,%edx
	movl %ecx,(%edx)
	leal d,%ecx
	movl %ecx,300(%esp)
	movl $-568,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 300(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal f_23,%ecx
	movl %ecx,304(%esp)
	movl $-560,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 304(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	movl $-568,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-560,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l33
join_l34:
	movl $-2147483648,%ecx
	movl %ecx,372(%esp)
	movl $-560,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-568,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 372(%esp),%edx
	addl %edx,%ecx
	jmp L.32
join_l33:
	jmp L.31
L.31:
	movl $-568,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.32
L.32:
	leal L,%edx
	movl %ecx,(%edx)
	leal d,%ecx
	movl %ecx,308(%esp)
	movl $-552,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 308(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	movl $-552,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	leal f,%ecx
	fstps (%ecx)
	movl $-552,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	nop
	nop
	nop
	call print
join_l32:
	nop
	nop
	nop
	leal D,%ecx
	movl %ecx,620(%esp)
	leal f_33,%ecx
	fildq (%ecx)
	movl 620(%esp),%ecx
	fistpq (%ecx)
	movl $-544,%ecx
	movl %ecx,520(%esp)
	leal 656(%esp), %ecx
	movl %ecx,364(%esp)
	movl 364(%esp),%ecx
	movl 520(%esp),%edx
	addl %edx,%ecx
	movl %ecx,364(%esp)
	movl 620(%esp),%ecx
	fildq (%ecx)
	movl 364(%esp),%ecx
	fistpq (%ecx)
	movl $-544,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal c,%edx
	movb %cl,(%edx)
	leal s,%edx
	movw %cx,(%edx)
	leal i,%edx
	movl %ecx,(%edx)
	leal l,%edx
	movl %ecx,(%edx)
	leal f_37,%ecx
	movl %ecx,368(%esp)
	movl $-456,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 368(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	movl $-544,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-456,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l28
join_l29:
	movl $-2147483648,%ecx
	movl %ecx,360(%esp)
	movl $-456,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-544,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 360(%esp),%edx
	addl %edx,%ecx
	jmp L.36
join_l28:
	jmp L.35
L.35:
	movl $-544,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.36
L.36:
	leal C,%edx
	movb %cl,(%edx)
	leal D,%ecx
	movl %ecx,312(%esp)
	movl $-536,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 312(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal f_37,%ecx
	movl %ecx,316(%esp)
	movl $-528,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 316(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	movl $-536,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-528,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l26
join_l27:
	movl $-2147483648,%ecx
	movl %ecx,356(%esp)
	movl $-528,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-536,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 356(%esp),%edx
	addl %edx,%ecx
	jmp L.40
join_l26:
	jmp L.39
L.39:
	movl $-536,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.40
L.40:
	leal S,%edx
	movw %cx,(%edx)
	leal D,%ecx
	movl %ecx,320(%esp)
	movl $-520,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 320(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal f_37,%ecx
	movl %ecx,324(%esp)
	movl $-512,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 324(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	movl $-520,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-512,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l24
join_l25:
	movl $-2147483648,%ecx
	movl %ecx,352(%esp)
	movl $-512,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-520,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fsubp
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 352(%esp),%edx
	addl %edx,%ecx
	jmp L.43
join_l24:
	jmp L.42
L.42:
	movl $-520,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fistpl (%edx)
	movl $-376,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.43
L.43:
	leal I,%edx
	movl %ecx,(%edx)
	leal D,%ecx
	movl %ecx,328(%esp)
	movl $-504,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 328(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal f_37,%ecx
	movl %ecx,332(%esp)
	movl $-496,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 332(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	movl $-504,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-496,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l22
join_l23:
	movl $-2147483648,%ecx
	movl $-496,%eax
	leal 656(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	movl $-504,%eax
	leal 656(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	fsubp
	movl $-376,%eax
	leal 656(%esp), %edx
	addl %eax,%edx
	fistpl (%edx)
	movl $-376,%eax
	leal 656(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	jmp L.46
join_l22:
	jmp L.45
L.45:
	movl $-504,%ecx
	leal 656(%esp), %eax
	addl %ecx,%eax
	fldl (%eax)
	movl $-376,%ecx
	leal 656(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-376,%ecx
	leal 656(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.46
L.46:
	leal L,%ecx
	movl %eax,(%ecx)
	leal D,%eax
	movl $-488,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	movl $-488,%ecx
	leal 656(%esp), %eax
	addl %ecx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	movl $-488,%ecx
	leal 656(%esp), %eax
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	nop
	nop
	nop
	call print
join_l21:
	nop
	nop
	nop
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
	nop
	movl $0,%eax
	leal 656(%esp), %ecx
	movl %ecx,348(%esp)
	movl $0,%ecx
	leal 656(%esp), %edx
	addl %ecx,%edx
	movl 348(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 656(%esp), %esp
	ret
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
