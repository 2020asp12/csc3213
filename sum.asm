.model small
.stack 100h
.data

msg1 db "enter the number : $"
msg2 db "enter the number : $"
msg db "the sum of both number is : $"

n1 db 0
n2 db 0
.code

start:
mov ax,@data
mov ds,ax

mov dx,offset msg1  ;print msg1
mov ah,09h
int 21h

mov dl,01h  ;read input n2
int 21h     
mov al,48  ;for convert asci value into numerical value

mov dl,10  ;next line (can use 10 or oah)
mov ah,02h
int 21h

mov dl,n1  ; print the value
mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start