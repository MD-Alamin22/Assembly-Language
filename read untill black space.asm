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
        
   repeate:
        mov ah,1
        int 21h
        
        cmp al,' '
        je return
        jmp repeate
        
    return:
        mov ah,4ch
        int 21h
        main endp
end main