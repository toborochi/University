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

        public static float DegRad(float angulo)
        {
            return (float)(Math.PI / 180) * angulo;
        }

        public static Punto aplicarTransformacion(Punto Punto,Matriz m)
        {
            Punto PuntoNuevo = new Punto();
            PuntoNuevo.x = m.getDato(0, 0) * Punto.x + m.getDato(0, 1) * Punto.y + m.getDato(0, 2) * Punto.z;
            PuntoNuevo.y = m.getDato(1, 0) * Punto.x + m.getDato(1, 1) * Punto.y + m.getDato(1, 2) * Punto.z;
            PuntoNuevo.z = m.getDato(2, 0) * Punto.x + m.getDato(2, 1) * Punto.y + m.getDato(2, 2) * Punto.z;
            return PuntoNuevo;
        }

        public static Matriz Identidad()
        {
            Matriz matIdentidad = new Matriz();
            matIdentidad.setDato(1, 0, 0);
            matIdentidad.setDato(1, 1, 1);
            matIdentidad.setDato(1, 2, 2);
            return matIdentidad; 
        }

        public static Matriz Traslacion(float x,float y)
        {
            Matriz t = Identidad();
            t.setDato(x, 0, 2);
            t.setDato(y, 1, 2);
            return t;
        }

        public static Matriz Escalacion(float x, float y)
        {
            Matriz t = Identidad();
            t.setDato(x, 0, 0);
            t.setDato(y, 1, 1);
            return t;
        }

        public static Matriz ReflexionX()
        {
            Matriz t = Identidad();
            t.setDato(-1, 0, 0);
            return t;
        }
        public static Matriz ReflexionY()
        {
            Matriz t = Identidad();
            t.setDato(-1, 1, 1);
            return t;
        }

        public static Matriz Rotacion(float angulo)
        {
            Matriz t = Identidad();
            angulo = DegRad(angulo);
            t.setDato((float)Math.Cos(angulo), 0, 0);
            t.setDato(-(float)Math.Sin(angulo), 0, 1);
            t.setDato((float)Math.Sin(angulo), 1, 0);
            t.setDato((float)Math.Cos(angulo), 1, 1);
            return t;
        }


        public static Matriz AplicarMatriz(Matriz a,Matriz b)
        {
            Matriz c = new Matriz();

            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    for (int k = 0; k < 3; k++)
                    {
                        c.setDato(c.getDato(i, j) + a.getDato(i, k) * b.getDato(k, j), i, j);
                    }
                }
            }

            return c;
        }
    }
}
