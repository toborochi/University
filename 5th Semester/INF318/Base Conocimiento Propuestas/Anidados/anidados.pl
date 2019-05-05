mostrar(I,J):- write(I), write("x"), write(J),write("="),P is J*I,write(P),nl.
mostrar(I,J,K):- write(I), write("x"), write(J), write("x"), write(K),write("="),P is J*I*K,write(P),nl.

% TABLA DE MULTIPLICAR CON DOS FACTORES  P = I x J (dos ciclos anidados)

% 1. tabla(n) : Procedimiento que muestra la tabla de multiplicaciOn de 1 a n.
tabla:- read(N), cicloI(N,1).

cicloI(N,I):- I>N,!.
cicloI(N,I):- cicloJ(N,I,1),
			  I1 is I+1,
			  cicloI(N,I1).
			  
cicloJ(N,_,J):- J>N,!.
cicloJ(N,I,J):- mostrar(I,J),
				J1 is J+1,
				cicloJ(N,I,J1).
				
% 2. tablaAscDesc(n): Procedimiento que muestra la tabla de multiplicar de n 
% con el primer factor ascedente y el segundo descendente.				
tablaAscDesc:- read(N),cicloI1(N,1).

cicloI1(N,I):- I>N,!.
cicloI1(N,I):- cicloJ1(1,I,N),
			   I1 is I+1,
			   cicloI1(N,I1).

cicloJ1(N,_,J):- J<N,!.
cicloJ1(N,I,J):- mostrar(I,J),
				 J1 is J-1,
				 cicloJ1(N,I,J1).
				 
% 3. tablaPares(n): Procedimiento que muestra la tabla 
% de multiplicar de n, con factores pares.

tablaPares:- read(N),cicloI3(N,2).

cicloI3(N,I):- I>N,!.
cicloI3(N,I):- cicloJ(N,I,2),
				I1 is I+2,
				cicloI3(N,I1).
					
cicloJ3(N,_,J):- J>N,!.
cicloJ3(N,I,J):- mostrar(I,J),
				J1 is J+2,
				cicloJ3(N,I,J1).

				
% 4. tablaParImpar(n): Procedimiento que muestra la tabla 
% de multiplicar de n con factores par, impar o impar, par.

tablaParImpar:- read(N),cicloI4(N,2).

cicloI4(N,I):- I>N,!.
cicloI4(N,I):- cicloJ4(N,I,1),
				I1 is I+2,
				cicloI4(N,I1).
				
cicloJ4(N,_,J):- J>N,!.
cicloJ4(N,I,J):- mostrar(I,J),
				J1 is J+2,
				cicloJ4(N,I,J1).
				
% 5. tablaFactoresPrimos(n): Procedimiento que muestra la
% tabla de multiplicar de n con factores primos.

primo(N):- primo(N,2).
primo(N,I):- I > N // 2.
primo(N,I):- N mod I =\= 0,
I1 is I+1,
primo(N,I1).
				
tablaFactoresPrimos:- read(N),cicloI5(N,2).

cicloI5(N,I):- I>N,!.
cicloI5(N,I):- cicloJ5(N,I,2),
				I1 is I+1,
				cicloI5(N,I1).
				
cicloJ5(N,_,J):- J>N,!.
cicloJ5(_,I,J):- primo(I),primo(J),mostrar(I,J).
cicloJ5(N,I,J):-
				J1 is J+1,
				cicloJ5(N,I,J1).

% 6. tablaIguales(n) : Procedimiento que muestra la tabla de 
% multiplicar de n con factores iguales. Implementar 2 algoritmos con T(n) = n2 y T(n) = n.

tablaIguales:- read(N),cicloI6(N,1).

cicloI6(N,I):- I>N,!.
cicloI6(N,I):- cicloJ6(N,I,1),
				I1 is I+1,
				cicloI6(N,I1).
				
cicloJ6(N,_,J):- J>N,!.
cicloJ6(_,J,J):- mostrar(J,J).
cicloJ6(N,I,J):- J1 is J+1,
				cicloJ6(N,I,J1).
				
% 7. tablaResultadoPrimo(n) : Procedimiento que muestra la tabla de 
% multiplicar de n, tales que el resultado de la multiplicación sea un primo.
			
tablaResultadoPrimo:- read(N),cicloI7(N,2).

cicloI7(N,I):- I>N,!.
cicloI7(N,I):- cicloJ7(N,I,1),
				I1 is I+1,
				cicloI7(N,I1).
				
cicloJ7(N,_,J):- J>N,!.
cicloJ7(_,I,J):- P is I*J , primo(P), mostrar(I,J).
cicloJ7(N,I,J):- J1 is J+1,
				cicloJ7(N,I,J1).
				
% 8. tablaSinRepetición(n) : Procedimiento que muestra la tabla de multiplicar de 
% n, tales que no se repitan la permutación o conmutatividad de factores.

tablaSinRepeticion:- read(N),cicloI8(N,1).

cicloI8(N,I):- I>N,!.
cicloI8(N,I):- cicloJ8(N,I,I),
			  I1 is I+1,
			  cicloI8(N,I1).
			  
cicloJ8(N,_,J):- J>N,!.
cicloJ8(N,I,J):- mostrar(I,J),
				J1 is J+1,
				cicloJ8(N,I,J1).

% II. TABLA DE MULTIPLICAR CON TRES FACTORES  P = I x J x K  (tres ciclos anidados)

% 1. tabla(n) : Procedimiento que muestra la tabla de multiplicación de 1 a n.

tabla3C:- read(N),cicloI3C(N,1).

cicloI3C(N,I):- I>N,!.
cicloI3C(N,I):- cicloJ3C(N,I,1),
			  I1 is I+1,
			  cicloI3C(N,I1).
			  
cicloJ3C(N,_,J):- J>N,!.
cicloJ3C(N,I,J):- cicloK3C(N,I,J,1),
				  J1 is J+1,
				  cicloJ3C(N,I,J1).
				
cicloK3C(N,_,_,K):- K>N,!.
cicloK3C(N,I,J,K):- 
				    mostrar(I,J,K),
					K1 is K+1,
					cicloK3C(N,I,J,K1).
					
% 2. tablaPares(n):Procedimiento que muestra la tabla de multiplicar de n, con factores pares.

tablaPares3C:- read(N),cicloI3C2(N,2).

cicloI3C2(N,I):- I>N,!.
cicloI3C2(N,I):- cicloJ3C2(N,I,2),
			  I1 is I+2,
			  cicloI3C2(N,I1).
			  
cicloJ3C2(N,_,J):- J>N,!.
cicloJ3C2(N,I,J):- cicloK3C2(N,I,J,2),
				  J1 is J+2,
				  cicloJ3C2(N,I,J1).
				
cicloK3C2(N,_,_,K):- K>N,!.
cicloK3C2(N,I,J,K):-mostrar(I,J,K),
					K1 is K+2,
					cicloK3C2(N,I,J,K1).
					
par(N):- Res is (N mod 2),Res=:=0.

% 3. tablaParImpar(n): Procedimiento que muestra la tabla de multiplicar de n 
% tales que exista al menos un factor par y al menos un factor impar.

% 4. tablaFactoresPrimos(n): Procedimiento que muestra la tabla de multiplicar 
% de n con factores primos.

% 5. tablaIguales(n) : Procedimiento que muestra la tabla de multiplicar de n 
% con factores iguales. Implementar 2 algoritmos con T(n) = n3 y T(n) = n.

tablaIguales3C:- read(N),cicloI3C5(N,1).

cicloI3C5(N,I):- I>N,!.
cicloI3C5(N,I):- cicloJ3C5(N,I,1),
			  I1 is I+1,
			  cicloI3C5(N,I1).
			  
cicloJ3C5(N,_,J):- J>N,!.
cicloJ3C5(N,I,J):- cicloK3C5(N,I,J,1),
				  J1 is J+1,
				  cicloJ3C5(N,I,J1).
				
cicloK3C5(N,_,_,K):- K>N,!.
cicloK3C5(_,K,K,K):- mostrar(K,K,K).
cicloK3C5(N,I,J,K):- 
					K1 is K+1,
					cicloK3C5(N,I,J,K1).
					
% 6. tablaResultadoPar(n) : Procedimiento que muestra la tabla de 
% multiplicar, tales que el resultado final sea par.

tablaResultadoPar3C:- read(N),cicloI3C6(N,1).

cicloI3C6(N,I):- I>N,!.
cicloI3C6(N,I):- cicloJ3C6(N,I,1),
			  I1 is I+1,
			  cicloI3C6(N,I1).
			  
cicloJ3C6(N,_,J):- J>N,!.
cicloJ3C6(N,I,J):- cicloK3C6(N,I,J,1),
				  J1 is J+1,
				  cicloJ3C6(N,I,J1).
				
cicloK3C6(N,_,_,K):- K>N,!.
cicloK3C6(_,I,J,K):- P is I*J*K, par(P), mostrar(I,J,K).
cicloK3C6(N,I,J,K):-
					K1 is K+1,
					cicloK3C6(N,I,J,K1).

% 7. tablaDosIguales(n) : Procedimiento que muestra la tabla de 
% multiplicar, tales que aparezcan dos factores iguales y uno diferente.

% 8. tablaSinRepeticion(n) : Procedimiento que muestra la tabla de multiplicar
% de n, tales que no se repitan la permutación o conmutatividad de factores.

tablaSinRepeticion3C:- read(N),cicloI3C8(N,1).

cicloI3C8(N,I):- I>N,!.
cicloI3C8(N,I):- cicloJ3C8(N,I,I),
			  I1 is I+1,
			  cicloI3C8(N,I1).
			  
cicloJ3C8(N,_,J):- J>N,!.
cicloJ3C8(N,I,J):- cicloK3C8(N,I,J,J),
				  J1 is J+1,
				  cicloJ3C8(N,I,J1).
				
cicloK3C8(N,_,_,K):- K>N,!.
cicloK3C8(N,I,J,K):- 
				    mostrar(I,J,K),
					K1 is K+1,
					cicloK3C8(N,I,J,K1).