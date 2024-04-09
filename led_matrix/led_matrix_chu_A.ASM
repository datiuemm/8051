org	0000H
ljmp	main
org	200h

main:
lcall	chuA
chuA:
mov	p3,#11111110b;hang cuoi 1 thi h2-h7 tat
mov	P2,#00011000b;cot p2.7
lcall	wait1s

mov	p3,#11111101b;hang cuoi 1 thi h2-h7 tat
mov	P2,#00100100b;cot p2.7
lcall	wait1s

mov	p3,#11111011b;hang cuoi 1 thi h2-h7 tat
mov	P2,#01000010b;cot p2.7
lcall	wait1s

mov	p3,#11110111b;hang cuoi 1 thi h2-h7 tat
mov	P2,#11111111b;cot p2.7
lcall	wait1s

mov	p3,#00001111b;hang cuoi 1 thi h2-h7 tat
mov	P2,#10000001b;cot p2.7
lcall	wait1s
ret

wait1s:
mov	r3,#40
here1:
mov	r4,#40

here2:
nop
nop
nop
djnz	r4,here2
djnz	r3,here1
ret


end