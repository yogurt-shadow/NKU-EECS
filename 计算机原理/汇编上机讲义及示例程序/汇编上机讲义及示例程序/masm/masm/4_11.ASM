DATA   SEGMENT
L1      DW    2
STRING  DB   34H,98H
L2      DW    ?
BUFFER DB  2 * 2 DUP(?)
DATA   ENDS
STACK  SEGMENT PARA STACK 'STACK'
        DB 100 DUP(?)
STACK  ENDS
CODE     SEGMENT
          ASSUME  CS:CODE,DS:DATA,ES:DATA,SS:STACK
START    PROC    FAR
BEGIN:  PUSH  DS
        MOV   AX, 0
        PUSH  AX
        MOV	  AX,DATA
	MOV	  DS,AX	;DATA��AX
        MOV   ES,AX
	    MOV   CX,L1
	    LEA   BX,STRING   
	    LEA   SI,BUFFER
	    MOV   AX,CX
        SAL   CX,1
	    MOV   L2,CX
	    MOV   CX,AX
AGAIN:  MOV   AL,[BX] ;
	    MOV   DL,AL                
        AND   AL,0FH
        CALL  CHANGE              
        MOV   AL,DL
        PUSH  CX      
        MOV   CL,4
        SHR   AL,CL
        POP   CX
        MOV   [SI] ,AL
        CALL  CHANGE
        MOV   AL,DL
        INC   BX
        LOOP  AGAIN
        RET
START    ENDP
CHANGE PROC
        CMP   AL,10
        JL    ADD_0
        ADD   AL,'a'-'0'-10 
ADD_0:  ADD   AL,'0'
        MOV   [SI],AL
        INC    SI
        RET
CHANGE  ENDP     
CODE	ENDS	;
	END	BEGIN


