DATA SEGMENT
    MSG DB 0AH, 0DH, "hello suraj$"
    DATA ENDS

CODE SEGMENT
    ASSUME CS: CODE, DS: DATA
    START:
        MOV AX, DATA
        MOV DS, AX
        MOV AH, 09H
        LEA DX, MSG
        INT 21H
        MOV AH, 4CH
        MOV AL, 00H
        INT 21H
    CODE ENDS
    END START