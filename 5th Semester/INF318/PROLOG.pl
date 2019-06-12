% 1. Concatenar
concatenar([],L2,L2).
concatenar([X|L1],L2,[X|L3]):- concatenar(L1,L2,L3).

% 2. Insertar Ultimo
insertarUlt(L1,X,L2):-concatenar(L1,[X],L2).

% 3. Eliminar Ultimo
eliminarUlt(L1,L2):-concatenar(L2,[_],L1).

% 4. Se Encuentra
seEncuentra(L1,X):-concatenar(_,[X|_],L1).

% 5. Invertir
invertir([],[]).
invertir(A,A).
invertir([X|L1],[X|L2]):-concatenar(L1,[X|L2]).

% 6.  insertar Lugar
insertarLugar(L1,X,L2):- insertAsc(L1,X,L2).

% 7. ordenar
ordenar([],[]).
ordenar([X],[X]).
ordenar([X|L1],L2):- ordenar(L1,L2), insertAsc(L1,X,L2).

% 8. generarSecuencia
generarSecuencia(0,[]). 
generarSecuencia(N,[N|L]):- N1 is N-1,generarSecuencia(N1,L). 

% 9. generar Ascendente
generarAsc([],0,_,_). 
generarAsc(L1,N,I,K):- I1 is I+K,N1 is N-1,generarAsc([I|L1],N1,I1,K). 

% 10. generar Descendente
generarDesc([],0,_,_). 
generarDesc(L1,N,I,K):- I1 is I-K,N1 is N-1,generarDesc([I|L1],N1,I1,K). 
 
% 11. Generar Factoriales
generarFact([1],0).
generarFact([1,1],1).
generarFact([X|L1],N):-F1 is N*X, N1 is N-1,generarFact([F1|L1],N1).  

% 12. Generar Fibonacci
generarFibo([1],1).
generarFibo([1,1],2).
generarFibo([X|L1],N):-F1 is N+X, N1 is N-1,generarFibo([F1|L1],N1). 

% 13. palindrome
palindrome(L1):- invertir(L1,L2), L1=:=L2.

% 14. mezcla
mezcla(L,[],L).
mezcla([],L,L).
mezcla([X|L1],[Y|L2],[X,Y|L3]):-  X<Y, mezcla(L1,,L2,[X,Y|L3]).
mezcla([X|L1],[Y|L2],[X,Y|L3]):-  mezcla(L1,,L2,[Y,X|L3]).

insertAsc([], X, [X]).
insertAsc([X|L], Y, [Y,X|L]):- Y < X, !.
insertAsc([X|L], Y, [X|L2]):- insertAsc(L, Y, L2).
