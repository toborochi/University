%1 menorX
getX(punto(X,_),X).

men(A,B,A):- A<B, !.
men(_,B,B).

menorX([P],M):- getX(P,M), !.
menorX([P|L],M):- menorX(L,M1),
                  getX(P,M2),
                  men(M1,M2,M).

%2 menorY
getY(punto(_,Y),Y).

menorY([P],M):- getY(P,M).
menorY([P|L], M):- menorY(L,M1),
                   getY(P,M2),
                   men(M1,M2,M).

%3 mayorX
may(A,B,A):-A>B, !.
may(_,B,B).

mayorX([P], M):- getX(P,M).
mayorX([P|L], M):- mayorX(L,M1),
                   getX(P,M2),
                   may(M1,M2,M).

%4 mayorY
mayorY([P],M):- getY(P,M).
mayorY([P|L],M):- mayorY(L,M1),
                  getY(P,M2),
                  may(M1,M2,M).

%5 mismo Lugar
equals(P,P).

mismoLug([]):-!.
mismoLug([_]):-!.
mismoLug([P1,P2|L]):- equals(P1,P2),
                      mismoLug([P2|L]).

%6 puntosDif
belongs([],_):-false.
belongs([P|_],P):-!.
belongs([_|L],P):- belongs(L,P).

puntosDif([]):-!.
puntosDif([P|L]):- not(belongs(L,P)),
                   puntosDif(L).

%7 lineal

cumple(recta(A,B,C),punto(X,Y)):- A*X +B*Y +C =:= 0.

getCoef(punto(X1,Y1),punto(X0,Y0),A,B,C):- A is Y0-Y1,
                                           B is X1-X0,
                                           C is -(A*X0 +B*Y0).

lineal([_]):-!.
lineal([P1,P2|L]):- getCoef(P1,P2,A,B,C),
                    cumple(recta(A,B,C),P1),
                    cumple(recta(A,B,C),P2),
                    lineal([P2|L]).

%8 mismos puntos
contains([],_):-!.
contains(_,[]):-!.
contains([X|L1],L2):- belongs(L2,X),
                      contains(L1,L2).

mismosPuntos(L1,L2):- contains(L1,L2),
                      contains(L2,L1).

%9 distancia
distancia(punto(X,Y),punto(X1,Y1),D):- D is sqrt((X-X1)**2 +(Y-Y1)**2).

distancia([_],0):-!.
distancia([P1,P2|L],D):- distancia(P1,P2,D1),
                         distancia([P2|L],D2),
                         D is D1+D2.

%10 soloEjes
ejeX(punto(_,0)).
ejeY(punto(0,_)).
enEje(P):- ejeX(P); ejeY(P).

soloEjes([]):-!.
soloEjes([P|L]):- enEje(P),
                  soloEjes(L).

%11 ascendente
ascX([_]):-!.
ascX([P1,P2|L]):- getX(P1,A), getX(P2,B),
                  A<B, ascX([P2|L]).

%12 cantidadEjes
masEje(P,1):- enEje(P),!.
masEje(_,0).

cantEje([],0).
cantEje([P|L],C):- cantEje(L,C1),
                   masEje(P,C2),
                   C is C1+C2.

%13 puntosMedios
pm(punto(X,Y),punto(X1,Y1), punto(Xm,Ym)):- Xm is (X+X1)/2,
                                            Ym is (Y+Y1)/2.
puntosMedios([],[]):-!.
puntosMedios([_],[]):-!.
puntosMedios([P1,P2|L], [P|L2]):- pm(P1,P2,P),
                                  puntosMedios([P2|L],L2).

%14 menorDistancia
men(A,B,A):- A<B, !.
men(_,B,B).

distanciaM([P1,P2],D):- distancia(P1,P2,D), !.
distanciaM([P1,P2|L],D):- distancia(P1,P2,D1),
                          distanciaM([P2|L],D2),
                          men(D1,D2,D).

%15 Sea una lista de tramos de viajes de un solo dia

totalViaje([],0).
totalViaje([P],TV):- tiempo(P,TV).
totalViaje([V1,V2|L],TV):- tiempo(V1,V2,T1),
                           totalViaje(L,T2),
                           TV is T1+T2.

tiempo(viaje(X,Y),T):- X < Y,T is Y-X.
tiempo(viaje(X,Y),viaje(X1,Y1),T):- T is (Y-X)+(Y1-X1)+(X1-Y).

validoE(viaje(X,Y)):- X < Y.
validoE(viaje(X,Y),viaje(X1,Y1)):- X<Y, X1<Y1 ,Y<X1.
valido([]).
valido([V]):- validoE(V).
valido([V1,V2|L]):- validoE(V1,V2),
                    valido([V2|L]).

tiempoViaje([],0).
tiempoViaje([P],TV):- tiempo(P,TV).
tiempoViaje([V1|L],TV):- tiempoViaje([V1],T1),
                         tiempoViaje(L,T2),
                         TV is T1+T2.

tiempoEspera([],0):-!.
tiempoEspera([_],0):-!.
tiempoEspera(L,T):- tiempoViaje(L,A),
                    totalViaje(L,B),
                    T is B-A.
%16 lista de tramos de viaje
%a valido
ini(viaje(A,_,_),A).
fin(viaje(_,B,_),B).
tme(viaje(_,_,T),T).
valido([]).
valido([_]).
valido([V1,V2|L]):- ini(V1,B), fin(V2,A),
                    igual(A,B),
                    valido([V2|L]).
%b tiempoViaje
tiempoViaje([],0).
tiempoViaje([V],T):- tme(V,T).
tiempoViaje([V|L],T):- tiempoViaje(L,T1),
                       tme(V,T2),
                       T is T1+T2.
%c tiempoCorto
tpoCorto([V],T):- tme(V,T).
tpoCorto([V1,V2|L],T):- tpoCorto([V2|L],T1),
                        tme(V1,T2),
                        men(T1,T2,T).
%d circuito
circuito(L1):- valido(L1).
%e diferentes
existe(D,viaje(D,_,_)):-!.
existe(D,viaje(_,D,_)).
diferentes([]):- false.
diferentes([V|L]):- ini(V,A),
                    not(belongs(L,A)),
                    diferentes(L).
%f ciclico
ciclico([V|L]):- ini(V,A),
                 cant([V|L],A,C),
                 C>1,
                 ciclico([V|L]).
















