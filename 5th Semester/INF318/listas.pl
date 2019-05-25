% 1. Menor
menor([X],X).
menor([X|L],Menor):- menor(L,Menor1),
					 menor(X,Menor1,Menor).
					 
menor(A,B,A):- A<B,!.
menor(_,B,B).


% 3. Se encuentra
seEncuentra([X|_],X).
seEncuentra([X|L],X):-iguales([X,L]).


% 5. Suma
suma([],0).
suma([X|L],Suma):- suma(L,Suma1),
				   Suma is Suma1+X.
				   
% 7. Ordenado
ordenado(L):- ordenadoAsc(L);ordenadoDesc(L).

		   
ordenadoAsc([]) .
ordenadoAsc([_]) .
ordenadoAsc([X,Y|L]):- X =< Y ,ordenadoAsc([Y|L]).
					   
		   
ordenadoDesc([]) .
ordenadoDesc([_]) .
ordenadoDesc([X,Y|L]):- X >= Y ,ordenadoDesc([Y|L]).

% 9. Iguales
iguales([]).
iguales([_]).
iguales([X,X|L]):-iguales([X|L]).

% 11. puroPares
puroPares([]).
puroPares([X]):- par(X).
puroPares([X|L]):-  par(X),
					puroPares(L).

par(X):- Mod is (X mod 2),Mod=:=0.
impar(X):- not(par(X)).

% 13. puroImpares
puroImpares([]).
puroImpares([X]):- impar(X).
puroImpares([X|L]):- impar(X),
					puroImpares(L).

% 15. existeImpar
existeImpar(X):- not(puroPares(X)).

% 17. ascendenteK

ascendenteK([],_) .
ascendenteK([_],_) .
ascendenteK([X,Y|L],K):- (X+K) =:= Y, ascendenteK([Y|L],K).

% 19. disjuntos

disjuntos(L1,L2):- not(subconjunto(L1,L2)),not(subconjunto(L2,L1)).

pertenece([X|_],X).
pertenece([_|L1],Y):- pertenece(L1,Y).

subconjunto([],_).
subconjunto([X|L1],L2):- pertenece(X,L2),
			 subconjunto(L1,L2).