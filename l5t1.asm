.model tiny
.486
.data

.code
.startup
mov ah,00h
mov al,03h
int 10h

mov ah,02h
mov dl,39
mov dh,12
mov bh,0
int 10h

mov ah,09h
mov al,'D'
mov bh,0
mov bl,10001111b
mov cx,1
int 10h

mov ah,02h
mov dl,40
mov dh,12
mov bh,0
int 10h

mov ah,09h
mov al,'O'
mov bh,0
mov bl,10001111b
mov cx,1
int 10h

mov ah,02h
mov dl,41
mov dh,12
mov bh,0
int 10h

mov ah,09h
mov al,'L'
mov bh,0
mov bl,10001111b
mov cx,1
int 10h

mov ah,02h
mov dl,42
mov dh,12
mov bh,0
int 10h

mov ah,09h
mov al,'L'
mov bh,0
mov bl,10001111b
mov cx,1
int 10h

mov ah,07h
x1: int 21h
cmp al,'%'
jnz x1

.exit
end