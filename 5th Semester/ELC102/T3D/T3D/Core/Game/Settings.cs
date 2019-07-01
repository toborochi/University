using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3D.Core.Game
{
    public static class Settings
    {
        public static string TITLE = "T3D "+ System.Reflection.Assembly.GetExecutingAssembly().GetName().Version;
        public static Point WIN_POSITION = new Point(0, 0);
        public static float CURRENT_WIN_WIDTH = 512;
        public static float CURRENT_WIN_HEIGHT = 512;
    }
}
