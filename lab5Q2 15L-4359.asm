[org 0x100]
jmp start
arr: dw 12,5,56,987,565,4,221,55,3333 
flag: dw 0
chunkbubblesort:push bp
mov bp,sp
sub sp,2
push ax
push bx
push cx
push si
mov bx,[bp+10]
mov ax,[bp+8];9 ax me
mov cx,[bp+6];3 cx me
dec ax
shl ax,1  
dec cx   
shl cx,1      
mainloop:mov si,0
mov word[bp-2],0
innerloop:mov dx,[bx+si]
cmp dx,[bx+si+2]
jbe noswap

xchg dx,[bx+si+2]
mov [bx+si],dx
mov word[bp-2],1
noswap:add si,2
cmp si,cx
jne innerloop
cmp  word[bp-2],1
je mainloop
add bx,cx            ;chunk size is added to bx which is 4 because we dec it shiftlet it
add bx,2                   ;original chunk is 3 moves 3 byte forward
add word[bp+4],cx ; this contain 0 but now 3*2 chunk
add word[bp+4],2; to make it 6 because dealing the word
cmp word[bp+4],ax
jb mainloop

pop si
pop cx
pop bx
pop ax
mov sp,bp
ret 10
start:mov bx,arr
push bx
mov ax,9
push ax
mov ax,3
push ax
mov ax,0
push ax
call chunkbubblesort

mov ax, 0x4c00
int 21h