mostrar(I,J):- write(I),write("x"),write(J),P is I*J, write("="),write(P),nl.
mostrar3(I,J,K):- write(I),write("x"),write(J),write("x"),write(K),P is I*J*K, write("="),write(P),nl.

%tabla 
tabla(N):- tabla(N,1).

tabla(N,I):- I>N,!.
tabla(N,I):- I1 is I+1,
			 cj(N,I,1),
			 tabla(N,I1).
			 
cj(N,_,J):- J>N,!.
cj(N,I,J):- J1 is J+1,
			mostrar(I,J),
			cj(N,I,J1).
			
% tabla Ascendiente Descendiente
tablaAscDesc(N):- tablaAscDesc(N,1).

tablaAscDesc(N,I):- I>N,!.
tablaAscDesc(N,I):- I1 is I+1,
			 cj2(N,I,N),
			 tablaAscDesc(N,I1).
			 
cj2(_,_,J):- J<1,!.
cj2(N,I,J):- J1 is J-1,
			 mostrar(I,J),
			cj2(N,I,J1).
% tabla Pares			
tablaPares(N):- tablaPares(N,2).

tablaPares(N,I):- I>N,!.
tablaPares(N,I):- I1 is I+2,
			 cj3(N,I,2),
			 tablaPares(N,I1).
			 
cj3(N,_,J):- J>N,!.
cj3(N,I,J):- J1 is J+2,
			mostrar(I,J),
			cj3(N,I,J1).
			
% tabla de 3 argumentos
tabla3(N):- tabla3(N,1).

tabla3(N,I):- I>N,!.
tabla3(N,I):- I1 is I+1,
			 cj4(N,I,1),
			 tabla3(N,I1).
			 
cj4(N,_,J):- J>N,!.
cj4(N,I,J):- J1 is J+1,
			ck4(N,I,J,1),
			cj4(N,I,J1).
			
ck4(N,_,_,K):- K>N,!.
ck4(N,I,J,K):- K1 is K+1,
			mostrar3(I,J,K),
			 ck4(N,I,J,K1).

% tabla sin rep

						  
tablaSinRep(N):- tablaSinRep(N,1).

tablaSinRep(N,I):- I>N,!.
tablaSinRep(N,I):- I1 is I+1,
			 cj5(N,I,I),
			 tablaSinRep(N,I1).
			 
cj5(N,_,J):- J>N,!.
cj5(N,I,J):- J1 is J+1,
			ck5(N,I,J,J),
			cj5(N,I,J1).
			
ck5(N,_,_,K):- K>N,!.
ck5(N,I,J,K):- K1 is K+1,
			mostrar3(I,J,K),
			 ck5(N,I,J,K1).