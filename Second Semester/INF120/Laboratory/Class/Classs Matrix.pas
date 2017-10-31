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
  var
    i,j,sum,tmp,tmp2,D1,D2 : longint;
    esMagico : boolean;
  begin

    esMagico:=true;
    tmp:=0;
    tmp2:=0;
    D1:=0;
    D2:=0;
    sum:= (NF*(NF*NF+1)) div 2;

    if NF<>NC then esMagico:=false;
    

    for  i:= 1 to NF do
    begin
      for j := 1 to NC do
      begin
          tmp:=tmp+M[i,j];

          tmp2:=tmp2+M[i,j];

          if i=j then D1:=D1+M[i,j];

          if i+j=NF+1 then D2:=D2+M[i,j];
      end;

      if tmp mod sum <> 0 then esMagico:=false;
      if tmp2 mod sum <> 0 then esMagico:=false;

      tmp:=0;
      tmp2:=0;

    end;

    if D1  mod sum <> 0 then esMagico:=false;

    if D2  mod sum <> 0 then esMagico:=false;

    //writeln(D1);
    //writeln(D2);

    Result:=esMagico;

  end;

end.
