	   MVI A,80
	   OUT 43
	   LDA 8123
	   MOV B,A
	   ANI 48
	   CPI 08
	   JNZ SKIP
	   MOV A,B
	   OUT 43

SKIP:	   HLT
