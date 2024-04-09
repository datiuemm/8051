ORG 	0000H
LJMP	main
org 	200H

main:
mov R3,#3
loop1:
mov 	P2,#01000000B;0
lcall 	wait1s

mov 	P2,#01111001B;1
lcall 	wait1s

mov 	P2,#00100100B;2
lcall 	wait1s

mov 	P2,#00110000B;3
lcall 	wait1s

mov 	P2,#00011001B;4
lcall 	wait1s

mov 	P2,#00010010B;5
lcall 	wait1s

mov 	P2,#00000010B
lcall 	wait1s

mov 	P2,#01111000B
lcall 	wait1s
mov 	P2,#00000000B
lcall 	wait1s



djnz	r3,loop1


loop2:
mov 	P2,#00000010B
lcall 	wait1s
mov 	P2,#11111111B
lcall 	wait1s
sjmp	loop2

ljmp	main

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