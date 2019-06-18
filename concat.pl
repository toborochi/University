%1 concatenar
concat([], L, L):-!.
concat([X|L1], L2, [X|L3]):- concat(L1,L2,L3).

%2 insertar ultimo
insertUlt(L1, X, L2):- concat(L1,[X],L2).

%3 eliminar ultimo
eliminarUlt(L1,L2):- concat(L2,[_],L1).

%4 seEncuentra
seEncuentra(L1,X):- concat(_,[X|_],L1).

%5 Invertir
invert([],[]):-!.
invert([X|L],L2):- invert(L,L3),
                   concat(L3,[X],L2).
%6 insertar Lugar
insertOrd([],X,[X]).
insertOrd([A|L],X,[X,A|L]):- X<A, !.
insertOrd([A|L],X,[A|L2]):- insertOrd(L,X,L2).

%7 ordenar lista
sortList([],[]):-!.
sortList([A|L],L2):- sortList(L,L3),
                     insertOrd(L3,A,L2).
%8 generar Secuencia
genSec(0,[]):-!.
genSec(N,L):- N1 is N-1,
              genSec(N1, L2),
              concat(L2,[N],L).

%9 generarAsc
genAsc([],0,_,_):-!.
genAsc([I|L],N,I,K):- N1 is N-1,
                      I1 is I+K,
                      genAsc(L,N1,I1,K).

%10 generarDesc
genDesc([],0,_,_):-!.
genDesc([I|L],N,I,K):- N1 is N-1,
                       I1 is I-K,
                       genDesc(L,N1,I1,K).

%11 generarFact
fact(N,1):- N<2, !.
fact(N,F):- N1 is N-1,
            fact(N1,F1),
            F is N*F1.

genFact([],-1):-!.
genFact(L,N):- fact(N,F),
               N1 is N-1,
               genFact(L2,N1),
               concat(L2,[F],L).

%12 generarFibo
fibo(N,1):- N<3, !.
fibo(N,T):- N1 is N-1, N2 is N-2,
            fibo(N1,T1), fibo(N2,T2),
            T is T1+T2.

genFibo([],0):-!.
genFibo(L,N):- fibo(N,F),
               N1 is N-1,
               genFibo(L2,N1),
               concat(L2,[F],L).

%13 palindrome
equals(A,A).
palindrome(L):- invert(L,L2),
                equals(L,L2).

%14 mezcla
merge([],L,L3):- sortList(L,L3), !.
merge(L,[],L3):- sortList(L,L3), !.
merge([A|L1],[B|L2],L3):- merge(L1,L2,L4),
                          insertOrd(L4,A,L5),
                          insertOrd(L5,B,L3).






























