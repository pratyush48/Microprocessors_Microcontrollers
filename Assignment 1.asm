MOV R6, #50h
MOV R0, #00h
MOV R3, #00h
MOV A, #3Ah
MOV DPL, R6
MOVX @DPTR, A
INC DPTR
INC R6
MOV A, #10
MOVX @DPTR, A
ADD A, R3
MOV R3, A
INC DPTR
INC R6
MOV A, #0B0h
MOVX @DPTR, A
ADD A, R3
MOV R3, A
INC DPTR
INC R6
MOV A, #00h
MOVX @DPTR, A
ADD A, R3
MOV R3, A
INC DPTR
INC R6
MOV A, #00h
MOVX @DPTR, A
ADD A, R3
MOV R3, A
LOOP1:
MOV R4, #0Fh
MOV DPL, R5
MOVX @DPTR, A
ADD A, R3
MOV R3, A
MOVX A, @DPTR
MOV DPL, R6
MOVX @DPTR, A
DEC R4
INC R5
INC R6
CJNE R4, #00h, LOOP1
MOV A, R6
CPL A
INC A
MOV DPL, R6
MOVX @DPTR, A
END


