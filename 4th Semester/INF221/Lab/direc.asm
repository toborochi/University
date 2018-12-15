;%%%%%%%%%%%%%%%%%%%%%%%
;compile and link with 
;nasm -f win32 -o ejemplo.o ejemplo.asm
;gcc -o ejemplo.exe ejemplo.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------
;file: direc.asm

extern _printf, _scanf		

segment .data
dato1     dd 11111111h,  22222222h, 33333333h, 44444444h, 55555555h
dato2     dw 0BBCCh, 0DDEEh, 0FF11h, 2233h, 4455h

segment .bss

segment .text 

global _main 					
_main:	
;----------------------------------------------------------------
;PROGRAMA PARA ILUSTRAR LOS MODOS DE DIRECCIONAMIENTO INTEL 80X86
;----------------------------------------------------------------
;---------------------------------------------------------------------------
;DIRECCIONAMIENTO INDIRECTO POR REGISTRO (BASE)
;---------------------------------------------------------------------------

mov ebx, dato2	  ; bx = 000A
mov ax, [ebx]              ; ax = BBCC
mov [ebx], word 1122H	   		  ; [ 000A] = 22  [ 000B] = 11
mov esi,  dato1	  ; SI = 0000
mov [esi], ax	   	  ; [0000]= CC, [0001] = BB

;-----------------------------------------------------------------------------
;DIRECCIONAMIENTO RELATIVO POR REGISTRO (index addressing)
;(BP,.BX,DI o SI) + desplazamiento
; (llamado tambien MODO BASE + DESPLAZAMIENTO) !!!!!!!!!!!!!!!!!!!
;-----------------------------------------------------------------------------

;(base addressing)
;===============
mov ebx, dato1    	 ;bx = 0000
mov ax, [ebx+5]              ; ax = 8855        
;en registro BX dirección de memoria+desplazamiento

mov esi, 4
mov edi, 0
mov ax, [dato1+eSI]  	 ; ax = 5566 sourse dirección de memoria+desplazamiento en reg SI
mov [dato2+eDI], ax    ; direccion de memoria [000A] = 66H,  [000B] = 55H

;mueve el elemento 02h de array al elemento 04h.

mov edi, 02h           	 ; di = 0002
mov ax, [dato2+edi]      	 ; ax = DDEE
mov di, 04h           	 ; di = 0004
mov [dato2+edi], ax     	 ; direccion de memoria [di+0019] = 001D
						; [000E] = EE   [000F] = DD
;-----------------------------------------------------------------------------------
;DIRECCIONAMIENTO BASE MAS INDICE (base index addressing)
;(BP o BX)+(DI o SI)
;-------------------------------------------------------------------------------

mov esi, 3  	             ;si = 0003
mov ebx,  dato2     ;bx = 000A
mov ax, [ebx+esi]          ;ax = EEDD

;mueve el elemento 02h de array al elemento 04h.
;DI direcciona el elemento del array

mov ebx,  dato1    ;bx = 0000
mov di, 02H             ;di = 0002
mov al, [ebx+edi]         ;al = 44
mov di, 04H             ;di = 0004
mov [bx+di], al         ;direccion de memoria [bx+di]
						; [0004] = 44
;-----------------------------------------------------------------------------------------------
;DIRECCIONAMIENTO RELATIVO BASE MAS INDICE 
;(BP o BX)+(DI o SI) + desplazamiento
;( llamado tambien MODO BASE + INDICE + desplazamiento) !!!!!!!!!
;-----------------------------------------------------------------------------------------------

mov ebx,  dato2         ;bx=0019
mov esi,0                     ;si=0000
mov ax, [ebx+esi+5h]           ;ax=8833

;------otra forma--------------------------
mov ax, [dato2+esi + 5]        ;ax = 8833


ret





