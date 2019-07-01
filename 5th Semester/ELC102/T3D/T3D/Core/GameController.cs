using OpenTK;
using OpenTK.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using T3D.Core.Game;
using Tetris3D;

namespace T3D.Core
{
    public class GameController
    {
        #region Singleton
        private static GameController instance;

        private GameController() { }

        public static GameController Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new GameController();
                }
                return instance;
            }
        }
        #endregion

        Tetromino t;
        Container c;
        Camera cam = new Camera();
        float time = 0;
        float altura = 14;
        List<Tetromino.Tipo> Tipo = new List<Tetromino.Tipo>()
        {
            Tetromino.Tipo.I,
            Tetromino.Tipo.L,
            Tetromino.Tipo.O,
            Tetromino.Tipo.S,
            Tetromino.Tipo.T,
            Tetromino.Tipo.Z
        };

        Random Random = new Random(int.MaxValue);
        float posx = 0, posy = 0, dist = 10;
        float intervalo = 0.5f;
        int puntuacion = 0;

        public void Input()
        {

            if (Keyboard.GetState().IsKeyDown(Key.Space))
            {
                intervalo = 0.1f;
            }

            if (Keyboard.GetState().IsKeyUp(Key.Space))
            {
                intervalo = 0.5f;
            }



            if (Keyboard.GetState().IsKeyDown(Key.Up))
            {
                posx -= 0.25f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.Down))
            {
                posx += 0.25f;
            }


            if (Keyboard.GetState().IsKeyDown(Key.Right))
            {
                posy -= 0.25f;
            }
            if (Keyboard.GetState().IsKeyDown(Key.Left))
            {
                posy += 0.25f;
            }

            if (Keyboard.GetState().IsKeyDown(Key.ControlLeft))
            {
                dist = Lerp(dist, 15, 0.5f);
            }

            if (Keyboard.GetState().IsKeyDown(Key.ShiftLeft))
            {
                dist = Lerp(dist, 9f, 0.5f);
            }
        }

        public void OnUpdate(float delta)
        {
            time += delta;

            Input();

            posx = (float)MathHelper.Clamp(posx, -Math.PI / 2 + 0.01f, Math.PI / 2 - 0.01f);
            posy = (float)MathHelper.Clamp(posy, -Math.PI + 0.01f, Math.PI - 0.01f);


            cam.distance = dist;
            cam.updateCameraPosition(posx, posy, 0);

            t.Position = new Vector3(t.Position.X, altura, t.Position.Z);

            if (time > intervalo)
            {
                if (c.encaja(t.CurrentPiece, t.Position + new Vector3(0, -1, 0)))
                {
                    altura--;

                }
                else
                {
                    if (c.encaja(t.CurrentPiece, t.Position))
                    {

                        //AudioPlaybackEngine.Instance.PlaySound(AudioController.Instance.Fall);
                        c.encajar(t.CurrentPiece, t.Position);
                        puntuacion += c.checkLine();

                        //tetromino.Puntos = Piezas[Random.Next(0, Piezas.Count)];
                        altura = 15;

                        if (c.encaja(t.CurrentPiece, new Vector3(4, 15, 4)))
                        {
                            t.setPiece(Tipo[Random.Next(0, Tipo.Count)]);
                            //posicionX = posicionZ = 4;
                            t.Position = new Vector3(4, 15, 4);
                            //tetromino.transform.Position = new Vector3(posicionX, altura, posicionZ);
                            //tetromino.Color = Colores[Random.Next(0, Colores.Count)];
                        }

                    }
                    else
                    {
                        //GameStatus = true;
                    }
                }

                time = 0;
            }


            t.OnUpdate(cam);
            c.Update(cam);
        }

        public void OnKeyPressed()
        {

            if (Keyboard.GetState().IsKeyDown(Key.Z))
            {
                if (c.encaja(t.RotarTetrominoX(t.CurrentPiece), t.Position))
                {
                    t.RotateX();

                }

            }

            if (Keyboard.GetState().IsKeyDown(Key.X))
            {
                if (c.encaja(t.RotarTetrominoY(t.CurrentPiece), t.Position))
                {
                    t.RotateY();
                }
            }

            if (Keyboard.GetState().IsKeyDown(Key.C))
            {
                if (c.encaja(t.RotarTetrominoZ(t.CurrentPiece), t.Position))
                {
                    t.RotateZ();

                }
            }

            if (Keyboard.GetState().IsKeyDown(Key.D))
            {
                if (c.encaja(t.CurrentPiece, t.Position + new Vector3(1, 0, 0)))
                {
                    t.Position += new Vector3(1, 0, 0);
                }
            }
            if (Keyboard.GetState().IsKeyDown(Key.A))
            {
                if (c.encaja(t.CurrentPiece, t.Position + new Vector3(-1, 0, 0)))
                {
                    t.Position += new Vector3(-1, 0, 0);
                }
            }

            if (Keyboard.GetState().IsKeyDown(Key.W))
            {
                if (c.encaja(t.CurrentPiece, t.Position + new Vector3(0, 0, -1)))
                {
                    t.Position += new Vector3(0, 0, -1);
                }


            }
            if (Keyboard.GetState().IsKeyDown(Key.S))
            {
                if (c.encaja(t.CurrentPiece, t.Position + new Vector3(0, 0, 1)))
                {
                    t.Position += new Vector3(0, 0, 1);
                }
            }

        }

        float Lerp(float firstFloat, float secondFloat, float by)
        {
            return firstFloat * (1 - by) + secondFloat * by;
        }

    }
}
