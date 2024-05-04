	   LXI H,5000
	   MVI B,05	// OUTER LOOP
	OUER:   MVI C,05	// INNER LOOP

   DCR C

INNER:	   MOV A,M
	   INX H
	   MOV D,M
	   CMP D
	   JC SKIP
	   MOV M,A
	   DCX H
	   MOV M,D
	   INX H

SKIP:	   DCR C
	   JNZ INNER
	   DCR B
	   JNZ OUER
	   HLT
