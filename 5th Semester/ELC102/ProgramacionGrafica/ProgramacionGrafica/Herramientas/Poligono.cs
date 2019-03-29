using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgramacionGrafica.Herramientas
{
    [Serializable]
    public class Poligono
    {
        public List<Punto> Puntos;

        public Poligono()
        {
            Puntos = new List<Punto>();
        }

        

    }
}
