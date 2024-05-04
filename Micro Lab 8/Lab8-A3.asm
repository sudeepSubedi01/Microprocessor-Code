;3. Write an assembly language program that takes a string (having 24 characters at max.) from the user and display each 
;character at the center of each line.         
TITLE LAB 8 QUESTION 2
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'Enter a string: $'
    
    PARA LABEL BYTE
    MAX DB 24
    LEN DB ?
    STR DB 24 DUP('$')
    
    NEWL DB 0DH,0AH,'$'
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09H   ;MESSAGE DISPLAY
        LEA DX,MSG
        INT 21H
        
        MOV AH,0AH   ;STRING INPUT
        LEA DX,PARA
        INT 21H
        
        LEA SI,STR
        UP:
        CMP [SI],32
        JZ SKIP
        
        MOV AH,03H  ;GET CURSOR POSITION DH=ROW, DL=COLUMN
        MOV BH,00H
        INT 10H

        ADD DH,01H
        MOV AH,02H
        MOV BH,00H
        MOV DL,39
        INT 10H
        
        MOV AH,02H    ;DISPLAY CHARACTER
        MOV DL,[SI]
        INT 21H
        
        SKIP:
        INC SI
        DEC LEN
        JNZ UP
                
        MOV AH,4CH
        INT 21H        
        
   MAIN ENDP
   END
        
        
        
        