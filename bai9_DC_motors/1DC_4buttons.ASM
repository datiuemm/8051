org 	0000H
ljmp 	main	
org	200H

main:
main1:
mov	a,p1
anl	a,#00000111b
cjne	a,#00000111b,checky
sjmp	main1

checky:
cjne	a,#00001110b,checky1
mov	p3,#00000010B
sjmp	main1

checky1:
cjne	a,#00001101b,checky2
mov	p3,#00000001B
sjmp	main1

checky2:
cjne	a,#00000111b,checky3
mov	p3,#11111111B
sjmp	main1

checky3:
loop1:
mov	r1,#3
lcall wait1s
djnz	r1,loop1

mov	r2,#3

cjne	a,#00000111b,finale
mov	p3,#11111111B
sjmp	main1

wait1s:
	mov	R1,#200
here1:
	mov	R2,#200
here2:
	nop
	nop
	nop
djnz	r2,here2
djnz 	r1,here1
ret

finale:
sjmp	main1

end

