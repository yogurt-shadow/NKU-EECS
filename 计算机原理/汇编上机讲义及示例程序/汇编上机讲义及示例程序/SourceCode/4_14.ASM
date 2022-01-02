STACK SEGMENT PARA STACK 'STACK'
      DB 100 DUP(?)
STACK ENDS
DATA SEGMENT
      BUFFER DB 3 DUP(?)
DATA ENDS

CODE SEGMENT
     ASSUME CS: CODE,DS:DATA,SS:STACK
START PROC FAR
BEGIN: PUSH DS
       MOV AX,0
       PUSH AX
       MOV AX,DATA
       MOV DS,AX
       MOV CX,0FFFFH
       MOV BL,0
       LEA SI,BUFFER
       PUSH BX
GOON:  MOV DL,0DH
       MOV AH,02H
       INT 21H
       MOV DL,0AH
       MOV AH,02H
       POP BX
       MOV AL,BL
       INC AL
       DAA
       CMP AL,61H
       JC NEXT
       MOV AL,0
       MOV AH,4CH
       INT    21H
NEXT:  MOV BL,AL
       PUSH BX
       MOV DL,AL
       PUSH CX
       MOV CL,4
       SHR AL,CL
       OR AL,30H
       MOV [SI] ,AL
       INC SI
       MOV AL,DL
       AND AL,0FH
       OR AL,30H
       MOV [SI],AL
       INC SI
       MOV AL,'$'
       MOV [SI],AL
       MOV DX,OFFSET BUFFER
       MOV AH,09H
       INT 21H
      ; MOV CX,0FFFFH

DELAY: MOV DX,3FFH
TIME:   MOV CX,0FFFFH
TIME1:  DEC CX
       NOP
       JNE TIME1
       DEC DX
       JNE TIME
       POP DX
       DEC DX
;AGAIN: DEC CX
;       JNE AGAIN
;       POP CX
;       DEC CX
        JE DONE   
        MOV SI, OFFSET BUFFER
        JMP GOON
DONE:   RET

START  ENDP

CODE   ENDS
       END BEGIN






















































































































































































































































       BL,AL
       PUSH  BX
       OR AL,30H
       MOV DL,AL
       MOV AH,2
       INT 21H
       MOV CX,0FFFFH
AGAIN: DEC CX
       JNE AGAIN
       JMP GOON
START  ENDP
CODE   ENDS
       END  BEGIN





