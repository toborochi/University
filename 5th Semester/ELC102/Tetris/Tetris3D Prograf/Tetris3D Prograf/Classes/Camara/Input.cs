

using OpenTK;
using OpenTK.Input;

namespace Cameras
{
    public partial class Locked3rdPersonCamera
    {
        public Vector3 Eye
        {
            get { return eye; }
            set { eye = value; }
        }

        private void KeyPressed()
        {
            Vector3 direction = new Vector3();

            KeyboardState keyState = Keyboard.GetState();

            if (keyState.IsKeyDown(Key.A))
            {
                direction += new Vector3(-0.1f, 0, 0);
            }

            if (keyState.IsKeyDown(Key.D))
            {
                direction += new Vector3(0.1f, 0, 0);
            }

            if (keyState.IsKeyDown(Key.W))
            {
                direction += new Vector3(0, 0, 0.1f);
            }

            if (keyState.IsKeyDown(Key.S))
            {
                direction += new Vector3(0, 0, -0.1f);
            }
            if (direction != Vector3.Zero)
            {
                CameraTranslate(direction);
            }
        }


    }
}