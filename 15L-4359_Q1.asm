[org 0x200]
jmp start

IRK:
push bp
mov bp,sp
push ax
push bx
push cx
push si

mov si,arr


mov cx,ax
mov dx,[si]
cmp word[si],0
ja allocate

cmp si,0
jbe movepointer



movepointer:add si,2
cmp word[si],0
jbe movepointer
cmp si,bx
je exit
add si,2



allocate:
mov dx,[si]
mov word[si],0
allocate2:add si,2
sub cx,1
cmp cx,1
jne allocate2

sub dx,ax
mov cl,-1
mov ch,0
mul cl

mov [si],ax

mov [si+2],dx


exit:

pop si
pop cx
pop bx
pop ax
pop bp
ret


start:mov ax,3
mov bx,arr
mov word[arr],10
mov word[arr+2],0
mov word[arr+4],0
mov word[arr+6],0
mov word[arr+8],0

mov word[arr+10],0
mov word[arr+12],0

mov word[arr+14],0

mov word[arr+16],0

mov word[arr+18],0
mov word[arr+20],10

add bx,20

call IRK



mov ax,2

add bx,20

call IRK


mov ax,0x4c00
int 21h

arr: dw  10,0,0,0,0,0,0,0,10
arr3: dw 10,0,0,0,0,0,0,0,10
