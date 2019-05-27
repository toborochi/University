using OpenTK;
using OpenTK.Graphics.OpenGL;
using OpenTK.Graphics;
using OpenTK.Input;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3tris.Classes
{
    public class Game : GameWindow
    {
        #region Constructor
        public Game()
            :base(Settings.WINDOW_WIDTH, Settings.WINDOW_HEIGHT, new GraphicsMode(32, 24, 8, 4),Settings.APP_NAME)
        {
            Location = Settings.InitialLocation();
        }
        #endregion

        Container container = new Container(12,12,18);
        Camera camera;
        float xpos=0, ypos = 0,zpos=0;



        protected override void OnLoad(EventArgs e)
        {
            
            camera = new Camera(new Vector3(0,20,20f), (float)Math.PI / 4, Width/Height, 1f, 100f);
            // Profundidad
            GL.Enable(EnableCap.DepthTest);

            GL.Viewport(0, 0,Width, Height);
            GL.MatrixMode(MatrixMode.Projection);
            GL.LoadIdentity();
            GL.LoadMatrix(ref camera.ViewCamera);
            GL.MatrixMode(MatrixMode.Projection);
        }

        protected override void OnUpdateFrame(FrameEventArgs e)
        {
            base.OnUpdateFrame(e);

            if (Keyboard.GetState().IsKeyDown(Key.Right))
            {
                xpos += 0.5f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.Left))
            {
                xpos -= 0.5f;
            }

            if (Keyboard.GetState().IsKeyDown(Key.Up))
            {
                ypos += 0.5f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.Down))
            {
                ypos -= 0.5f;
            }

            if (Keyboard.GetState().IsKeyDown(Key.Z))
            {
                zpos += 0.5f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.X))
            {
                zpos -= 0.5f;
            }

           
            

            if (Keyboard.GetState().IsKeyDown(Key.Escape))
            {
                Exit();
            }
        }


        float constrainAngle(float x)
        {
            x = x % 360;
            if (x < 0)
                x += 360;
            return x;
        }

        protected override void OnResize(EventArgs e)
        {
            GL.Viewport(0, 0,Width, Height);
            GL.MatrixMode(MatrixMode.Projection);
            GL.LoadIdentity();
            GL.LoadMatrix(ref camera.ViewCamera);
            GL.MatrixMode(MatrixMode.Projection);
        }

        float x = 0;


        protected override void OnRenderFrame(FrameEventArgs e)
        {

           
            GL.Clear(ClearBufferMask.ColorBufferBit | ClearBufferMask.DepthBufferBit);

            camera.updateCameraPosition(xpos,ypos);

            

            GL.LoadMatrix(ref camera.ViewCamera);
            GL.PushMatrix();
            

            GL.Begin(PrimitiveType.Quads);
            // Cara
            GL.Color3(1.0, 1.0, 0.0);
            GL.Normal3(-1.0, 0.0, 0.0);
            GL.Vertex3(-1.0, 1.0, 1.0);
            GL.Vertex3(-1.0, 1.0, -1.0);
            GL.Vertex3(-1.0, -1.0, -1.0);
            GL.Vertex3(-1.0, -1.0, 1.0);
            // Cara
            GL.Color3(1.0, 0.0, 1.0);
            GL.Normal3(1.0, 0.0, 0.0);
            GL.Vertex3(1.0, 1.0, 1.0);
            GL.Vertex3(1.0, 1.0, -1.0);
            GL.Vertex3(1.0, -1.0, -1.0);
            GL.Vertex3(1.0, -1.0, 1.0);
            // Cara
           GL.Color3(0.0, 1.0, 1.0);
            GL.Normal3(0.0, -1.0, 0.0);
            GL.Vertex3(1.0, -1.0, 1.0);
            GL.Vertex3(1.0, -1.0, -1.0);
            GL.Vertex3(-1.0, -1.0, -1.0);
            GL.Vertex3(-1.0, -1.0, 1.0);
            // Cara
            GL.Color3(1.0, 0.0, 0.0);
            GL.Normal3(0.0, 1.0, 0.0);
            GL.Vertex3(1.0, 1.0, 1.0);
            GL.Vertex3(1.0, 1.0, -1.0);
            GL.Vertex3(-1.0, 1.0, -1.0);
            GL.Vertex3(-1.0, 1.0, 1.0);
            // Cara
            GL.Color3(0.0, 1.0, 0.0);
            GL.Normal3(0.0, 0.0, -1.0);
            GL.Vertex3(1.0, 1.0, -1.0);
            GL.Vertex3(1.0, -1.0, -1.0);
            GL.Vertex3(-1.0, -1.0, -1.0);
            GL.Vertex3(-1.0, 1.0, -1.0);
            // Cara
            GL.Color3(0.0, 0.0, 1.0);
            GL.Normal3(0.0, 0.0, 1.0);
            GL.Vertex3(1.0, 1.0,1.0);
            GL.Vertex3(1.0, -1.0, 1.0);
            GL.Vertex3(-1.0, -1.0, 1.0);
            GL.Vertex3(-1.0, 1.0,1.0);

            GL.End();
            GL.PopMatrix();


            SwapBuffers();
        }
    }
}
