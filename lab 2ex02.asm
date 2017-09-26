[ORG 0X100]

mov bx,5326
mov cx,0000
mov ch,252
mov cl,ch
mov ch,00
add bx,cx
mov cx,bx

mov ax,0x4c00
int 0x21

