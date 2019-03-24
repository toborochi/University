
hombre(jose).
hombre(raul).
hombre(eduardo).
hombre(esteban).
hombre(cesar).
hombre(jorge).

hombre(pedro).
hombre(nicolas).
hombre(felipe).

mujer(maria).
mujer(lucia).
mujer(ana).
mujer(julia).

mujer(alejandra).
mujer(esther).
mujer(carla).

matr(jose,maria).
matr(eduardo,lucia).
matr(raul,ana).

hombreSimp(jose,maria).
hombreSimp(jose,ana).
hombreSimp(jose,carla).

hombreSimp(raul,julia).
hombreSimp(raul,esther).

hombreSimp(cesar,julia).

hombreSimp(esteban,lucia).

mujerSimp(maria,jose).
mujerSimp(ana,jose).

mujerSimp(julia,cesar).
mujerSimp(julia,jorge).
mujerSimp(julia,eduardo).
mujerSimp(julia,raul).
mujerSimp(julia,esteban).
mujerSimp(julia,nicolas).
mujerSimp(julia,felipe).
mujerSimp(julia,pedro).

% Parejas de matrimonios que se caen simpáticos mutuamente.
mutuoSimp(X,Y):- hombreSimp(X,Y),mujerSimp(Y,X).
matrSimp(X,Y):- matr(X,Y),mutuoSimp(X,Y).

%  Hombres que caen simpáticos solo a mujeres casadas.
hombreNoSimpNomatr(X):- hombreSimp(X,Y),not(matr(_,Y)).
hombreSimpmatr(X):- hombreNoSimpNomatr(X),hombreSimp(X,Y),matr(_,Y).

% Hombres y mujeres que se caen simpáticos mutuamente y que no sean casados.
mutuoSimpSolt(X,Y):- mutuoSimp(X,Y),not(matr(X,_)), not(matr(_,Y)).

% Matrimonio que no es mutuamente simpatico (aka Divorcio?)
posibledivorcio(X,Y):- matr(X,Y),not(mutuoSimp(X,Y)). 
