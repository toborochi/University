program Project1;

uses
  Unit1 in 'Unit1.pas';

var
  x : CNumeroNatural;
  i,k,sum : integer;

Function SiEsDigitoPrimo (val : Byte) : Byte;
begin
  if((val=2) or (val=3) or (val=5) or (val=7)) then Result:=val else Result:=0;
end;

begin
  readln(k);
  x:=CNumeroNatural.Crear;
  x.AsignarValor(k);
  sum:=0;

  for i := 1 to x.NumeroDigitos do
  begin
    sum:= sum + SiEsDigitoPrimo(x.Digito(i));
  end;

  writeln('La suma de los digitos primos es: ',sum);

  readln;
end.
