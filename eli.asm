.MODEL small
.STACK 500h
.data 
text0 db '-------        M    E    N    U  -------',13,10,'$'
text1 db 13,10,'1. Cadenas iguales.',13,10,'2. Cadena es subcadena.',13,10,'3. Eliminar los d?gitos de una cadena.',13,10,'4. Imprimir un tri?ngulo.',13,10,'5. Imprimir un cuadrado.',13,10,'6. ASCII:',13,10,'7. Contador de archivo.',13,10,'8. Escribir en archivo.',13,10,'9. Salir. (Sale del programa) $'
 
text2 db 'Cadena es iguales.',13,10,'Primera cadena :$'
text21 db 13,10,'Segunda cadena  :$'
text22 db 'SON IGUALES LAS CADENAS $'
text23 db 'SON DIFERENTES LAS CADENAS $'

text3 db 'Cadena es iguales.',13,10,'Ingrese cadena completa :$'
text31 db 13,10,'Ingrese Subcadena cadena  :$'
text32 db 'ES SUBCADENA $'
text33 db 'SON NO ES SUBCADENA $'

text4 db 'Eliminar los d?gitos de una cadena.',13,10,'Ingrese una cadena con d?gitos :$'
text41 db 13,10,'LA CADENA SIN DIGITOS ES :$'
text42 db 13,10,'La catidad de caracteres es :$'

text5 db 'Imprimir un tri?ngulo.',13,10,'$'
text6 db 'Imprimir un cuadrado.',13,10,'$'
text7 db 'ASCII:',13,10,'$'
text8 db 'Contador de archivo.',13,10,'$'
text9 db 'Escribir en archivo.',13,10,'$'
text10 db '9. Salir. (Sale del programa) $'

msgReturn db 13,10,'Precione 1 para repetir o otra tecla para ir al men? $'

cadena1 db 20 dup(''),'$'
cadena2 db 20 dup(''),'$'


cadenaSinNumeros db 20 dup ("fer")  
cantidad db 0
opc db ? 
msj db ? 
  
.CODE
 ;start
 start:
 mov ax,@data
 
 mov ds,ax
 mov es,ax
 
 call clean
 
  mov dx,offset text0
  mov ah,09
  int 21h
  mov dx,offset text1
  mov ah,09
  int 21h
 
  mov ah,01h
  int 21h
  mov opc,al
  cmp opc,49
   je opc1
  cmp opc,50
   je opc2
  cmp opc,51
   je opc3
   cmp opc,52
   je opc4
   cmp opc,53
   je opc5
   cmp opc,54
   je opc6
   cmp opc,55
   je opc7
   cmp opc,56
   je opc8
   cmp opc,57
   je salir
  call salir       

 
 opc1:
 
 
 opc2:
 
 
 opc3:
 mov dx,offset text4
 mov ah,09h
 int 21h
  mov si,0
 capture:
 
  mov ah,01h
  int 21h 
  mov cadenaSinNumeros[si],al
  inc si
  cmp al,13
  jne capture
 
  mov cadenaSinNumeros[19],"$"
  mov dl, cadenaSinNumeros
  mov ah,02h
  int 21h
 
 opc4:
 
 opc5:
 
 opc6:
 
 opc7:
 
 opc8:
    
 
 
 call return
 mov ah,01
 int 21h
 cmp al,49
 je opc3
 jmp start


 
 
clean:
 mov AH,00H ;FUNCION PARA LIMPIAR PANTALLA
 mov AL,03H ;MODO TEXTO 80X25
 int 10H
 ret  
   
return:
 mov dx,offset msgReturn
 mov ah,09
 int 21h
 ret
 
 ; --------- fin retur
 

 salir:
 
.exit
end Start
end
 


