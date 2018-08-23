;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: escalado.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
dato1     DB 0x11, 0x22, 0x33, 0x44, 0x55, 0x66
dato2     DB 0x77, 0x88, 0x99, 0xAA, 0xBB, 0xCC
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:
;----------------------------------	
;direccionamiento indice escalado
;base indexado
;------------------------------------
xor edx, edx
mov eax, dato1	;direccion 0x00402000
mov ebx, 2  	;indice
mov  dl, [eax + ebx*1]	;33
mov  dx, [eax + ebx*2]	;6655
mov edx, [eax + ebx*4]	;0xccbbaa99

;-------otra forma-------------------
xor edx, edx
mov eax, dato1	;direccion 0x00402000
mov ebx, 2	    ;indice
mov  dl, [dato1 + ebx*1]	;33
mov  dx, [dato1 + ebx*2]	;6655
mov edx, [dato1 + ebx*4]	;0xccbbaa99

;--------++++ desplazamiento---------
xor edx, edx
mov eax, dato1
mov ebx, 1
mov edx, [eax + ebx*2 + 2]	;88776655

ret

	




