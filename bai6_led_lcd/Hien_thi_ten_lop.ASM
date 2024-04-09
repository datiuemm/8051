org	0000h
ljmp	main
org 	200h

main:
mov	a,#38h
lcall	command	
lcall	delay
mov	a,#0Eh
lcall	command
lcall	delay

DSP_D16_DINH_TRONG_DAT:
mov	a,#01h
lcall	command
lcall	delay
mov	a,#80h
lcall	command
lcall	delay

mov	a,#" "
lcall	ctt

mov	a,#" "
lcall	ctt

mov	a,#"D"
lcall	ctt

mov	a,#"1"
lcall	ctt

mov	a,#"6"
lcall	ctt

mov	a,#"T"
lcall	ctt

mov	a,#"H"
lcall	ctt

mov	a,#"D"
lcall	ctt

mov	a,#"K"
lcall	ctt

mov	a,#"&"
lcall	ctt

mov	a,#"T"
lcall	ctt

mov	a,#"D"
lcall	ctt

mov	a,#"H"
lcall	ctt

mov	a,#"1"
lcall	ctt

mov	a,#0C0H
lcall	command
lcall	delay

mov	a,#" "
lcall	ctt

mov	a,#"D"
lcall	ctt

mov	a,#"I"
lcall	ctt

mov	a,#"N"
lcall	ctt

mov	a,#"H"
lcall	ctt

mov	a,#" "
lcall	ctt

mov	a,#"T"
lcall	ctt

mov	a,#"R"
lcall	ctt

mov	a,#"O"
lcall	ctt

mov	a,#"N"
lcall	ctt

mov	a,#"G"
lcall	ctt

mov	a,#" "
lcall	ctt

mov	a,#"D"
lcall	ctt

mov	a,#"A"
lcall	ctt

mov	a,#"T"
lcall	ctt

ljmp 	DSP_D16_DINH_TRONG_DAT

ctt:
lcall	display
lcall	delay
mov	a,#06h
lcall	command
lcall	delay

command:
lcall	ready
mov	p2,a
clr	p3.0
clr	p3.1
setb	p3.2
clr	p3.2
ret

display:
lcall	ready
mov	p2,a
setb	p3.0
clr	p3.1
setb	p3.2
clr	p3.2
ret

ready:
setb	p2.7
clr	p3.0
setb	p3.1

back:
clr	p3.2
setb	p3.2
jb	p2.7,back
ret

delay:
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

