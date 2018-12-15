program MatrixProject;

uses
  System.SysUtils,
  ClassMatrix in 'ClassMatrix.pas';

var
  mat : CMatriz;
  f,c,i,j,cont : longint;

begin
  mat:=CMatriz.Crear;
  readln(f);
  mat.Dimensionar(f,f);

  i:=1;
  j:=f div 2 + 1;
  cont:=1;

  while cont<=(f*f) do
  begin

     mat.Asignar(cont*2,i,j);


     if cont mod f <> 0 then
     begin
      i:=i-1 ;
      j:=j+1;
     end;


     if i=0 then i:=f;
     if j>f then j:=1;

     if cont mod f = 0 then
     begin
         i:=i+1;
     end;

     inc(cont);


  end;

  mat.Mostrar;

  readln;
end.
