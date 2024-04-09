ORG 	0000H
LJMP	main
org 	200H

main:
mov 	P2,#00000001B
lcall 	wait1s

mov 	P2,#00000010B
lcall 	wait1s

mov 	P2,#00000100B
lcall 	wait1s

mov 	P2,#00001000B
lcall 	wait1s

mov 	P2,#00010000B
lcall 	wait1s

mov 	P2,#00100000B
lcall 	wait1s

mov 	P2,#01000000B
lcall 	wait1s

mov 	P2,#10000000B
lcall 	wait1s

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