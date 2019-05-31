using OpenTK.Graphics.OpenGL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3tris.Classes
{
    static class cubo
    {
        
        public static void draw(float x,float y,float z)
        {
            GL.PushMatrix();
            GL.Translate(x, y, z);
            GL.PolygonMode(MaterialFace.FrontAndBack, PolygonMode.Fill);
            GL.Begin(PrimitiveType.Quads);
            // Cara
            GL.Color3(0.5f, 0.5f, 0.0f);

            GL.Normal3(-0.5f, 0.0f, 0.0f);
            GL.Vertex3(-0.5f, 0.5f, 0.5f);
            GL.Vertex3(-0.5f, 0.5f, -0.5f);
            GL.Vertex3(-0.5f, -0.5f, -0.5f);
            GL.Vertex3(-0.5f, -0.5f, 0.5f);
            // Cara
            GL.Color3(0.5f, 0.0, 0.5f);
            GL.Normal3(0.5f, 0.0, 0.0f);
            GL.Vertex3(0.5f, 0.5f, 0.5f);
            GL.Vertex3(0.5f, 0.5f, -0.5f);
            GL.Vertex3(0.5f, -0.5f, -0.5f);
            GL.Vertex3(0.5f, -0.5f, 0.5f);
            // Cara
            GL.Color3(0.0, 0.5f, 0.5f);
            GL.Normal3(0.0, -0.5f, 0.0);
            GL.Vertex3(0.5f, -0.5f, 0.5f);
            GL.Vertex3(0.5f, -0.5f, -0.5f);
            GL.Vertex3(-0.5f, -0.5f, -0.5f);
            GL.Vertex3(-0.5f, -0.5f, 0.5f);
            // Cara
            GL.Color3(0.5f, 0.0, 0.0);
            GL.Normal3(0.0, 0.5f, 0.0);
            GL.Vertex3(0.5f, 0.5f, 0.5f);
            GL.Vertex3(0.5f, 0.5f, -0.5f);
            GL.Vertex3(-0.5f, 0.5f, -0.5f);
            GL.Vertex3(-0.5f, 0.5f, 0.5f);
            // Cara
            GL.Color3(0.0, 0.5f, 0.0);
            GL.Normal3(0.0, 0.0, -0.5f);
            GL.Vertex3(0.5f, 0.5f, -0.5f);
            GL.Vertex3(0.5f, -0.5f, -0.5f);
            GL.Vertex3(-0.5f, -0.5f, -0.5f);
            GL.Vertex3(-0.5f, 0.5f, -0.5f);
            // Cara
            GL.Color3(0.0, 0.0, 0.5f);
            GL.Normal3(0.0, 0.0, 0.5f);
            GL.Vertex3(0.5f, 0.5f, 0.5f);
            GL.Vertex3(0.5f, -0.5f, 0.5f);
            GL.Vertex3(-0.5f, -0.5f, 0.5f);
            GL.Vertex3(-0.5f, 0.5f, 0.5f);

            GL.End();
            GL.PopMatrix();
        }
    }
}
