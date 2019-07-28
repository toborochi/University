// RT1WK.cpp: define el punto de entrada de la aplicación de consola.
//

#include "stdafx.h"

using namespace std;

vec3 color(const ray &r, hitable *world) {
	hit_record rec;
	if (world->hit(r, 0, FLT_MAX, rec)) {
		return 0.5*vec3(rec.normal.x()+1,rec.normal.y()+1,rec.normal.z()+1);
	}
	else
	{
		vec3 unit_direction = unit_vector(r.direction());
		float t  = 0.5 * (unit_direction.y()+1.0);
		return (1.0-t)*vec3(1.0,1.0,1.0) +t*vec3(0.5,0.7,1.0);
	}

}



int main()
{
	int width = 480;
	int height = 480;
	int ns = 100;

	ofstream file("C:/Users/Asus/Desktop/image.ppm");

	file<< "P3\n" << width <<" "<<height<<"\n255 \n";


	hitable *list[2];
	list[0] = new sphere(vec3(0,0,-1),0.5);
	list[1] = new sphere(vec3(0,-100.5,-1),100);

	hitable *world = new hitable_list(list,2);

	camera cam;

	for (int j = height-1; j >= 0; --j) {
		for (int i= 0; i < width; ++i) {

			vec3 col(0,0,0);

			for (int s = 0; s < ns; ++s) {
				float u = float(i+tools::drand48())/float(width);
				float v = float(j+tools::drand48())/float(height);
				ray r = cam.get_ray(u,v);
				vec3 p = r.point_at_parameter(2.0);
				col+= color(r,world);
			}
			col/= float(ns);
			col*=255.99;

			file<<col.ir() <<" ";
			file<<col.ig()<<" ";
			file<<col.ib()<<"\n";
		}

	}

	file.close();

    return 0;
}

