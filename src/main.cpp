#include <iostream>
#include <print>

extern "C" void say_hello()
{
	std::printf("Hello from the shared library!");
}

int main()
{
	std::cout << "Hello, world!\n";

	return 0;
}
