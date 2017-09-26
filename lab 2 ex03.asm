[ORG 0x100]

mov bx,10010011b
mov ax,bx
add ax,bx
add ax,bx
mov dx,49h
mov cx,500
add ax,dx
add ax,cx

mov ax,0x4c00
int 0x21