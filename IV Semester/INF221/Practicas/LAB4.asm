
;%%%%%%%%%%%%%%%%%%%%%%%
; Autor: Leonardo Henry Anez Vladimirovna
; Registro: 217002498
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------
extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
	
x DB 0xA9
	
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:
;---------------------------------------	

SHL byte[x],2
SHR byte[x],5
SHL byte[x],1

ret
;---------------------------------------
;..........subrutina....................	




