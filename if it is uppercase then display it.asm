.model small
.stack 100h
.data
m db 'I am Alamin.My student id is:IT22020',0ah,0dh,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,'A'
    jnge return
    cmp al,'Z'
    jnle return
    
    mov ah,2
    mov dl,al
    int 21h
    
    return:
    mov ah,4ch
    int 21h
    main endp
end main