using Herramienta.Basico;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgramacionGrafica
{
    class Program
    {
        static void Main(string[] args)
        {
            vec3 a = new vec3(1,1,0);
            vec3 b = new vec3(4,9,2);

            a = b.Normalized;

            Console.WriteLine(a.y);


            Console.ReadKey();
        }
    }
}
