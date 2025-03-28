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
    
    mov ax,1
    
    cmp ax,0
    je zero
    jg positive
    jl negative
    
    zero:
    mov ah,2
    mov dx,0
    add dx,48
    int 21h 
    jmp return 
    
    positive:
    mov ah,2
    mov dx,1
    add dx,48
    int 21h
    jmp return
    
    negative:
    mov ah,2
    mov dx,045
    int 21h  
    mov dx,1
    add dx,48
    int 21h
    jmp return 
    
    return:
    mov ah,4ch
    int 21h
    main endp
end main
    