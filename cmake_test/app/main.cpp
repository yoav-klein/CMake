
#include <iostream>
void foo();
void external();

int main()
{
	std::cout << "Hello" << std::endl;
	foo();
	external();
	
	return 0;
}
