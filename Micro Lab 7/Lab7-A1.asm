TITLE display a string
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
     MSG DB 'Programming is Fun','$'
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
	MOV AH,09H
	LEA DX,MSG
	INT 21H

        MOV AH,4CH
        INT 21H     
     MAIN ENDP
    END