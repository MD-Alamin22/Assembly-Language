.model small
.stack 100h
.code 
.data 
a db 'I am Alamin. My student id is: IT22020',0ah,0dh,'$'
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,a
    mov ah,9
    int 21h 
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
