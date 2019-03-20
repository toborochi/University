using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Paintsango.Herramientas
{
    [Serializable]
    public class Punto
    {
        public float x, y, z;
        public Punto()
        {
            x = y = z = 0;
        }
        public Punto(float x, float y)
        {
            this.x = x;
            this.y = y;
            z = 0;
        }

        public Punto(float x,float y,float z)
        {
            this.x = x;
            this.y = y;
            this.z = z;
        }
    }
}
