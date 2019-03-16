using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herramienta.Basico
{
    /// <summary>
    /// Unidad basica del plano.
    /// </summary>
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
    }
}
