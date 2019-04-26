using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    [Serializable]
    public class Transformacion
    {
        public Matriz matTransformacion;

        public Transformacion()
        {
            matTransformacion = new Matriz();
            matTransformacion = Matematica.Identidad();
        }


        public void reflexionX()
        {
            matTransformacion = Matematica.AplicarMatriz(Matematica.ReflexionX(),matTransformacion);        
        }

        public void reflexionY()
        {
            matTransformacion = Matematica.AplicarMatriz(Matematica.ReflexionY(),matTransformacion);
        }

        public void trasladar(float x,float y)
        {
            matTransformacion = Matematica.AplicarMatriz(Matematica.Traslacion(x, y),matTransformacion);
        }

        public void escalar(float x,float y)
        {
            matTransformacion = Matematica.AplicarMatriz(Matematica.Escalacion(x, y),matTransformacion);
        }

        public void rotar(float angulo)
        {
            matTransformacion = Matematica.AplicarMatriz(Matematica.Rotacion(angulo),matTransformacion);
        }

        public void rotarRespecto(float angulo,float x,float y)
        {
            matTransformacion = Matematica.AplicarMatriz(Matematica.Traslacion(-x,-y), matTransformacion);
            matTransformacion = Matematica.AplicarMatriz(Matematica.Rotacion(angulo), matTransformacion);
            matTransformacion = Matematica.AplicarMatriz(Matematica.Traslacion(x,y), matTransformacion);
        }

        public void trasladarRespecto(float tx,float ty, float x, float y)
        {
            matTransformacion = Matematica.AplicarMatriz(Matematica.Traslacion(-x, -y), matTransformacion);
            matTransformacion = Matematica.AplicarMatriz(Matematica.Traslacion(tx, ty), matTransformacion);
            matTransformacion = Matematica.AplicarMatriz(Matematica.Traslacion(x, y), matTransformacion);
            // TODO Preguntar si es lo mismo
            //matTransformacion = Matematica.AplicarMatriz(Matematica.Traslacion(x, y),matTransformacion);
        }

        public void escalarRespecto(float sx, float sy, float x, float y)
        {
            matTransformacion = Matematica.AplicarMatriz(Matematica.Traslacion(-x, -y), matTransformacion);
            matTransformacion = Matematica.AplicarMatriz(Matematica.Escalacion(sx, sy), matTransformacion);
            matTransformacion = Matematica.AplicarMatriz(Matematica.Traslacion(x, y), matTransformacion);
        }

        public void reflejarRespecto(Punto x1, Punto x2)
        {
            float m = Matematica.Pendiente(x1, x2);
            if(x1.x!=x2.x)
            {
                float b = x2.y - (m * x2.x);
                float a = (float)Math.Atan(m) * (180 / (float)Math.PI);
                matTransformacion = Matematica.AplicarMatriz(Matematica.Traslacion(0, -b), matTransformacion);
                matTransformacion = Matematica.AplicarMatriz(Matematica.Rotacion(-a), matTransformacion);
                matTransformacion = Matematica.AplicarMatriz(Matematica.ReflexionY(), matTransformacion);
                matTransformacion = Matematica.AplicarMatriz(Matematica.Rotacion(a), matTransformacion);
                matTransformacion = Matematica.AplicarMatriz(Matematica.Traslacion(0, b), matTransformacion);

            }
        }

        public void setEscalacion(float x,float y)
        {
            matTransformacion.setDato(x, 0, 0);
            matTransformacion.setDato(y, 1, 1);
        }

        public void setTraslacion(float x, float y)
        {
            matTransformacion.setDato(x, 0, 2);
            matTransformacion.setDato(y, 1, 2);
        }

        

      


    }
}
