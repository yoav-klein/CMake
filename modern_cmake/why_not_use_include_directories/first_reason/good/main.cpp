
#include <iostream>
#include "foo.h"
#include "bar.h"


int main()
{
	std::cout << "Calling foo()" << std::endl;
	foo();
	std::cout << "Calling bar()" << std::endl;
	bar();
	
	return 0;
}	
