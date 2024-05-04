        
TITLE LAB 8 QUESTION 4
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'Enter a string: $'
    
    PARA LABEL BYTE
    MAX DB 14
    LEN DB ?
    STR DB 14 DUP('$')
    
    NEWL DB 0DH,0AH,'$'
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,0AH
        LEA DX,PARA
        INT 21H
        
        MOV AH,06H
        MOV AL,00H
        MOV CX,0000H
        MOV DX,1239
        MOV BH,71H
        INT 10H
        
        MOV AH,09H
        LEA DX,STR
        INT 21H        
                
        MOV AH,4CH
        INT 21H
   MAIN ENDP
   END
        
        
        
        