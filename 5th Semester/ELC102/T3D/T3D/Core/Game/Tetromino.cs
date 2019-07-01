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
    public class Tetromino : Piece
    {
        public Tipo tipo = Tipo.L;

        public enum Tipo
        {
            I, J, L, Z, S, O, T
        }

        public static List<Vector3> L = new List<Vector3>() {
            new Vector3(-1, 0, -1),
            new Vector3(-1, 0, 0),
            new Vector3(0, 0, 0),
            new Vector3(1, 0, 0)
        };

        public static List<Vector3> T = new List<Vector3>() {
            new Vector3(-1, 0, 0),
            new Vector3(0, 0, 0),
            new Vector3(1, 0, 0),
            new Vector3(0, 0, -1)
        };

        public static List<Vector3> S = new List<Vector3>() {
            new Vector3(-1, 0, 0),
            new Vector3(0, 0, 0),
            new Vector3(0, 0, -1),
            new Vector3(1, 0, -1)
        };

        public static List<Vector3> Z = new List<Vector3>() {
            new Vector3(-1, 0, -1),
            new Vector3(0, 0, -1),
            new Vector3(0, 0, 0),
            new Vector3(1, 0, 0)
    };

        public static List<Vector3> I = new List<Vector3>() {
            new Vector3(-2, 0, 0),
            new Vector3(-1, 0, 0),
            new Vector3(0, 0, 0),
            new Vector3(1, 0, 0)
        };

        public static List<Vector3> O = new List<Vector3>() {
            new Vector3(-1, 0, 0),
            new Vector3(-1, 0, -1),
            new Vector3(0, 0, -1),
            new Vector3(0, 0, 0)
        };


        public List<Vector3> RotarTetrominoX(List<Vector3> Lista)
        {
            List<Vector3> TMP = new List<Vector3>();
            for (int i = 0; i < Lista.Count; ++i)
            {
                Vector4 v = new Vector4(Lista[i], 1);
                Matrix4 rx = new Matrix4(
                    1, 0, 0, 0,
                    0, (int)Math.Cos(Math.PI / 2), (int)Math.Sin(Math.PI / 2), 0,
                    0, -(int)Math.Sin(Math.PI / 2), (int)Math.Cos(Math.PI / 2), 0,
                    0, 0, 0, 1
                    );
                v = rx * v;
                Vector3 t = v.Xyz;
                TMP.Add(t);
            }
            return TMP;
        }

        public void RotateX()
        {
            CurrentPiece = RotarTetrominoX(CurrentPiece);


        }

        public void RotateY()
        {
            CurrentPiece = RotarTetrominoY(CurrentPiece);

            
        }

        public void RotateZ()
        {
            CurrentPiece = RotarTetrominoZ(CurrentPiece);


           
        }

        public List<Vector3> RotarTetrominoY(List<Vector3> Lista)
        {
            List<Vector3> TMP = new List<Vector3>();
            for (int i = 0; i < Lista.Count; ++i)
            {
                Vector4 v = new Vector4(Lista[i], 1);
                Matrix4 rx = new Matrix4(
                    (int)Math.Cos(Math.PI / 2), 0, -(int)Math.Sin(Math.PI / 2), 0,
                    0, 1, 0, 0,
                    (int)Math.Sin(Math.PI / 2), 0, (int)Math.Cos(Math.PI / 2), 0,
                    0, 0, 0, 1
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
                    (int)Math.Cos(Math.PI / 2), -(int)Math.Sin(Math.PI / 2), 0, 0,
                    (int)Math.Sin(Math.PI / 2), (int)Math.Cos(Math.PI / 2), 0, 0,
                    0, 0, 1, 0,
                    0, 0, 0, 1
                    );
                v = rx * v;
                Vector3 t = v.Xyz;
                TMP.Add(t);
            }
            return TMP;
        }


        public Vector3 Position = Vector3.Zero;
        public List<Volume> Parts = new List<Volume>();
        public List<Vector3> CurrentPiece;

        Vector3[] vertdata;
        Vector3[] coldata;
        Vector2[] texcoorddata;
        int[] indicedata;
        int ibo_elements;
        string shader = ShaderManager.Instance.activeShader;
        List<Vector3> verts = new List<Vector3>();
        List<int> inds = new List<int>();
        List<Vector3> colors = new List<Vector3>();
        List<Vector2> texcoords = new List<Vector2>();

        public Tetromino()
        {
            GL.GenBuffers(1, out ibo_elements);
            Position = new Vector3(0, 0, 0);
           
            for (int i = 0; i < 4; ++i)
            {
                TexturedCube tc = new TexturedCube();
                tc.textureID = ShaderManager.Instance.textures["block"];
                Parts.Add(tc);
            }

            setPiece(Tipo.T);

        }

        public void setPiece(Tipo t)
        {
            tipo = t;
            switch (t)
            {
                case Tipo.I: CurrentPiece = I; break;
                case Tipo.L: CurrentPiece = L; break;
                case Tipo.O: CurrentPiece = O; break;
                case Tipo.S: CurrentPiece = S; break;
                case Tipo.T: CurrentPiece = T; break;
                case Tipo.Z: CurrentPiece = Z; break;
            }

            for(int i = 0; i < CurrentPiece.Count; ++i)
            {
                Parts[i].Position = CurrentPiece[i];
            }
        }

        bool once = false;

        public void OnUpdate(Camera cam)
        {
            int ind = 0;
            foreach (Volume v in Parts)
            {
                v.Position = CurrentPiece[ind] + Position;
                ind++;
            }
            if (once == false)
            {

                

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
                once = true;
            }

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
                v.ViewProjectionMatrix = cam.GetViewMatrix() * Matrix4.CreatePerspectiveFieldOfView(1.3f,Settings.CURRENT_WIN_WIDTH  / Settings.CURRENT_WIN_HEIGHT, 1.0f, 40.0f);
                v.ModelViewProjectionMatrix = v.ModelMatrix * v.ViewProjectionMatrix;
            }

            GL.UseProgram(ShaderManager.Instance.shaders[shader].ProgramID);

            GL.BindBuffer(BufferTarget.ArrayBuffer, 0);

            // Buffer index data
            GL.BindBuffer(BufferTarget.ElementArrayBuffer, ibo_elements);
            GL.BufferData(BufferTarget.ElementArrayBuffer, (IntPtr)(indicedata.Length * sizeof(int)), indicedata, BufferUsageHint.StaticDraw);



        }

        public override void Draw()
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
    }
}
