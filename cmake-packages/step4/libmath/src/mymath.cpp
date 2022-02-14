
#include <iostream>
#include "mymath.h"

int add(int a, int b)
{	
	#ifdef DEBUG
	std::cout << "DEBUG" << std::endl;
	#endif
	return a + b;
}
