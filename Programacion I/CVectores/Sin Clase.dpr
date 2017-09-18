Program usandovectores;

uses
  System.SysUtils;

var
  v : array[1..100] of integer;
  n , i : integer;

begin

  write('Dimension del vector: ');
  readln(n);

  for i := 1 to n do
  begin
    readln(v[i]);
  end;

  for i := 1 to n do
  begin
    write(v[i],' ');
  end;

  readln;
end.
