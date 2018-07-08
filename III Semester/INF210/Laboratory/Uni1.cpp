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

void llenarIniciales(TStringGrid *v,String s)
{
	 int n = s.Length();
	 if(n==1)
	 {
		if(s!=" ")
		{
			v->Cells[v->ColCount-1 ][0]=s[1];
		}
	 }else
	 {
		  String aux = s.SubString(1,n-1);
		  llenarIniciales(v,aux);

		  if(s[n]!=' ' && s[n-1]==' ')
		  {
			 v->ColCount++;
			 v->Cells[v->ColCount-1][0]=AnsiString(s[n]);
		  }
	 }
}

//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
	// Problema 2
	String txt = Edit1->Text;
	llenarIniciales(StringGrid1,txt);
}
//---------------------------------------------------------------------------

void LlenarFila(TStringGrid *v,int n,int m)
{
	if(n>0)
	{
		LlenarFila(v,n-1,m);
		v->Cells[n-1][m-1] = v->ColCount - n + m-1 + 1;
	}
}

void LlenarMatriz(TStringGrid *v,int n,int m)
{
	if(m>0)
	{
		LlenarMatriz(v,n,m-1);
		LlenarFila(v,n,m);
	}
}

void __fastcall TForm1::Button2Click(TObject *Sender)
{
	int n = StringGrid2->ColCount ; // Columna
	int m = StringGrid2->RowCount ; // Fila
	LlenarMatriz(StringGrid2,n,m);
}
//---------------------------------------------------------------------------

int f(TStringGrid *v,int n)
{
	int val;

	if(n>0)
	{
		f(v,n-1):
	}

	return val:
}

void __fastcall TForm1::Button3Click(TObject *Sender)
{

}
//---------------------------------------------------------------------------
