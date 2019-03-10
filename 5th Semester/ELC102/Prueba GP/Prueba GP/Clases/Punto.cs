using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herramientas.Clases
{
    public class Punto
    {
        public float x;
        public float y;
        public float z;

        public Punto(float x=0,float y=0,float z=0)
        {
            this.x = x;
            this.y = y;
            this.z = z;
        }

        // 2D
        public void SetPunto(float x,float y)
        {
            this.x = x;
            this.y = y;
        }
        // 3D
        public void SetPunto(float x, float y,float z)
        {
            this.x = x;
            this.y = y;
            this.z = y;
        }

    }
}
