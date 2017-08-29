{
  PROGRAMACION I
}

program Project1;

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';


var
  x : CNumeroNatural;
  k : Cardinal;
  n,a,b : Integer;

begin
  x := CNumeroNatural.Crear;
  writeln('PROGRAMA PARA TESTEAR CLASE CNUMERONATURAL: ');
  write('Digite un numero Natural: ');

  readln(k);

  x.AsignarValor(k);

  writeln('Numero de Digitos: ',x.NumeroDigitos);
  writeln('Suma de Digitos: ',x.SumarDigitos);
  writeln('Digitos Pares: ',x.DigitosPares);
  writeln('Digitos Impares: ',x.DigitosImpares);
  writeln('Es Par: ',x.EsPar);
  writeln('Es Impar: ',x.EsImpar);
  writeln('Es Capicua: ',x.EsCapicua);

  write('Escribe la base a convertir: '); readln(n);
  writeln('El Numero ',x.ObtenerValor,' en base ',n,' es: ',x.BaseN(n));
  writeln('Hexadecimal: ',x.Hexa);
  writeln('Numero en Romano: ',x.Romano);
  writeln('Literal: ',x.Literal);
  write('Insertar digito (Posicion,Digito): ');
  readln(a,b);
  x.InsertarDigito(a,b);
  writeln('Nuevo Numero: ',x.ObtenerValor);

  write('Eliminar digito (Posicion): ');
  readln(a);
  x.EliminarDigito(a);
  writeln('Nuevo Numero: ',x.ObtenerValor);

  readln;
end.

