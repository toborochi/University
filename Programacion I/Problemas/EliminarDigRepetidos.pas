program Project1;



uses
  System.SysUtils;

var
  n : integer;

Function EliminarDigRep(x : integer):integer;
var
   m , p , k, i: integer;
begin
    p:=1;
    m:=0;
    while x>0 do
    begin

      k:= x mod 10;
      i:=0;
      while (x mod 10) = k do
      begin
         x:= x div 10;
         inc(i);
      end;

      if(i=1) then
      begin
        m:= m + p*(k);
        p:=p*10;
      end;

    end;

    Result:=m;

end;

begin
  readln(n);
  writeln( EliminarDigRep(n) );
  readln;
end.
