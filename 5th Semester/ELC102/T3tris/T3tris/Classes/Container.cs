using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3tris.Classes
{
    public class Container
    {

        public Transform transform;
        public int length, depth, height;

        public Container()
        {
            length = depth = height = 0;
            transform = new Transform();
        }

        public Container(int lenght,int depth,int height):this()
        {
            this.length = lenght;
            this.depth = depth;
            this.height = height;
        }
    }
}
