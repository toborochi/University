
% LABORATORIO #2. EL PROBLEMA DE LAS FAMILIAS
% Integrantes:
%	Añez Vladimirovna Leonardo Henry
%	Pedro Luis Caricari Torrejon
%	Gerson Oliva Rojas
%	Erick Edwing Vidal
% Porcentaje Completado: 100%

% Hechos
hombre(jose).
hombre(eduardo).
hombre(jorge).
hombre(raul).
hombre(esteban).
hombre(cesar).
hombre(jorge).

mujer(maria).
mujer(lucia).
mujer(julia).
mujer(ana).

matr(eduardo,lucia).
matr(jose,maria).
matr(raul,ana).

madre(maria,lucia).
madre(maria,raul).
madre(lucia,cesar).
madre(lucia,esteban).
madre(ana,julia).
madre(ana,jorge).

% 1.-Padre
padre(X,Y):- madre(Z,Y),matr(X,Z).

% 2.-Abuela
abuela(X,Y):- madre(Z,Y),madre(X,Z);padre(Z,Y),madre(X,Z).

% 3.-Abuelo
abuelo(X,Y):- abuela(Z,Y),matr(X,Z).

% 4.-Si es una persona
persona(X):-hombre(X);mujer(X).

% 5.-Hermanos
hermanos(X,Y):- madre(Z,X),madre(Z,Y).

% 6.-Tia
tia(X,Y):- hermanos(X,Z), (madre(Z,Y); padre(Z,Y)).

% 7.-Tio
tio(X,Y):- matr(X,Z),tia(Z,Y).

% 8.-Bisabuela
bisabuela(X,Y):- madre(X,Z),abuela(Z,Y).

% 9.-Bisabuelo
bisabuelo(X,Y):- matr(X,Z),bisabuela(Z,Y).

% 10.-Hijo
hijo(X,Y):- padre(Y,X).

% 11.-hija
hija(X,Y):-madre(Y,X);padre(Y,X),mujer(X).

% 12.-nieto
nieto(X,Y):-abuela(Y,X);abuelo(Y,X),hombre(X).

% 13.-nieta
nieta(X,Y):-abuela(Y,X);abuelo(Y,X),mujer(X).

% 14.-suegra
suegra(X,Y):-matr(Y,Z),madre(X,Z).

% 15.-suegro
suegro(X,Y) :-matr(X,Z), suegra(Z,Y).

% 16.-HijoUnico
hijounico(X) :- not(hermanos(X,Z)).

% 17.-sobrino
sobrino(X,Y):-tio(Y,X).

% 18.-primo
primo(X,Y):-madre(Z,X),hermanos(Z,K),padre(K,Y);madre(Z,X),hermanos(Z,K),madre(K,Y);
padre(Z,X),hermanos(Z,K),padre(K,Y);padre(Z,X),hermanos(Z,K),madre(K,Y).

% 19.-nuera
nuera(X,Y):-matr(Z,X), madre(Y,Z).

% 20.- nuero
nuero(X,Y):-matr(X,Z), madre(Y,Z).
