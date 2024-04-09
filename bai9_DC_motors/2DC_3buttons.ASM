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
cjne	a,#00000110b,checky1
mov	p3,#11111110B
sjmp	main1

checky1:
cjne	a,#00000101b,checky2
mov	p3,#11111101B
sjmp	main1

checky2:
cjne	a,#00000011b,finale
mov	p3,#00001111B
sjmp	main1

finale:
sjmp	main1

end
