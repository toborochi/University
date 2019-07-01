using OpenTK.Graphics.OpenGL;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3D.Core.Shaders
{
    public class ShaderManager
    {
        #region Singleton
        private static ShaderManager instance;


        public static ShaderManager Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ShaderManager();
                }
                return instance;
            }
        }
        #endregion

        public Dictionary<string, int> textures = new Dictionary<string, int>();
        public Dictionary<string, ShaderProgram> shaders = new Dictionary<string, ShaderProgram>();
        public string activeShader = "default";

        private ShaderManager() {
           
            //shaders.Add("default", new ShaderProgram("vs.glsl", "fs.glsl", true));
            shaders.Add("textured", new ShaderProgram(
                @"C:\Users\Asus\source\repos\T3D\T3D\Core\Files\GLSL\vertTex.glsl",
                @"C:\Users\Asus\source\repos\T3D\T3D\Core\Files\GLSL\fragTex.glsl", true));

            activeShader = "textured";

            textures.Add("block", loadImage(@"C:\Users\Asus\Desktop\caja.png"));
            textures.Add("block2", loadImage(@"C:\Users\Asus\Desktop\muroa.png"));

        }

        public void deleteShaders()
        {


            foreach (KeyValuePair<string, ShaderProgram> entry in shaders)
            {
                entry.Value.DeleteShader();
            }


        }

        int loadImage(Bitmap image)
        {
            int texID = GL.GenTexture();

            GL.BindTexture(TextureTarget.Texture2D, texID);
            BitmapData data = image.LockBits(new System.Drawing.Rectangle(0, 0, image.Width, image.Height),
                ImageLockMode.ReadOnly, System.Drawing.Imaging.PixelFormat.Format32bppArgb);

            GL.TexImage2D(TextureTarget.Texture2D, 0, PixelInternalFormat.Rgba, data.Width, data.Height, 0,
                OpenTK.Graphics.OpenGL.PixelFormat.Bgra, PixelType.UnsignedByte, data.Scan0);

            image.UnlockBits(data);

            GL.GenerateMipmap(GenerateMipmapTarget.Texture2D);

            return texID;
        }

        int loadImage(string filename)
        {
            try
            {
                Bitmap file = new Bitmap(filename);
                return loadImage(file);
            }
            catch (FileNotFoundException e)
            {
                return -1;
            }
        }

 
    }
}
