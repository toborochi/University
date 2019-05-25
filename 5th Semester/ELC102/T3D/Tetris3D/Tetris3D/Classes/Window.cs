using OpenTK;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;
using System.Drawing;
using OpenTK.Graphics;

namespace Tetris3D.Classes
{
    public class Window : GameWindow
    {

        private double theta = 0;
        private double theta2 = 0;
        private double posX = 0;
        private double posY = 0;
        private double posZ = 0;
        private int ficha = 0;

        public Window(int tamx,int tamy,int xpos,int ypos)
            : base(tamx, tamy, new GraphicsMode(new ColorFormat(8, 8, 8, 0), 24, 8, 4), "Tetris3D")
        {
            Location = new Point(xpos, ypos);
            Run(1 / 60f);
        }

       
        protected override void OnUpdateFrame(FrameEventArgs e)
        {
            base.OnUpdateFrame(e);
            if (Keyboard.GetState().IsKeyDown(Key.Right))
            {
                theta += 1;
            }
            if (Keyboard.GetState().IsKeyDown(Key.Left))
            {
                theta += -1;
            }
            if (Keyboard.GetState().IsKeyDown(Key.Up))
            {
                theta2 += -1;
            }

            if (Keyboard.GetState().IsKeyDown(Key.Down))
            {
                theta2 += 1;
            }

            if (Keyboard.GetState().IsKeyDown(Key.W))
            {
                posY += 1;
            }

            if (Keyboard.GetState().IsKeyDown(Key.S))
            {
                posY -= 1;
            }

            if (Keyboard.GetState().IsKeyDown(Key.D))
            {
                posX += 1;
            }

            if (Keyboard.GetState().IsKeyDown(Key.A))
            {
                posX -= 1;
            }

            if (Keyboard.GetState().IsKeyDown(Key.Q))
            {
                posZ += 1;
            }

            if (Keyboard.GetState().IsKeyDown(Key.E))
            {
                posZ -= 1;
            }








            theta = constrainAngle(theta);
            theta2 = constrainAngle(theta2);
        }
     

        double constrainAngle(double x)
        {
            x = x % 360;
            if (x < 0)
                x += 360;
            return x;
        }
        protected override void OnKeyPress(KeyPressEventArgs e)
        {
            base.OnKeyPress(e);
            if (Keyboard.GetState().IsKeyDown(Key.O))
            {
                GL.Viewport(0, 0, Width, Height);
                GL.MatrixMode(MatrixMode.Projection);
                GL.LoadIdentity();
                GL.Ortho(-100, 100, -100, 100, -150, 1000);
                GL.MatrixMode(MatrixMode.Modelview);
            }

            if (Keyboard.GetState().IsKeyDown(Key.P))
            {
                GL.Viewport(0, 0, Width, Height);
                GL.MatrixMode(MatrixMode.Projection);
                GL.LoadIdentity();
                Matrix4 m = Matrix4.CreatePerspectiveFieldOfView((float)Math.PI * (45 / 180f), Width / (float)Height, 1f, 1000.0f);
                GL.LoadMatrix(ref m);
                GL.MatrixMode(MatrixMode.Modelview);
            }

            if (Keyboard.GetState().IsKeyDown(Key.X))
            {
                ficha++;
            }

            if (Keyboard.GetState().IsKeyDown(Key.Z))
            {
                ficha--;
            }

            ficha = MathHelper.Clamp(ficha, 0, 6);
        }

        protected override void OnResize(EventArgs e)
        {
            base.OnResize(e);
            GL.Viewport(0, 0, Width, Height);
            GL.MatrixMode(MatrixMode.Projection);
            GL.LoadIdentity();
            Matrix4 m = Matrix4.CreatePerspectiveFieldOfView((float)Math.PI * (45 / 180f), Width / (float)Height, 1f, 1000.0f);
            GL.LoadMatrix(ref m);
            GL.MatrixMode(MatrixMode.Modelview);
        }

        protected override void OnRenderFrame(FrameEventArgs e)
        {
            base.OnRenderFrame(e);

            GL.LoadIdentity();
            GL.Clear(ClearBufferMask.ColorBufferBit | ClearBufferMask.DepthBufferBit);
            /*
            GL.Rotate(theta, 0, 0, 1);
            GL.Begin(PrimitiveType.Triangles);
            GL.Color3(1.0f, 0.0f, 0.0f);
            GL.Vertex2(0, 0);
            GL.Color3(0.0f, 1.0f, 0.0f);
            GL.Vertex2(20, 40);
            GL.Color3(0.0f, 0.0f, 1.0f);
            GL.Vertex2(40, 0);
            */






            GL.Translate(0 + posX, 0.0 + posY, -100 + posZ);
            GL.Rotate(theta, 0, 1, 0);
            GL.Rotate(theta2, 1, 0, 0);

            GL.Begin(PrimitiveType.Lines);
            GL.Color3(Color.White);
            GL.Vertex3(-100, 0, 0);
            GL.Vertex3(100, 0, 0);
            GL.End();

            GL.Begin(PrimitiveType.Lines);
            GL.Color3(Color.White);
            GL.Vertex3(0, -100, 0);
            GL.Vertex3(0, 100, 0);
            GL.End();


            GL.Begin(PrimitiveType.Lines);
            GL.Color3(Color.White);
            GL.Vertex3(0, 0, -100);
            GL.Vertex3(0, 0, 100);
            GL.End();

            switch (ficha)
            {
                case 0: Volumen.Teewee(); break;
                case 1: Volumen.Hero(); break;
                case 2: Volumen.Smashboy(); break;
                case 3: Volumen.RhodeIslandZ(); break;
                case 4: Volumen.ClevelandZ(); break;
                case 5: Volumen.OrangeRicky(); break;
                case 6: Volumen.BlueRicky(); break;
            }



            SwapBuffers();
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            // Color Fondo
            GL.ClearColor(0.1f, 0.1f, 0.1f, 0);
            // Profundidad
            GL.Enable(EnableCap.DepthTest);

            // Activamos la luz
            GL.Enable(EnableCap.Lighting);
            // Hacemos que la luz afecte al material de las caras del poligono
            GL.Enable(EnableCap.ColorMaterial);

            float[] lightpos = { 0, 5, 2 };
            float[] lightdif = { 0.8f, 0.8f, 0.8f };
            float[] lightamb = { 0.1f, 0.1f, 0.1f };
            GL.Light(LightName.Light0, LightParameter.Position, lightpos);
            GL.Light(LightName.Light0, LightParameter.Diffuse, lightdif);
            GL.Light(LightName.Light0, LightParameter.Ambient, lightamb);
            GL.Enable(EnableCap.Light0);
        }


        
    }
}
