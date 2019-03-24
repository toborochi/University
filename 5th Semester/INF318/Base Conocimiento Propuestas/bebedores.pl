% Integrantes
% - Jaisser J. Sanguino Vaca
% - Leonardo Henry Anez Vladimirovna

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

cerveza(heineken).
cerveza(pacenya).
cerveza(cordillera).
cerveza(prost).
cerveza(beck).

bar(caminito).
bar(vicecity).
bar(bourton).
bar(abc).

bebedor(eduardo).
bebedor(esteban).
bebedor(cesar).
bebedor(lucia).
bebedor(ana).
bebedor(carla).
bebedor(esther).

gusta(eduardo, heineken).
gusta(eduardo, cordillera).
gusta(eduardo, prost).
gusta(eduardo, beck).
gusta(ana, pacenya).
gusta(lucia,prost).
gusta(lucia,beck).
gusta(cesar, heineken).
gusta(carla, cordillera).

sirve(caminito,heineken).
sirve(caminito,pacenya).
sirve(caminito,cordillera).
sirve(vicecity, prost).
sirve(vicecity, beck).
sirve(bourton, cordillera).

frec(eduardo, caminito).
frec(eduardo, vicecity).
frec(eduardo, bourton).
frec(ana, caminito).
frec(esteban, bourton).
frec(cesar, vicecity).
frec(cesar, caminito).
frec(lucia, caminito).
frec(alejandra, caminito).
frec(alejandra, abc).

persona(X):- hombre(X);mujer(X).
nofrec(X):-hombre(X), not(frec(X,_)).
nogusta(X):- persona(X),not(gusta(X,_)). 
frecgusta(X):- bebedor(X), gusta(X,Y), frec(X,Z), sirve(Z,Y).
nosirve(X,Y):- cerveza(Y),not(sirve(X,Y)).
nofrecbbdor(X,Y):- bebedor(X),bar(Y),not(frec(X,Y)).
% frecuenta un bar sin ser bebedor
notbbdorfrec(X):- frec(X,_), not(bebedor(X)).
% frecuenta un bar y e bebedor
bbdorfrec(X):- frec(X,_), bebedor(X).
% frecuenta un bar en donde no sirven una que le gusta
frecnogusta(X):-persona(X), frec(X,Y), gusta(X,Z), not(sirve(Y,Z)).
% mujeres que no son bebedoras.
mujernobb(X):-mujer(X), not(bebedor(X)).