using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    public class Poligono
    {
        public Punto Origen;
        public List<Punto> Vertices;

        public Poligono()
        {
            Vertices = new List<Punto>();
        }

        public Punto PrimerPunto
        {
            get { return Vertices[0]; }   
            set { Vertices[0] = value; }
        }

        public Punto UltimoPunto
        {
            get { return Vertices[0]; }
            set { Vertices[Vertices.Count - 1] = value; }
        }

        public void AñadirPunto(Punto x)
        {
            Vertices.Add(x);
        }
    }
}
