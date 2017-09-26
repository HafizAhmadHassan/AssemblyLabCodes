[ORG 0x100]
mov ax,[ARR2+4]
add [ARR2+2],ax
mov ax,[ARR2+2]
add [ARR2],ax
mov ax,[ARR2]
mov [RES+2],ax
mov ax,0000
mov al,[ARR1+4]
add [ARR1+2],al
mov al,[ARR1+2]
add [ARR1],al
mov [RES],ax
mov ax,0x4c00
int 0x21
ARR2: DW 1000,2000,3000
ARR1: DB 45,145,245
RES: DW 0000,0000
