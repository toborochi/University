using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    [Serializable]
    public class Matriz
    {
        public float[] mat;

        public Matriz()
        {
            mat = new float[9];
        }

        public float getDato(int posX, int posY)
        {
            return mat[posX * 3 + posY];
        }
        
        public void setDato(float data, int posX, int posY)
        {
            mat[posX * 3 + posY] = data;
        }

        
        
    }
}
