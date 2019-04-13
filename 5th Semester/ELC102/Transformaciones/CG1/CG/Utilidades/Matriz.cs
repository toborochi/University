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
        private float[,] mat;

        public Matriz()
        {
            mat = new float[3, 3];
        }

        public Matriz(int x, int y)
        {
            mat = new float[x, y];
        }

        public float getData(int posX, int posY)
        {
            return mat[posX, posY];
        }


        public void setData(float data, int posX, int posY)
        {
            mat[posX, posY] = data;
        }

        
        
    }
}
