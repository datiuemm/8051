ORG 	0000H
LJMP	main
org 	200H

main:
mov 	R3,#3
mov 	A,#500
loop1:


mov R4,#00000001B
mov P2,#0
lcall	wait1s

loop3:
	mov 	P2,R4
	Lcall	wait1s
	RL 	A
	Sjmp 	loop3
	djnz 	A,loop3



djnz	R3, loop1

loop2:
sjmp	loop2


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

end