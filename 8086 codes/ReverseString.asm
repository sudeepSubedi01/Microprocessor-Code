TITLE reverse string
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB "Enter a string: $"
    NEWL DB 0DH, 0AH, "$"  
    MSG1 DB "Reverse string: $"
    
    PARA LABEL BYTE
    MAX DB 10
    LEN DB ?
    STR DB 10 DUP('$')

.CODE      
MAIN PROC
    MOV AX,@DATA 
    MOV DS,AX
    
    MOV AH,09H  ;MSG
    LEA DX,MSG
    INT 21H
    
    MOV AH,0AH   ;STR INPUT
    LEA DX,PARA  
    INT 21H
    
   
    
    MOV AH,09H   ;NEWL
    LEA DX,NEWL
    INT 21H
    
    MOV AH,09H   ;MSG1
    LEA DX,MSG1
    INT 21H 
    
    MOV AH,09H   ;NEWL
    LEA DX,NEWL
    INT 21H
     
    LEA SI,STR
    ;MOV AX,SI
    ;MOV BL,LEN
    ;MOV BH,00H
    ;ADD BX,AX
    LEA DI,STR
    MOV AX,DI
    MOV BL,LEN
    MOV BH,00H
    ADD AX,BX
    MOV DI,AX   
    
    AGAIN:
    DEC DI
    MOV AH,02H
    MOV DL,[DI]
    INT 21H
    CMP SI,DI
    JNZ AGAIN
    
    
    
    MOV AH,4CH
    INT 21H
MAIN ENDP
END
    
    