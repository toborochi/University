program Project1;


uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

  var
  v : CVector;
  n,i,j : integer;

Function esPrimo(val:integer) : boolean;
var c,d : integer;
begin


   c:=1;
   d:=2;
   while (d<=val) do
   begin
     if ((val mod d)=0) then  inc(c);

     inc(d);
   end;

   if ((c=1) or (c=2)) then Result:=true else Result:=false;

end;

begin

  v:=CVector.Crear;
  readln(n);
  v.Dimensionar(n);
  i:=1;
  j:=1;
  while i<=v.Dimension do
  begin
     if (esPrimo(j)=true) then
     begin
        v.Poner(i,j);
        inc(i);
     end;
     inc(j);
  end;

  writeln(v.ComoString);

  readln;
end.
