org 	0000H
ljmp 	main	
org	200H

main:
mov	p3,#00H;tat led
main1:
mov	a,p2
anl	a,#11111111b
cjne	a,#11111111b,checky
sjmp	main1

checky:
cjne	a,#11111110b,checky1
mov	p3,#00000001B
sjmp	main1

checky1:
cjne	a,#11111101b,checky2
mov	p3,#00000010B
sjmp	main1

checky2:
cjne	a,#11111011b,checky3
mov	p3,#00000100B
sjmp	main1

checky3:
cjne	a,#11110111b,checky4
mov	p3,#00001000B
sjmp	main1

checky4:
cjne	a,#11101111b,checky5
mov	p3,#00010000B
sjmp	main1

checky5:
cjne	a,#11011111b,checky6
mov	p3,#00100000B
sjmp	main1

checky6:
cjne	a,#10111111b,checky7
mov	p3,#01000000B
sjmp	main1

checky7:
cjne	a,#01111111b,finale
mov	p3,#10000000B
sjmp	main1


finale:
sjmp	main1


end