/*
	Sesion de Laboratorio #2
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
//---------------------------------------------------------------------------
//Funcion que calcula la suma de los digitos pares
byte SumDP(Cardinal x)
{
	byte s;
	//Caso Base
	if( (x<10) && (x%2==0))
	{
		s = x;
	}else
	{
		s  = SumDP(x/10); //Llamada Recursiva
		if(x%2==0)
		{
			s = s + x%10;
		}
	}
	return s;
}

//Funcion que calcula la suma de los digitos impares
byte SumDI(Cardinal x)
{
	byte s ;
	//Caso Base
	if(x==0)
	{
		s = 0; //Caso critico, provoca una llamada descontrolada
	}else
	if( (x<10) && (x%2==1))
	{
		s = x;
	}else
	{
		s  = SumDI(x/10); //Llamada Recursiva
		if(x%2==1)
		{
			s = s + x%10;
		}
	}
	return s;
}

void __fastcall TForm2::Button1Click(TObject *Sender)
{
	 Edit2->Text = SumDP( StrToInt(Edit1->Text) );
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button2Click(TObject *Sender)
{
	 Edit2->Text = SumDI( StrToInt(Edit1->Text) );
}
//---------------------------------------------------------------------------
