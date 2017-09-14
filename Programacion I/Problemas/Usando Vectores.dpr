program Project1;

uses
  System.SysUtils;

var
  v : array[1..10] of integer;
  n,i : word;

begin
  readln(n);

  for i := 1 to n do
  begin
      readln(v[i]);
  end;

   for i := 1 to n do
  begin
      write(v[i]:4);
  end;


  readln;
end.
