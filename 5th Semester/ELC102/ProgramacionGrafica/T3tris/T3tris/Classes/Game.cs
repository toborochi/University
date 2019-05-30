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

        Container container = new Container(10,10,18);
        Camera camera;
        float xpos=0, ypos = 0,zpos=40;



        protected override void OnLoad(EventArgs e)
        {
            camera = new Camera(new Vector3(0,0,0), (float)Math.PI / 4, (float)Width/(float)Height, 1f, 100f);
            camera.Target = new Vector3(0,0,0);
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
                xpos += 5f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.Left))
            {
                xpos -= 5f;
            }

            if (Keyboard.GetState().IsKeyDown(Key.Up))
            {
                ypos += 5f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.Down))
            {
                ypos -= 5f;
            }

            if (Keyboard.GetState().IsKeyDown(Key.Z))
            {
                zpos -= 1f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.X))
            {
                zpos += 1f;
            }

            if (Math.Abs(zpos) <40) { zpos = 40; }
            if (Math.Abs(zpos) >70) { zpos = 70; }

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

   
        protected override void OnRenderFrame(FrameEventArgs e)
        {

            GL.LoadIdentity();
            GL.Clear(ClearBufferMask.ColorBufferBit | ClearBufferMask.DepthBufferBit);
            GL.LoadMatrix(ref camera.ViewCamera);


            
            camera.updateCameraPosition(MathHelper.DegreesToRadians(-ypos), MathHelper.DegreesToRadians(-xpos), zpos*7.5f);      
            GL.Translate(-(float)container.length/2,-(float)container.height/2,-(float)container.depth/2);
            container.drawContainer();

            GL.Translate(new Vector3(4, 18, 4));
            cubo();
            
           
            
            SwapBuffers();
        }

        private void cubo()
        {
            GL.PolygonMode(MaterialFace.FrontAndBack, PolygonMode.Fill);
            GL.Begin(PrimitiveType.Quads);
            // Cara
            GL.Color3(1.0f, 1.0f, 0.0f);
            GL.Normal3(-1.0f, 0.0f, 0.0f);
            GL.Vertex3(-1.0f, 1.0f, 1.0f);
            GL.Vertex3(-1.0f, 1.0f, -1.0f);
            GL.Vertex3(-1.0f, -1.0f, -1.0f);
            GL.Vertex3(-1.0f, -1.0f, 1.0f);
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
