using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;
using System.Drawing.Imaging;
using System.Diagnostics;
using System.Threading;

namespace SpriteSplitter
{
    class Program
    {
        public static List<Bitmap> resultados = new List<Bitmap>();

        static void Main(string[] args)
        {
            int contador = 0, total, inicioY, inicioX;
            var original = new Bitmap("tilemap.png");
            int alto = original.Height, ancho = original.Width;

            int spritesFila = ancho / 512, spritesColumna = alto / 512;

            // 2 de offset
            const int offset = 2;
            var resultado = new Bitmap(ancho + (spritesFila + 1) * offset - 2, alto + (spritesColumna + 1)* offset - 2);
            //var bitmapdata = resultado.LockBits(new Rectangle(0, 0, resultado.Width, resultado.Height), ImageLockMode.ReadWrite, original.PixelFormat);

            total = spritesFila * spritesColumna;
            for (int i = 0; i < spritesFila; ++i)
            {
                for (int j = 0; j < spritesColumna; ++j)
                {


                    inicioY = i * 512 + 2 * i;
                    inicioX = j * 512 + 2 * j;
                    int a = 0, b = 0;
                    for (int k = i * 512; k < (i + 1) * 512; ++k)
                    {
                        a++; b = 0;
                        for (int l = j * 512; l < (j + 1) * 512; ++l)
                        {
                            b++;
                            Color color = original.GetPixel(l, k);
                            resultado.SetPixel(inicioX + b, inicioY + a, color);

                        }
                    }

                    for(int k=inicioX-1;k<inicioX+512;++k)
                    {
                        Color color = original.GetPixel(j*512,i*512);

                    }


                    contador++;
                    Console.WriteLine(string.Format("{0}/{1}", contador, total));
                }
            }
            Console.Clear();
            Console.WriteLine("Espacios calculados...");


            resultado.Save("resultado.png", ImageFormat.Png);
        }
    }
}
