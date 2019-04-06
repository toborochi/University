using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    public class Punto
    {
        public float x, y, z;

        public Punto(float x,float y,float z=0)
        {
            this.x = x;
            this.y = y;
            this.z = z;
        }

        public Punto()
        {
            x = y = z = 0;
        }
    }
}
