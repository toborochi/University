using OpenTK;
using OpenTK.Graphics;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tetris3D.Classes;

namespace Tetris3D
{
    class Program
    {
        static void Main(string[] args)
        {
            int winwidth = 640;
            int winheight = 480;
            int width = (DisplayDevice.Default.Width / 2)-winwidth;
            int height = (DisplayDevice.Default.Height / 2)- winheight ;

            GameWindow Ventana = new GameWindow(winwidth,winheight,GraphicsMode.Default,"Tetris3D by Toborochi");
            
            Ventana.Location = new Point(width,height);

            Window win = new Window(Ventana);

        }
    }
}
