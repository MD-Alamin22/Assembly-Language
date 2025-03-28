.model small
.stack 100h
.data 
m1 db 'ENTER THREE INITIALS: $' 
m2 db 'I am Alamin. My student id is:IT22020',0ah,0dh,'$'  
m3 db 0ah,0dh
c1 db ?,0ah,0dh
c2 db ?,0ah,0dh  
c3 db ?,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,m2
    mov ah,9
    int 21h
    
    lea dx,m1
    int 21h
    
    mov ah,1
    int 21h
    mov c1,al
    int 21h
    mov c2,al
    int 21h
    mov c3,al
    
    lea dx,m3
    mov ah,9
    int 21h 
    
    mov ah,4ch
    int 21h
    main endp
end main
