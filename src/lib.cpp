#include "../include/lib.h"

#include <print>

extern "C" void say_hello()
{
    std::printf("Hello from the shared library!");
}
