program Project2;

uses
  Unit1 in 'Unit1.pas';

var
  a,aux : CNumeroNatural;
  k,x,y : integer;

begin
    readln(k);
    a:=CNumeroNatural.Crear;
    a.AsignarValor(k);

    x:=a.Digito(1);
    y:=a.Digito(a.NumeroDigitos);


    a.InsertarDigito(1,y);
    a.InsertarDigito(a.NumeroDigitos,x);

    //writeln(a.ObtenerValor);

    a.EliminarDigito(a.NumeroDigitos);
    a.EliminarDigito(2);



    writeln(a.ObtenerValor);
    readln;
end.
