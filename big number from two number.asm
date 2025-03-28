.model small
.stack 100h
.data    
m db 'I am Alamin. My student id is:IT22020',0ah,0dh,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,m
    mov ah,9
    int 21h
    
    mov ax,5
    mov bx,7
    
    cmp ax,bx 
    jg level1 
    
    mov cx,bx
    add cx,48
    
    mov ah,2
    mov dx,cx
    int 21h 
    jmp return
    
    level1:
    mov cx,ax
    add cx,48
    
    mov ah,2
    mov dx,cx
    int 21h
   
    return: 
    mov ah,4ch
    int 21h
    main endp
end main