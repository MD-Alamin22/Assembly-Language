.model small
.stack 100h
.data
m1 db 'I am Alamin. My student id is:IT22020',0ah,0dh,'$'
m2 db 0ah,0dh,'***********',0ah,0dh    
m3 db '***********',0ah,0dh
m4 db '***********',0ah,0dh
m5 db '***********',0ah,0dh
m6 db '***********',0ah,0dh
m7 db '****'
c1 db ?
c2 db ?
c3 db ?
m8 db '****',0ah,0dh
m9 db '***********',0ah,0dh
m10 db '***********',0ah,0dh
m11 db '***********',0ah,0dh
m12 db '***********',0ah,0dh
m13 db '***********$'
.code 
main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m1
    int 21h 
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h
    mov c1,al
    int 21h
    mov c2,al
    int 21h
    mov c3,al
    
    lea dx,m2
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main