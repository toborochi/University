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

        public static Punto aplicarTransformacion(Punto Punto,Matriz m)
        {
            Punto PuntoNuevo = new Punto();
            PuntoNuevo.x = m.getData(0, 0) * Punto.x + m.getData(0, 1) * Punto.y + m.getData(0, 2) * Punto.z;
            PuntoNuevo.y = m.getData(1, 0) * Punto.x + m.getData(1, 1) * Punto.y + m.getData(1, 2) * Punto.z;
            PuntoNuevo.z = m.getData(2, 0) * Punto.x + m.getData(2, 1) * Punto.y + m.getData(2, 2) * Punto.z;
            return PuntoNuevo;
        }

        public static Matriz Identidad()
        {
            Matriz id = new Matriz();
            id.setData(1, 0, 0);
            id.setData(1, 1, 1);
            id.setData(1, 2, 2);
            return id; 
        }
    }
}
