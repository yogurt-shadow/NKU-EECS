DATA 	SEGMENT
       X  DB  -5
       Y  DB  ?
DATA 	ENDS
STACK   SEGMENT  STACK
       BUFFER  DB      2 DUP(?)
STACK   ENDS
CODE 	SEGMENT
     	ASSUME   CS:CODE,DS:DATA
START:     MOV  AX,DATA
           MOV  DS,AX       ;初始化
     	   MOV  AL,X        ;X取到AL中
	   CMP  AL,0        ;Al中内容和0比较
           JGE  BIG         ;大于等于0，转BIG
	   MOV  DX,'-'      ;输出负号
           MOV  AH,02H
           INT  21H  
	   MOV  DX,'1'      ;输出1
           JMP  EXIT        ;转到结束位置
BIG:       JE   EE          ;Al中内容是否为0，为0转EE
           MOV  DX,'1'       ;否则为大于0，1送DX
     	   JMP  EXIT        ;转到结束位置
EE:  	   MOV  DX,'0'      ;0送DX
EXIT: 	   MOV  AH,02H
           INT  21H  
	   MOV  AH,4CH
           INT  21H    	    ;程序结束
CODE    ENDS
        END  START 	    ;汇编结束
