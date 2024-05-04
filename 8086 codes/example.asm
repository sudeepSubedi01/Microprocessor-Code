TITLE PROGRAM TO FIND SUM OF Two tables
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    ARR DB 01h,05h,15h,00h,0A0h
    SUM  DB ?
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,0005H 
        LEA SI,ARR
        MOV AL,0000H 
        UP:
        ADD AL,[SI]
        INC SI
        LOOP UP
        
        MOV [SUM],AL
        
        MOV AH,4CH
        INT 21H     
     MAIN ENDP
    END