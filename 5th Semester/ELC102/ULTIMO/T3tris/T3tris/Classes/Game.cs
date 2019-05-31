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
using OpenTK.Audio.OpenAL;
using OpenTK.Audio;
using System.IO;
using System.Media;

namespace T3tris.Classes
{
    public class Game : GameWindow
    {
        #region Variables de Juego
        Container container;
        Camera camera;
        #endregion

        #region Constructor
        public Game()
            :base(Settings.WINDOW_WIDTH, Settings.WINDOW_HEIGHT, new GraphicsMode(32, 24, 8, 4),Settings.APP_NAME)
        {
            Location = Settings.InitialLocation();
        }
        #endregion

        PiezaI J = new PiezaI();
        float xpos=0, ypos = 0,zpos=15;
        float xrot = 0, yrot = 0, zrot = 0;
        float deltaTime = 0;
        float altura = 15,posicionX=0,posicionZ=0;


        protected override void OnLoad(EventArgs e)
        {
            // Contenedor
            container = new Container(10, 10, 16);

            // Camara
            camera = new Camera(new Vector3(0, 0, 0), (float)Math.PI / 4, (float)Width / (float)Height, 1f, 100f);

            // A donde esta viendo la camara
            camera.Target = new Vector3(container.length / 2 - 1, container.depth / 2 - 1, container.height / 2 - 1);
            
            GL.Enable(EnableCap.DepthTest);
            GL.Viewport(0, 0,Width, Height);
            GL.LoadIdentity();
            GL.LoadMatrix(ref camera.ViewCamera);
            GL.MatrixMode(MatrixMode.Modelview);

        }
        

        protected override void OnUpdateFrame(FrameEventArgs e)
        {
            base.OnUpdateFrame(e);

            deltaTime += (float)this.UpdatePeriod;

            if (deltaTime > Settings.INTERVAL)
            {
                altura--;
                deltaTime = 0;
            }

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

            if (Keyboard.GetState().IsKeyDown(Key.ShiftLeft))
            {
                zpos -= 1f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.ControlLeft))
            {
                zpos += 1f;
            }

            if (Math.Abs(zpos) <40) { zpos = 40; }
            if (Math.Abs(zpos) >70) { zpos = 70; }

            if ((float)Math.Abs(ypos)>89)
            {
                ypos = 89 * Math.Sign(ypos);
            }

            camera.distance = zpos;

           

            if (Keyboard.GetState().IsKeyDown(Key.Escape))
            {
               
                Exit();
            }


            J.transform.Position = new Vector3(posicionX, altura, posicionZ);
            J.transform.Rotation = new Vector3(xrot, yrot, zrot);

        }


        float ClampAngle(float x)
        {
            x = x % 360;
            if (x < 0)
                x += 360;
            return x;
        }

        protected override void OnResize(EventArgs e)
        {
            GL.Viewport(0, 0,Width, Height);
            camera.OnWindowResize((float)Math.PI / 4, (float)Width / (float)Height, 1f, 100f);
            GL.LoadIdentity();
            GL.LoadMatrix(ref camera.ViewCamera);
            GL.MatrixMode(MatrixMode.Modelview);
        }

        protected override void OnKeyPress(KeyPressEventArgs e)
        {
            base.OnKeyPress(e);
            if (Keyboard.GetState().IsKeyDown(Key.Z))
            {
                xrot += 90;
               
            }
            if (Keyboard.GetState().IsKeyDown(Key.X))
            {
                yrot += 90;
            }
            if (Keyboard.GetState().IsKeyDown(Key.C))
            {
                zrot += 90;
               
            }


            if (Keyboard.GetState().IsKeyDown(Key.A))
            {
                posicionX--;

            }
            if (Keyboard.GetState().IsKeyDown(Key.D))
            {
                posicionX++;
            }
            if (Keyboard.GetState().IsKeyDown(Key.W))
            {
                posicionZ--;
            }
            if (Keyboard.GetState().IsKeyDown(Key.S))
            {
                posicionZ++;

            }

            zrot %= 360;
            xrot %= 360;
            yrot %= 360;
        }

        protected override void OnRenderFrame(FrameEventArgs e)
        {
            GL.Clear(ClearBufferMask.ColorBufferBit | ClearBufferMask.DepthBufferBit);
            GL.LoadIdentity();
            GL.MatrixMode(MatrixMode.Modelview);
            GL.LoadMatrix(ref camera.ViewCamera);
            
            // Actualizar Camara
            camera.updateCameraPosition(MathHelper.DegreesToRadians(-ypos), MathHelper.DegreesToRadians(-xpos), zpos*7.5f);
   
            // Dibujar Container
            container.drawContainer();

           
            J.Draw();

            SwapBuffers();
        }
      
    }
}
