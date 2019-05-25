
using OpenTK;

namespace Cameras
{
    public partial class Locked3rdPersonCamera
    {
        private static readonly Vector3 worldY = new Vector3(0, 1, 0);
        private Vector3 dir;

        private Quaternion orientation;
        public Matrix4 view;

        public Matrix4 View
        {
            get { return view; }
            set { view = value; }
        }

        private Vector3 eye = new Vector3();
        private Vector3 xAxis = new Vector3(1, 0, 0);
        private Vector3 yAxis = new Vector3(0, 1, 0);
        private Vector3 zAxis = new Vector3(0, 0, 1);

        public Locked3rdPersonCamera(Vector3 position)
        {
            this.view = Matrix4.Identity;
            this.dir = new Vector3(0, 0, 1);
            this.orientation = new Quaternion(0, 0, 0, 1);
            this.CameraTranslate(position);
        }

        public Locked3rdPersonCamera(Vector3 position, Quaternion orientation)
        {
            this.view = Matrix4.Identity;
            this.dir = new Vector3(0, 0, 1);
            this.orientation = orientation;
            this.CameraTranslate(position);
        }
    }
}