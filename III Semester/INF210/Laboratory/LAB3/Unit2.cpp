/*
	Sesion de Laboratorio #3
	Docente: Juan Contreras
	U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
	Leonardo Anez Vladimirovna
*/


//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
/*

	Implementacion Clase Previa

*/

//Funcion bajo hipotesis N/2, Con el Menor por Derecha
byte NumeroEspacios(String x){
	byte n = x.Length();
	byte c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		String z = x.SubString(1,n/2);
		x = x.SubString(int(n/2)+1,n);
		c = NumeroEspacios(x) + NumeroEspacios(z);
	}

	return c;
}
//Funcion bajo hipotesis N/2, con el Menor por Izquierda
byte NumeroEspacios2(String x){
	byte n = x.Length();
	byte c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		String z = x.SubString(1,(n+1)/2);
		x = x.SubString((n+1)/2+1,n);
		c = NumeroEspacios2(x) + NumeroEspacios2(z);
	}

	return c;
}

//Funcion bajo hipotesis N-2, con ambos extremos
byte NumeroEspacios3(String x)
{
	byte n = x.Length();
	byte c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		char z1 = x[1];
		char z2 = x[n];
		x =  x.SubString(2,n-1);
		c = NumeroEspacios3(x);
		if(z1==' ')c++;
		if(z2==' ')c++;
	}
	return c;
}

//Funcion bajo hipotesis N-2, por izquierda
byte NumeroEspacios4(String x)
{
	byte n = x.Length();
	byte c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		char z1 = x[1];
		char z2 = x[2];
		x =  x.SubString(3,n);
		c = NumeroEspacios4(x);
		if(z1==' ')c++;
		if(z2==' ')c++;
	}
	return c;
}

//Funcion bajo hipotesis N-2, por derecha
byte NumeroEspacios5(String x)
{
	byte n = x.Length();
	byte c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		char z1 = x[n];
		char z2 = x[n-1];
		x =  x.SubString(1,n-2);
		c = NumeroEspacios5(x);
		if(z1==' ')c++;
		if(z2==' ')c++;
	}
	return c;
}

//Funcion bajo hipotesis N-1, por izquierda
byte NumeroEspacios6(String x)
{
	byte n = x.Length();
	byte c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		char z1 = x[1];
		x =  x.SubString(2,n);
		c = NumeroEspacios6(x);
		if(z1==' ')c++;
	}
	return c;
}

//Funcion bajo hipotesis N-1, por derecha
byte NumeroEspacios7(String x)
{
	byte n = x.Length();
	byte c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		char z1 = x[n];
		x =  x.SubString(1,n-1);
		c = NumeroEspacios7(x);
		if(z1==' ')c++;
	}
	return c;
}


/*

	Implementacion en Laboratorio

*/

/*
	2. Proceso para eliminar los espacios en blanco en una cadena.

*/

void EliminarEspacios(String &x) // "&" pasa el valor por referencia
{
	if(x!="")
	{
		char c=x[1];
		x.Delete(1,1);
		EliminarEspacios(x);
		if(c!=' ')
		{
			//x = "" + c + x; //Otra forma de concatenar

			x = AnsiString(c) + x;

			//x = c + x;  El que dirige la operacion es el primer operando
			//			  de izquierda a derecha, por eso no funciona "c+x"
		}
		//Constant char* es cadena en C estandar
	}
}
/*
	3. Proceso para eliminar las vocales de una cadena.

*/

bool esVocal(wchar_t c)
{
	String w = "aeiouAEIOUáéíóúÁÉÍÓÚ";
	return w.Pos(c)>0;
}


void EliminarVocales(String &x) // "&" pasa el valor por referencia
{
	if(x!="")
	{
		wchar_t c=x[1];  //Para las tildes, wchar_t es Unicode
		x.Delete(1,1);
		EliminarVocales(x);
		if(!esVocal(c))
		{
			x = AnsiString(c) + x;
		}
	}
}

//NOTAS: Paso de Parametros

//Por Valor:    	  :     Se pasa el valor, y se copia en la funcion
//Por Referencia	  :     Se pasa la direccion en la memoria del dato a la funcion, y
//							los datos en la funcion, hacen cambios respecto a la direccion a
//							la que hace referencia.
//Por PseudoRefeerncia:
//(Punteros)

//---------------------------------------------------------------------------
void __fastcall TForm2::Button1Click(TObject *Sender)
{
		//Clase Anterior
		/*
		String x = Edit1->Text;
		Edit2->Text =  NumeroEspacios7(x);
		*/
		String z = Edit1->Text;
		EliminarVocales(z);
		Edit2->Text = z;
}
//---------------------------------------------------------------------------

//Observaciones:
/*

	Caracteres ASCII - UNICODE
				char   wchar_t
	Cadenas	   ASCII - UNICODE
			 AnsiString String


*/
