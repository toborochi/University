#pragma once
class camera
{
public:
	camera() {
		origin = vec3(0.0,0.0,0.0);
		lower_left_corner = vec3(-1.0,-1.0,-1.0);
		horizontal = vec3(2.0,0.0,0.0);
		vertical = vec3(0.0,2.0,0.0);
	}

	vec3 origin;
	vec3 lower_left_corner;
	vec3 horizontal;
	vec3 vertical;

	ray get_ray(float u,float v) {
		return ray(origin,lower_left_corner+u*horizontal+v*vertical - origin);
	}
};

