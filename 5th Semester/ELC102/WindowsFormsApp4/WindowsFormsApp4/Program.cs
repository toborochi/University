using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using techdump.opengl.Components;

namespace WindowsFormsApp4
{
    static class Program
    {
        [STAThread]
        static void Main()
        {

            new MainWindow().Run(30);
        }
    }
}
