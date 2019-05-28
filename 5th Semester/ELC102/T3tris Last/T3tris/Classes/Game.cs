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
            camera = new Camera(new Vector3(0,0,0), (float)Math.PI / 4, (float)Width/(float)Height, 1f, 100f);
            // Profundidad
            GL.Enable(EnableCap.DepthTest);

            GL.Viewport(0, 0,Width, Height);
            //GL.MatrixMode(MatrixMode.Projection);
            GL.LoadIdentity();
            GL.LoadMatrix(ref camera.ViewCamera);
            GL.MatrixMode(MatrixMode.Modelview);

        }

        protected override void OnUpdateFrame(FrameEventArgs e)
        {
            base.OnUpdateFrame(e);

            if (Keyboard.GetState().IsKeyDown(Key.Right))
            {
                xpos += 7.5f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.Left))
            {
                xpos -= 7.5f;
            }

            if (Keyboard.GetState().IsKeyDown(Key.Up))
            {
                ypos += 7.5f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.Down))
            {
                ypos -= 7.5f;
            }

            if (Keyboard.GetState().IsKeyDown(Key.Z))
            {
                zpos -= 1f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.X))
            {
                zpos += 1f;
            }

            if (Math.Abs(zpos) <20) { zpos = 20; }
            if (Math.Abs(zpos) >30) { zpos = 30; }

            if ((float)Math.Abs(ypos)>85)
            {
                ypos = 85 * Math.Sign(ypos);
            }

            camera.dist = zpos;

            //xpos = constrainAngle(xpos);
            //ypos = constrainAngle(ypos);



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
            //GL.MatrixMode(MatrixMode.Projection);
            GL.LoadIdentity();
            GL.LoadMatrix(ref camera.ViewCamera);

            GL.MatrixMode(MatrixMode.Modelview);
        }

        float sinp = 0;

        protected override void OnRenderFrame(FrameEventArgs e)
        {

            GL.LoadIdentity();
            GL.Clear(ClearBufferMask.ColorBufferBit | ClearBufferMask.DepthBufferBit);

            camera.updateCameraPosition(MathHelper.DegreesToRadians(-ypos), MathHelper.DegreesToRadians(-xpos), zpos*5);


            GL.LoadMatrix(ref camera.ViewCamera);
            GL.PushMatrix();

            cubo();
            GL.Translate(new Vector3(2,0,0));
            cubo();

            
            GL.PopMatrix();

            SwapBuffers();
        }

        private void cubo()
        {
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
            GL.Vertex3(1.0, 1.0, 1.0);
            GL.Vertex3(1.0, -1.0, 1.0);
            GL.Vertex3(-1.0, -1.0, 1.0);
            GL.Vertex3(-1.0, 1.0, 1.0);

            GL.End();
        }
    }
}
