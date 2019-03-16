using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Program.Clases
{
    [Serializable]
    public class Objeto
    {
        public List<Poligono> Poligonos = new List<Poligono>();

        public Objeto()
        {
        }
    }
}
