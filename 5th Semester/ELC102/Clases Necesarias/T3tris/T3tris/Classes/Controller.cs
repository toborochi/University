using NAudio.Wave;
using OpenTK;
using OpenTK.Graphics.OpenGL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3tris.Classes
{
    public class Controller
    {
        #region Singleton
        private static Controller instance;

        private Controller() { }

        public static Controller Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Controller();
                }
                return instance;
            }
        }
        #endregion

        public Container container = new Container(8,8,16);
        public Camera camera ;
        public Tetromino tetromino = new Tetromino();
        public WaveOut AudioPlayer;


        public void draw()
        {
            //GL.MatrixMode(MatrixMode.Modelview);
            GL.LoadMatrix(ref camera.ViewCamera);

            // Dibujar Container
            container.drawContainer();

            // Dibujar Pieza Actual
            tetromino.Draw();

        }
    }
}
