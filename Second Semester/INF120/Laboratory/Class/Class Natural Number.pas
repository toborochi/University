unit Unit2;

interface

type CNumeroNatural = class
  Private

  Valor : Cardinal;
  Function LiteralDigitos(V1,V2 : Cardinal) : String;

  Public

  Constructor Crear;
  Procedure AsignarValor( NuevoValor : Cardinal);
  Function ObtenerValor : Cardinal;
  Function NumeroDigitos : Byte;
  Function Digito( Posicion : Byte ) : Byte;
  Function SumarDigitos : Byte;
  Function DigitosPares : Byte;
  Function DigitosImpares : Byte;
  Procedure Invertir;
  Function EsPar : Boolean;
  Function EsImpar : Boolean;
  Function EsCapicua : Boolean;
  Function BaseN( N : Byte ) : String;
  Function Hexa : String;
  Function Romano : String;
  Function Literal : String;
  Procedure InsertarDigito( Posicion: Byte ; Digito : Byte);
  Procedure EliminarDigito( Posicion : Byte );
  Function BaseNS(conjunto : string) : string;
  end;

implementation

  //CONSTRUCTOR
  Constructor CNumeroNatural.Crear;
  Begin
    Valor := 0;
  End;
  //PROCEDIMIENTO DE ASIGNAR VALOR
  Procedure CNumeroNatural.AsignarValor( NuevoValor : Cardinal);
  Begin
    Valor := NuevoValor;
  End;
  //DEVOLVER EL VALOR
  Function CNumeroNatural.ObtenerValor : Cardinal;
  Begin
    Result := Valor;
  End;
  //CANTIDAD DE DIGITOS
  Function CNumeroNatural.NumeroDigitos : Byte;
  Var
    Aux : Cardinal;
    Cant : Byte;
  Begin
    Aux := Valor;
    Cant := 0;
    While Aux>0 do
    Begin
      Aux := Aux Div 10;
      Inc( Cant );
    End;

    Result := Cant;

  End;
  //N-ESIMO DIGITO
  Function CNumeroNatural.Digito( Posicion : Byte ) : Byte;
  Var
    Aux,Res : Cardinal;
    Vez , Digito : Byte; NroDigitos:Byte;
  Begin
    Aux := Valor;
    NroDigitos:= Trunc(Ln(Valor)/Ln(10)) +1;

    if( Posicion > 0 )and( Posicion <= NroDigitos )then
    Begin
      Vez:=1;
        While aux>0 do
        Begin
          if (((Nrodigitos+1) - Vez) = Posicion) then Digito:=Aux mod 10;
        Res:=Aux Div 10;
        Vez:=Vez +1;
        Aux:=Res;
        End;

    Result := Digito;

    End
  End;
  //SUMA DE LOS DIGITOS
  Function CNumeroNatural.SumarDigitos : Byte;
  Var
    Aux , Suma : Cardinal;
  Begin
    Aux := Valor;
    Suma := 0;
  Repeat
    Suma := Suma +( Aux Mod 10 );
    Aux := Aux Div 10;
  Until( Aux = 0 );
    Result := Suma;
  End;
  //DIGITOS PARES
  Function CNumeroNatural.DigitosPares : Byte;
  Var
    Aux : Cardinal;
    Cant , Digito : Byte;
  Begin
    Aux := Valor;
    Cant := 0;
      Repeat
        Digito := Aux Mod 10;
        Aux := Aux Div 10;
          If( Digito mod 2 = 0 )Then Inc( Cant );
      Until( Aux = 0 );
    Result := Cant;
  End;
  //CANTIDAD DIGITOS IMPARES
  Function CNumeroNatural.DigitosImpares : Byte;
  Begin
    Result := (NumeroDigitos - DigitosPares);
  End;
  //INVERTIR NUMERO
  Procedure CNumeroNatural.Invertir;
  Var
    Aux , Aux2 , i :Cardinal;
  Begin
    Aux2 := Valor;
    Aux := 0;
    i := 0;
      While( i < NumeroDigitos )do
      Begin
        Aux := ( Aux * 10 ) + Aux2 Mod 10;
        Aux2 := Aux2 Div 10;
        Inc( i );
      End;
    Valor := Aux;
  End;

//ES PAR
  Function CNumeroNatural.EsPar : Boolean;
  Begin
    Result := (valor mod 2)= 0 ;
  End;
  //ES IMPAR
  Function CNumeroNatural.EsImpar : Boolean;
  Begin
    Result := Not (Espar) ;
  End;
  //ES CAPICUA
  Function CNumeroNatural.EsCapicua : Boolean;
  Var N:Cardinal;R:Boolean;
  Begin
    N:=Valor; Invertir;
    R:=(Valor = N) ;
    Valor:=N;
    Result := R;
  End;
  //BASE N
  Function CNumeroNatural.BaseN( N : Byte ) : String;
  var
    aux,i : Cardinal;
    bn,answer : string;
  begin
    aux:=Valor;
    while (aux>0) do
    begin
      case (aux mod N) of
      0 : bn:=bn + '0';
      1 : bn:=bn + '1';
      2 : bn:=bn + '2';
      3 : bn:=bn + '3';
      4 : bn:=bn + '4';
      5 : bn:=bn + '5';
      6 : bn:=bn + '6';
      7 : bn:=bn + '7';
      8 : bn:=bn + '8';
      9 : bn:=bn + '9';
      10 : bn:=bn + 'A';
      11 : bn:=bn + 'B';
      12 : bn:=bn + 'C';
      13 : bn:=bn + 'D';
      14 : bn:=bn + 'E';
      15 : bn:=bn + 'F';
      end;

      aux := aux div N;
    end;

      for i := length(bn) downto 1 do
      begin
        answer:=answer+bn[i];
      end;

      Result:=answer;
  end;
  //BASE HEXADECIMAL
  Function CNumeroNatural.Hexa : string;
  begin
    Result := BaseN(16);
  end;
  //ROMANO
  Function CNumeroNatural.Romano : string;
  const
   M : array [0..3] of string  = ('', 'M', 'MM', 'MMM');
   C : array [0..9] of string = ('','C','CC','CCC','CD','D','DC','DCC','DCCC','CM');
   X : array [0..9] of string = ('', 'X', 'XX', 'XXX', 'XL', 'L','LX', 'LXX', 'LXXX', 'XC');
   I : array [0..9] of string = ('', 'I', 'II', 'III', 'IV', 'V','VI', 'VII', 'VIII', 'IX');
  var
   milesima,centesima,decima,unidad : string;
   aux : Cardinal;
  begin
    aux := Valor;
    milesima := M[aux div 1000];
    centesima := C[(aux mod 1000) div 100];
    decima :=  X[(aux mod 100) div 10];
    unidad := I[aux mod 10];

    Result:= (milesima+centesima+decima+unidad);

  end;
  //LITERAL AUXILIAR (PRIVATE)
  Function CNumeroNatural.LiteralDigitos(V1, V2 : Cardinal)  : String;
  const
   c : array [0..9] of string = ('','cien', 'doscientos', 'trescientos', 'cuatrocientos' , 'quinientos' , 'seiscientos' , 'setecientos' , 'ochocientos', 'novecientos');
   d : array [0..9] of string = ('','','veinti','treinta','cuarenta','cincuenta','sesenta','setenta','ochenta','noventa');
   e : array [0..20] of string  = ('','uno','dos','tres','cuatro','cinco','seis','siete','ocho','nueve','diez','once','doce','trece','catorece','quince','dieciseis','diecisiete','dieciocho','diecinueve','veinte');
   var
    aux : Cardinal;
    s : string;
  begin
    aux := V1;
    if((aux=0) and (V2=0)) then s:='Cero';

    if((aux>=1) and (aux<=20)) then s:=e[aux] else
    begin

    s:= s + c[aux div 100];
    if((aux>100) and (aux<200)) then s:=s+'to';
    s:=s+' ';


    if((aux mod 100 >=10) and (aux mod 100 <=20)) then s:=s+e[ aux mod 100 ]  else
    begin

      s:=s+d[ (aux mod 100)div 10 ];

      if ((aux mod 10 > 0) and ((aux mod 100)>30) and ((aux mod 100) < 100 )) then s:=s+' y ';

      s:= s + e[aux mod 10];

    end;

   end;

    Result:=s;
  end;
  //LITERAL
  Function CNumeroNatural.Literal : string ;
  var
    lit : string;
    aux : Cardinal;
  begin
      aux := Valor;
      if((aux<2000) and (aux>=1000)) then lit:=lit+'mil ';
      if(aux>=2000) then lit:=lit+LiteralDigitos(aux div 1000,aux) + ' mil ';
      aux:= aux mod 1000;
      lit:=lit+LiteralDigitos(aux,Valor);

      Result:=lit;

  end;
  //INSERTAR DIGITO
  Procedure CNumeroNatural.InsertarDigito( Posicion: Byte ; Digito : Byte);
  Var
    Aux , Aux2 , Digi :Cardinal;
  Begin
    Aux := Valor;
    if( Posicion > 0)and( Posicion <= numeroDigitos) then
  Begin
    Aux2 := 0;
    Digi := 0;
      While( Digi <= NumeroDigitos-Posicion )do
      Begin
        Aux2 := ( Aux2 * 10 ) + Aux Mod 10;
        Aux := Aux Div 10;
        Inc( Digi );
      End;
        Aux := ( Aux * 10 ) + Digito;//Inserta Digito
          While( Digi > 0 )do
          Begin
            Aux := ( Aux * 10 ) + ( Aux2 Mod 10 );
            Aux2 := Aux2 Div 10;
            Dec( Digi );
          End;
        Valor := Aux;
  end;
  End;
  // ELIMINAR DIGITO
  Procedure CNumeroNatural.EliminarDigito( Posicion : Byte );
  Var
    Aux , Aux2 , Digi :Cardinal;
  Begin
    Aux := Valor;
  if( Posicion > 0) and ( Posicion <= NumeroDigitos ) then
  Begin
    Aux2 := 0;
    Digi := 0;
      While ( Digi < NumeroDigitos-Posicion ) do
      Begin
        Aux2 := ( Aux2 * 10 ) + Aux Mod 10;
        Aux := Aux Div 10;
        Inc( Digi );
      End;
        Aux := ( Aux Div 10 );//Elimina Digito
      While( Digi > 0 )do
      Begin
        Aux := ( Aux * 10 ) + ( Aux2 Mod 10 );
        Aux2 := Aux2 Div 10;
        Dec( Digi );
      End;
        Valor := Aux;
  End;

  End;
  //BASE N con conjunto de digitos variados
  Function CNumeroNatural.BaseNS(conjunto: string) : string;
  var
    aux : Cardinal;
    base,i : Byte;
    ans,ss : string;
  begin
    aux := Valor;
    base:=length(conjunto);
    while(aux>0)do
    begin
      ans:=ans + conjunto[(aux mod base)+1];
      aux:=aux div base;
    end;

    for i := length(ans) downto 1 do
      begin
        ss:=ss+ans[i];
      end;

      Result:=ss;

  end;


  begin
  end.
