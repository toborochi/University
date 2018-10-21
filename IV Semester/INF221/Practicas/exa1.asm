
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; Universidad Autonoma Gabriel Rene Moreno
; Facultad de Ingenieria en  Ciencias de la Computacion y Telecomunicaciones
;
; Autor: Anez Vladimirovna Leonardo Henry
; Registro: 217002498
; SEM-II 2018
; 
; Materia: Ensamblador
; 
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;----------------------------------------------------------------------------

; Realizar esto y hallar 'd'
; d = [(a^3)&(b*3)]|[9-(c%6)]
; a = 999 DD
; b = -20 DD
; c = 30 DD
; d = ? DD


;file: 217002498.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
a DD 999
b DD -20
c DD 30
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

d resd 1

segment .text 
global _main 					
_main:
;---------------------------------------	
	
	mov eax,[a]
	mov ecx,2   ; Contador del mnemoico loop
	potencia:
			imul dword[a]
			loop potencia
	
	
	mov [d],eax ; Movemos el resultado de (a^3)
	mov eax,[b] ; Movemos a eax, el contenido de 'b'
	mov edx,3   ; y a edx, el multiplicador
	imul edx    ; Multiplicamos (eax*edx)
	and [d],eax ; Aplicamos el & al contenido de 'd' con el contenido de eax
	
	; Hasta aquie el primer miembro [(a^3)&(b*3)]
	
	xor edx,edx ; Limpiamos el residuo
	mov ecx,6   ; Movemos a ecx el divisor
	mov eax,[c] ; Movemos a eax, el contenido de 'c'
	idiv ecx    ; Dividimos eax/ecx
	mov eax,9	; Movemos a eax la constante 9 
		
	sub eax,edx ; Sustraemos eax-edx ([9-(c%6)])
		
	or [d],eax  ; Realizamos el or finalmente en el contenido de 'd' [(a^3)&(b*3)]|[9-(c%6)]

ret
;---------------------------------------
;..........subrutina....................	


