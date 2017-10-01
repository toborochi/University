program Project2;

uses
  Unit1 in 'Unit1.pas';

var
  a : CNumeroNatural;
  k,i,x,y : integer;

begin
    readln(k);
    a:=CNumeroNatural.Crear;
    a.AsignarValor(k);

    i:=1;
    while i<=((a.NumeroDigitos div 2)-1) do
    begin
        x:=a.Digito(i);
        y:=a.Digito(i+1);
        if(y>x) then
        begin
           a.InsertarDigito(i,y);
           a.EliminarDigito(i+1);
           a.InsertarDigito(i+1,x);
           a.EliminarDigito(i+2);
           i:=1;
        end else inc(i);
    end;

    writeln(a.ObtenerValor);
    readln;
end.
