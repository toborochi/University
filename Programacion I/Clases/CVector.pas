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
    Procedure OrdenamientoIntercambio(ini,fin : integer);  //ORD1
    Procedure OrdenamientoMitades;
    Procedure OrdenarSeleccion;
    Procedure OrdenarConteo;                               //ORD3

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

  Procedure CVector.OrdenamientoIntercambio(ini,fin : integer);
  var
    i,j : Word;
  begin
      for i := ini to fin-1 do
       for j := i+1 to fin do
         if(Elementos[j]<Elementos[i]) then
           Intercambiar(i,j);
  end;

  Procedure CVector.OrdenamientoMitades;
  var i : integer;
  begin
    OrdenamientoIntercambio(1,N div 2);
    for i := (N div 2)+1 to N do
    begin
      Elementos[i]:=Elementos[i]*-1;
    end;

    OrdenamientoIntercambio((N div 2)+1,N);

    for i := (N div 2)+1 to N do
    begin
      Elementos[i]:=Elementos[i]*-1;
    end;
  end;

  Procedure cvector.OrdenarSeleccion;
  var
    i,j,menor : integer;
  Begin
  for i:= 1 to N do
  begin
  menor:= i;
  For  j:=i + 1 to N Do
    If (elementos[j] < elementos[menor]) then
     menor:=j;
    Intercambiar(i, menor);
  end;
  End;

  Procedure CVector.OrdenarConteo;
  Var
    i,m: integer;
    b : ConjuntoElementos;
    count : array[0..100000] of longint;
  BEGIN
    m:=0;

    FILLCHAR(COUNT,SIZEOF(COUNT),0);

    for i:= 1 to N do
    Begin+
    count[ Elementos[ i ]]:= count[ elementos[i]] + 1;
    if Elementos[i] > m then m:=Elementos[i];
  end;

  for i:=1 to M do
  begin
    count[i]:=count[i] +count[i-1];
  end;


  b:=Elementos;

  for i:=N downto 1 do
  begin
    Elementos[count[ b[ i ]] ] := b[i];
    count[ b [i] ]:=count[ b[i]]-1;
  end;

  END;

end.
