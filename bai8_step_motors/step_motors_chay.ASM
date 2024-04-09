org	0000H
ljmp	main
org	200h

main:
mov	P2,#00000001B
lcall	wait1s
mov	P2,#00000010b
lcall	wait1s
mov	P2,#00000100b
lcall	wait1s
mov	P2,#00001000b
lcall	wait1s
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