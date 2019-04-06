using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    public static class Matematica
    {
        public static Punto PantallaCoordenada(Punto a, Punto Origen)
        {
            Punto b = new Punto();
            b.x = a.x - Origen.x;
            b.y = Origen.y - a.y;
            return b;
        }

        public static Punto CoordenadaPantalla(Punto a,Punto Origen)
        {
            Punto b = new Punto();
            b.x = a.x + Origen.x ;
            b.y = -a.y + Origen.y;
            return b;
        }
    }
}
