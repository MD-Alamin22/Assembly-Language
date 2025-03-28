.model small
.stack 100h
.data 
a db 0ah,0dh,'ODD$'
b db 0ah,0dh,'EVEN$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    cmp al,'1'
    je odd
    cmp al,'3'
    je odd
    cmp al,'5'
    je odd
    cmp al,'7'
    je odd
    cmp al,'9'
    je odd
    cmp al,'2'
    je even
    cmp al,'4'
    je even
    cmp al,'6'
    je even
    cmp al,'8'
    je even
    
  odd:
    lea dx,a
    mov ah,9
    int 21h
    jmp return 
    
  even:
    lea dx,b
    mov ah,9
    int 21h
    jmp return
  
  return:
    mov ah,4ch
    int 21h
    main endp
end main