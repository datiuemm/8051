org 0000H
ljmp main
org 200H

main:
mov	P2,#00000000b
lcall 	wait1s



wait1s:
mov 	r1,#200

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