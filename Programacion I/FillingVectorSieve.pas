program Project2;

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

type
  criba = array[1..1000000] of boolean;

var
  primos : criba;
  n,i,j : integer;
  v : CVector;

Procedure generarCriba;
var i,j : integer;
begin
  FillChar( primos, sizeof( primos), #1 );
  //primos[1]:=false;
  i:=2;
  while(i<=1000000) do
  begin
    if(primos[i]=true) then
    begin
      j:=i;
      while (j<(1000000 div i)) do
      begin
          primos[i*j]:=false;
          inc(j);
      end;
    end;
    inc(i);
  end;

end;


begin
  generarCriba;
  v := CVector.Crear;
  readln(n);
  v.Dimensionar(n);
  i:=1;
  j:=1;
  while i<=v.Dimension do
  begin
      if (primos[j]=true) then
      begin
        v.Poner(i,j);
        inc(i);
      end;

      inc(j);
  end;

  writeln(v.ComoString);

  readln;
end.
