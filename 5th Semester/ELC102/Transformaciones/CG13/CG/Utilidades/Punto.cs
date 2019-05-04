using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    [Serializable]
    public class Punto
    {
        public float x, y, z;

        public Punto()
        {
            x = y = 0;
            z = 1;
        }

        public Punto(float x,float y,float z=1)
        {
            this.x = x;
            this.y = y;
            this.z = z;
        }

       
    }
}
