using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgramacionGrafica.Herramientas
{
    [Serializable]
    public class Objeto
    {
        public List<Poligono> Poligonos;

        public Objeto()
        {
            Poligonos = new List<Poligono>();
        }
    }
}
