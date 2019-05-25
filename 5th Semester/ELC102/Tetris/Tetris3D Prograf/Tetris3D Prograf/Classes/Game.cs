using OpenTK;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OpenTK.Graphics.OpenGL;
using System.IO;
using OpenTK.Graphics;
using OpenTK.Input;
using Pirates.Locked3rdPersonCamera;
using Cameras;

namespace Tetris3D_Prograf.Classes
{
    // Clase principal del juego
    public class Game : GameWindow
    {
        int pgmID;
        int vsID;
        int fsID;
        int attribute_vcol;
        int attribute_vpos;
        int uniform_mview;
        int vbo_position;
        int vbo_color;
        int vbo_mview;
        Vector3[] vertdata;
        Vector3[] coldata;
        List<Volume> objects = new List<Volume>();
        int[] indicedata;
        int ibo_elements;
        float time = 0.0f;
        Camera cam = new Camera();
        ArcBallCamera camArc = new ArcBallCamera(new Vector3(0,0,0),0,0,-(float)Math.PI/2, (float)Math.PI/2, 2,2,4);

        Locked3rdPersonCamera trdCam = new Locked3rdPersonCamera(new Vector3(0,0,2)); 

        Vector2 lastMousePos = new Vector2();

        public Game() : base(1366, 1024, new GraphicsMode(32, 24, 0, 4))
        {

        }


        void initProgram()
        {
            lastMousePos = new Vector2(OpenTK.Input.Mouse.GetState().X, OpenTK.Input.Mouse.GetState().Y);
            CursorVisible = false;

            pgmID = GL.CreateProgram();
            loadShader("C:/vertex.shader", ShaderType.VertexShader, pgmID, out vsID);
            loadShader("C:/frag.shader", ShaderType.FragmentShader, pgmID, out fsID);
            GL.LinkProgram(pgmID);
            Console.WriteLine(GL.GetProgramInfoLog(pgmID));
            attribute_vpos = GL.GetAttribLocation(pgmID, "vPosition");
            attribute_vcol = GL.GetAttribLocation(pgmID, "vColor");
            uniform_mview = GL.GetUniformLocation(pgmID, "modelview");

            if (attribute_vpos == -1 || attribute_vcol == -1 || uniform_mview == -1)
            {
                Console.WriteLine("Error binding attributes");
            }
            GL.GenBuffers(1, out ibo_elements);
            GL.GenBuffers(1, out vbo_position);
            GL.GenBuffers(1, out vbo_color);
            GL.GenBuffers(1, out vbo_mview);

            objects.Add(new Cube());
            objects.Add(new Cube());
        }

        void loadShader(String filename, ShaderType type, int program, out int address)
        {
            address = GL.CreateShader(type);
            using (StreamReader sr = new StreamReader(filename))
            {
                GL.ShaderSource(address, sr.ReadToEnd());
            }
            GL.CompileShader(address);
            GL.AttachShader(program, address);
            Console.WriteLine(GL.GetShaderInfoLog(address));
        }

        protected override void OnLoad(EventArgs e)
        {

           
            int width = DisplayDevice.Default.Width;
            int height = DisplayDevice.Default.Height;
            Width = 1366;
            Height = 1024;
            

            Location = new Point(width/2-Width/2,height/2-Height/2);
            
            base.OnLoad(e);

            Title = "Tetris3D";
            GL.ClearColor(Color.CornflowerBlue);

            initProgram();

        }

        protected override void OnRenderFrame(FrameEventArgs e)
        {
            base.OnRenderFrame(e);
            base.OnRenderFrame(e);
            GL.Viewport(0, 0, Width, Height);
            GL.Clear(ClearBufferMask.ColorBufferBit | ClearBufferMask.DepthBufferBit);
            GL.Enable(EnableCap.DepthTest);

            GL.EnableVertexAttribArray(attribute_vpos);
            GL.EnableVertexAttribArray(attribute_vcol);

            int indiceat = 0;

            foreach (Volume v in objects)
            {
                GL.UniformMatrix4(uniform_mview, false, ref v.ModelViewProjectionMatrix);
                GL.DrawElements(BeginMode.Triangles, v.IndiceCount, DrawElementsType.UnsignedInt, indiceat * sizeof(uint));
                indiceat += v.IndiceCount;
            }

            GL.DisableVertexAttribArray(attribute_vpos);
            GL.DisableVertexAttribArray(attribute_vcol);

            GL.Flush();
            SwapBuffers();
        }

        protected override void OnResize(EventArgs e)
        {

            base.OnResize(e);

            GL.Viewport(ClientRectangle.X, ClientRectangle.Y, ClientRectangle.Width, ClientRectangle.Height);

            Matrix4 projection = Matrix4.CreatePerspectiveFieldOfView((float)Math.PI / 4, Width / (float)Height, 1.0f, 64.0f);

            GL.MatrixMode(MatrixMode.Projection);

            GL.LoadMatrix(ref projection);
        }

        float vel = 0;

        protected override void OnUpdateFrame(FrameEventArgs e)
        {
            

            base.OnUpdateFrame(e);

            ProcessInput();

            List<Vector3> verts = new List<Vector3>();
            List<int> inds = new List<int>();
            List<Vector3> colors = new List<Vector3>();


            int vertcount = 0;

            foreach (Volume v in objects)
            {
                verts.AddRange(v.GetVerts().ToList());
                inds.AddRange(v.GetIndices(vertcount).ToList());
                colors.AddRange(v.GetColorData().ToList());
                vertcount += v.VertCount;
            }

            vertdata = verts.ToArray();
            indicedata = inds.ToArray();
            coldata = colors.ToArray();

            GL.BindBuffer(BufferTarget.ArrayBuffer, vbo_position);
            GL.BufferData<Vector3>(BufferTarget.ArrayBuffer, (IntPtr)(vertdata.Length * Vector3.SizeInBytes), vertdata, BufferUsageHint.StaticDraw);
            GL.VertexAttribPointer(attribute_vpos, 3, VertexAttribPointerType.Float, false, 0, 0);

            GL.BindBuffer(BufferTarget.ArrayBuffer, vbo_color);
            GL.BufferData<Vector3>(BufferTarget.ArrayBuffer, (IntPtr)(coldata.Length * Vector3.SizeInBytes), coldata, BufferUsageHint.StaticDraw);
            GL.VertexAttribPointer(attribute_vcol, 3, VertexAttribPointerType.Float, true, 0, 0);

            time += (float)e.Time;

            objects[0].Position = new Vector3(0.0f, 0.0f, 0.0f);
            //objects[0].Rotation = new Vector3(0.55f * time, 0.25f * time, 0);
            objects[0].Scale = new Vector3(0.2f, 0.2f, 0.2f);

            
            objects[1].Position = new Vector3(-1f, 0.5f + (float)Math.Cos(time), -2.0f);
            //objects[1].Rotation = new Vector3(-0.25f * time, -0.35f * time, 0);
            objects[1].Scale = new Vector3(0.25f, 0.25f, 0.25f);
            

            foreach (Volume v in objects)
            {
                v.CalculateModelMatrix(); 
                v.ViewProjectionMatrix = camArc.View* Matrix4.CreatePerspectiveFieldOfView(1.3f, ClientSize.Width / (float)ClientSize.Height, 1.0f, 40.0f);
                v.ModelViewProjectionMatrix = v.ModelMatrix * v.ViewProjectionMatrix;
            }

            GL.UseProgram(pgmID);

            GL.BindBuffer(BufferTarget.ArrayBuffer, 0);


            GL.BindBuffer(BufferTarget.ElementArrayBuffer, ibo_elements);
            GL.BufferData(BufferTarget.ElementArrayBuffer, (IntPtr)(indicedata.Length * sizeof(int)), indicedata, BufferUsageHint.StaticDraw);

        }

        float posY = 0,posX=0;

        private void ProcessInput()
        {
            /*
            if (Keyboard.GetState().IsKeyDown(Key.W))
            {
                cam.Move(0f, 0.1f, 0f);
            }

            if (Keyboard.GetState().IsKeyDown(Key.S))
            {
                cam.Move(0f, -0.1f, 0f);
            }

            if (Keyboard.GetState().IsKeyDown(Key.A))
            {
                cam.Move(-0.1f, 0f, 0f);
            }

            if (Keyboard.GetState().IsKeyDown(Key.D))
            {
                cam.Move(0.1f, 0f, 0f);
            }

            if (Keyboard.GetState().IsKeyDown(Key.Q))
            {
                cam.Move(0f, 0f, 0.1f);
            }

            if (Keyboard.GetState().IsKeyDown(Key.E))
            {
                cam.Move(0f, 0f, -0.1f);
            }*/

            if (Keyboard.GetState().IsKeyDown(Key.Escape))
            {
                Exit();
            }


           
            if (Keyboard.GetState().IsKeyDown(Key.W))
            {
                camArc.Translate(new Vector3(0, 1f, 0));
                //cam.Position = new Vector3(posX, posY+=0.01f, 1f);
            }
            if (Keyboard.GetState().IsKeyDown(Key.S))
            {
                camArc.Translate(new Vector3(0, -1f, 0));
                //cam.Position = new Vector3(posX, posY -= 0.01f,1f);
            }
            if (Keyboard.GetState().IsKeyDown(Key.D))
            {
                camArc.Translate(new Vector3(1, 0f, 0));
                //cam.Position = new Vector3(posX += 0.01f, posY, 1f);
            }
            if (Keyboard.GetState().IsKeyDown(Key.A))
            {
                camArc.Translate(new Vector3(-1f, 0, 0));
                //cam.Position = new Vector3(posX -= 0.01f, posY, 1f);
            }

            if (Keyboard.GetState().IsKeyDown(Key.Z))
            {
                camArc.Move(0.1f);
                //cam.Position = new Vector3(posX -= 0.01f, posY, 1f);
            }
            if (Keyboard.GetState().IsKeyDown(Key.C))
            {
                camArc.Move(-0.1f);
                //cam.Position = new Vector3(posX -= 0.01f, posY, 1f);
            }


            camArc.View = camArc.Update();
            /*
            if(Focused)
{
                Vector2 delta = lastMousePos - new Vector2(OpenTK.Input.Mouse.GetState().X, OpenTK.Input.Mouse.GetState().Y);
                lastMousePos += delta;

                cam.AddRotation(delta.X, delta.Y);
                lastMousePos = new Vector2(OpenTK.Input.Mouse.GetState().X, OpenTK.Input.Mouse.GetState().Y);
            }*/
        }
        /*
        protected override void OnFocusedChanged(EventArgs e)
        {
            base.OnFocusedChanged(e);
            lastMousePos = new Vector2(OpenTK.Input.Mouse.GetState().X, OpenTK.Input.Mouse.GetState().Y);
        }*/
    }
}
