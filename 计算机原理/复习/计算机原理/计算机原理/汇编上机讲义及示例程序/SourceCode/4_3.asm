DATA	SEGMENT
     	X      	DB  -15
      	RESULT 	DB  ?
DATA	ENDS
CODE	SEGMENT
      	ASSUME  DS:DATA,CS:CODE
START:	MOV	AX,DATA
      	MOV	DS,AX 	;��ʼ��
      	MOV	AL,X  	;Xȡ��AL��
	TEST    AL,80H  ;����AL����
        JZ NEXT         ;Ϊ����תNEXT
        NEG AL  	;����AL��
NEXT:	MOV 	RESULT,AL	;�ͽ��
      	MOV 	AH,4CH
      	INT 	21H 	;����DOS
CODE	ENDS
        END   START     ;������
