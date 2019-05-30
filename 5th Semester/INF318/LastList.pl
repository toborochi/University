%1 insertPrim
insertPrim([],X,[X]).
insertPrim([X|L],E,[E,X|L]).
%2 insertUlt
insertUlt([],X,[X]).
insertUlt([X|L],E,[X|L2]):- insertUlt(L,E,L2).
%3 insertAsc
insertAsc([],X,[X]).
insertAsc([X|L],Y,[Y,X|L]):- Y<X, !.
insertAsc([X|L],Y,[X|L2]):- insertAsc(L,Y,L2).
%4 insertDesc
insertDesc([],X,[X]).
insertDesc([X|L],Y,[Y,X|L]):-Y>X, !.
insertDesc([X|L],Y,[X|L2]):- insertDesc(L,Y,L2).
%5 insertarIesimo
insertIndex([],X,1,[X]):-!.
insertIndex([X|L],Y,1,[Y,X|L]):-!.
insertIndex([X|L],Y,P,[X|L2]):- P1 is P-1,
insertIndex(L,Y,P1,L2).
%6 eliminarPrim
elimPrim([],[]).
elimPrim([_|L],L).
%7 eliminarUlt
elimUlt([],[]).
elimUlt([_],[]):-!.
elimUlt([X|L],[X|L2]):- elimUlt(L,L2).
%8 eliminarTodoX
elimX([],_,[]):-!.
elimX([X|L],X,L2):- elimX(L,X,L2).
elimX([E|L],X,[E|L2]):- elimX(L,X,L2).
%9 eliminarIesimo
elimIndex([],_,[]).
elimIndex([_|L],1,L):-!.
elimIndex([X|L],P,[X|L2]):- P1 is P-1,
elimIndex(L,P1,L2).
%10 intercalar
intercalar([],[],[]):-!.
intercalar([],L,L):-!.
intercalar(L,[],L):-!.
intercalar([X|L1],[Y|L2],[X,Y|L]):- intercalar(L1,L2,L).
%11 fusionar
fusionar([],[],[]):-!.
fusionar([],L,L):-!.
fusionar(L,[],L):-!.
fusionar([X|L1],L2,[X|L]):- fusionar(L1,L2,L).
%12 separarParImpar
par(A):- A mod 2 =:= 0.
impar(A):- A mod 2 =:= 1.
separarPi([],[],[]):-!.
separarPi([],L,L):-!.
separarPi(L,[],L):-!.
separarPi([X|L1],[Y|L2],[X,Y|L]):- par(X), impar(Y),
separarPi(L1,L2,L).
separarPi([X|L1],[Y|L2],[Y,X|L]):- impar(X), par(Y),
separarPi(L1,L2,L).
separarPi([_|L1],[_|L2],L):- separarPi(L1,L2,L).
%13 separarMenorMayor
sepMenMayX([],_,[],[]):-!.
sepMenMayX([],_,L,L):-!.
sepMenMayX(L,_,[],L):-!.
sepMenMayX([A|L1],X,[B|L2],[A,B|L]):- A=<X, X=<B,
sepMenMayX(L1,X,L2,L).
sepMenMayX([A|L1],X,[B|L2],[B,A|L]):- B=<X, X=<A,
sepMenMayX(L1,X,L2,L).
sepMenMayX([A|L1],X,[B|L2],[A,B|L]):- sepMenMayX(L1,X,L2,L).
%14 reemplazar
reemplazar([],_,_,[]):-!.
reemplazar([X|L],X,Y,[Y|L2]):- reemplazar(L,X,Y,L2).
reemplazar([E|L],X,Y,[E|L2]):- reemplazar(L,X,Y,L2).
%15 interseccion
pertenece([],_):-false.
pertenece([X|_],X):-!.
pertenece([_|L],E):- pertenece(L,E).
interseccion([],[],[]):-!.
interseccion([],_,[]):-!.
interseccion(_,[],[]):-!.
interseccion([X|L1],L2,[X|L]):- pertenece(L2,X),
interseccion(L1,L2,L).
interseccion([_|L1],L2,L):- interseccion(L1,L2,L).
%16 index of
index([],_,-1).
index([X|_],X,1):-!.
index([_|L],E,P):- index(L,E,P1),
P1 > -1,
P is P1+1.
index(_,_,-1).
