TITLE display a string
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
	MSG DB 'ENTER:','$'

	PARA LABEL BYTE
	MAX DB 80
	ACT DB ?
	STR DB 80 DUP('$')
	
	NEWL DB 0DH,0AH,'$' ;FOR NEW LINE
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
	MOV AH,09H  ;DISPLAY MESSAGE
	LEA DX,MSG
	INT 21H

	MOV AH,0AH   ;READ STR
	LEA DX,PARA
	INT 21H
	
	MOV AH,09H   ;TO DISPLAY NEWLINE
	LEA DX,NEWL
	INT 21H
	
	MOV AH,09H ;DISPLAY STR
	LEA DX,STR
	INT 21H	

        MOV AH,4CH
        INT 21H     
     MAIN ENDP
    END