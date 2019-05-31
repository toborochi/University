using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3tris.Classes
{
    public abstract class IPieza
    {
        public Transform transform;

        public IPieza()
        {
            transform = new Transform();
        }
         abstract public void Draw();
        
    }
}
