unit Unit1;

interface

Const
  MaxE = 1024;

Type
  ConjuntoElementos = Array[1..MaxE] of Integer;
  CVector = Class
    Private
    N: Word;
    Elementos : ConjuntoElementos;

    Public
    Constructor Crear;
    Procedure Dimensionar( Dim : Word );
    Procedure Poner(Pos: Word ; Val: Integer);
    Function Elemento(Pos: Word ): Word ;
    Function Dimension : Word;
    Function ComoString: String;
    Procedure Intercambiar(i,j : integer);
    Procedure OrdenamientoIntercambio;
End;



implementation

  uses  System.SysUtils;

  Constructor CVector.crear;
  Begin
    N:=0;
  End;

  Procedure CVector.Dimensionar( Dim : Word);
  Begin
  N:=dim;
  End;

  Procedure CVector.Poner(Pos : word ; Val: integer);
  begin
      if ((Pos >0) and (Pos <= N)) then Elementos[Pos]:=Val;
  end;

  Function  CVector.Elemento(Pos:word):word;
  Begin
  if  ((Pos>0) and (Pos<=N)) then Result:=Elementos[Pos];
  end;

  Function CVector.Dimension:Word;
  Begin
    Dimension:=N;
  End;

  Function  CVector.comostring:String;
  Var
    s: string;
    i : integer;
  Begin
  s:='';
    for i := 1 to n do
    begin
      s:=  s + IntToStr(elementos[i]) + ' ' ;
    end;
    Result:=s;
  End;

  Procedure CVector.Intercambiar(i,j : integer);
  var aux : integer;
  begin
     aux:= Elementos[i];
     Elementos[i]:=Elementos[j];
     Elementos[j]:=aux;

  end;

  Procedure CVector.OrdenamientoIntercambio;
  var
    i,j : Word;
  begin
      for i := 1 to N-1 do
       for j := i+1 to N do
         if(Elementos[j]<Elementos[i]) then
           Intercambiar(i,j);
  end;

end.
