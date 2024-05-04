	   LXI D,9020
	   LXI H,9000
	   MVI C,05

AGIAN:	   MOV A,M
	   CPI 40
	   JZ ZERO
	   JC ZERO
	   CPI C0
	   JNC ZERO
	   STAX D
	   JMP SKIP

ZERO:	   MVI A,01H
	   STAX D

SKIP:	   INX D
	   INX H
	   DCR C
	   JNZ AGIAN

	   HLT
