using OpenTK;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using T3tris.Classes;

namespace T3tris
{
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            Game game = new Game();
            game.Run(60);    
        }
    }
}
