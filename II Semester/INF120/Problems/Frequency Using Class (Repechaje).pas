program Project1;

uses
  System.SysUtils,
  Unit1 in 'UCNumeroNatural.pas';

var
  val : CNumeroNatural;
  x : Cardinal;
  pos,aux,total : Integer;

begin
  val:=CNumeroNatural.Crear;
  readln(x);
  val.AsignarValor(x*10);
  pos:=val.NumeroDigitos;
  while(pos >= 1) do
  begin
      total:=0;
      aux:=val.Digito(pos);
      while(pos>=1)do
      begin
           if(aux=val.Digito(pos)) then
           begin
             val.EliminarDigito(pos);
             pos:=val.NumeroDigitos;
             total:=total+1;
           end else pos:=pos-1;
      end;
      if(aux=0) then total:=total-1;
      if(total>0) then   writeln('Frecuencia de ', aux, ' = ', total );
      pos:=val.NumeroDigitos;

  end;


  readln;
end. 
