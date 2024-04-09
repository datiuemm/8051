org 	0000H
ljmp	main
org 	200H

main:
mov	 r3,#3

loop1:
mov	P2,#00000000b;0
lcall 	wait1s

mov	P2,#00000001b;1
lcall 	wait1s

mov	P2,#00000010b;2
lcall 	wait1s

mov	P2,#00000011b;3
lcall 	wait1s

mov	P2,#00000100b;4
lcall 	wait1s

mov	P2,#00000101b;5
lcall 	wait1s

mov	P2,#00000110b;6
lcall 	wait1s

mov	P2,#00000111b;7
lcall 	wait1s

mov	P2,#00001000b;8
lcall 	wait1s

mov	P2,#00001001b;9
lcall 	wait1s

djnz	r3,loop1

loop2:

mov	P2,#00000000b;0
lcall 	wait1s

mov	P2,#00001111b;0
lcall 	wait1s

sjmp loop2

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