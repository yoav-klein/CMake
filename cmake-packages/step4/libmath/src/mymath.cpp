
#include <iostream>
#include "mymath.h"

int add(int a, int b)
{	
	#ifndef NDEBUG
	std::cout << "DEBUG" << std::endl;
	#endif
	return a + b;
}
