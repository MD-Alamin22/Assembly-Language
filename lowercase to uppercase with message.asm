.model small
.stack 100h
.data 
a db "Enter a lower case letter :$"
b db "In uppercase it is :$"   
c db "I am Alamin. My student id is:IT22020",0ah,0dh,"$"
.code

main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,c
    int 21h
    lea dx,a
    int 21h  
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,32
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
     
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main