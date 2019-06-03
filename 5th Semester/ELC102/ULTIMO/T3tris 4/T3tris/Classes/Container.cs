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
        // Posicion
        public Transform transform;

        // Largo, Profundo y Alto del contenedor
        public int length, depth, height;

        #region Constructor
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
            container = new byte[height, depth];
            containerAuxiliar = new byte[height, depth];
        }
        #endregion


        float[] vertices = {
          0f,0f,0f, 0f,1f,0f, 1f,1f,0f, 1f,0f,0f,     
          0f,0f,0f, 0f,0f,1f, 0f,1f,1f, 0f,1f,0f,       
          0f,0f,0f, 1f,0f,0f, 1f,0f,1f, 0f,0f,1f
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
            }

            for (int i=0;i<depth;++i)
            {
                GL.Vertex3(0, 0, (float)i);
                GL.Vertex3((float)length, 0, (float)i);
            }
            

            GL.End();
            GL.Translate(0.5f, 0.5f, 0.5f);

            for (int i = 0; i < height; ++i)
            {
                for (int j = 0; j < length; ++j)
                {
                    for (int k = 0; k < depth; ++k)
                    {
                        if(getAt(j,i,k))
                        {
                            Primitive.cube(j, i, k);
                        }
                        
                    }
                }
            }

        }

        byte[,] container;
        byte[,] containerAuxiliar;
       
        public void mostrar()
        {


            for (int i = 0; i < height; ++i)
            {
                for (int j = 0; j < length; ++j)
                {
                    Console.Write('[');
                    string s = Convert.ToString(container[i, j], 2).PadLeft(8, '0');
                    Console.Write(s);
                    Console.Write(']');
                }
                Console.WriteLine();
            }
        }

        bool getAt(int x,int y,int z)
        {
            var bit = (container[y,z] & (1 << x)) != 0;
            return bit;
        }

        public void set(int x, int y, int z)
        {
            setIntern(container, x, y, z);
        }

        public void unset(int x, int y, int z)
        {
            unsetIntern(container, x, y, z);
        }

        private void setIntern(byte[,] c, int x, int y, int z)
        {
            byte mask = (byte)(1 << (byte)x);
            c[y, z] |= mask;
        }

        private void unsetIntern(byte[,] c, int x, int y, int z)
        {
            byte mask = (byte)(1 << (byte)x);
            mask = (byte)~mask;
            c[y, z] &= mask;
        }


        public bool encajaTraslacion(List<Vector3> Puntos, Vector3 Posicion)
        {
            containerAuxiliar = new byte[height, depth];

            for (int i = 0; i < Puntos.Count; ++i)
            {
                if(Puntos[i].X+Posicion.X>=0 && Puntos[i].X + Posicion.X <length &&
                   Puntos[i].Y + Posicion.Y >= 0 && Puntos[i].Y + Posicion.Y < height &&
                   Puntos[i].Z + Posicion.Z >= 0 && Puntos[i].Z + Posicion.Z < depth
                    )
                {
                    setIntern(containerAuxiliar, (int)(Posicion.X + Puntos[i].X), (int)(Posicion.Y + Puntos[i].Y), (int)(Posicion.Z + Puntos[i].Z));
                }else
                {
                    return false;
                }
            }

            for (int i = 0; i < height; ++i)
            {
                for (int j = 0; j < depth; ++j)
                {
                    byte a = container[i, j];
                    byte b = containerAuxiliar[i, j];
                    byte c = (byte)(a & b);
                    if (c != 0)
                    {
                        return false;
                    }
                }
            }

            return true;

        }

        public void encajar(List<Vector3> T, Vector3 Posicion)
        {

            containerAuxiliar = new byte[height,depth];

                for (int i = 0; i < T.Count; ++i)
                {
                    setIntern(containerAuxiliar, (int)(Posicion.X + T[i].X), (int)(Posicion.Y + T[i].Y), (int)(Posicion.Z + T[i].Z));
                }

                for (int i = 0; i < height; ++i)
                {
                    for (int j = 0; j < depth; ++j)
                    {
                        byte a = container[i, j];
                        byte b = containerAuxiliar[i, j];
                        container[i, j] |= b;
                    }
                }

           
        }

    }
}
