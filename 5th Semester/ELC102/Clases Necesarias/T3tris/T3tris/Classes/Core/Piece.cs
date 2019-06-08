using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3tris.Classes
{
    public abstract class Piece
    {
        public Transform transform;

        public Piece()
        {
            transform = new Transform();
        }
         abstract public void Draw();
        
    }
}
