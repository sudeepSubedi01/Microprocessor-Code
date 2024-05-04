TITLE PROGRAM TO CHECK PALINDROME STRING
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA            
    MSG DB 'Enter a string: $'    
    MSGP DB 'The string is palindrome$'      
    MSGN DB 'The string is not palindrome$'
    NEWL DB 0DH,0AH,'$'
    
    PARA LABEL BYTE
    MAX DB 10
    LEN DB ?
    STR DB 10 DUP('$')
 
.CODE 
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09H     ;DISPLAY MSG
        LEA DX,MSG
        INT 21H
        
        MOV AH,0AH    ;STRING INPUT
        LEA DX,PARA
        INT 21H
        
        MOV AH,09H    ;NEWL
        LEA DX,NEWL
        INT 21H
        
        LEA SI,STR
        ;MOV AX,SI
        ;MOV BL,LEN
        ;MOV BH,00H
        ;ADD BX,AX
        ;LEA DI,STR
        MOV AX,SI
        MOV BL,LEN
        MOV BH,00H
        ADD AX,BX
        MOV DI,AX 
        
        SKIP:
        DEC DI
        MOV AL,[SI]
        CMP AL,[DI]
        JNZ NOTPAL
        INC SI
        CMP SI,DI
        JB SKIP
        
        MOV AH,09H
        LEA DX,MSGP
        INT 21H
        JMP NEXT
        
        
        NOTPAL:
        MOV AH,09H
        LEA DX,MSGN
        INT 21H
        
        NEXT:
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    END
    