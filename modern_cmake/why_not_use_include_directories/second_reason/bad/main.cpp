
#include <iostream>
#include "foo.h"
#include "utils.h"


int main()
{
	std::cout << "Calling foo()" << std::endl;
	foo();
	
	log("main is logging");
	
	return 0;
}	
