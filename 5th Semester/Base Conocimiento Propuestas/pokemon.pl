% Representacion de Base de Conocimiento de Prolog
% pokemon(N,T,W,H) N: nombre del Pokemon, T: tipo, W: peso, H: altura

pokemon(blastoise, agua, 188.5, 160).
pokemon(charizard, fuego, 199.5, 170).
pokemon(venusaur, planta, 220.5, 210).
pokemon(ninetales, fuego, 43.9, 61).
pokemon(vileplume, planta, 41.0, 119).
pokemon(psyduck, agua, 43.2, 78.7).
pokemon(arcanine, fuego, 341.7, 190).
pokemon(victreebel, planta, 34.2, 170).
pokemon(tangela, planta, 77.2, 99.1).
pokemon(seadra, agua, 55.1, 119).
pokemon(seaking, agua, 86.0, 130).
pokemon(magmar, fuego, 98.1, 130).
pokemon(flareon, fuego, 55.1, 88.9).
pokemon(vaporeon, agua, 63.9, 99.1).
pokemon(rapidash, fuego, 209.4, 170).

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
alto(Nombre) :- pokemon(Nombre,_,_,Altura), Altura > 120.

% pequeno(Nombre) significa que el pokemon es pequeno
pequeno(Nombre) :- pokemon(Nombre,_,_,Altura), Altura < 120.