/*
	Sesion de Laboratorio #4
	Docente: Juan Contreras
	U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
	Leonardo Anez Vladimirovna
*/

//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}

// Cargar Aleatoriamente la Matriz
void cargar(TStringGrid *v, byte k, byte n)
{
	if(k>0)
	{
		cargar(v,k-1,n);
		v->Cells[(k-1)%n][(k-1)/n] = Random(50);
	}
}

// Oredenamiento Burbuja en Matrices, de manera Recursiva
// Funcion Auxiliar para pasar el mayor valor de un Intervalo al final
void mayorFinal(TStringGrid *v,byte k, byte n)
{
	if(k>1)
	{
		mayorFinal(v,k-1,n);

		byte a = StrToInt( v->Cells[(k-1)%n][(k-1)/n] );
		byte b = StrToInt( v->Cells[(k-2)%n][(k-2)/n] );

		if(b>a)
		{
			//Variable Temporal
			String x =  v->Cells[(k-2)%n][(k-2)/n];
			//Intercambio de Variables
			v->Cells[(k-2)%n][(k-2)/n] = v->Cells[(k-1)%n][(k-1)/n];
			v->Cells[(k-1)%n][(k-1)/n] = x;
		}
	}
}
// Ordenamiento
void burbuja(TStringGrid *v,byte k, byte n)
{
	if(k>1)
	{
		mayorFinal(v,k,n);
		burbuja(v,k-1,n);
	}
}

// Llamada al presionar el Boton de Aplicar

//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
	byte n = StringGrid1->RowCount,m = StringGrid1->ColCount;
	byte numcels = n*m;

	// Carga Aleatoria
	cargar(StringGrid1,numcels,m);

	}

// Miscelaneo

//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
	StringGrid1->ColCount +=1;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
	if(StringGrid1->ColCount-1 > 0)
	{
		StringGrid1->ColCount -=1;
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button4Click(TObject *Sender)
{
	StringGrid1->RowCount +=1;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button5Click(TObject *Sender)
{
	if(StringGrid1->RowCount-1 > 0)
	{
		StringGrid1->RowCount -=1;
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button6Click(TObject *Sender)
{
	byte n = StringGrid1->RowCount,m = StringGrid1->ColCount;
	byte numcels = n*m;
	// Ordenamiento Burbuja
	burbuja(StringGrid1,numcels,m);
}
//---------------------------------------------------------------------------
