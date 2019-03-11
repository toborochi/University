using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herramienta.Basico
{
    public class vec3
    {
        public float x, y, z;

        public vec3(float x=0,float y=0,float z=0)
        {
            this.x = x;
            this.y = y;
            this.z = z;
        }
        
        public float Magnitude { get
        {
                float xvalue = x*x;
                float yvalue = y*y;
                float zvalue = z*z;
                float mag = (float)Math.Sqrt(xvalue+yvalue+zvalue);
                return mag;

        }}

        public vec3 Normalized { get { return new vec3(x/Magnitude,y/Magnitude,z/Magnitude); } }

        public static float Dot(vec3 a, vec3 b)
        {
            return a.x * b.x + a.y * b.y + a.z * b.z;
        }


        #region Operadores

        public static vec3 operator + (vec3 a,vec3 b)
        {
            return new vec3(a.x+b.x, a.y + b.y, a.z + b.z);
        }

        public static vec3 operator - (vec3 a, vec3 b)
        {
            return new vec3(a.x - b.x, a.y - b.y, a.z - b.z);
        }

        public static vec3 operator *(vec3 v, float factor)
        {
            return new vec3(v.x * factor, v.y * factor, v.z * factor);
        }
        #endregion
    }
}
