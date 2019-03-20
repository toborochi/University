using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace Program.Clases
{
    [Serializable]
    public class Poligono
    {
        public List<Punto> Vertices;
        public Poligono() {
            Vertices =  new List<Punto>();
        }

        public void addVertice(float x, float y)
        {
            Vertices.Add(new Punto(x, y, 0));
        }
    }
}
