DATA SEGMENT
    MSG DB 'Enter a number : $'
    MSG1 DB 13, 10, 'The number is even $'
    MSG2 DB 13, 10, 'The number is odd $'
    MSG3 DB 13, 10, 'The number is zero $'
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
START:
    MOV AX, DATA
    MOV DS, AX
    MOV AH, 09H
    LEA DX, MSG
    INT 21H
    MOV AH, 01H
    INT 21H
    MOV BX, AX
    MOV AX, BX
    AND AX, 0001H
    CMP AX, 0001H
    JNE EVEN 
    MOV AH, 09H
    LEA DX, MSG2
    INT 21H
    JMP END
EVEN:
    CMP BX, 0000H
    JNE ODD
    MOV AH, 09H
    LEA DX, MSG3
    INT 21H
    JMP END
ODD:
    MOV AH, 09H
    LEA DX, MSG1
    INT 21H
END:
    MOV AH, 4CH
    INT 21H
CODE ENDS
END START

