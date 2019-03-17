% Base de Conocimiento basada en "This war of Mine"
% https://en.wikipedia.org/wiki/This_War_of_Mine

% Hombres
hombre(bruno).
hombre(pavle).
hombre(anton).
hombre(boris).
hombre(marin).
hombre(marko).
hombre(roman).
hombre(franco).
hombre(voyt).
hombre(valter).
hombre(yosyp).
hombre(marius).
hombre(aleksey).
hombre(bojan).
hombre(pyotr).
hombre(grisha).

% Mujeres
mujer(arica).
mujer(cveta).
mujer(emilia).
mujer(katia).
mujer(zlata).
mujer(agata).
mujer(luba).

% NPC's
npc(franco,neutral).
npc(voyt).
npc(agata).
npc(zora).
npc(valter).
npc(yosyp).
npc(luba).
npc(emil).
npc(marius).
npc(aleksey).
npc(bojan).
npc(pyotr).
npc(grisha).
npc(francotirador).
npc(soldado_raso).
npc(jefimow).
npc(vagabundo).
npc(rebelde).

hostil(francotirador).
hostil(soldado_raso).

neutral(vagabundo).
neutral(rebelde).

% Sobrevivientes
sobreviviente(bruno).
sobreviviente(pavle).
sobreviviente(anton).
sobreviviente(arica).
sobreviviente(boris).
sobreviviente(cveta).
sobreviviente(emilia).
sobreviviente(katia).
sobreviviente(marin).
sobreviviente(marko).
sobreviviente(roman).
sobreviviente(zlata).

fumador(boris).
fumador(bruno).
fumador(bruno).
fumador(arica).

% Items, item(Tipo,Lista de Items)
item(medicamento,[vendajes,tabletas,tabletas_naturales,alcohol]).
item(armamento,[pistola,escopeta,ametralladora,navaja,casco_militar,chaleco_antibalas]).
item(comida,[enlatados,vegetales,carne_cruda,agua_limpia]).
item(parte,[piezas_de_armas,madera,piezas_electricas,piezas_mecanicas,componentes,polvora,casquillos]).
item(miscelaneo,[tabaco,cigarro,oso_de_peluche,libros,pistola_rota,rifle_roto,casco_militar_roto,abono,alcohol_puro,azucar,guitarra_rota]).
item(herramienta,[palanca,pala,sierra,hacha,ganzua]).

% Lugares, lugar(nombre,Tipos de Items)
lugar(aeropuerto,[medicamento,armamento]).
lugar(plaza_central,[medicamento,armamento,comida]).
lugar(construccion,[herramienta,parte]).
lugar(casco_viejo,[comida,parte]).
lugar(farmacia,[medicamento]).
lugar(villa_en_ruinas,[herramienta,miscelaneo]).
lugar(edificio_de_apartamentos,[comida,miscelaneo]).
lugar(almacen,[medicamento,armamento,comida,parte,miscelaneo,herramienta]).
lugar(jugueteria,[miscelaneo]).
lugar(burdel,[comida,miscelaneo]).
lugar(casa_abandonada,[herramienta,miscelaneo,parte]).
lugar(hospital,[medicamento,comida,miscelaneo]).
lugar(garage,[herramienta,parte,miscelaneo]).
lugar(iglesia,[comida,medicamento,herramienta]).
lugar(puerto,[herramienta,parte,comida]).
lugar(escuela,[miscelaneo,parte,medicamento]).
lugar(supermercado,[comida,medicamento,herramienta]).
lugar(casa_tranquila,[comida,medicamento]).
lugar(casa_semi_disparada,[medicamento,herramienta]).
lugar(cruce_de_francotiradores,[medicamento,herramienta,armamento]).
lugar(avanzada_militar,[arma,medicamento,herramienta]).
lugar(estacion_de_gas,[herramienta]).
lugar(villa_en_ruinas,[herramienta,parte]).

% Hombres que son sobrevivientes
sobreviviente_hombre(X):- hombre(X),sobreviviente(X).

% Mujeres que son sobrevivientes
sobreviviente_mujer(X):- mujer(X),sobreviviente(X).

% Revisar si un elemento es parte de una lista
miembro(X,[X|_]).
miembro(X,[_|Cola]):-
miembro(X,Cola).

% Sobrevivientes que son fumadores
sobreviviente_fumador(X):- sobreviviente(X),fumador(X).

% Un item Y es miembro de un tipo X
itemclase(X,Y):- item(X,Z),miembro(Y,Z).

% Es posible encontrar en el lugar X el item Y
lugaritem(X,Y):- lugar(X,Z),miembro(W,Z),itemclase(W,Y).

% Es un NPC que puede llegar a hacer daño
npc_posible_dano(X):-npc(X);hostil(X),neutral(X).
