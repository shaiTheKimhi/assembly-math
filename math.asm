
org 100h

MOV AX,5
MOV BX,AX
ADD BX, 1
push BX
push AX
call POWER

ret

POWER:
    push bp
    mov bp,sp
    sub sp,12
    mov ax,1
    mov cx,[bp + 4]
    mov bx,[bp + 6]
    for:
        mul bx        
        loop for   
    mov sp,bp
    pop bp
    ret


SQROOT:
    push bp
    move bp,sp
    sub sp,8
    