TITLE MULTIPLICATION TABLE
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    NUM DB 2H
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,0AH        
        MOV BL,01H
        UP:
        MOV AL,NUM
        MUL BL
        MOV DX,AX
        INC BL
        LOOP UP       
        
        MOV AH,4CH
        INT 21H     
     MAIN ENDP
    END