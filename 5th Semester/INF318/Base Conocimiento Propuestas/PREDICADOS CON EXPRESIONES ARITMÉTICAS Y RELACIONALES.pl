% Menor
menor(A,B,Me):- A<B,Me is A,!.
menor(A,B,Me):- B=<A, Me is B.
menor(A,B,C,Me):- menor(A,B,Me1),menor(C,Me1,Me).
menor(A,B,C,D,Me):- menor(A,B,C,Me1),menor(D,Me1,Me).
menor(A,B,C,D,E,Me):- menor(A,B,C,D,Me1),menor(E,Me1,Me).

% Mayor
mayor(A,B,Me):- A>=B,Me is A,!.
mayor(A,B,Me):- B>A,Me is B.
mayor(A,B,C,Me):- mayor(A,B,Me1),mayor(C,Me1,Me).
mayor(A,B,C,D,Me):- mayor(A,B,C,Me1),mayor(D,Me1,Me).
mayor(A,B,C,D,E,Me):- mayor(A,B,C,D,Me1),mayor(E,Me1,Me).

% Segundo Menor
segMenor(A,B,Me):- menor(A,B,Me).
segMenor(A,B,C,Me):- menor(A,B,C,A),menor(B,C,Me),!.
segMenor(A,B,C,Me):- menor(A,B,C,B),menor(A,C,Me),!.
segMenor(A,B,C,Me):- menor(A,B,C,C),menor(A,B,Me).

segMenor(A,B,C,D,Me):- menor(A,B,C,D,A),menor(B,C,D,Me),!.
segMenor(A,B,C,D,Me):- menor(A,B,C,D,B),menor(A,C,D,Me),!.
segMenor(A,B,C,D,Me):- menor(A,B,C,D,C),menor(A,B,D,Me),!.
segMenor(A,B,C,D,Me):- menor(A,B,C,D,D),menor(A,B,C,Me).

segMenor(A,B,C,D,E,Me):- menor(A,B,C,D,E,A),menor(B,C,D,E,Me),!.
segMenor(A,B,C,D,E,Me):- menor(A,B,C,D,E,B),menor(A,C,D,E,Me),!.
segMenor(A,B,C,D,E,Me):- menor(A,B,C,D,E,C),menor(A,B,D,E,Me),!.
segMenor(A,B,C,D,E,Me):- menor(A,B,C,D,E,D),menor(A,B,C,E,Me),!.
segMenor(A,B,C,D,E,Me):- menor(A,B,C,D,E,E),menor(A,B,C,D,Me).

% Segundo Mayor

segMayor(A,B,Me):- mayor(A,B,Me).
segMayor(A,B,C,Me):- mayor(A,B,C,A),mayor(B,C,Me),!.
segMayor(A,B,C,Me):- mayor(A,B,C,B),mayor(A,C,Me),!.
segMayor(A,B,C,Me):- mayor(A,B,C,C),mayor(A,B,Me).

segMayor(A,B,C,D,Me):- mayor(A,B,C,D,A),mayor(B,C,D,Me),!.
segMayor(A,B,C,D,Me):- mayor(A,B,C,D,B),mayor(A,C,D,Me),!.
segMayor(A,B,C,D,Me):- mayor(A,B,C,D,C),mayor(A,B,D,Me),!.
segMayor(A,B,C,D,Me):- mayor(A,B,C,D,D),mayor(A,B,C,Me).

segMayor(A,B,C,D,E,Me):- mayor(A,B,C,D,E,A),mayor(B,C,D,E,Me),!.
segMayor(A,B,C,D,E,Me):- mayor(A,B,C,D,E,B),mayor(A,C,D,E,Me),!.
segMayor(A,B,C,D,E,Me):- mayor(A,B,C,D,E,C),mayor(A,B,D,E,Me),!.
segMayor(A,B,C,D,E,Me):- mayor(A,B,C,D,E,D),mayor(A,B,C,E,Me),!.
segMayor(A,B,C,D,E,Me):- mayor(A,B,C,D,E,E),mayor(A,B,C,D,Me).

% Tercer Menor

tercerMenor(A,B,C,Me):- segMenor(A,B,C,A),segMenor(B,C,Me),!.
tercerMenor(A,B,C,Me):- segMenor(A,B,C,B),segMenor(A,C,Me),!.
tercerMenor(A,B,C,Me):- segMenor(A,B,C,C),segMenor(A,B,Me).

tercerMenor(A,B,C,D,Me):- segMenor(A,B,C,D,A),segMenor(B,C,D,Me),!.
tercerMenor(A,B,C,D,Me):- segMenor(A,B,C,D,B),segMenor(A,C,D,Me),!.
tercerMenor(A,B,C,D,Me):- segMenor(A,B,C,D,C),segMenor(A,B,D,Me),!.
tercerMenor(A,B,C,D,Me):- segMenor(A,B,C,D,D),segMenor(A,B,C,Me).

tercerMenor(A,B,C,D,E,Me):- segMenor(A,B,C,D,E,A),segMenor(B,C,D,E,Me),!.
tercerMenor(A,B,C,D,E,Me):- segMenor(A,B,C,D,E,B),segMenor(A,C,D,E,Me),!.
tercerMenor(A,B,C,D,E,Me):- segMenor(A,B,C,D,E,C),segMenor(A,B,D,E,Me),!.
tercerMenor(A,B,C,D,E,Me):- segMenor(A,B,C,D,E,D),segMenor(A,B,C,E,Me),!.
tercerMenor(A,B,C,D,E,Me):- segMenor(A,B,C,D,E,E),segMenor(A,B,C,D,Me).

% Tercer Mayor

tercerMayor(A,B,C,Me):- segMayor(A,B,C,A),segMayor(B,C,Me),!.
tercerMayor(A,B,C,Me):- segMayor(A,B,C,B),segMayor(A,C,Me),!.
tercerMayor(A,B,C,Me):- segMayor(A,B,C,C),segMayor(A,B,Me).

tercerMayor(A,B,C,D,Me):- segMayor(A,B,C,D,A),segMayor(B,C,D,Me),!.
tercerMayor(A,B,C,D,Me):- segMayor(A,B,C,D,B),segMayor(A,C,D,Me),!.
tercerMayor(A,B,C,D,Me):- segMayor(A,B,C,D,C),segMayor(A,B,D,Me),!.
tercerMayor(A,B,C,D,Me):- segMayor(A,B,C,D,D),segMayor(A,B,C,Me).

tercerMayor(A,B,C,D,E,Me):- segMayor(A,B,C,D,E,A),segMayor(B,C,D,E,Me),!.
tercerMayor(A,B,C,D,E,Me):- segMayor(A,B,C,D,E,B),segMayor(A,C,D,E,Me),!.
tercerMayor(A,B,C,D,E,Me):- segMayor(A,B,C,D,E,C),segMayor(A,B,D,E,Me),!.
tercerMayor(A,B,C,D,E,Me):- segMayor(A,B,C,D,E,D),segMayor(A,B,C,E,Me),!.
tercerMayor(A,B,C,D,E,Me):- segMayor(A,B,C,D,E,E),segMayor(A,B,C,D,Me).

% Iguales

iguales(A,A).
iguales(A,A,A).
iguales(A,A,A,A).
iguales(A,A,A,A,A).

% Diferentes

diferentes(A,B):-not(iguales(A,B)).
diferentes(A,B,C):- A\=B,B\=C,A\=C.
diferentes(A,B,C,D):- A\=B,A\=C,A\=D,B\=C,B\=D,C\=D.
diferentes(A,B,C,D):- A\=B,A\=C,A\=D,B\=C,B\=D,C\=D.
diferentes(A,B,C,D,E):- A\=B,A\=C,A\=D,A\=E,B\=C,B\=D,B\=E,C\=D,C\=E,D\=E.

% Dos iguales

dosIguales(A, A).
dosIguales(A, B, C):- dosIguales(A,B),A\=C,!.
dosIguales(A, B, C):- dosIguales(A,C),A\=B,!.
dosIguales(A, B, C):- dosIguales(B,C),B\=C.

dosIguales(A, B, C, D):- dosIguales(A,B,C),A\=D,!.
dosIguales(A, B, C, D):- dosIguales(A,B,D),A\=C,!.
dosIguales(A, B, C, D):- dosIguales(A,C,D),A\=B,!.
dosIguales(A, B, C, D):- dosIguales(B,C,D),B\=A.

dosIguales(A, B, C, D, E):- dosIguales(A,B,C,D),A\=E,!.
dosIguales(A, B, C, D, E):- dosIguales(A,B,C,E),A\=D,!.
dosIguales(A, B, C, D, E):- dosIguales(A,B,D,E),A\=C,!.
dosIguales(A, B, C, D, E):- dosIguales(A,C,D,E),A\=B,!.
dosIguales(A, B, C, D, E):- dosIguales(B,C,D,E),B\=A.

% Tres iguales

tresIguales(A, A, A).
tresIguales(A, B, C, D):- tresIguales(A,B,C),A\=D,!.
tresIguales(A, B, C, D):- tresIguales(A,B,D),A\=C,!.
tresIguales(A, B, C, D):- tresIguales(A,C,D),A\=B,!.
tresIguales(A, B, C, D):- tresIguales(B,C,D),D\=A.

tresIguales(A, B, C, D, E):-tresIguales(A,B,C,D),A\=E,!.
tresIguales(A, B, C, D, E):-tresIguales(A,B,C,E),A\=D,!.
tresIguales(A, B, C, D, E):-tresIguales(A,B,D,E),A\=C,!.
tresIguales(A, B, C, D, E):-tresIguales(A,C,D,E),A\=B,!.
tresIguales(A, B, C, D, E):-tresIguales(B,C,D,E),B\=A.

% Auxiliares, par & impar

par(N):- N mod 2 =:= 0.      
impar(N):- N mod 2 =:= 1.      

% Dos pares

dosPares(A,B):-par(A),par(B).

dosPares(A, B, C):- dosPares(A,B),impar(C),!.
dosPares(A, B, C):- dosPares(A,C),impar(B),!.
dosPares(A, B, C):- dosPares(B,C),impar(A).

dosPares(A, B, C, D):- dosPares(A,B,C),impar(D),!.
dosPares(A, B, C, D):- dosPares(A,B,D),impar(C),!.
dosPares(A, B, C, D):- dosPares(A,C,D),impar(B),!.
dosPares(A, B, C, D):- dosPares(B,C,D),impar(A).

dosPares(A, B, C, D, E):- dosPares(A,B,C,D),impar(E),!.
dosPares(A, B, C, D, E):- dosPares(A,B,C,E),impar(D),!.
dosPares(A, B, C, D, E):- dosPares(A,B,D,E),impar(C),!.
dosPares(A, B, C, D, E):- dosPares(A,C,D,E),impar(B),!.
dosPares(A, B, C, D, E):- dosPares(B,C,D,E),impar(A).

% tres pares

tresPares(A,B,C):-todosPares(A,B,C).

tresPares(A, B, C, D):- tresPares(A,B,C),impar(D),!.
tresPares(A, B, C, D):- tresPares(A,B,D),impar(C),!.
tresPares(A, B, C, D):- tresPares(A,C,D),impar(B),!.
tresPares(A, B, C, D):- tresPares(B,C,D),impar(A),!.


tresPares(A, B, C, D, E):-tresPares(A,B,C,D),impar(E),!.
tresPares(A, B, C, D, E):-tresPares(A,B,C,E),impar(D),!.
tresPares(A, B, C, D, E):-tresPares(A,B,D,E),impar(C),!.
tresPares(A, B, C, D, E):-tresPares(A,C,D,E),impar(B),!.
tresPares(A, B, C, D, E):-tresPares(B,C,D,E),impar(A).

% todos pares

todosPares(A,B):- dosPares(A,B).
todosPares(A,B,C):- dosPares(A,B),par(C).
todosPares(A,B,C,D):- dosPares(A,B),dosPares(C,D).
todosPares(A,B,C,D,E):- dosPares(A,B),dosPares(C,D),par(E).

% Existe Par

existePar(A,B):-par(A);par(B).
existePar(A,B,C):-existePar(A,B);par(C).
existePar(A,B,C,D):-existePar(A,B,C);par(D).
existePar(A,B,C,D,E):-existePar(A,B,C,D);par(E).

% Existe ImPar

existeImpar(A,B):- not(par(A));not(par(B)).
existeImpar(A,B,C):-existeImpar(A,B);not(par(C)).
existeImpar(A,B,C,D):-existeImpar(A,B,C);not(par(D)).
existeImpar(A,B,C,D,E):-existeImpar(A,B,C,D);not(par(E)).

% Mayor Diferencia

mayorDif(A,B,My):- mayor(A,B,X),menor(A,B,Y),My is X-Y.
mayorDif(A,B,C,My):- mayor(A,B,C,X),menor(A,B,C,Y), My is X-Y.
mayorDif(A,B,C,D,My):- mayor(A,B,C,D,X),menor(A,B,C,D,Y), My is X-Y.
mayorDif(A,B,C,D,E,My):- mayor(A,B,C,D,E,X),menor(A,B,C,D,E,Y), My is X-Y.

% parImpar

parImpar(A,B):- existePar(A,B),existeImpar(A,B).
parImpar(A,B,C):- existePar(A,B,C),existeImpar(A,B,C).
parImpar(A,B,C,D):- existePar(A,B,C,D),existeImpar(A,B,C,D).
parImpar(A,B,C,D,E):- existePar(A,B,C,D,E),existeImpar(A,B,C,D,E).
