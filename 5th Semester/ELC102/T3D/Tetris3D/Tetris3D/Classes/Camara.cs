using OpenTK;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tetris3D.Classes
{
    public class Camara
    {
        public Vector3 Posicion = Vector3.Zero;
        public Vector3 Orientacion = new Vector3((float)Math.PI, 0f, 0f);
        public float Velocidad = 0.2f;
        public float SensibilidadMouse = 0.0025f;

	
        public Matrix4 GetViewMatrix()
        {
            Vector3 lookat = new Vector3();

            lookat.X = (float)(Math.Sin((float)Orientacion.X) * Math.Cos((float)Orientacion.Y));
            lookat.Y = (float)Math.Sin((float)Orientacion.Y);
            lookat.Z = (float)(Math.Cos((float)Orientacion.X) * Math.Cos((float)Orientacion.Y));

            return Matrix4.LookAt(Posicion, Posicion + lookat, Vector3.UnitY);
        }
	
        public void Mover(float x, float y, float z)
        {
            Vector3 offset = new Vector3();

            Vector3 forward = new Vector3((float)Math.Sin((float)Orientacion.X), 0, (float)Math.Cos((float)Orientacion.X));
            Vector3 right = new Vector3(-forward.Z, 0, forward.X);

            offset += x * right;
            offset += y * forward;
            offset.Y += z;

            offset.NormalizeFast();
            offset = Vector3.Multiply(offset, Velocidad);

            Posicion += offset;
        }

	
        public void AñadirRotacion(float x, float y)
        {
            x = x * SensibilidadMouse;
            y = y * SensibilidadMouse;

            Orientacion.X = (Orientacion.X + x) % ((float)Math.PI * 2.0f);
            Orientacion.Y = Math.Max(Math.Min(Orientacion.Y + y, (float)Math.PI / 2.0f - 0.1f), (float)-Math.PI / 2.0f + 0.1f);
        }
    }
}
