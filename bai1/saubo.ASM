ORG 	0000H

main:
mov 	r3,#5

loop1:
mov 	P2,#00000000B

loop2:
lcall	wait1s
mov 	A,P2
setb	C
RLC	A
mov	P2,A
JNC	loop2

DJNZ 	r3,loop1

loop5:
sjmp	loop5

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