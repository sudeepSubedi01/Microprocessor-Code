	   MVI A,80
	   OUT 43
	   MVI A,3C
	   RLC
OUT 0A
	   CALL 800F
	   CALL 8006
	   MVI C,01
	   DCR C
	   JNZ 8011
	   RZ
