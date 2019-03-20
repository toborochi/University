computadora(Ultimax).
computadora(Megalodon).
computadora(UltimatePro).

elemento(Gtx-1080).
elemento(Gtx-750).
elemento(Xrt-50).
elemento(pro-Intel Core i7).
elemento(pro-Intel Core i5).
elemento(pro-Intel Core i3).
elemento(DDR 4 - 8gb).
elemento(DDR 4 - 4gb).
elemento(DDR 4 - 2gb).
elemento(cooler Tm-10).
elemento(cooler RM-15).
elemento(cooler Rt25).

% elemento X que es componente de la computadora Y
compone(UltimatePro,Gtx-1080).
compone(UltimatePro,pro-Intel Core i7).
compone(UltimatePro,DDR 4 - 8gb).
compone(UltimatePro,cooler Tm-10).

compone(Ultimax,Gtx-750).
compone(Ultimax,pro-Intel Core i5).
compone(Ultimax,DDR 4 - 4gb).
compone(Ultimax,cooler RM-15).

compone(Megalodon,Xrt-50).
compone(Megalodon,pro-Intel Core i3).
compone(Megalodon,DDR 4 - 2gb).
compone(Megalodon,cooler Rt25).

%elemento X que No es compatible con la computadora Y%
nocompatible(Megalodon,Gtx-750).
nocompatible(Megalodon,pro-Intel Core i5).
nocompatible(UltimatePro,DDR 4 - 4gb).
nocompatible(UltimatePro,cooler RM-15).)

%mostrar los elementos X que no componen a la computadora Y%
nopertenece(X,Y):-elemento(X),computadora(Y),not(compone(X,Y).

%mostrar los elementos que no pertenecen a ninguna computadora%
noesusado(X):-elemento(X),not(compone(X,Y)).

%mostrat los componentes X que si son compatible con la computadora Y%
compatible(X,Y):-elemento(X),computadora(Y),not(nocompatible(X,Y)).