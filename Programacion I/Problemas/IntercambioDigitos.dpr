program Project2;

uses
  Unit1 in 'Unit1.pas';

var
  x,aux : CNumeroNatural;
  k,a,b : integer;

begin
    readln(k);
    x:=CNumeroNatural.Crear;
    x.AsignarValor(k);

    a:=x.Digito(1);
    b:=x.Digito(x.NumeroDigitos);


    x.InsertarDigito(1,b);
    //writeln(x.ObtenerValor);

    x.InsertarDigito(x.NumeroDigitos,a);

    x.EliminarDigito(x.NumeroDigitos);
    x.EliminarDigito(2);



    writeln(x.ObtenerValor);
    readln;
end.
