using OpenTK;
using OpenTK.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace T3tris.Classes
{
    public class Camera
    {
        public float dist = 25;
        public Matrix4 m_perspective;
        public Vector3 m_position;
        public Vector3 m_forward;
        public Vector3 m_up;
        public Matrix4 ViewCamera;
        public Vector3 offset;

        public Camera(Vector3 position,float fov,float aspect,float znear,float zfar)
        {
            m_forward = Vector3.UnitZ;
            m_up = Vector3.UnitY;
            m_position = position;
            m_perspective = Matrix4.CreatePerspectiveFieldOfView(fov, aspect, znear, zfar);
            ViewCamera = Matrix4.LookAt(m_position, Vector3.Zero, m_up) * m_perspective;
            offset = new Vector3(position.X,position.Y, position.Z + 8f);
        }

        public void GetMatrixView()
        {
            ViewCamera = Matrix4.LookAt(m_position, Vector3.Zero, m_up) * m_perspective;
        }
        MouseState lastMouseState;
        public void updateCameraPosition(float pitch,float yaw,float roll)
        {
            MouseState mouseState = Mouse.GetState();

           
            float deltaX = (float)lastMouseState.X - (float)mouseState.X;
            float deltaY = (float)lastMouseState.Y - (float)mouseState.Y;

            //m_position = Quaternion.FromEulerAngles(0, -MathHelper.DegreesToRadians(pitch) * 12, 0)*offset;

            float x = dist * (float)Math.Cos(pitch) * (float)Math.Sin(yaw);
            float y = dist * (float)Math.Sin(pitch);
            float z = dist * (float)Math.Cos(pitch) * (float)Math.Cos(yaw);
            m_position = new Vector3(x,y,z);

            GetMatrixView();
            lastMouseState = mouseState;
        }

    }
}
