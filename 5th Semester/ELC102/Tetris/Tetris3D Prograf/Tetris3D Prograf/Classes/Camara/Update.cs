using OpenTK;

namespace Cameras
{
    public partial class Locked3rdPersonCamera
    {
        private int lastX;
        private int lastY;

        public Matrix4 Update()
        {
            KeyPressed();
            //MouseEvents();
            return view;
        }

        private void Motion(int x, int y)
        {
            float pitch = (float)y - lastY;
            float yaw = (float)x - lastX;

            lastY = y;
            lastX = x;

            pitch = pitch * 0.001f;
            yaw = yaw * 0.001f;

            if (pitch != 0)
            {
                this.orientation = Quaternion.FromEulerAngles(0, pitch, 0) * this.orientation;
            }

            if (yaw != 0)
            {
                this.orientation = this.orientation * Quaternion.FromEulerAngles(yaw, 0, 0);
            }
            view = Matrix4.CreateFromQuaternion(orientation);
            SetViewPosition();
        }

        private void CameraTranslate(Vector3 direction)
        {
            eye += xAxis * direction.X;
            eye += worldY * direction.Y;
            eye += dir * direction.Z;
            SetViewPosition();
        }

        private void SetViewPosition()
        {
            xAxis.X = view.M11;
            xAxis.Y = view.M21;
            xAxis.Z = view.M31;

            yAxis.X = view.M12;
            yAxis.Y = view.M22;
            yAxis.Z = view.M32;

            zAxis.X = view.M13;
            zAxis.Y = view.M23;
            zAxis.Z = view.M33;

            dir = -zAxis;

            view.M41 = -Vector3.Dot(xAxis, eye);
            view.M42 = -Vector3.Dot(yAxis, eye);
            view.M43 = -Vector3.Dot(zAxis, eye);
        }
    }
}