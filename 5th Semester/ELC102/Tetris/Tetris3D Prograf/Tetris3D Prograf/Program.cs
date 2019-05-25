using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tetris3D_Prograf.Classes;

namespace Tetris3D_Prograf
{
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            using (Game game  = new Game())
            {
                game.Run(30.0,30.0);
            }
        }
    }
}
