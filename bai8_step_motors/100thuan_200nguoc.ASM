org	0000H
ljmp	main
org	200H


main:
mov	r3,#100
mov	r4,#200
lcall	thuan
lcall	nguoc

thuan:
mov	p2,#00000001B
lcall	wait1s

mov	p2,#00000010B
lcall	wait1s

mov	p2,#00000100B
lcall	wait1s

mov	p2,#00001000B
lcall	wait1s

djnz	r3,thuan

nguoc:
mov	p2,#00001001B
lcall	wait1s

mov	p2,#00001000B
lcall	wait1s

mov	p2,#00001100B
lcall	wait1s


mov	p2,#00000100B
lcall	wait1s

mov	p2,#00000110B
lcall	wait1s

mov	p2,#00000010B
lcall	wait1s

mov	p2,#00000011B
lcall	wait1s

mov	p2,#00000001B
lcall	wait1s

djnz 	r4,nguoc

endloop:
mov	P2,#00000000B
lcall	wait1s
sjmp	endloop


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
