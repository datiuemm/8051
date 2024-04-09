org	0000H
ljmp	main	
org	200H

main:
mov	p3,#01110111B
mov	a,p3
anl	a,#00011111b
cjne	a,#00010110b,check_11
mov	p2,#00000011b
jmp	main

check_11:
cjne	a,#00010101b, check_12
mov	p2,#00000010b
ljmp	main

check_12:
cjne	a,#00010011b,check_2

mov	p2,#00000001b
jmp	main


check_2:
mov	p3,#01101111B
mov	a,p3
anl	a,#00011111b
cjne	a,#00001110b, check_21
mov	p2,#00000110b
jmp	main

check_21:
cjne	a,#00001101b, check_22
mov	p2,#00000101b
jmp	main

check_22:
cjne	a,#00001011b, check_3
mov	p2,#00000100b
jmp	main

check_3:
mov	p3,#01011111B
mov	a,p3
anl	a,#00011111b
cjne	a,#01011110b, end2
mov	p2,#00000111b
jmp	main



end2:
jmp	main
end