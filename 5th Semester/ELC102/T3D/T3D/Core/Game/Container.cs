using OpenTK;
using OpenTK.Graphics.OpenGL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using T3D.Core.Shaders;
using Tetris3D;

namespace T3D.Core.Game
{
    public class Container
    {
        public List<Volume> Parts = new List<Volume>();
        Vector3[] vertdata;
        Vector3[] coldata;
        Vector2[] texcoorddata;
        int[] indicedata;
        int ibo_elements;
        string shader = ShaderManager.Instance.activeShader;
 
        public Container(int lenght, int depth, int height)
        {

            this.length = lenght;
            this.depth = depth;
            this.height = height;
            container = new byte[height, depth];
            containerAuxiliar = new byte[height, depth];

            GL.GenBuffers(1, out ibo_elements);
            

            for(int i = 0; i < 10; ++i)
            {
                for(int j = 0; j < 10; ++j)
                {
                    TexturedCube v = new TexturedCube();
                    v.textureID = ShaderManager.Instance.textures["block2"];
                    v.Position = new Vector3(i-1, -1, j-1);
                    Parts.Add(v);
                }
            }
            
        }

        public void Draw()
        {
            ShaderManager.Instance.shaders[shader].EnableVertexAttribArrays();

            int indiceat = 0;

            // Draw all our objects
            foreach (Volume v in Parts)
            {
                GL.ActiveTexture(TextureUnit.Texture0);
                GL.BindTexture(TextureTarget.Texture2D, v.textureID);

                GL.UniformMatrix4(ShaderManager.Instance.shaders[shader].GetUniform("modelview"), false, ref v.ModelViewProjectionMatrix);

                if (ShaderManager.Instance.shaders[shader].GetUniform("maintexture") != -1)
                {
                    GL.Uniform1(ShaderManager.Instance.shaders[shader].GetUniform("maintexture"), 0);
                }

                GL.DrawElements(BeginMode.Triangles, v.IndiceCount, DrawElementsType.UnsignedInt, indiceat * sizeof(uint));
                indiceat += v.IndiceCount;
            }

            ShaderManager.Instance.shaders[shader].DisableVertexAttribArrays();
        }

        List<Vector3> verts = new List<Vector3>();
        List<int> inds = new List<int>();
        List<Vector3> colors = new List<Vector3>();
        List<Vector2> texcoords = new List<Vector2>();
        bool once = false;

        public void Update(Camera cam)
        {
            

            verts.Clear();
            inds.Clear();
            colors.Clear();
            texcoords.Clear();


            // Assemble vertex and indice data for all volumes
            int vertcount = 0;
            foreach (Volume v in Parts)
            {
                verts.AddRange(v.getVertices().ToList());
                inds.AddRange(v.getIndices(vertcount).ToList());
                colors.AddRange(v.getColor().ToList());
                texcoords.AddRange(v.getTextureCoord());
                vertcount += v.VertCount;
            }

            vertdata = verts.ToArray();
            indicedata = inds.ToArray();
            coldata = colors.ToArray();
            texcoorddata = texcoords.ToArray();
                


            GL.BindBuffer(BufferTarget.ArrayBuffer, ShaderManager.Instance.shaders[shader].GetBuffer("vPosition"));

            GL.BufferData<Vector3>(BufferTarget.ArrayBuffer, (IntPtr)(vertdata.Length * Vector3.SizeInBytes), vertdata, BufferUsageHint.StaticDraw);
            GL.VertexAttribPointer(ShaderManager.Instance.shaders[shader].GetAttribute("vPosition"), 3, VertexAttribPointerType.Float, false, 0, 0);

            // Buffer vertex color if shader supports it
            if (ShaderManager.Instance.shaders[shader].GetAttribute("vColor") != -1)
            {
                GL.BindBuffer(BufferTarget.ArrayBuffer, ShaderManager.Instance.shaders[shader].GetBuffer("vColor"));
                GL.BufferData<Vector3>(BufferTarget.ArrayBuffer, (IntPtr)(coldata.Length * Vector3.SizeInBytes), coldata, BufferUsageHint.StaticDraw);
                GL.VertexAttribPointer(ShaderManager.Instance.shaders[shader].GetAttribute("vColor"), 3, VertexAttribPointerType.Float, true, 0, 0);
            }


            // Buffer texture coordinates if shader supports it
            if (ShaderManager.Instance.shaders[shader].GetAttribute("texcoord") != -1)
            {
                GL.BindBuffer(BufferTarget.ArrayBuffer, ShaderManager.Instance.shaders[shader].GetBuffer("texcoord"));
                GL.BufferData<Vector2>(BufferTarget.ArrayBuffer, (IntPtr)(texcoorddata.Length * Vector2.SizeInBytes), texcoorddata, BufferUsageHint.StaticDraw);
                GL.VertexAttribPointer(ShaderManager.Instance.shaders[shader].GetAttribute("texcoord"), 2, VertexAttribPointerType.Float, true, 0, 0);
            }

            // Update model view matrices
            foreach (Volume v in Parts)
            {
                v.CalculateModelMatrix();
                v.ViewProjectionMatrix = cam.GetViewMatrix() * Matrix4.CreatePerspectiveFieldOfView(1.3f, Settings.CURRENT_WIN_WIDTH / Settings.CURRENT_WIN_HEIGHT, 1.0f, 40.0f);
                v.ModelViewProjectionMatrix = v.ModelMatrix * v.ViewProjectionMatrix;
            }

            GL.UseProgram(ShaderManager.Instance.shaders[shader].ProgramID);

            GL.BindBuffer(BufferTarget.ArrayBuffer, 0);

            // Buffer index data
            GL.BindBuffer(BufferTarget.ElementArrayBuffer, ibo_elements);
            GL.BufferData(BufferTarget.ElementArrayBuffer, (IntPtr)(indicedata.Length * sizeof(int)), indicedata, BufferUsageHint.StaticDraw);

        }

        byte[,] container;
        byte[,] containerAuxiliar;
        public int length, depth, height;

        public void bajar()
        {
            List<Vector3> puntos = new List<Vector3>();
            for (int i = 1; i < height; ++i)
            {
                for (int j = 0; j < depth; ++j)
                {
                    for (int k = 0; k < length; ++k)
                    {
                        if (getAt(k, i, j))
                        {
                            if (!getAt(k, i - 1, j))
                            {
                                puntos.Add(new Vector3(k, i, j));
                                unset(k, i, j);
                                set(k, i - 1, j);
                            }
                        }
                    }
                }
            }

            for(int i = 0; i < Parts.Count; ++i)
            {
                if (puntos.Contains(Parts[i].Position))
                {
                    Parts[i].Position += new Vector3(0, -1, 0);
                }

            }
        }

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

        bool getAt(int x, int y, int z)
        {
            if(x>=0 && x<length && z>=0 && z<depth && y>=0 && y<height)
            {
                var bit = (container[y, z] & (1 << x)) != 0;
                return bit;
            }else
            {
                return true;
            }
            
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


        public bool encaja(List<Vector3> Puntos, Vector3 Posicion)
        {
            containerAuxiliar = new byte[height, depth];

            for (int i = 0; i < Puntos.Count; ++i)
            {
                if (Puntos[i].X + Posicion.X >= 0 && Puntos[i].X + Posicion.X < length &&
                   Puntos[i].Y + Posicion.Y >= 0 && Puntos[i].Y + Posicion.Y < height &&
                   Puntos[i].Z + Posicion.Z >= 0 && Puntos[i].Z + Posicion.Z < depth
                    )
                {
                    setIntern(containerAuxiliar, (int)(Posicion.X + Puntos[i].X), (int)(Posicion.Y + Puntos[i].Y), (int)(Posicion.Z + Puntos[i].Z));
                }
                else
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

        public int checkLine()
        {
            int puntuacion = 0;
        

            for (int i = 0; i < height; ++i)
            {
                bool borrar = true;
                for (int j = 0; j < depth; ++j)
                {
                    byte a = container[i, j];
                    if (a != 0xFF)
                    {
                        borrar = false;
                    }
                }
                if (borrar)
                {
                    puntuacion += 100;
                    
                    for (int k = 0; k < depth; ++k)
                    {
                        container[i, k] = 0;
                    }
                    clearParts();
                    bajar();
                }
            }
            return puntuacion;
        }

        private void clearParts()
        {

            Parts.RemoveAll(t=> !getAt((int)t.Position.X, (int)t.Position.Y, (int)t.Position.Z));
            
        }
       

        public void encajar(List<Vector3> T, Vector3 Posicion)
        {

            containerAuxiliar = new byte[height, depth];

            for (int i = 0; i < T.Count; ++i)
            {
                setIntern(containerAuxiliar, (int)(Posicion.X + T[i].X), (int)(Posicion.Y + T[i].Y), (int)(Posicion.Z + T[i].Z));
                TexturedCube tq = new TexturedCube();
                tq.Position = new Vector3((int)(Posicion.X + T[i].X), (int)(Posicion.Y + T[i].Y), (int)(Posicion.Z + T[i].Z));
                tq.textureID = ShaderManager.Instance.textures["block"];
                Parts.Add(tq);

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
