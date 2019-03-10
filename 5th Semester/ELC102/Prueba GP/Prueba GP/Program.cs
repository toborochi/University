using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Herramientas.Clases;

namespace ProgramacionGrafica
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hola como estas!");

            Punto Punto = new Punto();
            Console.WriteLine(Punto.x);

            Console.ReadKey();
        }
    }
}
