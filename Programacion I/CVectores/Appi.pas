Program Vectores;

uses
  System.SysUtils,
  UCVector in 'UCVector.pas';

type
  aplicacion = class
  private
    vec : CVector;
  public
    constructor crear;
    procedure  Dimensionar;
    procedure  Cargar;
    procedure  mostrar;
end;

    constructor aplicacion.crear;
    begin
      vec:=CVector.crear;
    end;

    procedure aplicacion.Dimensionar;
    var k: integer;
    begin
      Writeln('Digite la dimension ');
      readln(k);
      vec.dimensionar(k);
    end;

    procedure aplicacion.cargar;
    var
      I,k:integer;
    begin
      for i:= 1 to vec.dimension do
      begin
        readln(k);
        vec.poner(I,k);
      end;
    end;

    procedure aplicacion.mostrar;
    begin
        writeln(vec.ComoString);
    end;


Var
  a : aplicacion;
Begin
  a:=aplicacion.crear;
  a.dimensionar;
  a.cargar;
  a.mostrar;
  readln;
End.
