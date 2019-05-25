using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OpenTK;
using OpenTK.Graphics.OpenGL;

namespace Tetris3D.Classes
{
    public partial class Volumen
    {
        public static void Teewee()
        {
            GL.Color3(Color.Purple);
            GL.PushMatrix();
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(0, 20, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(20, 0, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(-20, 0, 0));
            cubo();
            GL.PopMatrix();

        }

        public static void Smashboy()
        {
            GL.Color3(Color.Yellow);
            GL.PushMatrix();
            GL.Translate(new Vector3(10, -10, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(10, 10, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(-10, 10, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(-10, -10, 0));
            cubo();
            GL.PopMatrix();

        }

        public static void Hero()
        {
            GL.Color3(Color.DeepSkyBlue);
            GL.PushMatrix();
            GL.Translate(new Vector3(0, -10, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(0, 10, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(0, 30, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(0, -30, 0));
            cubo();
            GL.PopMatrix();

        }

        public static void OrangeRicky()
        {
            GL.Color3(Color.Orange);
            GL.PushMatrix();
            GL.Translate(new Vector3(0,0, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(20, 0, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(-20, 0, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(20, 20, 0));
            cubo();
            GL.PopMatrix();


        }

        public static void BlueRicky()
        {
            GL.Color3(Color.RoyalBlue);

            GL.PushMatrix();
            GL.Translate(new Vector3(0, 0, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(20, 0, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(-20, 0, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(-20, 20, 0));
            cubo();
            GL.PopMatrix();


        }

        public static void ClevelandZ()
        {
            GL.Color3(Color.Red);

            GL.PushMatrix();
            GL.Translate(new Vector3(0, 0, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(0, 20, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(20,20,0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(-20, 0, 0));
            cubo();
            GL.PopMatrix();


        }

        public static void RhodeIslandZ()
        {
            GL.Color3(Color.Red);

            GL.PushMatrix();
            GL.Translate(new Vector3(0, 0, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(0, 20, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(-20, 20, 0));
            cubo();
            GL.PopMatrix();

            GL.PushMatrix();
            GL.Translate(new Vector3(20, 0, 0));
            cubo();
            GL.PopMatrix();


        }




        public static void cubo()
        {
            GL.Begin(PrimitiveType.Quads);
            // Cara
            //GL.Color3(1.0, 1.0, 0.0);
            GL.Normal3(-1.0, 0.0, 0.0);
            GL.Vertex3(-10.0, 10.0, 10.0);
            GL.Vertex3(-10.0, 10.0, -10.0);
            GL.Vertex3(-10.0, -10.0, -10.0);
            GL.Vertex3(-10.0, -10.0, 10.0);
            // Cara
            //GL.Color3(1.0, 0.0, 1.0);
            GL.Normal3(1.0, 0.0, 0.0);
            GL.Vertex3(10.0, 10.0, 10.0);
            GL.Vertex3(10.0, 10.0, -10.0);
            GL.Vertex3(10.0, -10.0, -10.0);
            GL.Vertex3(10.0, -10.0, 10.0);
            // Cara
            //GL.Color3(0.0, 1.0, 1.0);
            GL.Normal3(0.0, -1.0, 0.0);
            GL.Vertex3(10.0, -10.0, 10.0);
            GL.Vertex3(10.0, -10.0, -10.0);
            GL.Vertex3(-10.0, -10.0, -10.0);
            GL.Vertex3(-10.0, -10.0, 10.0);
            // Cara
            //GL.Color3(1.0, 0.0, 0.0);
            GL.Normal3(0.0, 1.0, 0.0);
            GL.Vertex3(10.0, 10.0, 10.0);
            GL.Vertex3(10.0, 10.0, -10.0);
            GL.Vertex3(-10.0, 10.0, -10.0);
            GL.Vertex3(-10.0, 10.0, 10.0);
            // Cara
            //GL.Color3(0.0, 1.0, 0.0);
            GL.Normal3(0.0, 0.0, -1.0);
            GL.Vertex3(10.0, 10.0, -10.0);
            GL.Vertex3(10.0, -10.0, -10.0);
            GL.Vertex3(-10.0, -10.0, -10.0);
            GL.Vertex3(-10.0, 10.0, -10.0);
            // Cara
            //GL.Color3(0.0, 0.0, 1.0);
            GL.Normal3(0.0, 0.0, 1.0);
            GL.Vertex3(10.0, 10.0, 10.0);
            GL.Vertex3(10.0, -10.0, 10.0);
            GL.Vertex3(-10.0, -10.0, 10.0);
            GL.Vertex3(-10.0, 10.0, 10.0);

            GL.End();
        }
    }
}
