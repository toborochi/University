% 1. mostrarDivisoresDesc(n) : Procedimiento que 
% muestra los divisores del entero n. Muestra desde el n a 1.
mostrarDivisoresDesc:- read(N),divisores(N,1).
		   
divisores(N,I):- I>N,!.
divisores(N,I):-
					N mod I =:= 0,
					I1 is I+1,
					divisores(N,I1),
					write(I),nl.
divisores(N,I):- I1 is I+1,
				 divisores(N,I1).
				 
				
% 2. mostrarDivisoresComunes(n, m) : Procedimiento que 
% muestra los divisores comunes de los entero n y m.

% 3. mostrarDivisoresPares(n) : Procedimiento que 
% muestra los divisores pares de n.

% 4. mostrarDivisoresImpares(n) : Procedimiento que 
% muestra los divisores impares de n.

% 5. mostrarDivisores(n, a, b) : Procedimiento que 
% muestra los divisores de n, comprendidos entre a y b inclusive.

% 6. primo(n) : Función lógica que devuelve True, si el entero n es número primo.

primo:-
		read(N),
		primo(N).
		
primo(N):- primo(N,2).

primo(N,I):- I > N // 2.

primo(N,I):- N mod I =\= 0,
		     I1 is I+1,
			 primo(N,I1).

% 7. proximoPrimo(n) : Función que devuelve, el siguiente 
% primo después de n. Si n es primo, devuelve n.

%8. anteriorPrimo(n) : Función que devuelve, el anterior 
% primo antes de n. Si n es primo, devuelve n.

% 9. mostrarPrimos(a, b) : Procedimiento que muestra los número 
% primos entre a y b, inclusive.
 
% 10. mostrarDivisoresPrimosAsc(n) : Procedimiento que muestra 
% los divisores primos de n. Muestra desde 1 hasta n.

% 11. mostrarDivisoresPrimosDesc(n) : Procedimiento que muestra 
% los divisores primos de n. Muestra desde n hasta 1.
 
% 12. mostrarFactoriales(n): Procedimiento que muestra los factoriales de 1 a n.

% 13. mostrarCoefBin(n) : Procedimiento que muestra los coeficientes
% binomiales de un binomio elevado a la n.

% 14. mostrarFib(n) : Procedimiento que muestra los primeros 
% n términos de la secuencia de Fibonacci.
