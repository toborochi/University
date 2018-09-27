
;%%%%%%%%%%%%%%%%%%%%%%%
; Autor: Leonardo Henry Anez Vladimirovna
; Registro: 217002498
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
	
arreglo DB 1,2,3,4,5
	
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:
;---------------------------------------	

mov ecx,10 ; Numero de elementos que queremos sumar
xor al,al  ; Acumulador donde ira la suma
mov ebx,arreglo ; Direccion Inicial del contador
ciclo:	add al,[ebx] 
	inc ebx		; Incrementar contador
	dec ecx	    ;  Decrementar Contador
	jnz ciclo   ; Salta si Z=0
	mov [suma],al
	

ret
;---------------------------------------
;..........subrutina....................	




