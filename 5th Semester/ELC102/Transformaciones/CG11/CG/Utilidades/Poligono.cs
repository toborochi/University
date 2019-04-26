using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    [Serializable]
    public class Poligono
    {
        public string nombre = "Poligono";
        public List<Punto> Vertices;
        public Transformacion Transformacion;

        public Poligono()
        {
            Transformacion = new Transformacion();
            Vertices = new List<Punto>();
        }

        public Punto PrimerPunto()
        {
            return Vertices[0];
        }

        public Punto UltimoPunto()
        {
            return Vertices[Vertices.Count - 1];
        }

        public void AnadirPunto(Punto x)
        {
            Vertices.Add(x);
        }
    }
}
