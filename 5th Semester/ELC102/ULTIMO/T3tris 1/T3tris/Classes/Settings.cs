using OpenTK;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3tris.Classes
{
    static class Settings
    {
        public const int WINDOW_WIDTH  = 480;
        public const int WINDOW_HEIGHT = 480;
        public const float INTERVAL = 1f;
        public const string APP_NAME = "Tetris3D";

        public static Point InitialLocation()
        {
            int width = (int)(DisplayDevice.Default.Width* 0.5) - WINDOW_WIDTH;
            int height = (int)(DisplayDevice.Default.Height* 0.5) - WINDOW_HEIGHT;
            return new Point(width, height);
        }
       

    }
}
