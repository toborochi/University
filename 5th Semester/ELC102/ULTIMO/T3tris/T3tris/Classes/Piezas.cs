using OpenTK;
using OpenTK.Graphics.OpenGL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3tris.Classes
{
    class PiezaI : IPieza
    {

        public override void Draw()
        {
            
            GL.PushMatrix();
            GL.Translate(transform.Position);
            GL.Rotate(transform.Rotation.X, new Vector3(1, 0, 0));
            GL.Rotate(transform.Rotation.Y, new Vector3(0, 1, 0));
            GL.Rotate(transform.Rotation.Z, new Vector3(0, 0, 1));
            cubo.draw(0, 0, 0);
            cubo.draw(1, 0, 0);
            cubo.draw(2, 0, 0);
            cubo.draw(3, 0, 0);
            GL.PopMatrix();
        }
    }
    /*

    class PiezaJ : IPieza
    {
        public void Draw(float x, float y, float z)
        {

            GL.PushMatrix();
            GL.Translate(x, y, z);
            cubo.draw(0, 0, 0);
            cubo.draw(1, 0, 0);
            cubo.draw(2, 0, 0);
            cubo.draw(3, 0, 0);
            GL.PopMatrix();
        }
    }

    class PiezaL : IPieza
    {
        public void Draw(float x, float y, float z)
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
