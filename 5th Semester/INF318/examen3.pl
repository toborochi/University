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