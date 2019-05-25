using OpenTK;
using OpenTK.Input;

namespace Pirates.Locked3rdPersonCamera
{
    public class ArcBallCamera
    {
        // Rotation around the two axes
        public float RotationX { get; set; }

        public float RotationY { get; set; }

        // Y axis rotation limits (radians)
        public float MinRotationY { get; set; }

        public float MaxRotationY { get; set; }

        // Distance between the target and camera
        public float Distance { get; set; }

        // Distance limits
        public float MinDistance { get; set; }

        public float MaxDistance { get; set; }

        // Calculated position and specified target
        public Vector3 Position { get; private set; }

        public Vector3 Target { get; set; }

        private Matrix4 view;

        public Matrix4 View
        {
            get { return view; }
            set { view = value; }
        }

        private Vector3 eye;

        public Vector3 Eye
        {
            get { return eye; }
            set { eye = View.ExtractTranslation(); }
        }

        private ButtonState previous;

        private MouseState lastMouseState;

        public ArcBallCamera(Vector3 Target, float RotationX,
        float RotationY, float MinRotationY, float MaxRotationY,
        float Distance, float MinDistance, float MaxDistance)
        {
            this.Target = Target;
            this.MinRotationY = MinRotationY;
            this.MaxRotationY = MaxRotationY;
            // Lock the y axis rotation between the min and max values
            this.RotationY = MathHelper.Clamp(RotationY, MinRotationY,
            MaxRotationY);
            this.RotationX = RotationX;
            this.MinDistance = MinDistance;
            this.MaxDistance = MaxDistance;
            previous = ButtonState.Released;
            // Lock the distance between the min and max values

            this.Distance = MathHelper.Clamp(Distance, MinDistance,
        MaxDistance);
        }

        public void Move(float DistanceChange)
        {
            this.Distance += DistanceChange * 0.25f;
            this.Distance = MathHelper.Clamp(Distance, MinDistance,
            MaxDistance);
        }

        public void Rotate(float RotationXChange, float RotationYChange)
        {
            this.RotationX += RotationXChange;
            this.RotationY += -RotationYChange;
            this.RotationY = MathHelper.Clamp(RotationY, MinRotationY,
            MaxRotationY);
        }

        public void Translate(Vector3 PositionChange)
        {
            this.Position += PositionChange;
        }

        public Matrix4 Update()
        {
            updateCamera();
            return UpdateMatrix();
        }

        

        public Matrix4 UpdateMatrix()
        {
            // Calculate rotation matrix from rotation values
            Matrix3 rotation = Matrix3.CreateFromQuaternion(Quaternion.FromEulerAngles(RotationY,-RotationX,0));
                
                //Matrix4.CreateFromYawPitchRoll(RotationX, -RotationY, 0);
            // Translate down the Z axis by the desired distance
            // between the camera and object, then rotate that
            // vector to find the camera offset from the target
            Vector3 translation = new Vector3(0, 0, Distance);
            translation = Vector3.Transform(translation, rotation);

            Position = Target + translation;
            // Calculate the up vector from the rotation matrix
            Vector3 up = Vector3.Transform(Vector3.UnitY, rotation);
            View = Matrix4.LookAt(Position, Target, up);
            return View;
        }

        private void updateCamera()
        {
            MouseState mouseState = Mouse.GetState();
            KeyboardState keyState = Keyboard.GetState();

            float scrollDelta = (float)lastMouseState.ScrollWheelValue - (float)mouseState.ScrollWheelValue;
            this.Move(scrollDelta);

            if (mouseState.LeftButton == ButtonState.Pressed &&
                previous == ButtonState.Pressed)
            {
                // Determine how much the camera should turn
                float deltaX = (float)lastMouseState.X - (float)mouseState.X;
                float deltaY = (float)lastMouseState.Y - (float)mouseState.Y;
                // Rotate the camera
                this.Rotate(deltaX * .001f, deltaY * .001f);
                lastMouseState = mouseState;
            }
            else if (mouseState.LeftButton == ButtonState.Pressed)
            {
                lastMouseState = mouseState;
            }



            previous = mouseState.LeftButton;
        }
    }
}