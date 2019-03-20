% Representacion de Base de Conocimiento de Prolog
% pokemon(N,T,W,H) N: nombre del Pokemon, T: tipo, W: peso, H: altura
% Las unidades estan en pulgadas y libras
pokemon(blastoise, agua, 188.5, 63).
pokemon(charizard, fuego, 199.5, 67).
pokemon(venusaur, planta, 220.5, 79).
pokemon(ninetales, fuego, 43.9, 43).
pokemon(vileplume, planta, 41.0, 47).
pokemon(psyduck, agua, 43.2, 31).
pokemon(arcanine, fuego, 341.7, 75).
pokemon(victreebel, planta, 34.2, 67).
pokemon(tangela, planta, 77.2, 39).
pokemon(seadra, agua, 55.1, 47).
pokemon(seaking, agua, 86.0, 51).
pokemon(magmar, fuego, 98.1, 51).
pokemon(flareon, fuego, 55.1, 35).
pokemon(vaporeon, agua, 63.9, 39).
pokemon(rapidash, fuego, 209.4, 67).

pokemon(Nombre) :- pokemon(Nombre,_,_,_).

% agua(Nombre) significa que el pokemon es de agua
agua(Nombre) :- pokemon(Nombre,agua,_,_).

% fuego(Nombre) significa que el pokemon es de fuego
fuego(Nombre) :- pokemon(Nombre,fuego,_,_).

% planta(Nombre) significa que el pokemon es de planta
planta(Nombre) :- pokemon(Nombre,planta,_,_).

% pesado(Nombre) significa que el pokemon es pesado
pesado(Nombre) :- pokemon(Nombre,_,Peso,_), Peso > 80.

% liviano(Nombre) significa que el pokemon es liviano
liviano(Nombre) :- pokemon(Nombre,_,Peso,_), Peso < 80.

% alto(Nombre) significa que el pokemon es grande
alto(Nombre) :- pokemon(Nombre,_,_,Altura), Altura > 45.

% pequeno(Nombre) significa que el pokemon es pequeno
pequeno(Nombre) :- pokemon(Nombre,_,_,Altura), Altura < 45.