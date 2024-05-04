TITLE PROGRAM TO DISPLAY A STRING
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'ENTER A STRING:$'
    
    PARA LABEL BYTE
    MAX DB 100
    LEN DB ?
    STR DB 100 DUP('$')
    
    NEWL DB 0DH,0AH,'$'

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX 
        
        MOV AH,09H ;MESSAGE DISPLAY
        LEA DX,MSG
        INT 21H
        
        MOV AH,0AH  ;READ STRING
        LEA DX,PARA
        INT 21H
        
        MOV AH,09H
        LEA DX,NEWL
        INT 21H
        
        MOV CH,00H   ;USING LOOP
        MOV CL,LEN
        
        LEA SI,STR
        UP:
        MOV DL,[SI]
        CMP DL,61H
        JC SKIP
        CMP DL,7AH
        JNC SKIP
        SUB DL,32
        
        SKIP:
        MOV AH,02H   ;DISPLAY A CHARACTER
        INT 21H
        
        INC SI
        LOOP UP
                
        
        
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    END