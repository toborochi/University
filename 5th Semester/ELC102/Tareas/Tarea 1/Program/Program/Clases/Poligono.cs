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
        public List<Punto> Vertices = new List<Punto>();
        public Poligono() { }
    }
}
