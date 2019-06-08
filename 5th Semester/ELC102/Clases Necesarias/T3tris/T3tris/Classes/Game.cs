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
using NAudio.Wave;
using FireAndForgetAudioSample;

namespace T3tris.Classes
{
    public class Game : GameWindow
    {
        #region Variables de Juego
        Container container;
        Camera camera;
        Tetromino tetromino = new Tetromino();
        #endregion

        #region Constructor
        public Game()
            :base(Settings.WINDOW_WIDTH, Settings.WINDOW_HEIGHT, new GraphicsMode(32, 24, 8, 4),Settings.APP_NAME)
        {
            Location = Settings.InitialLocation();
        }
        #endregion

        List<List<Vector3>> Fichas = new List<List<Vector3>>()
        {
           Tetromino.L,
           Tetromino.I,
           Tetromino.S,
           Tetromino.T,
           Tetromino.O,
           Tetromino.Z
        };

        Random Random = new Random(int.MaxValue);


        

        float xpos=0, ypos = 0,zpos=25;
        float xrot = 0, yrot = 0, zrot = 0;
        float deltaTime = 0;
        float altura = 15,posicionX=3,posicionZ=3;
        float intervalo = 0.5f;
        CachedSound Swap = new CachedSound(@"C:\Users\Asus\Documents\PLUSrotate.mp3");
        CachedSound Fall = new CachedSound(@"C:\Users\Asus\Documents\PLUSfall.mp3");


        float Lerp(float firstFloat, float secondFloat, float by)
        {
            return firstFloat * (1 - by) + secondFloat * by;
        }

        


        protected override void OnLoad(EventArgs e)
        {
            WaveFileReader reader = new WaveFileReader(@"C:\Users\Asus\Documents\PLUS.wav");
            LoopStream loop = new LoopStream(reader);
            Controller.Instance.AudioPlayer = new WaveOut();
            Controller.Instance.AudioPlayer.Init(loop);
            Controller.Instance.AudioPlayer.Play();


           

            

            tetromino.TipoPieza = Tetromino.Tipo.T;
            tetromino.Puntos = Tetromino.I;

            // Contenedor
            container = new Container(8, 8, 16);

            // Camara
            camera = new Camera(new Vector3(0, 0, 0), (float)Math.PI / 4, (float)Width / (float)Height, 1f, 20f);

            // A donde esta viendo la camara
            camera.Target = new Vector3(((float)container.length) / 2.0f, ((float)container.height) / 2.0f, ((float)container.depth) / 2.0f);

            
            GL.Viewport(0, 0,Width, Height);
            GL.MatrixMode(MatrixMode.Projection);
            GL.LoadIdentity();
            
            GL.MatrixMode(MatrixMode.Modelview);
            GL.ClearColor(0.05f, 0.05f, 0.2f, 0);
           
            GL.Enable(EnableCap.DepthTest);
           
            
            GL.Enable(EnableCap.Lighting);
            GL.Enable(EnableCap.ColorMaterial);
            GL.Enable(EnableCap.Light0);

            float[] color = { 0.2f, 0.2f, 0.2f};
            float[] posit = { -1, 50, -1};
            float[] diff = { 1f, 1f, 1f };
            GL.Light(LightName.Light0, LightParameter.Position, posit);
            GL.Light(LightName.Light0, LightParameter.Ambient,color);
            GL.Light(LightName.Light0, LightParameter.Diffuse,diff);
            

            //GL.Enable(EnableCap.Light0);

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
                Controller.Instance.AudioPlayer.Dispose();
                Exit();
            }

            //J.transform.Rotation = new Vector3(xrot, yrot, zrot);

            tetromino.transform.Position = new Vector3(posicionX, altura, posicionZ);

            // Actualizar Camara
            camera.updateCameraPosition(MathHelper.DegreesToRadians(-ypos), MathHelper.DegreesToRadians(-xpos), zpos * 7.5f);


            if (deltaTime > intervalo)
            {
                

                if(container.encaja(tetromino.Puntos, tetromino.transform.Position+new Vector3(0,-1,0)))
                {
                    altura--;

                }else
                {
                    if (container.encaja(tetromino.Puntos,tetromino.transform.Position))
                    {
                        AudioPlaybackEngine.Instance.PlaySound(Fall);
                        container.encajar(tetromino.Puntos, tetromino.transform.Position);
                        container.checkLine();

                        tetromino.Puntos = Fichas[Random.Next(0,Fichas.Count)];
                        altura = 16;

                        if(container.encaja(tetromino.Puntos, new Vector3(3,15,3)))
                        {
                            posicionX = posicionZ = 3;
                            tetromino.transform.Position = new Vector3(posicionX, altura, posicionZ);
                        }

                    }else
                    {
                        Title = "PERDIO";
                    }

                    



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
                if (container.encaja(tetromino.RotarTetrominoX(tetromino.Puntos), tetromino.transform.Position))
                {
                    tetromino.RotateX();
                    AudioPlaybackEngine.Instance.PlaySound(Swap);
                }
                xrot += 90; 
            }
            if (Keyboard.GetState().IsKeyDown(Key.X))
            {
                if (container.encaja(tetromino.RotarTetrominoY(tetromino.Puntos), tetromino.transform.Position))
                {
                    tetromino.RotateY();
                    AudioPlaybackEngine.Instance.PlaySound(Swap);
                }
            }
            if (Keyboard.GetState().IsKeyDown(Key.C))
            {
                if (container.encaja(tetromino.RotarTetrominoZ(tetromino.Puntos), tetromino.transform.Position))
                {
                    tetromino.RotateZ();
                    AudioPlaybackEngine.Instance.PlaySound(Swap);
                }
            }


            if (Keyboard.GetState().IsKeyDown(Key.A))
            {
                if (container.encaja(tetromino.Puntos, tetromino.transform.Position + new Vector3(-1, 0, 0)))
                {
                    posicionX--;
                }
            }
            if (Keyboard.GetState().IsKeyDown(Key.D))
            {
                if (container.encaja(tetromino.Puntos, tetromino.transform.Position + new Vector3(1, 0, 0)))
                {
                    posicionX++;
                }
            }
            if (Keyboard.GetState().IsKeyDown(Key.W))
            {
                if (container.encaja(tetromino.Puntos, tetromino.transform.Position + new Vector3(0, 0, -1)))
                {
                    posicionZ--;
                }
            }
            if (Keyboard.GetState().IsKeyDown(Key.S))
            {
                if (container.encaja(tetromino.Puntos, tetromino.transform.Position + new Vector3(0, 0, 1)))
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
            GL.LoadIdentity();
            GL.Clear(ClearBufferMask.ColorBufferBit | ClearBufferMask.DepthBufferBit);

            // Controller Render Frame

            //GL.MatrixMode(MatrixMode.Modelview);
            GL.LoadMatrix(ref camera.ViewCamera);
           
            // Dibujar Container
            container.drawContainer();
           
            // Dibujar Pieza Actual
            tetromino.Draw();

            SwapBuffers();
        }
      
    }
}
