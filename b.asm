.model tiny
.386
.data
CONST EQU 0Ah
ARRAY DB 2,4,6,8,22,1,0,5,9,10
RES DB 0
.code
.startup
LEA BX,ARRAY
MOV CL,00h
X1: MOV AL,[BX]
SUB RES,AL
JGE X2
MOV RES,AL
INC BX
INC CL
SUB CL,CONST
JNE X1
X2: INC BX 
INC CL
SUB CL,CONST
JNE X1
.exit
end