using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    public class Objeto
    {
        public Punto Origen;
        public List<Poligono> Poligonos;

        public Objeto()
        {
            Origen = new Punto(0, 0);
            Poligonos = new List<Poligono>();
        }

    }
}
