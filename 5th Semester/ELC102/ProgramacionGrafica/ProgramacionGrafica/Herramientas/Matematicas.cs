using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgramacionGrafica.Herramientas
{
    public static class Matematicas
    {
        public static Punto PantallaCoordenada(Punto a, float Largo, float Alto)
        {
            Punto b = new Punto();
            b.x = a.x - Largo / 2;
            b.y = Alto / 2 - a.y;
            return b;
        }

        public static Punto CoordenadaPantalla(Punto a, float Largo, float Alto)
        {
            Punto b = new Punto();
            b.x = a.x + Largo / 2;
            b.y = -a.y + Alto / 2;
            return b;
        }

        public static Punto CoordenadaProporcional(Punto a, float Largo, float Alto)
        {
            Punto b = new Punto(a.x / (Largo / 2), a.y / (Alto / 2));
            return b;
        }

        public static Punto ProporcionalCoordenada(Punto a, float Largo, float Alto)
        {
            Punto b = new Punto(a.x * (Largo / 2), a.y * (Alto / 2));
            return b;
        }
    }
}
