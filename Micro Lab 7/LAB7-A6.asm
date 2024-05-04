TITLE PROGRAM TO DISPLAY WORDS IN SEPARATE LINES
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'Enter a string:$'
    
    NEWL DB 0DH,0AH,'$'
    
    PARA LABEL BYTE
    MAX DB 100
    LEN DB ?
    STR DB 100 DUP('$')

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09H ;MESSAGE DISPLAY
        LEA DX,MSG
        INT 21H
        
        MOV AH,0AH   ;STRING INPUT
        LEA DX,PARA
        INT 21H
        
        MOV AH,09H    ;NEWLINE
        LEA DX, NEWL
        INT 21H
        
        LEA SI,STR
        
        UP:
        MOV DL,[SI]
        CMP DL,20H   ;COMPARE WITH SPACE 
        JNZ SKIP
        MOV AH,09H    ;NEWLINE
        LEA DX, NEWL
        INT 21H
        JMP NEXT
        
        SKIP:
        MOV AH,02H     ;DISPLAY EACH CHARACTER
        MOV DL,[SI]
        INT 21H
        
        NEXT:
        INC SI
        CMP [SI],'$'
        JNZ UP  
        
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    END
        