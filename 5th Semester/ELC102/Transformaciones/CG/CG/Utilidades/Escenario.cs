using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    [Serializable]
    public class Escenario
    {
        public List<Objeto> Objetos;
        public Escenario()
        {
            Objetos = new List<Objeto>();
        }
    }
}
