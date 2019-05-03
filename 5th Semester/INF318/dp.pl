tabla:- read(N),
		  cicloI(N,1).
		  
cicloI(N,I):- I>N,!.
cicloI(N,I):- cicloJ(N,I,1),
			  I1 is I+1,
			  cicloI(N,I1).

			  
cicloJ(N,_,J):- J>N,!.
cicloJ(N,I,J):- mostrar(I,J),
			    J1 is J+1,
				cicloJ(N,I,J1).

mostrar(I,J):- write(I), write("x"), write(J),write("="),P is J*I,write(P),nl.


tablaAscDesc:- read(N),
		  cicloI(N,1).
		  
cicloI(N,I):- I>N,!.
cicloI(N,I):- cicloJ(1,I,N),
			  I1 is I+1,
			  cicloI(N,I1).

			  
cicloJ(N,_,J):- J<N,!.
cicloJ(N,I,J):- mostrar(I,J),
			    J1 is J-1,
				cicloJ(N,I,J1).

tablaPares:- read(N),
		  cicloI(N,2).
		  
cicloI(N,I):- I>N,!.
cicloI(N,I):- cicloJ(N,I,2),
			  I1 is I+2,
			  cicloI(N,I1).

			  
cicloJ(N,_,J):- J>N,!.
cicloJ(N,I,J):- mostrar(I,J),
			    J1 is J+2,
				cicloJ(N,I,J1).



tablaParImpar:- read(N),
		  cicloI(N,2).
		  
cicloI(N,I):- I>N,!.
cicloI(N,I):- cicloJ(N,I,1),
			  I1 is I+2,
			  cicloI(N,I1).

			  
cicloJ(N,_,J):- J>N,!.
cicloJ(N,I,J):- mostrar(I,J),
			    J1 is J+2,
				cicloJ(N,I,J1).


tablaIguales:- read(N),
		  cicloI(N,1).
		  
cicloI(N,I):- I>N,!.
cicloI(N,I):- cicloJ(N,I,1),
			  I1 is I+1,
			  cicloI(N,I1).

			  
cicloJ(N,_,J):- J>N,!.
cicloJ(_,J,J):- mostrar(J,J).
cicloJ(N,I,J):- J1 is J+1,
				cicloJ(N,I,J1).
				
				
tablaIguales:- read(N),
		  cicloI(N,1).
		  
cicloI(N,I):- I>N,!.
cicloI(N,I):- mostrar(I,I),
			  I1 is I+1,
			  cicloI(N,I1).
			  
			  
tablaResultadoPrimo:- read(N),
		  cicloI(N,2).
		  
cicloI(N,I):- I>N,!.
cicloI(N,I):- cicloJ(N,I,1),
			  I1 is I+1,
			  cicloI(N,I1).

			  
cicloJ(N,_,J):- J>N,!.
cicloJ(_,I,J):- P is I*J , primo(P), mostrar(I,J).
cicloJ(N,I,J):- J1 is J+1,
				cicloJ(N,I,J1).



primo(N):- primo(N,2).
primo(N,I):- I > N // 2.
primo(N,I):- N mod I =\= 0,
		     I1 is I+1,
			 primo(N,I1).
			 
			 
			
tablaSinRepeticion:- read(N),
		  cicloI(N,1).
		  
cicloI(N,I):- I>N,!.
cicloI(N,I):- cicloJ(N,I,I),
			  I1 is I+1,
			  cicloI(N,I1).

			  
cicloJ(N,_,J):- J>N,!.
cicloJ(N,I,J):- mostrar(I,J),
			    J1 is J+1,
				cicloJ(N,I,J1).

tablaFactoresPrimos:- read(N),
		  cicloI(N,2).
		  
cicloI(N,I):- I>N,!.
cicloI(N,I):- cicloJ(N,I,2),
			  I1 is I+1,
			  cicloI(N,I1).

			  
cicloJ(N,_,J):- J>N,!.
cicloJ(_,I,J):- primo(I),primo(J),mostrar(I,J).
cicloJ(N,I,J):- 
				J1 is J+1,
				cicloJ(N,I,J1).
				