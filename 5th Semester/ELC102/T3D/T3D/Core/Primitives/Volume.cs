using OpenTK;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3D.Core
{
    public abstract class Volume
    {
        public Vector3 Position = Vector3.Zero;
        public Vector3 Rotation = Vector3.Zero;
        public Vector3 Scale = Vector3.One;

        public int VertCount;
        public int IndiceCount;
        public int ColorDataCount;
        public Matrix4 ModelMatrix = Matrix4.Identity;
        public Matrix4 ViewProjectionMatrix = Matrix4.Identity;
        public Matrix4 ModelViewProjectionMatrix = Matrix4.Identity;

        public abstract Vector3[] getVertices();
        public abstract int[] getIndices(int offset = 0);
        public abstract Vector3[] getColor();

        public abstract void CalculateModelMatrix();

        public bool isTextured = false;
        public int textureID;
        public int textureCoordCount;
        public abstract Vector2[] getTextureCoord();
    }
}
