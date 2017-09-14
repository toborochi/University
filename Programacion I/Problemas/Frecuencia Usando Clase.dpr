program Project1;

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';
var
  x,n : CNumeroNatural;
  k : Cardinal;
  i,aux,total : Integer;

begin

  x := CNumeroNatural.Crear;
  n := CNumeroNatural.Crear;
  readln(k);
  x.AsignarValor(k*10);
  i:=x.NumeroDigitos;

  while (i >= 1) do
  begin
    aux:=x.Digito(i);
    n.AsignarValor(x.ObtenerValor);
    total:=0;
    while(i>=1)do
    begin
      if(aux=n.Digito(i))then
      begin
        n.EliminarDigito(i);
        total:=total+1;
        i:=n.NumeroDigitos;
      end else i:=i-1;
    end;
    if((aux=0)) then total:=total-1;
    if((total>0)) then writeln(aux,' ',total);
    x.AsignarValor( n.ObtenerValor );
    i:=x.NumeroDigitos;
  end;

  readln;
end.
