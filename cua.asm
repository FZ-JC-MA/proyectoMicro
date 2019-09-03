.model small
.stack 200h
.data 
  ingreseColor db "Ingrese codigo de color :",13,10,0,"$"
  color db 3 dup(0)
  ast db "*","$"
  var1 db 15
  var2 db 0
  varcol db 16
  varlin db 11
  
.code
  start:
   mov ax,@data
  mov ds,ax
mov es,ax

mov dx,offset ingreseColor
mov ah,09h
int 21h

mov ah,03fh
mov bx,00
mov cx,2
mov dx, offset [color]
int 21h


mov color[2],"$"
mov dx,offset color
mov ah,09h
int 21h

 
;mov cx,20 




bucle:

mov al,varcol
mov dh,al
mov al,varlin
mov dl,al
mov ah,02h
int 10h
 add var2,2
 mov al,"*" 
 mov bl,var2
 mov cl,var1
 mov ah,09h 
 int 10h
 sub varcol,1
 mov al,varcol
 cmp al,9
 jne bucle



 mov dh,15
 mov dl,1
 mov ah,02h
 int 10h


 salir:



.exit
end start
end  
