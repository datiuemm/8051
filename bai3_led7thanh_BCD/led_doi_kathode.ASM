org 	000H
ljmp 	main
org 	200H

main:
	mov 	a,#40H 
	lcall 	dsp
	mov 	a,#79H 
	lcall 	dsp
	mov 	a,#24H 
	lcall 	dsp
	mov 	a,#30H 
	lcall 	dsp
	mov 	a,#19H 
	lcall 	dsp
	mov 	a,#12H 
	lcall 	dsp
	mov 	a,#02H 
	lcall 	dsp
	mov 	a,#78H 
	lcall 	dsp
	mov 	a,#00H 
	lcall	 dsp
	mov 	a,#10H 
	lcall 	dsp

	ljmp main

dsp:
	setb 	P3.1
	clr 	P3.2
	mov 	p2,a
	lcall 	wait1s
	clr 	p3.1
	setb	p3.2
	mov 	P2,#40h
	lcall 	wait1s
	setb 	P3.1
	clr 	P3.2
	mov 	p2,a
	lcall 	wait1s
	clr 	p3.1
	setb	p3.2
	mov 	P2,#79h
	lcall 	wait1s
	setb 	P3.1
	clr 	P3.2
	mov 	p2,a
	lcall 	wait1s
	clr	 p3.1
	setb	p3.2
	mov 	P2,#24h
	lcall	 wait1s
	setb	 P3.1
	clr 	P3.2
	mov	 p2,a
	lcall	 wait1s
	clr 	p3.1
	setb	p3.2
	mov 	P2,#30h
	lcall 	wait1s
	setb 	P3.1
	clr 	P3.2
	mov 	p2,a
	lcall	 wait1s
	clr	 p3.1
	setb	p3.2
	mov	 P2,#19h
	lcall 	wait1s
	setb 	P3.1
	clr 	P3.2
	mov	 p2,a
	lcall	 wait1s
	clr	 p3.1
	setb	p3.2
	mov	 P2,#12h
	lcall	 wait1s
	setb	 P3.1
	clr	 P3.2
	mov	p2,a
	lcall	 wait1s
	clr 	p3.1
	setb	p3.2
	mov 	P2,#02h
	lcall	 wait1s
	setb	 P3.1
	clr	 P3.2
	mov	 p2,a
	lcall	 wait1s
	clr	 p3.1
	setb	p3.2
	mov 	P2,#78h
	lcall 	wait1s
	setb	 P3.1
	clr	 P3.2
	mov 	p2,a
	lcall 	wait1s
	clr	 p3.1
	setb	p3.2
	mov 	P2,#00h
	lcall	 wait1s
	setb	 P3.1
	clr 	P3.2
	mov 	p2,a
	lcall 	wait1s
	clr	 p3.1
	setb	p3.2
	mov	 P2,#10h
	lcall	 wait1s
	

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