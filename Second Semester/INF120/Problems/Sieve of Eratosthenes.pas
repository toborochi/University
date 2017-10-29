program Project2;

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

type
  criba = array[1..1000000] of boolean;

var
  v : criba;
  n : integer;

Procedure generarCriba;
var i,j : integer;
begin
  FillChar( v, sizeof( v), #1 );
  v[1]:=false;
  i:=2;
  while(i<=1000000) do
  begin
    if(v[i]=true) then
    begin
      j:=i;
      while (j<(1000000 div i)) do
      begin
          v[i*j]:=false;
          inc(j);
      end;
    end;
    inc(i);
  end;

end;


begin
  generarCriba;
  n:=1;
  while n>0 do
  begin
    readln(n);
    writeln(v[n]);
  end;

  readln;
end.
