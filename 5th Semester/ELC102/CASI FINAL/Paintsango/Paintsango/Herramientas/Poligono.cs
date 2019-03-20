using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Paintsango.Herramientas
{
    [Serializable]
    public class Poligono
    {
        public List<Segmento> Segmentos;

        public Poligono()
        {
            Segmentos = new List<Segmento>();
        }
    }
}
