Program Vectores;

uses
  System.SysUtils,
  UCVector in 'UCVector.pas';

var
  vec : CVector;
  i,k : Integer;

begin
  vec:= CVector.Crear;
  readln(k);
  vec.Dimensionar(k);
  for i := 1 to vec.Dimension do
  begin
      readln(k);
      vec.Poner(i,k);
  end;

  writeln(vec.ComoString);
  

  readln;
end.
