using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    [Serializable]
    public class Objeto
    {
        public Punto Origen;
        public Transformacion Transformacion;
        public List<Poligono> Poligonos;

        public Objeto()
        {
            Transformacion = new Transformacion();
            Origen = new Punto(0, 0);
            Poligonos = new List<Poligono>();
        }

        public Poligono PrimerPoligono()
        {
            return Poligonos[0];
        }

    }
}
