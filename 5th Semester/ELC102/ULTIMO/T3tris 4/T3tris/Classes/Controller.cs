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
    public class Controller : GameWindow
    {
        #region Variables de Juego
        Container container;
        Camera camera;
        #endregion

        #region Constructor
        public Controller()
            :base(Settings.WINDOW_WIDTH, Settings.WINDOW_HEIGHT, new GraphicsMode(32, 24, 8, 4),Settings.APP_NAME)
        {
            Location = Settings.InitialLocation();
        }
        #endregion

        Tetromino J = new Tetromino();
        float xpos=0, ypos = 0,zpos=25;
        float xrot = 0, yrot = 0, zrot = 0;
        float deltaTime = 0;
        float altura = 15,posicionX=3,posicionZ=3;
        float intervalo = 0.5f;

        float Lerp(float firstFloat, float secondFloat, float by)
        {
            return firstFloat * (1 - by) + secondFloat * by;
        }

        protected override void OnLoad(EventArgs e)
        {
            

            J.TipoPieza = Tetromino.Tipo.T;

            // Contenedor
            container = new Container(8, 8, 16);

            // Camara
            camera = new Camera(new Vector3(0, 0, 0), (float)Math.PI / 4, (float)Width / (float)Height, 1f, 100f);

            // A donde esta viendo la camara
            camera.Target = new Vector3(((float)container.length) / 2.0f, ((float)container.height) / 2.0f, ((float)container.depth) / 2.0f);

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
                zpos = Lerp(zpos, 25, 0.2f);
                
            }
            if (Keyboard.GetState().IsKeyDown(Key.ControlLeft))
            {
                zpos = Lerp(zpos, 50, 0.2f);
            }

            if ((float)Math.Abs(ypos)>89)
            {
                ypos = 89 * Math.Sign(ypos);
            }

            camera.distance = zpos;

            if (Keyboard.GetState().IsKeyDown(Key.Space))
            {
                intervalo = 0.1f;
            }
            else
            {
                intervalo = 0.5f;
            }

            if (Keyboard.GetState().IsKeyDown(Key.Escape))
            {
               
                Exit();
            }

            //J.transform.Rotation = new Vector3(xrot, yrot, zrot);

            J.transform.Position = new Vector3(posicionX, altura, posicionZ);

            if (deltaTime > intervalo)
            {
                

                if(container.encajaTraslacion(J.Puntos, J.transform.Position+new Vector3(0,-1,0)))
                {
                    altura--;

                }else
                {
                    container.encajar(J.Puntos, J.transform.Position);
                    altura = 15;
                }
                
                
                deltaTime = 0;
            }
            

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
                if (container.encajaTraslacion(J.RotarTetrominoX(J.Puntos), J.transform.Position))
                {
                    J.RotateX();
                }
                xrot += 90; 
            }
            if (Keyboard.GetState().IsKeyDown(Key.X))
            {
                if (container.encajaTraslacion(J.RotarTetrominoY(J.Puntos), J.transform.Position))
                {
                    J.RotateY();
                }
            }
            if (Keyboard.GetState().IsKeyDown(Key.C))
            {
                if (container.encajaTraslacion(J.RotarTetrominoZ(J.Puntos), J.transform.Position))
                {
                    J.RotateZ();
                }
            }


            if (Keyboard.GetState().IsKeyDown(Key.A))
            {
                if (container.encajaTraslacion(J.Puntos, J.transform.Position + new Vector3(-1, 0, 0)))
                {
                    posicionX--;
                }
            }
            if (Keyboard.GetState().IsKeyDown(Key.D))
            {
                if (container.encajaTraslacion(J.Puntos, J.transform.Position + new Vector3(1, 0, 0)))
                {
                    posicionX++;
                }
            }
            if (Keyboard.GetState().IsKeyDown(Key.W))
            {
                if (container.encajaTraslacion(J.Puntos, J.transform.Position + new Vector3(0, 0, -1)))
                {
                    posicionZ--;
                }
            }
            if (Keyboard.GetState().IsKeyDown(Key.S))
            {
                if (container.encajaTraslacion(J.Puntos, J.transform.Position + new Vector3(0, 0, 1)))
                {
                    posicionZ++;
                }

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
           
            // Dibujar Pieza Actual
            J.Draw();

            SwapBuffers();
        }
      
    }
}
