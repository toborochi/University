
_main:
;-----------------------------------------------------------------	
		mov ah, 45	 	 ;# mueve 45 al registro de 8 bits ah
		mov ax, 123	 	 ;# mueve el valor 123 al registro ax
		mov eax, 85	 	 ;# mueve el valor 85 al registro eax
		mov eax, 5678	 ;# mueve el valor 5678 al registro eax
		mov ebx, 0x100 	 ;# mueve el valor 0x100 en hexadecimal al registro ebx
;---------------------------------------	
mov byte[0x00402000], 12		  	;# mueve 12 a la posición de memoria 0x100
mov dword[0x00402000], 0x12345678 
mov byte[a], 12			 		;# mueve 12 a la posición de memoria etiquetada
							;# a, esta variable debe estar previamente
							;# definida

;---------------------------------------	
mov bl, ah		 ;# mueve el contenido de %ah a %bl (1 byte)
mov bx, ax		 ;# mueve el contenido de %ax a %bx (2 bytes)
mov ebx, eax	 ;# mueve el contenido de %eax a %ebx (4 bytes)
;--------------------------------------------------------
mov eax, a
mov ebx, [a]
mov ecx, [c]
mov edx, [c]
;---------------------------------------	
mov [a], eax ; move a double word to a
mov [b], ebx ; move a double word to b
mov [c], cx  ; move a word to c
mov [d], dl  ; move a byte to d
;---------------------------------------------------------
;DIRECCIONAMIENTO RELATIVO POR REGISTRO (index addressing)
;(llamado tambien MODO BASE + DESPLAZAMIENTO) !!!!!!!!!!!!
;---------------------------------------------------------
nop
xor eax, eax
mov edx, dato1 
   	 
mov  al, [edx+2]              
mov  ax, [edx+2] 
mov eax, [edx+2]             

;--------------------------------------------------------
;DIRECCIONAMIENTO BASE MAS INDICE (base index addressing)
;--------------------------------------------------------
	xor eax, eax
	mov ebx, dato1
	mov edx, 4  	                  
	mov  al, [ebx+edx]
	mov  ax, [ebx+edx] 
	mov eax, [ebx+edx]                             
;----------------------------------------------------------------
;DIRECCIONAMIENTO RELATIVO BASE MAS INDICE 
;( llamado tambien MODO BASE + INDICE + desplazamiento) !!!!!!!!!
;----------------------------------------------------------------
	xor eax, eax
	mov ebx, dato2         
	mov esi, 0 
	mov  al, [ebx+esi+2]
	mov  ax, [ebx+esi+2] 
	mov eax, [ebx+esi+2]           

ret
	




