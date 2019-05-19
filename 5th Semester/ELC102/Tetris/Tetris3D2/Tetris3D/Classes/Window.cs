using OpenTK;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;

namespace Tetris3D.Classes
{
    public class Window
    {
        double theta = 0;
        double theta2 = 0;
        double posX = 0;
        double posY = 0;
        double posZ = 0;
        GameWindow Ventana;

        public Window(GameWindow window)
        {
            Ventana = window;
            Start();
        }

        private void Start()
        {
            Ventana.Load += loaded;
            Ventana.Resize += resize;
            Ventana.UpdateFrame += updFram;
            Ventana.RenderFrame += rend;
            Ventana.KeyDown += keyPress;
            Ventana.Run(1.0/30.0);
        }

        void updFram(object o,EventArgs e)
        {
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

            if (Keyboard.GetState().IsKeyDown(Key.O))
            {
                GL.Viewport(0, 0, Ventana.Width, Ventana.Height);
                GL.MatrixMode(MatrixMode.Projection);
                GL.LoadIdentity();
                GL.Ortho(-100, 100, -100, 100, -150, 200);
                GL.MatrixMode(MatrixMode.Modelview);
            }

            if (Keyboard.GetState().IsKeyDown(Key.P))
            {
                GL.Viewport(0, 0, Ventana.Width, Ventana.Height);
                GL.MatrixMode(MatrixMode.Projection);
                GL.LoadIdentity();
                Matrix4 m = Matrix4.CreatePerspectiveFieldOfView((float)Math.PI * (60 / 180f), Ventana.Width / (float)Ventana.Height, 1f, 200.0f);
                GL.LoadMatrix(ref m);

                GL.MatrixMode(MatrixMode.Modelview);
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

        void keyPress(object o, OpenTK.Input.KeyboardKeyEventArgs e)
        {
            
        }

            void resize(object o, EventArgs e)
            {
            
            GL.Viewport(0, 0, Ventana.Width, Ventana.Height);
            GL.MatrixMode(MatrixMode.Projection);
            GL.LoadIdentity();
            Matrix4 m = Matrix4.CreatePerspectiveFieldOfView((float)Math.PI * (60 / 180f), Ventana.Width / (float)Ventana.Height, 1f, 200.0f);
            GL.LoadMatrix(ref m);
            //GL.Ortho(-100, 100, -100, 100, -150, 150);
            GL.MatrixMode(MatrixMode.Modelview);
        }

        void rend(object o,EventArgs e)
        {
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



            GL.PushMatrix();
            GL.Translate(0+posX, 0.0+posY, -100+posZ);
            GL.Rotate(theta, 0, 1, 0);
            GL.Rotate(theta2, 1, 0, 0);
            drawCube();

            GL.Translate(20, 0.0, 0);
            drawCube();

            GL.Translate(-20, 0.0, -20);
            drawCube();

            GL.Translate(-20, 0.0, 20);
            drawCube();

            GL.PopMatrix();


           


            Ventana.SwapBuffers();

        }

        void loaded(object o, EventArgs e)
        {
            GL.ClearColor(0.1f, 0.1f, 0.1f, 0);
            GL.Enable(EnableCap.DepthTest);
            // Luz
            GL.Enable(EnableCap.Lighting);
            GL.Enable(EnableCap.ColorMaterial); 

            float[] lightpos = { 20,0,0};
            float[] lightdif = { 1.0f, 0.5f, 0.25f };
            float[] lightamb = { 0.25f, 0.25f, 0.5f };
            GL.Light(LightName.Light0, LightParameter.Position, lightpos);
            GL.Light(LightName.Light0, LightParameter.Diffuse, lightdif);
            GL.Light(LightName.Light0, LightParameter.Ambient, lightamb);
            GL.Enable(EnableCap.Light0);
        }

        void drawCube()
        {
            GL.Begin(PrimitiveType.Quads);
            // Cara
            GL.Color3(1.0, 1.0, 0.0);
            GL.Normal3(-1.0, 0.0, 0.0);
            GL.Vertex3(-10.0, 10.0, 10.0);
            GL.Vertex3(-10.0, 10.0, -10.0);
            GL.Vertex3(-10.0, -10.0, -10.0);
            GL.Vertex3(-10.0, -10.0, 10.0);
            // Cara
            GL.Color3(1.0, 0.0, 1.0);
            GL.Normal3(1.0, 0.0, 0.0);
            GL.Vertex3(10.0, 10.0, 10.0);
            GL.Vertex3(10.0, 10.0, -10.0);
            GL.Vertex3(10.0, -10.0, -10.0);
            GL.Vertex3(10.0, -10.0, 10.0);
            // Cara
            GL.Color3(0.0, 1.0, 1.0);
            GL.Normal3(0.0, -1.0, 0.0);
            GL.Vertex3(10.0, -10.0, 10.0);
            GL.Vertex3(10.0, -10.0, -10.0);
            GL.Vertex3(-10.0, -10.0, -10.0);
            GL.Vertex3(-10.0, -10.0, 10.0);
            // Cara
            GL.Color3(1.0, 0.0, 0.0);
            GL.Normal3(0.0, 1.0, 0.0);
            GL.Vertex3(10.0, 10.0, 10.0);
            GL.Vertex3(10.0, 10.0, -10.0);
            GL.Vertex3(-10.0, 10.0, -10.0);
            GL.Vertex3(-10.0, 10.0, 10.0);
            // Cara
            GL.Color3(0.0, 1.0, 0.0);
            GL.Normal3(0.0, 0.0, -1.0);
            GL.Vertex3(10.0, 10.0, -10.0);
            GL.Vertex3(10.0, -10.0, -10.0);
            GL.Vertex3(-10.0, -10.0, -10.0);
            GL.Vertex3(-10.0, 10.0, -10.0);
            // Cara
            GL.Color3(0.0, 0.0, 1.0);
            GL.Normal3(0.0, 0.0, 1.0);
            GL.Vertex3(10.0, 10.0, 10.0);
            GL.Vertex3(10.0, -10.0, 10.0);
            GL.Vertex3(-10.0, -10.0, 10.0);
            GL.Vertex3(-10.0, 10.0, 10.0);

            GL.End();
        }
    }
}
