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


void Llenar4(TStringGrid *a,byte f, byte n)
{
	byte N=a->RowCount,M=a->ColCount;
	if(n>0)
	{
		Llenar4(a,f,n-1);
		if(f%2!=0)
		{
			a->Cells[f][N-n] = f*N+n;
		}else
		{
			a->Cells[f][n-1] = f*N+n;
		}
	}
}


void Llenar5(TStringGrid *a,byte c,byte cant)
{
	if(cant>0)
	{
		Llenar5(a,c,cant-1);
		a->Cells[cant-1][c]=c+cant;
	}
}


// Carga la Matriz de manera Central, desde (0,0) hacia abajo y derecha
void Cargar5(TStringGrid *a,byte m,byte n)
{
	if(n>0)
	{
		Cargar5(a,m,n-1);
		Llenar5(a,n-1,m);
	}
}

// Carga la Matriz de manera espiral
void Cargar4(TStringGrid *a,byte m, byte n)
{
	if(m>0)
	{
		Cargar4(a,m-1,n);
		Llenar4(a,m-1,n);
	}
}




//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
	byte columnas=StrToInt(Edit1->Text),filas=StrToInt(Edit2->Text);

	StringGrid1->ColCount = columnas;
	StringGrid1->RowCount = filas;
	Cargar4(StringGrid1,columnas,filas);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
	byte columnas=StrToInt(Edit1->Text),filas=StrToInt(Edit2->Text);
	StringGrid1->ColCount = columnas;
	StringGrid1->RowCount = filas;
	Cargar5(StringGrid1,columnas,filas);
}
//---------------------------------------------------------------------------
