.model small
.stack 100h
.data
massage db 'I am Alamin.My student id is:IT22020',0ah,0dh,'$'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,massage
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,32
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main