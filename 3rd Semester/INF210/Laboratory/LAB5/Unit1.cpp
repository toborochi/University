/*
	Sesion de Laboratorio #5
	Docente: Juan Contreras
	U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
	Leonardo Anez Vladimirovna
*/


/*
	1. Llenar una matriz cuadrada de manera circular.

	Ejemplo:

	33333
	32223
	32123
	32223
	33333

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
//---------------------------------------------------------------------------


// Llenar la Matriz
void Fill(TStringGrid *mat,byte f1,byte f2, byte c1,byte c2)
{
	byte m = c2-c1+1; 	// Cantidad de Elementos
	if(m>0)
	{
		if(m==1)
		{
			// Casos Base
			mat->Cells[c1][f1]=f1+1; // Mitad Triangulo Superior
			mat->Cells[c1][f2]=f1+1; // Mitad Triangulo Inferior
			mat->Cells[f1][c1]=f1+1; // Mitad Triangulo Izquierdo
			mat->Cells[f2][c1]=f1+1; // Mitad Triangulo Derecho
		}else
		{
			Fill(mat,f1,f2,c1+1,c2-1);  // Llamada Recursiva

			// Llena el Triangulo Superior
			mat->Cells[c1][f1]=f1+1;
			mat->Cells[c2][f1]=f1+1;
			// Llena el Triangulo Inferior
			mat->Cells[c1][f2]=f1+1;
			mat->Cells[c2][f2]=f1+1;
			// Llena el Triangulo Izquierdo
			mat->Cells[f1][c1]=f1+1;
			mat->Cells[f1][c2]=f1+1;
			// Llena el Triangulo Derecho
			mat->Cells[f2][c1]=f1+1;
			mat->Cells[f2][c2]=f1+1;
		}
	}

}

// Hipotesis n-2,m-2
void MatCirc(TStringGrid *mat,byte f1,byte f2, byte c1,byte c2)
{
	byte m = c2-c1+1; 	// Cantidad de Elementos
	if(m>0)             // Primer Caso Base
	{
		if(m==1)		// Segundo Case Base (Matriz de 1x1)
		{
			mat->Cells[c1][f1]=f1+1;
		}else
		{
			MatCirc(mat,f1+1,f2-1,c1+1,c2-1);
			Fill(mat,f1,f2,c1,c2);
		}
	}

}


void __fastcall TForm1::Edit1Click(TObject *Sender)
{
	byte m = StrToInt(InputBox("","Filas","5") );
	StringGrid1->ColCount = m;
	StringGrid1->RowCount = m;

	MatCirc(StringGrid1,0,m-1,0,m-1);
}
//---------------------------------------------------------------------------
