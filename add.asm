.model tiny
.386
.data
DAT1 DW 0F12h,0001h,0214h,0025h,0682h,0ABCh,0049h,0000h
DAT2 DW 0F12h,0001h,0214h,0025h,0682h,0ABCh,0049h,0000h
RES DW 8 DUP(0000h)
.code
.startup
LEA SI,DAT1
LEA DI,DAT2
MOV CL,08h
CLC
X1: MOV AX,[SI]
ADC AX,[DI]
MOV RES,AX
INC SI
INC SI
INC DI
INC DI
DEC CL
JNE X1
.exit
end