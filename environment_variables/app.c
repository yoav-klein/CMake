
#include <stdio.h>


int main() 
{

#ifdef FOO
	printf("Foo is defined\n");
#endif
	printf("Outside of definition of FOO\n");

	return 0;
}
