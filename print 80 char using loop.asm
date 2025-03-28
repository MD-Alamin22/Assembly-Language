.model small
.stack 100h
.data
m db 'I am Alamin.My student id is:IT22020',0ah,0dh,'$'
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    lea dx,m
    mov ah,9
    int 21h
    
    mov cx,80
    mov ah,2
    mov dl,'*'
    
  top:
    int 21h
    loop top
    
    mov ah,4ch
    int 21h
    main endp
end main