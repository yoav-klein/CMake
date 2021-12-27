
#include <iostream>
#include "utils.h"

void foo()
{
	std::cout << "Calling log in foo" << std::endl;
	log("Foo's logging");
}
