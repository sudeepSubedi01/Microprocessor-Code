TITLE PROGRAM TO CALCULATE THE SUM OF DECIMAL NUMBERS FROM 0 TO 255  
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    SUM DW ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,0000    
    MOV CX,0255   
    UP: 
    ADD AX,CX
    DAA      
    LOOP UP
    
    MOV SUM,AX
    
    MOV AH,4CH
    INT 21H
MAIN ENDP

END MAIN