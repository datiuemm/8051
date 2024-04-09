org 	000H
ljmp 	main
org 	200H

main:
mov	r3,#2
mov	r4,#2
loop1:
	mov 	b,#40H 
	lcall 	dsp
	mov 	b,#79H 
	lcall 	dsp
	mov 	b,#24H 
	lcall 	dsp
	mov 	b,#30H 
	lcall 	dsp
	mov 	b,#19H 
	lcall 	dsp
	mov 	b,#12H 
	lcall 	dsp
	mov 	b,#02H 
	lcall 	dsp
	mov 	b,#78H 
	lcall 	dsp
	mov 	b,#00H 
	lcall	 dsp
	mov 	b,#10H 
	lcall 	dsp
djnz	r3,loop1

loop2:
ljmp	loop3

dsp:
lcall hangchuc
mov	a,#40H
lcall	hangdv

lcall hangchuc
mov	a,#79H
lcall	hangdv

lcall hangchuc
mov	a,#24H
lcall	hangdv

lcall hangchuc
mov	a,#30H
lcall	hangdv

lcall hangchuc
mov	a,#19H
lcall	hangdv

lcall hangchuc
mov	a,#12H
lcall	hangdv

lcall hangchuc
mov	a,#02H
lcall	hangdv

lcall hangchuc
mov	a,#78H
lcall	hangdv

lcall hangchuc
mov	a,#00H
lcall	hangdv

lcall hangchuc
mov	a,#10H
lcall	hangdv
ret

loop3:
	mov 	b,#10H 
	lcall 	dsp1
	mov 	b,#00H 
	lcall 	dsp1
	mov 	b,#78H 
	lcall 	dsp1
	mov 	b,#02H 
	lcall 	dsp1
	mov 	b,#12H 
	lcall 	dsp1
	mov 	b,#19H 
	lcall 	dsp1
	mov 	b,#30H 
	lcall 	dsp1
	mov 	b,#24H 
	lcall 	dsp1
	mov 	b,#79H 
	lcall	 dsp1
	mov 	b,#40H 
	lcall 	dsp1
djnz	r4,loop3

loop5:
ljmp loop9

dsp1:
lcall hangchuc
mov	a,#10H
lcall	hangdv

lcall hangchuc
mov	a,#00H
lcall	hangdv

lcall hangchuc
mov	a,#78H
lcall	hangdv

lcall hangchuc
mov	a,#02H
lcall	hangdv

lcall hangchuc
mov	a,#12H
lcall	hangdv

lcall hangchuc
mov	a,#19H
lcall	hangdv

lcall hangchuc
mov	a,#30H
lcall	hangdv

lcall hangchuc
mov	a,#24H
lcall	hangdv

lcall hangchuc
mov	a,#79H
lcall	hangdv

lcall hangchuc
mov	a,#40H
lcall	hangdv
ret

loop9:

mov	p3,#00000110B
mov	p2,#7Fh
lcall	wait1s

mov	p3,#00000000B
lcall	wait1s

mov	p3,#00000000B
lcall	wait1s

mov	p3,#00000110B
mov	p2,#00H
lcall	wait1s

sjmp	loop9

hangchuc:
setb	p3.1
clr	p3.2
mov	p2,b
lcall	wait1s
ret

hangdv:
clr	p3.1
setb	p3.2
mov	p2,a
lcall	wait1s
ret

wait1s:
	mov R1,#100
here1:
	mov R2,#100
here2:
	nop
	nop
	nop
	djnz R2,here2
	djnz R1,here1
	ret
end

