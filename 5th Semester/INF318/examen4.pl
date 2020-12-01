% FUNCTORES

% Distancia entre todos los puntos
distanciapp(punto(X1,Y1),punto(X2,Y2),Distancia):- Distancia is sqrt((X1-X2)**2 +(Y1-Y2)**2).

distancia([_],0):-!.
distancia([P1,P2|L],R):- distanciapp(P1,P2,R1),
						 distancia([P2|L],R2),
						 R is R1+R2.

% MenorX

menor(A,B,A):- A<B,!.
menor(_,B,B).

getX(punto(X,_),X).

menorX([],0):-!.
menorX([P],X):-getX(P,X).
menorX([P1,P2|L],R):- getX(P1,A),
					 getX(P2,B),
					 menor(A,B,C),
					 menorX([P2|L],D),
					 menor(C,D,RE),
					 R is RE.

% MayorX

mayor(A,B,A):- A>B,!.
mayor(_,B,B).


mayorX([],0):-!.
mayorX([P],X):-getX(P,X).
mayorX([P1,P2|L],R):- getX(P1,A),
					 getX(P2,B),
					 mayor(A,B,C),
					 mayorX([P2|L],D),
					 mayor(C,D,RE),
					 R is RE.

					 
% MenorY

getY(punto(_,Y),Y).

menorY([],0):-!.
menorY([P],X):-getX(P,X).
menorY([P1,P2|L],R):- getY(P1,A),
					 getY(P2,B),
					 menor(A,B,C),
					 menorY([P2|L],D),
					 menor(C,D,RE),
					 R is RE.

% MayorY


mayorY([],0):-!.
mayorY([P],X):-getY(P,X).
mayorY([P1,P2|L],R):- getY(P1,A),
					 getY(P2,B),
					 mayor(A,B,C),
					 mayorY([P2|L],D),
					 mayor(C,D,RE),
					 R is RE.

% INSERCION
					 
% Insertar Primero
insertarPrim([],X,[X]).
insertarPrim(L,X,[X|L]).

% Insertar Ascendente
insertarAsc([],X,[X]).
insertarAsc([X|L],Y,[Y,X|L]):- Y<X,!.
insertarAsc([X|L],Y,[Y,X|L]):- insertarAsc(L,Y,[X|L]).

%  Insertar Ultimo
insertarUlt([],Y,[Y]).
insertarUlt([X|L],Y,L2):- insertarUlt(L,Y,[X|L2]).

% Eliminar Primero
eliminarPrim([_],[]).
eliminarPrim([_|L],L).

% Eliminar Ultimo
eliminarUlt([_],[]):-!.
eliminarUlt([X|L1],L2):-eliminarUlt(L1,[X|L2]).

% Concatenar
concatenar([],[],[]):-!.
concatenar([E],_,[E]):-!.
concatenar(_,[E],[E]):-!.
