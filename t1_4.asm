.model tiny
.486
.data
FNAME DB "Pratik",0
HANDLE DW ?
IDNO DB "2017AAPS0394G",0Dh,0Ah ;15
UNAME DB "Pratik Ravikumar Sanghavi",0Dh,0Ah;27
UDAT DB 85 DUP('$')
HINFO DB "Hostel:CH1",0Dh,0Ah
RNo DB "Room No: 210"
.code
.startup
LEA DX,FNAME
MOV AH,3CH
MOV CL,20h
INT 21h
MOV HANDLE,AX

LEA DX,FNAME
MOV AL,2
MOV AH,3Dh
INT 21h
MOV BP,02h 
X1:
MOV BX,HANDLE
LEA DX,IDNO
MOV CX,0Fh
MOV AH,40h
INT 21h

MOV BX,HANDLE
LEA DX,UNAME
MOV CX,1Bh
MOV AH,40h
INT 21h

DEC BP
JNE X1

MOV BX,HANDLE
MOV AH,3Eh
INT 21h 

LEA DX,FNAME
MOV AL,2
MOV AH,3Dh
INT 21h
MOV HANDLE,AX

MOV AH,42h
MOV AL,0
MOV BX,HANDLE
MOV DX,84
MOV CX,0
INT 21h

MOV BX,HANDLE
LEA DX,HINFO
MOV CX,12
MOV AH,40h
INT 21h

MOV BX,HANDLE
LEA DX,RNo
MOV CX,12
MOV AH,40h
INT 21h

MOV BX,HANDLE
MOV AH,3Eh
INT 21h

LEA DX,FNAME
MOV AL,2
MOV AH,3Dh
INT 21h
MOV BP,02h

MOV BX,HANDLE
MOV AH,3Fh
MOV CX,84
LEA DX,UDAT
INT 21h
 
LEA DX,UDAT
MOV AH,09h
INT 21h
 
.exit
end