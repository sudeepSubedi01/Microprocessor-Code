	   MVI A,80
	   OUT 43
	   MVI A,01
	   OUT 40
	   CALL FUN
	   RLC
	   JMP 8002

FUN:	   LXI B,FFFF

HELLO:	   DCR B
	   JNZ HELLO
	   DCR C
	   RZ
	   JMP HELLO
