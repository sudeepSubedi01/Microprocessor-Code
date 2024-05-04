TITLE display a string
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
	MSG DB 'HHHHHHHHHH','$'
	LEN DW $-MSG
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
	    MOV AH,09H ;display message
	    LEA DX,MSG
	    INT 21H
	    
	    MOV SI,OFFSET MSG
	    MOV BX,0000H
	    UP:
	    MOV AL,[SI]
	    INC BX
	    INC SI
	    CMP AL,'$'
	    JNZ UP

        MOV AH,4CH
        INT 21H     
     MAIN ENDP
    END