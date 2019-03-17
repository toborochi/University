using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Program.Clases
{
    [Serializable] 
    public class Punto
    {
        public float x, y, z;

        public Punto()
        {
            x = y = z = 0;
        }

        public Punto(float x,float y,float z)
         {
            this.x = x;
            this.y = y;
            this.z = z;
        }

        public float this[int indice]
        {
            get
            {
                switch (indice)
                {
                    case 0: return x;
                    case 1: return y;
                    case 2: return z;
                    default:
                        throw new IndexOutOfRangeException("Indice fuera de Rango!");
                }
            }

            set
            {
                switch (indice)
                {
                    case 0: x = value; break;
                    case 1: y = value; break;
                    case 2: z = value; break;
                    default:
                        throw new IndexOutOfRangeException("Indice fuera de Rango!");
                }
            }


        }

    }
}
