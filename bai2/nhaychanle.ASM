ORG 	0000H
LJMP	main
org 	200H

main:
mov	r3,#2
mov	r4,#2

loop1:
MOV     P2,#00111111B;0
LCALL   WAIT1S

MOV     P2,#01011011B;2
LCALL   WAIT1S

MOV     P2,#01100110B;4
LCALL   WAIT1S

MOV     P2,#01111101B;6
LCALL   WAIT1S

MOV     P2,#11111111B;8
LCALL   WAIT1S

MOV     P2,#00000000B;tat
LCALL   WAIT1S

djnz r3,loop1

loop2:
MOV     P2,#00000110B;1
LCALL   WAIT1S

MOV     P2,#01001111B;3
LCALL   WAIT1S

MOV     P2,#01101101B;5
LCALL   WAIT1S

MOV     P2,#00000111B;7
LCALL   WAIT1S

MOV     P2,#01101111B;9
LCALL   WAIT1S

MOV     P2,#00000000B;tat
LCALL   WAIT1S

djnz	r4,loop2

loop3:
sjmp	loop3

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