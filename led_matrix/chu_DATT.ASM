org	0000H
ljmp	main
org	200h

main:
lcall	chuD
lcall	chuA
lcall	chuT
ljmp main

chuD:
mov	r3,#20
loop1:
mov	p3,#11111110b;hang cuoi 1 thi h2-h7 tat
mov	P2,#00111111b;cot p2.7
lcall	wait1s

mov	p3,#11111101b;hang cuoi 1 thi h2-h7 tat
mov	P2,#01000001b;cot p2.7
lcall	wait1s

mov	p3,#11000011b;hang cuoi 1 thi h2-h7 tat
mov	P2,#10000001b;cot p2.7
lcall	wait1s

mov	p3,#10111111b;hang cuoi 1 thi h2-h7 tat
mov	P2,#01000001b;cot p2.7
lcall	wait1s

mov	p3,#01111111b;hang cuoi 1 thi h2-h7 tat
mov	P2,#00111111b;cot p2.7
lcall	wait1s
djnz	r3,loop1
ret
ret


chuA:
mov	r4,#20
loop2:
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
djnz	r4,loop2
ret
ret

chuT:
mov	r5,#20

loop3:
mov	p3,#11111100b;hang cuoi 1 thi h2-h7 tat
mov	P2,#11111111b;cot p2.7
lcall	wait1s

mov	p3,#00000011b;hang cuoi 1 thi h2-h7 tat
mov	P2,#00011000b;cot p2.7
lcall	wait1s

djnz r5,loop3
ret
ret


wait1s:
mov	r1,#40
here1:
mov	r2,#40

here2:
nop
nop
nop
djnz	r2,here2
djnz	r1,here1
ret


end