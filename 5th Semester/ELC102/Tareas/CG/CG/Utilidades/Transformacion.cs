using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    public class Transformacion
    {
        private Punto traslacion;
        private Punto rotacion;
        private Punto escalacion;
        private Punto reflexion;
        public Matriz matTransformacion;

        public Transformacion()
        {
            traslacion = new Punto(0,0,0);
            rotacion   = new Punto(0,0,0);
            escalacion = new Punto(1,1,1);
            reflexion  = new Punto(1,1,1);
            matTransformacion = new Matriz();
            matTransformacion =  Matematica.Identidad();
        }

        public void reflexionEjeX()
        {
            matTransformacion.setData(matTransformacion.getData(0,0)*-1, 0, 0);
        }

        public void reflexionEjeY()
        {
            matTransformacion.setData(matTransformacion.getData(1,1)*-1, 1, 1);
        }

        public void trasladar(float x,float y)
        {
            matTransformacion.setData(x, 0, 2);
            matTransformacion.setData(y, 1, 2);
        }

        public void escalar(float x,float y)
        {
            matTransformacion.setData(x, 0,0);
            matTransformacion.setData(y, 1,1);
        }

        public Punto Traslacion
        {
            get
            {
                return new Punto(matTransformacion.getData(0, 2), matTransformacion.getData(1, 2), 1);
            }
        }

 

        public Punto Rotacion
        {
            get
            {
                return rotacion;
            }
        }

        public Punto Escalacion
        {
            get  
            {
                return escalacion;
            }
        }

        public Punto Reflexion
        {
            get
            {
                return reflexion;
            }
        }


    }
}
