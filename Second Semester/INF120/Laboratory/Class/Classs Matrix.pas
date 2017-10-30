unit ClassMatrix;

interface

  Const
    MaxE = 1000;
  Type
    Matriz = Array[1..MaxE,1..MaxE] of longint;
    CMatriz = Class
  Private
    NF,NC : longint;
    M : Matriz;
  Public
  Constructor Crear;

  Procedure Dimensionar(a,b : longint);
  Procedure Asignar(valor,a,b : longint);
  Procedure Mostrar;

  Function EsMagico : boolean;

  End;

implementation

  Constructor CMatriz.crear;
  Begin
    NF:=0; NC:=0;
  End;

  Procedure CMatriz.Dimensionar(a,b: longint);
  Begin
  NF:=a;
  NC:=b;
  End;

  Procedure CMatriz.Asignar(valor,a,b : longint);
  begin
    M[a,b]:=valor;
  end;

  Procedure CMatriz.Mostrar;
  var i,j:longint;
  begin

     for i := 1 to NF do
     begin
       for j := 1 to NC do
         begin
            write(M[i,j],' ');
         end;
         writeln;
     end;

  end;

  Function CMatriz.EsMagico : boolean;
  var i,j,sum : longint;
  begin

    for  i:= 1 to NF do
    begin
      for j := 1 to NC do
      begin

      end;
    end;



  end;

end.
