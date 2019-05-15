using OpenTK;
using OpenTK.Graphics;
using OpenTK.Graphics.OpenGL4;
namespace techdump.opengl.Components
{
    public sealed class MainWindow : GameWindow
    {

        public MainWindow()
        : base(640, // initial width
        480, // initial height
        GraphicsMode.Default,
        "dreamstatecoding",  // initial title
        GameWindowFlags.Default,
        DisplayDevice.Default,
        3, // OpenGL major version
        0, // OpenGL minor version
        GraphicsContextFlags.ForwardCompatible
        )
        {
            base.Location = new System.Drawing.Point(20, 20);
            Title += ": OpenGL Version: " + GL.GetString(StringName.Version);
        }
    }
}