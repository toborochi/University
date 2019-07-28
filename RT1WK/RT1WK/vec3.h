#pragma once


#include <math.h>
#include <string.h>
#include <sstream>

using namespace std;

class vec3
{
public:
	vec3(){}

	vec3(float x, float y, float z) {
		vector[0]=x;
		vector[1]=y;
		vector[2]=z;
	}

	string toString() {
		stringstream ssa;
		ssa<< (vector[0]+0.0);
		string a = (ssa.str());

		stringstream ssb;
		ssb<< (vector[1]+0.0);
		string b = (ssb.str());

		stringstream ssc;
		ssc<< (vector[2]+0.0);
		string c = (ssc.str());

		return "("+a + "," + b + "," + c + ")";
	}

	inline float x(){return vector[0];}  inline int ix(){return int(vector[0]);}
	inline float y(){return vector[1];}  inline int iy(){return int(vector[1]);}
	inline float z(){return vector[2];}  inline int iz(){return int(vector[2]);}

	inline float r(){return vector[0];}  inline int ir(){return int(vector[0]);}
	inline float g(){return vector[1];}  inline int ig(){return int(vector[1]);}
	inline float b(){return vector[2];}  inline int ib(){return int(vector[2]);}

	inline const vec3& operator+() const {return *this;}
	inline vec3 operator-() const {return vec3(-vector[0],-vector[1],-vector[2]);}
	inline float operator[] (int i) const {return vector[i];}
	inline float& operator[] (int i) {return vector[i];}


	inline vec3& operator+=(const vec3 &v);
	inline vec3& operator-=(const vec3 &v);
	inline vec3& operator*=(const vec3 &v);
	inline vec3& operator/=(const vec3 &v);
	inline vec3& operator*=(const float t);
	inline vec3& operator/=(const float t);

	inline float length() const {
		return sqrt(
			vector[0]*vector[0] +
			vector[1]*vector[1] +
			vector[2]*vector[2]
		);
	}

	inline float squared_length() const {
		return 
			vector[0]*vector[0] +
			vector[1]*vector[1] +
			vector[2]*vector[2]
			;
	}

	inline void make_unit_vector();





	float vector[3];

};

inline float dot(const vec3 &a, const vec3 &b) {
	return a.vector[0]*b.vector[0] +
		a.vector[1]*b.vector[1]+
		a.vector[2]*b.vector[2];
}


inline istream& operator>>(istream &is, vec3 &t){
	is >> t.vector[0] >> t.vector[1] >> t.vector[2];
	return is;
}

inline ostream& operator<<(ostream &os, vec3 &t){
	os << t.vector[0] << " " << t.vector[1] << " " << t.vector[2];
	return os;
}


inline vec3 operator+(const vec3 &a, const vec3 &b) {
	return vec3(
		a.vector[0]+b.vector[0],
		a.vector[1]+b.vector[1],
		a.vector[2]+b.vector[2]);
}

inline vec3 operator-(const vec3 &a, const vec3 &b) {
	return vec3(
		a.vector[0]-b.vector[0],
		a.vector[1]-b.vector[1],
		a.vector[2]-b.vector[2]);
}

inline vec3 operator*(const vec3 &a, const vec3 &b) {
	return vec3(
		a.vector[0]*b.vector[0],
		a.vector[1]*b.vector[1],
		a.vector[2]*b.vector[2]);
}

inline vec3 operator/(const vec3 &a, const vec3 &b) {
	return vec3(
		a.vector[0]/b.vector[0],
		a.vector[1]/b.vector[1],
		a.vector[2]/b.vector[2]);
}


inline vec3 operator/(const vec3 &v,float t)
{
	return vec3(
		v.vector[0]/t,
		v.vector[1]/t,
		v.vector[2]/t
	);
}

inline vec3 operator*(const vec3 &v,float t)
{
	return vec3(
		t*v.vector[0],
		t*v.vector[1],
		t*v.vector[2]
	);
}

inline vec3 operator*(float t, const vec3 &v)
{
	return vec3(
		t*v.vector[0],
		t*v.vector[1],
		t*v.vector[2]
	);
}


inline vec3& vec3::operator+=(const vec3 &v) {
	vector[0] += v.vector[0];
	vector[1] += v.vector[1];
	vector[2] += v.vector[2];
	return *this;
}

inline vec3& vec3::operator-=(const vec3 &v) {
	vector[0] -= v.vector[0];
	vector[1] -= v.vector[1];
	vector[2] -= v.vector[2];
	return *this;
}

inline vec3& vec3::operator*=(const vec3 &v) {
	vector[0] *= v.vector[0];
	vector[1] *= v.vector[1];
	vector[2] *= v.vector[2];
	return *this;
}

inline vec3& vec3::operator/=(const vec3 &v) {
	vector[0] /= v.vector[0];
	vector[1] /= v.vector[1];
	vector[2] /= v.vector[2];
	return *this;
}

inline vec3& vec3::operator*=(const float t) {
	vector[0]*=t;
	vector[1]*=t;
	vector[2]*=t;
	return *this;
}

inline vec3& vec3::operator/=(const float t) {
	float m = 1.0/t;
	vector[0]*=m;
	vector[1]*=m;
	vector[2]*=m;
	return *this;
}

inline void vec3::make_unit_vector(){
	float k = 1.0/length();
	vector[0]*=k;
	vector[1]*=k;
	vector[2]*=k;
}

inline vec3 unit_vector(vec3 v) {
	return v/v.length();
}
