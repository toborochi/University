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

        public void setEscalacion(float x,float y)
        {
            matTransformacion.setData(x, 0, 0);
            matTransformacion.setData(y, 1, 1);
        }

        public void setTraslacion(float x, float y)
        {
            matTransformacion.setData(x, 0, 2);
            matTransformacion.setData(y, 1, 2);
        }

        

      


    }
}
