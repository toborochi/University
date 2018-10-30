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
*/////////////////////////////////////////////////////////////////////////////

#include <iostream.h>
#include <conio.h>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>
#include <iomanip>

#include <TDAPolinomioLista.h>

using namespace std;

void MostrarOpciones()
{
 	cout<<"POLINOMIO:\n";
	cout<<"[1] Crear\n";
	cout<<"[2] Poner Termino Polinomio (P1)\n";
	cout<<"[3] Poner Termino Polinomio (P2)\n";
	cout<<"[4] Mostrar Polinomio (P1)\n";
	cout<<"[5] Mostrar Polinomio (P2)\n";
	cout<<"[6] Sumar Polinomio (P1,P2)\n";
	cout<<"[7] Mostrar P3\n";
    cout<<"[8] Salir\n";
    cout<<"Opcion: ";
}

int main()
{
    TDAPolinomioLista P1,P2,P3;
    double a,b,dx,area;
    int coe,exp;
    int opcion,i;
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
            // Crear
			case 1:
                    P1.crear();
                    P2.crear();
                    P3.crear();
					break;
			// Poner en P1
			case 2:

                    cout<<"Coeficiente:";
                    cin>>coe;
                    cout<<"Exponente:";
                    cin>>exp;
                    P1.poner_termino(coe,exp);
					break;
			// Poner en P2
			case 3:

                    cout<<"Coeficiente:";
                    cin>>coe;
                    cout<<"Exponente:";
                    cin>>exp;
                    P2.poner_termino(coe,exp);
					break;
            // Derivar
			case 4:
                    P1.mostrar();
					break;
			// Coordenadas
			case 5:
                    P2.mostrar();
                    /*
                    cout<<"Inicio:";
                    cin>>a;
                    cout<<"Fin:";
                    cin>>b;
                    cout<<"dx:";
                    cin>>dx;

                    i=1;
                    cout<<fixed<<setprecision(3);
                    while(a<=b)
                    {
                        cout<<"x"<<i<<": "<<a<<" - fx"<<i<<": "<<P.evaluar(a)<<endl;
                        a+=dx;
                        ++i;
                    }
                      */
					break;
			 // Area
			case 6:
                    P3.sumar(P1,P2);
                    /*
                    cout<<"Inicio:";
                    cin>>a;
                    cout<<"Fin:";
                    cin>>b;
                    cout<<"dx:";
                    cin>>dx;

                    area = 0;
                    while(a<b)
                    {
                        area+= abs(dx*P.evaluar(a));
                        a+=dx;
                    }
                    cout<<"Area: "<<area<<endl;
                    */
					break;
			// Salir
            case 7:
                   P3.mostrar();
                   break;
			default:
					break;
		}
		getch();

	}while(opcion!=8);
    

	getch();
	return 0;
}

