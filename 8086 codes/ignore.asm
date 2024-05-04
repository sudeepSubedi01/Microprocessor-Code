.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'Enter: $'
    STR DB 20 DUP('$')  ; Buffer to store the entered name
    NEWL DB 0DH,0AH,'$'
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

        MOV AH, 09H       ; Display message
        LEA DX, MSG
        INT 21H

        MOV AH, 0AH       ; Read input
        LEA DX, STR
        INT 21H
                
        MOV AH,09H
        LEA DX,NEWL
        INT 21H
        
        MOV AH, 09H       ; Display entered name
        LEA DX, STR + 2   ; Offset by 2 bytes to skip the length byte (stored by DOS)
        INT 21H

        MOV AH, 4CH       ; Exit program
        INT 21H
    MAIN ENDP
    END
