[org 0x100]
;segment:offset= 0x56ab:0xdfd5
mov ax,0000
mov ax,[arr1]
mov dx,ds
mov bx,0x56ab
mov ds,bx
mov bx,0xdfd5
mov [bx],ax
mov ds,dx
mov ax,[arr1+2]
mov bx,0x56ab
mov ds,bx
mov bx,0xdfd5
add bx,2
mov [bx],ax


mov ax,0x4c00
int 0x21
arr1: db 5,6,7,89
arr2: db 1,2,3,4