LJMP	main
org 	200H

main:
mov 	R3,#3
loop1:
mov 	P2,#01000000B;0
lcall	dao
lcall 	wait1s

mov 	P2,#01111001B;1
lcall	dao
lcall 	wait1s

mov 	P2,#00100100B;2
lcall	dao
lcall 	wait1s

mov 	P2,#00110000B;3
lcall	dao
lcall 	wait1s

mov 	P2,#00011001B;4
lcall	dao
lcall 	wait1s

mov 	P2,#00010010B;5
lcall	dao
lcall 	wait1s

mov 	P2,#00000010B
lcall	dao
lcall 	wait1s

mov 	P2,#01111000B
lcall	dao
lcall 	wait1s

mov 	P2,#00000000B
lcall	dao
lcall 	wait1s


djnz	r3,loop1


loop2:
sjmp	loop2

ljmp	main

dao:
mov 	A,#00000000B
mov	A,P2
CPL	A
mov	P2,A
ret


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