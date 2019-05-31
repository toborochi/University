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
        public float distance = 1;
        public Matrix4 m_perspective;
        public Vector3 m_position;
        public Vector3 m_forward;
        public Vector3 m_up;
        public Matrix4 ViewCamera;
        public Vector3 offset;
        public Vector3 Target;

        public Camera(Vector3 position,float fov,float aspect,float znear,float zfar)
        {
            Target = Vector3.Zero;
            m_forward = Vector3.UnitZ;
            m_up = Vector3.UnitY;
            m_position = position;
            m_perspective = Matrix4.CreatePerspectiveFieldOfView(fov, aspect, znear, zfar);
            ViewCamera = Matrix4.LookAt(m_position, Target, m_up) * m_perspective;
            offset = new Vector3(position.X,position.Y, position.Z + 50f);
        }

        public void OnWindowResize(float fov, float aspect, float znear, float zfar)
        {
            m_perspective = Matrix4.CreatePerspectiveFieldOfView(fov, aspect, znear, zfar);
        }

        private void UpdateViewCamera()
        {
            ViewCamera = Matrix4.LookAt(m_position,Target, m_up) * m_perspective;
        }

        public void updateCameraPosition(float pitch,float yaw,float roll)
        {
            float x = Target.X + distance * (float)Math.Cos(pitch) * (float)Math.Sin(yaw);
            float y = Target.Y + distance * (float)Math.Sin(pitch);
            float z = Target.Z + distance * (float)Math.Cos(pitch) * (float)Math.Cos(yaw);
            m_position = new Vector3(x,y,z);

            UpdateViewCamera();
        }

    }
}
