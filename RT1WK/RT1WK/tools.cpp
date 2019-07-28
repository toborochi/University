#include "stdafx.h"
#include "tools.h"




float tools::drand48() {
	return (rand() / (RAND_MAX + 1.0));
}
