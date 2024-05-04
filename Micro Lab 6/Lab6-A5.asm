TITLE MULTIPLICATION TABLE
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    NUM DB 15H
    TABLE DW 10 DUP(0h)
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,000AH
                      
        LEA SI,TABLE
        
        MOV BL,01H
        UP:
        MOV AL,NUM
        MUL BL
        MOV [SI],AX
        
        INC BL
        INC SI
        INC SI
        LOOP UP       
        
        MOV AH,4CH
        INT 21H     
     MAIN ENDP
    END