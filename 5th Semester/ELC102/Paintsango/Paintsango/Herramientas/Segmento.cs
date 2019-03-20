using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Paintsango.Herramientas
{
    [Serializable]
    public class Segmento
    {
        public Punto a,b; 
        public Segmento()
        {
            a = new Punto(0, 0); b = a;
        }

        public Segmento(Punto a,Punto b)
        {
            this.a = a;
            this.b = b;
        }
    }
}
