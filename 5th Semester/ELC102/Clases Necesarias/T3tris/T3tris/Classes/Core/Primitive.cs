using OpenTK.Graphics.OpenGL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3tris.Classes
{
    static class Primitive
    {
        
        public static void cube(float x,float y,float z)
        {
            GL.PushMatrix();
            GL.Translate(x, y, z);
            GL.PolygonMode(MaterialFace.FrontAndBack, PolygonMode.Fill);
            GL.Begin(PrimitiveType.Quads);
            // Cara
            //GL.Color3(0.17f, 0.88f, 0.89f);
            GL.Color3(0.02f,0.99f,0.63f);
            GL.Normal3(-1f, 0.0f, 0.0f);
            GL.Vertex3(-0.5f, 0.5f, 0.5f);
            GL.Vertex3(-0.5f, 0.5f, -0.5f);
            GL.Vertex3(-0.5f, -0.5f, -0.5f);
            GL.Vertex3(-0.5f, -0.5f, 0.5f);
            // Cara
            
            //GL.Color3(0.97f, 0.78f, 0.05f);
            GL.Normal3(1f, 0.0, 0.0f);
            GL.Vertex3(0.5f, 0.5f, 0.5f);
            GL.Vertex3(0.5f, 0.5f, -0.5f);
            GL.Vertex3(0.5f, -0.5f, -0.5f);
            GL.Vertex3(0.5f, -0.5f, 0.5f);
            // Cara
            //GL.Color3(1.0f, 0.25f, 0.39f);
            GL.Normal3(0.0, -1f, 0.0);
            GL.Vertex3(0.5f, -0.5f, 0.5f);
            GL.Vertex3(0.5f, -0.5f, -0.5f);
            GL.Vertex3(-0.5f, -0.5f, -0.5f);
            GL.Vertex3(-0.5f, -0.5f, 0.5f);
            // Cara
            //GL.Color3(0.39f, 0.05f, 0.53f);
            GL.Normal3(0.0, 1f, 0.0);
            GL.Vertex3(0.5f, 0.5f, 0.5f);
            GL.Vertex3(0.5f, 0.5f, -0.5f);
            GL.Vertex3(-0.5f, 0.5f, -0.5f);
            GL.Vertex3(-0.5f, 0.5f, 0.5f);
            // Cara
            //GL.Color3(0.94f,0.13f,0.99f);
            GL.Normal3(0.0, 0.0, -1f);
            GL.Vertex3(0.5f, 0.5f, -0.5f);
            GL.Vertex3(0.5f, -0.5f, -0.5f);
            GL.Vertex3(-0.5f, -0.5f, -0.5f);
            GL.Vertex3(-0.5f, 0.5f, -0.5f);
            // Cara
            //GL.Color3(0.0, 0.0, 0.5f);
            GL.Normal3(0.0, 0.0, 1f);
            GL.Vertex3(0.5f, 0.5f, 0.5f);
            GL.Vertex3(0.5f, -0.5f, 0.5f);
            GL.Vertex3(-0.5f, -0.5f, 0.5f);
            GL.Vertex3(-0.5f, 0.5f, 0.5f);

            GL.End();
            GL.PopMatrix();
        }
    }
}
