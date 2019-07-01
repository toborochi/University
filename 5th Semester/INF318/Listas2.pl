% Inserta en la primera posicion
insertarPrim([],X,[X]).
insertarPrim(L1,X,[X|L1]).

% Inserta en la ultima posicion
insertarUlt([],X,[X]).
insertarUlt([X|L1],Y,[X|L2]):- insertarUlt(L1,Y,L2).

% Elimina el dato en la primera posicion
eliminarPrim([_],[]).
eliminarPrim([_|L1],L1).

% Elimina el dato en la ultima posicion
eliminarUlt([],[]).
eliminarUlt([_],[]):-!.
eliminarUlt([X|L1],[X|L2]):- eliminarUlt(L1,L2).

% Eliminar Index
eliminarIndex([],_,[]).
eliminarIndex([_|L],1,L):-!.
eliminarIndex([X|L1],P,[X|L2]):- P1 is P-1,eliminarIndex(L1,P1,L2).


getX(punto(X,_),X).
getX(punto(_,Y),Y).

menor(A,B,A):- A<B,!.
menor(_,B,B).

mayor(A,B,A):- A>B,!.
mayor(_,B,B).

distanciaPP(punto(X1,Y1),punto(X2,Y2),D):- D is sqrt((X2-X1)**2 + (Y2-Y1)**2).

% Elemento con el menor X
menorX([P],R):- getX(P,R),!.
menorX([P|L],R):- menorX(L,R1),
				  getX(P,R2),
				  menor(R1,R2,R).
			
% Elemento con la mayor Y			
mayorY([P],R):- getY(P,R),!.
mayorY([P|L],R):- mayorY(L,R1),
				  getY(P,R2),
				  mayor(R1,R2,R).
				  
% Distancia entre todos los puntos
distancia([_],0).
distancia([P1,P2|L],D):- distanciaPP(P1,P2,D1),distancia([P2|L],D2),D is D1+D2.

%  Menor Distancia entre dos elementos adyacentes
distanciaMenor([P1,P2],D):- distanciaPP(P1,P2,D),!.
distanciaMenor([P1,P2|L],D):- distanciaPP(P1,P2,D1),distanciaMenor([P2|L],D2), menor(D1,D2,D).

% Si todos los puntos estan en los ejes
ejeX(punto(_,0)).
ejeY(punto(0,_)).

enEje(P):- ejeX(P);ejeY(P).

soloEjes([]):-!.
soloEjes([P|L]):- enEje(P),
				  soloEjes(L).
          
% Concatenar dos Listas
concatenar([], L, L):-!.
concatenar([X|L1], L2, [X|L3]):- concatenar(L1,L2,L3).

% Invertir
invertir([],[]):-!.
invertir([X|L],L2):- invertir(L,L3),
				     concatenar(L3,[X],L2).
					 
% Generar de 1 a N
genSecuencia(0,[]):-!.
genSecuencia(N,L):- N1 is N-1,
					genSecuencia(N1, L2),
					concatenar(L2,[N],L).

% Palindrome
igual(A,A).
palindrome(L):- invertir(L,L2),igual(L,L2).


% Se encuentra
seEncuentra(L1,X):- concatenar(_,[X|_],L1).

