using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    [Serializable]
    public class Escena
    {
        public List<Escenario> Frames;
        public List<int> Tiempo;

        public Escena()
        {
            Frames = new List<Escenario>();
            Tiempo = new List<int>();
        }
    }
}
