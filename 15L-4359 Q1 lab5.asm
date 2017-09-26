[org 0x100]


jmp main

arr: dw 23,30,12,51,46,21,42,0

loop2:

mov ax,[arr+si]

push ax

add si,2
cmp si,16
jna loop2

mov ax,8
push 8
mov si,0
mov cx,0
mov bx,0
pop ax
loop:

pop ax
add bx,ax


add cx,1
cmp cx,8
jna loop
ret 


main:
mov si,0
call loop2
