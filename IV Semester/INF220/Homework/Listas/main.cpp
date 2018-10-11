/*////////////////////////////////////////////////////////////////////////////
	Tarea #3
	Docente: Mario Lopez Winnipeg
	U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
	Leonardo Anez Vladimirovna
*/////////////////////////////////////////////////////////////////////////////

#pragma hdrstop

#include <iostream.h>
#include <conio.h>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>

#include "TDAConjuntoPila.h"

#pragma package(smart_init)



/*
 Listas-----------------
	Lista Puntero:    OK
	Lista Vector:     OK
	Lista Memoria:    OK
 Pilas------------------
	Pila Vector:      OK
	Pila Puntero:     OK
	Pila Memoria:     OK
	Pila Lista:       OK
 Conjuntos--------------
	Conjunto Vector:  OK
	Conjunto Puntero: OK
	Conjunto Memoria: OK
	Conjunto Lista:   OK
	Conjunto Entero:  OK
*/

using namespace std;

#pragma region Menu
void MostrarOpciones()
{
	cout<<"[1] Crear A\n";
	cout<<"[2] Crear B\n";
	cout<<"[3] Crear C\n";
	cout<<"[4] Poner en A\n";
	cout<<"[5] Poner en B\n";
	cout<<"[6] Complemento AB\n";
	cout<<"[7] Mostrar C\n";
	cout<<"Opcion: ";
}
#pragma end_region

#pragma region MAIN
int main()
{
	 TDAConjuntoPila A,B,C;




	int opcion,dato;

	do
	{
		// Refresh de la Consola
		system("cls");

		// Menu de Opciones
		MostrarOpciones();

		// Opcion del Menu
		cin>>opcion;

		switch(opcion)
		{
			case 1:
				A.crear();
			break;
			case 2:
				B.crear();
			break;
			case 3:
				C.crear();
			break;
			case 4:
				cout<<"Inserte dato: ";
				cin>>dato;
				A.inserta(dato);
			break;
			case 5:
                cout<<"Inserte dato: ";
				cin>>dato;
                B.inserta(dato);
			break;
			case 6:
				C.crear();
				for(int i=0;i<=1000000;++i)
				{
					if(!A.vacio() && !B.vacio())
					{
					    if(A.pertenece(i) && !B.pertenece(i))
						{
                            cout<<i<<endl;
                            C.inserta(i);
						}else
						if(!A.pertenece(i) && B.pertenece(i))
						{
                            cout<<i<<endl;
                            C.inserta(i);
						}
                    }
				}

				

			break;
			case 7:
				C.imprimir();
			break;
            default : break;
		}
        getch();

	}while(opcion!=8);

	getch();

	return 0;

}
#pragma end_region

