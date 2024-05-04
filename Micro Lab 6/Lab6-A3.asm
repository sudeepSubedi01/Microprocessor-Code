TITLE PROGRAM TO FIND SUM OF Two tables
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    ARR1 DW 0001h,0005h,0015h,0000h,00A0h
    ARR2 DW 0002H,0004H,00A0H,0050H,00C0H
    SUM  DW ?
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,0005H 
        LEA SI,ARR1
        MOV BX,SI     
          
        LEA SI,SUM
        MOV DX,SI
         
        LEA SI,ARR2
        
        UP:
        PUSH CX
        MOV AX,[SI]
        MOV CX,[BX]
        ADD AX,CX
        PUSH BX
        MOV BX,DX
        MOV [BX],AX
        POP BX
        INC BX
        INC BX
        INC SI
        INC SI
        INC DX
        INC DX
        POP CX
        LOOP UP                
        
        MOV AH,4CH
        INT 21H     
     MAIN ENDP
    END