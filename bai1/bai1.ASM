ORG	0000H
LJMP 	main
org	 200H

main:
	mov	P2,#00100000B
	lcall 	wait1s
	mov	P2,#00000000B
	lcall	wait1s
	ljmp	main
wait1s: 
	mov R1,#200
here1:
	mov R2,#200
here2:
	nop 
	nop
	nop
	djnz R2, here2
	djnz R1, here1
	ret
end