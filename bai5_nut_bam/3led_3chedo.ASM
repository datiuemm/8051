org	0000H
ljmp	main
org 	200h

main:
mov	p3,#00H
mov	r4,#1

main1:
mov	a,p2
anl	a,#00000111b
cjne	a,#00000111b,checky
sjmp 	checkmode

checky:
cjne	a,#00000110b,checky1
mov	r4,#2
sjmp 	main1

checky1:
cjne	a,#00000101b,checky2
mov	r4,#3
sjmp	main1

checky2:
cjne	a,#00000011b,finale
mov	r4,#4
sjmp	main1

finale:
ljmp	main1

checkmode:
cjne	r4,#2,checkmode2
mov	p3,#00000001B
lcall	wait1s

mov	p3,#00000010B
lcall	wait1s

mov	p3,#00000100B
lcall	wait1s

ljmp	main1

checkmode2:
cjne	r4,#3,checkmode3

mov	p3,#00000100B
lcall	wait1s

mov	p3,#00000010B
lcall	wait1s

mov	p3,#00000001B
lcall	wait1s

ljmp	main1

checkmode3:
cjne	r4,#4,finale
mov	p3,#00H
lcall	wait1s

ljmp	main1

wait1s:
mov	r1,#200

here1:
mov	r2,#200

here2:
nop	
nop
nop
djnz	r2,here2
djnz	r1,here1
ret

end