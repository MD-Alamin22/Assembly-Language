.MODEL SMALL
.STACK 100H
.DATA
    msg1 DB 0AH,0DH,"? $" 
    msg2 DB 0AH,0DH,"Reversed: $"  
    newline DB 0AH,0DH,"$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, msg1      ; Display "?"
    MOV AH, 9
    INT 21H

    MOV CX, 0         ; Counter for input length

READ_LOOP:
    MOV AH, 1         ; Read character
    INT 21H
    CMP AL, 0DH       ; Enter key?
    JE PRINT_REVERSE  
    PUSH AX           ; Push to stack
    INC CX
    JMP READ_LOOP  

PRINT_REVERSE:
    LEA DX, newline   ; New line
    MOV AH, 9
    INT 21H

    LEA DX, msg2      ; Display "Reversed:"
    INT 21H

PRINT_LOOP:
    JCXZ END_PROGRAM  ; If CX == 0, end
    POP DX            ; Pop and print
    MOV AH, 2
    INT 21H
    LOOP PRINT_LOOP  

END_PROGRAM:
    MOV AH, 4CH       ; Exit
    INT 21H

MAIN ENDP
END MAIN