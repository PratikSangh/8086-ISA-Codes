.model tiny
.486
.data
NUMARRAY DD -1,1,3,2,6,5,7,4,8,10
.code
.startup
LEA SI,NUMARRAY
MOV DX,09h
X1:LEA SI,NUMARRAY
MOV CX,09h
X3: MOV EAX,[SI]
CMP EAX,[SI+4]
JL X2
MOV EBX,[SI+4]
MOV [SI],EBX
MOV [SI+4],EAX
INC SI
INC SI
INC SI
INC SI
DEC CX
JNE X3
DEC DX
JNE X1
JMP EXT
X2:INC SI
INC SI
INC SI
INC SI
DEC DX
JNE X3
EXT: nop
.exit
end