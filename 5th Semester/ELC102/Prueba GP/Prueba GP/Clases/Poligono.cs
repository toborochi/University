using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herramientas.Clases
{
    class Poligono
    {
        private List<Punto> PuntosPoligono = new List<Punto>();
        
        public void AddPunto(float x,float y,float z)
        {
            PuntosPoligono.Add(new Punto(x,y,z));
        }
        
    }
}
