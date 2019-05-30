using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OpenTK;
using OpenTK.Graphics.OpenGL;

namespace T3tris.Classes
{
    public class Container
    {

        public Transform transform;
        public int length, depth, height;

        public Container()
        {
            length = depth = height = 1;
            transform = new Transform();
        }

        public Container(int lenght, int depth, int height) : this()
        {
            this.length = lenght;
            this.depth = depth;
            this.height = height;
        }

        float[] vertices = {/*
                   1f,1f,1f,    -1f,1f,1f,   -1f,-1f,1f,   1f,-1f,1f,      // face #1
       1f,1f,1f,     1f,-1f,1f,   1f,-1f,-1f,  1f,1f,-1f,      // face #2
       1f,1f,1f,     1f,1f,-1f,  -1f,1f,-1f,  -1f,1f,1f,       // face #3*/
       0f,0f,0f, 0f,1f,0f,   1f,1f,0f,   1f,0f,0f,     // face #4
       0f,0f,0f, 0f,0f,1f,  0f,1f,1f,   0f,1f,0f,      // face #5
       0f,0f,0f,  1f,0f,0f,  1f,0f,1f,   0f,0f,1f
            
            /*
        1f,1f,1f,    -1f,1f,1f,   -1f,-1f,1f,   1f,-1f,1f,      // face #1
       1f,1f,1f,     1f,-1f,1f,   1f,-1f,-1f,  1f,1f,-1f,      // face #2
       1f,1f,1f,     1f,1f,-1f,  -1f,1f,-1f,  -1f,1f,1f,       // face #3
       -1f,-1f,-1f, -1f,1f,-1,   1f,1f,-1f,   1f,-1f,-1f,     // face #4
       -1f,-1f,-1f, -1f,-1f,1f,  -1f,1f,1f,   -1f,1f,-1f,      // face #5
       -1f,-1f,-1f,  1f,-1f,-1f,  1f,-1f,1f,   -1f,-1f,1f*/

        };

        public void drawContainer() 
        {
            GL.PushMatrix();
            GL.Color3(Color.White);
            GL.EnableClientState(ArrayCap.VertexArray);
            GL.VertexPointer(3, VertexPointerType.Float, 0, vertices);
            GL.Scale(new Vector3((float)length, (float)height, (float)depth));
            GL.PolygonMode(MaterialFace.FrontAndBack, PolygonMode.Line);
            GL.DrawArrays(PrimitiveType.Quads,0,12);
            GL.DisableClientState(ArrayCap.VertexArray);

            GL.PopMatrix();

            GL.Begin(PrimitiveType.Lines);
            for(int i = 1; i < length; ++i)
            {
                GL.Vertex3((float)i,0,0);
                GL.Vertex3((float)i,0,(float)depth);
                GL.Vertex3(0,0,(float)i);
                GL.Vertex3((float)length,0,(float)i);
            }
            GL.End();

            
        }
    }
}
