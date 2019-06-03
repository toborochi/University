using OpenTK;
using OpenTK.Graphics.OpenGL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3tris.Classes
{
    class Tetromino : Piece
    {
        public enum Tipo {
            I,J,L,Z,S,O,T
        }

        public Tipo TipoPieza = Tipo.I;

        public List<Vector3> Puntos = new List<Vector3>() {
            new Vector3(-1, 0, -1),
            new Vector3(-1, 0, 0),
            new Vector3(0, 0, 0),
            new Vector3(1, 0, 0)
        };

        public List<Vector3> RotarTetrominoX(List<Vector3> Lista)
        {
            List<Vector3> TMP = new List<Vector3>();
            for (int i = 0; i < Lista.Count; ++i)
            {
                Vector4 v = new Vector4(Lista[i], 1);
                Matrix4 rx = new Matrix4(
                    1,0,0,0,
                    0,(int)Math.Cos(Math.PI/2), (int)Math.Sin(Math.PI / 2),0,
                    0, -(int)Math.Sin(Math.PI / 2), (int)Math.Cos(Math.PI / 2),0,
                    0,0,0,1                    
                    );
                v = rx * v;
                Vector3 t = v.Xyz;
                TMP.Add(t);
            }
            return TMP;
        }

        public List<Vector3> RotarTetrominoY(List<Vector3> Lista)
        {
            List<Vector3> TMP = new List<Vector3>();
            for (int i = 0; i < Lista.Count; ++i)
            {
                Vector4 v = new Vector4(Lista[i], 1);
                Matrix4 rx = new Matrix4(
                    (int)Math.Cos(Math.PI / 2), 0,-(int)Math.Sin(Math.PI / 2), 0,
                    0,1,0,0,
                    (int)Math.Sin(Math.PI / 2), 0,(int)Math.Cos(Math.PI / 2), 0,
                    0,0,0,1
                    );
                v = rx * v;
                Vector3 t = v.Xyz;
                TMP.Add(t);
            }
            return TMP;
        }

        public List<Vector3> RotarTetrominoZ(List<Vector3> Lista)
        {
            List<Vector3> TMP = new List<Vector3>();
            for (int i = 0; i < Lista.Count; ++i)
            {
                Vector4 v = new Vector4(Lista[i], 1);
                Matrix4 rx = new Matrix4(
                    (int)Math.Cos(Math.PI / 2), -(int)Math.Sin(Math.PI / 2), 0,0,
                    (int)Math.Sin(Math.PI / 2), (int)Math.Cos(Math.PI / 2), 0,0,
                    0,0,1,0,
                    0,0,0,1
                    );
                v = rx * v;
                Vector3 t = v.Xyz;
                TMP.Add(t);
            }
            return TMP;
        }

        public void RotateX()
        {
            Puntos = RotarTetrominoX(Puntos);   

            
            for(int i=0;i<Puntos.Count;++i)
            {
                Console.WriteLine(Puntos[i].ToString());
            }
        }

        public void RotateY()
        {
            Puntos = RotarTetrominoY(Puntos);


            for (int i = 0; i < Puntos.Count; ++i)
            {
                Console.WriteLine(Puntos[i].ToString());
            }
        }

        public void RotateZ()
        {
            Puntos = RotarTetrominoZ(Puntos);


            for (int i = 0; i < Puntos.Count; ++i)
            {
                Console.WriteLine(Puntos[i].ToString());
            }
        }


        public override void Draw()
        {
            
            GL.PushMatrix();

            GL.Translate(transform.Position);
            /*
            GL.Rotate(transform.Rotation.X, new Vector3(1, 0, 0));
            GL.Rotate(transform.Rotation.Y, new Vector3(0, 1, 0));
            GL.Rotate(transform.Rotation.Z, new Vector3(0, 0, 1));
            */
            switch (TipoPieza)
            {
                case Tipo.I:  I(); break;
                case Tipo.J:  J(); break;
                case Tipo.L:  L(); break;
                case Tipo.O:  O(); break;
                case Tipo.S:  S(); break;
                case Tipo.Z:  Z(); break;
                case Tipo.T:  T(); break;
            }
          
            GL.PopMatrix();
        }

        private void I()
        {
            GL.PushMatrix();
            Primitive.cube(-2, 0, 0);
            Primitive.cube(-1, 0, 0);
            Primitive.cube(0, 0, 0);
            Primitive.cube(1, 0, 0);
            GL.PopMatrix();
        }

        private void J()
        {
            GL.PushMatrix();
            Primitive.cube(-1, 0, 0);
            Primitive.cube(0, 0, 0);
            Primitive.cube(1, 0, 0);
            Primitive.cube(1, 0, -1);
            GL.PopMatrix();
        }

        private void L()
        {

            GL.PushMatrix();
            Primitive.cube(-1, 0, -1);
            Primitive.cube(-1, 0, 0);
            Primitive.cube(0, 0, 0);
            Primitive.cube(1, 0, 0);
            GL.PopMatrix();
        }

        private void O()
        {
            GL.PushMatrix();
            Primitive.cube(-1, 0, -1);
            Primitive.cube(0, 0, -1);
            Primitive.cube(-1, 0, 0);
            Primitive.cube(0, 0, 0);
            GL.PopMatrix();
        }

        private void S()
        {

            GL.PushMatrix();
            Primitive.cube(-1, 0, 0);
            Primitive.cube(0, 0, 0);
            Primitive.cube(0, 0, -1);
            Primitive.cube(1, 0, -1);
            GL.PopMatrix();
        }

        private void Z()
        {
            GL.PushMatrix();
            Primitive.cube(-1, 0, -1);
            Primitive.cube(0, 0, -1);
            Primitive.cube(0, 0, 0);
            Primitive.cube(1, 0, 0);
            GL.PopMatrix();
        }

        private void T()
        {
            GL.PushMatrix();
            for(int i = 0; i < Puntos.Count; ++i)
            {
                Primitive.cube(Puntos[i].X, Puntos[i].Y, Puntos[i].Z);
            }/*
            Primitive.cube(-1, 0, 0);
            Primitive.cube(0, 0, 0);
            Primitive.cube(1, 0, 0);
            Primitive.cube(0, 0, -1);*/
            GL.PopMatrix();
        }
    }
    

    
    /*
    class PiezaL : IPieza
    {
        private void L()
        {

            GL.PushMatrix();
            GL.Translate(x, y, z);
            cubo.draw(0, 0, 1);
            cubo.draw(1, 0, 1);
            cubo.draw(2, 0, 1);
            cubo.draw(2, 0, 0);
            GL.PopMatrix();
        }
    }

    class PiezaO : IPieza
    {
        public void Draw(float x, float y, float z)
        {

            GL.PushMatrix();
            GL.Translate(x, y, z);
            cubo.draw(0, 0, 0);
            cubo.draw(1, 0, 0);
            cubo.draw(0, 0, 1);
            cubo.draw(1, 0, 1);
            GL.PopMatrix();
        }
    }

    class PiezaS : IPieza
    {
        public void Draw(float x, float y, float z)
        {

            GL.PushMatrix();
            GL.Translate(x, y, z);
            cubo.draw(0, 0, 1);
            cubo.draw(1, 0, 1);
            cubo.draw(1, 0, 0);
            cubo.draw(2, 0, 0);
            GL.PopMatrix();
        }
    }

    class PiezaT : IPieza
    {
        public void Draw(float x, float y, float z)
        {

            GL.PushMatrix();
            GL.Translate(x, y, z);
            cubo.draw(0, 0, 1);
            cubo.draw(1, 0, 1);
            cubo.draw(2, 0, 1);
            cubo.draw(1, 0, 0);
            GL.PopMatrix();
        }
    }

    class PiezaZ : IPieza
    {
        public void Draw(float x, float y, float z)
        {

            GL.PushMatrix();
            GL.Translate(x, y, z);
            cubo.draw(0, 0, 0);
            cubo.draw(1, 0, 0);
            cubo.draw(1, 0, 1);
            cubo.draw(2, 0, 1);
            GL.PopMatrix();
        }
    }*/

}
