
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o 217002498.o 217002498.asm -l 217002498.lst
;gcc -o 217002498.exe 217002498.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: 217002498.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
a dd 1,2,3,4,5	
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:
;---------------------------------------	
	
;Invertir un arreglo	
	
mov edx,5
mov ecx,0
ciclo: 
      push dword[a+ecx*4]	  
	  inc ecx
	  dec edx
	  jnz ciclo
	  
mov edx,5
mov ecx,0	  
reposicion:
     pop dword[a+ecx*4]
	 inc ecx
	 dec edx	 
	 jnz reposicion
	  


ret
;---------------------------------------
;..........subrutina....................	


