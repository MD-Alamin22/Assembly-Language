.model small
.stack 100h  
.data
m1 db 'I am Alamin. My student id is:IT22020',0ah,0dh,'$'
m2 db 'Enter A: $'
m3 db 0ah,0dh,'Enter B: $' 
m4 db 0ah,0dh,'Result is: $'
.code

main proc    
    mov ax,@data
    mov ds,ax
    
    lea dx,m1
    mov ah,9
    int 21h
    
    lea dx,m2
    int 21h
    mov ah,1     ;input A
    int 21h 
    sub al,48    ;convert ASCII to numeric 
    mov bl,al
    
    lea dx,m3
    mov ah,9
    int 21h 
    mov ah,1     ;input B
    int 21h
    sub al,48    ;convert ASCII to numeric 
    sub al,bl    ;calculate A=B-A
    sub al,bl    ;calculate A=B-2*A
    mov bh,al 
    add bh,48    ;convert numeric to ASCII
    
    lea dx,m4
    mov ah,9
    int 21h
    mov ah,2     ;output A=B-2*A
    mov dl,bh
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    