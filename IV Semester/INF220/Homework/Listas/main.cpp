/*////////////////////////////////////////////////////////////////////////////
    U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones

    Materia: Estructura de Datos I
	Docente: Mario Lopez Winnipeg

	Autor: Leonardo H. Anez Vladimirovna
	Correo: toborochi@outlook.com

	Resumen:
            Implementaciones de todas los temas de la Materia:
            --------------------------------------------------
            Listas:
                   Puntero
                   Vector
                   Simulacion Memoria
            Pila:
                   Vector
                   Puntero
                   Simulacion Memoria
                   Lista
            Conjunto:
                   Vector
                   Puntero
                   Simulacion Memoria
                   Lista
                   Entero
            Polinomio:
                   Vector
                   Puntero
                   Simulacion Memoria
                   Lista
            Matriz Dispersa:
                   Vector
                   Puntero
                   Comprimido
*/////////////////////////////////////////////////////////////////////////////

#include <iostream.h>
#include <conio.h>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>
#include <iomanip>

#include <TDAMatrizDispersaVector.h>

using namespace std;

void MostrarOpciones()
{
 	cout<<"POLINOMIO:\n";
	cout<<"[1] Crear\n";
    cout<<"[2] Dimensionar\n";
	cout<<"[3] Poner\n";
	cout<<"[4] Elemento\n";
	cout<<"[5] Mostrar\n";
	cout<<"[6] Repetido\n";
    cout<<"[7] Salir\n";
    cout<<"Opcion: ";
}

int main()
{
     TDAMatrizDispersaVector MD;
     int opcion,fil,col,elemento;

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
                 MD.crear();
                 break;

            case 2:
                 cin>>fil>>col;
                 MD.dimensionar(fil,col);
                 break;
            case 3:
                 cin>>fil>>col>>elemento;
                 MD.poner(fil,col,elemento);
                 break;
            case 4:
                 cin>>fil>>col;
                 cout<<MD.elemento(fil,col)<<endl;
                 break;
            case 5:
                 for(int i=1;i<=MD.dimension_fila();++i)
                 {
                     for(int j=1;j<=MD.dimension_columna();++j)
                     {
                         cout<<MD.elemento(i,j)<<" ";
                     }cout<<endl;
                 }
                 break;
            case 6:
                 cin>>elemento;
                 MD.definir_valor_repetido(elemento);
                 break;
			default:
					break;
		}
		getch();

	}while(opcion!=6);




	getch();
	return 0;
}

