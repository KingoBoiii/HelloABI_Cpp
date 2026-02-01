#include "../include/lib.h"

#include <cstdio>

extern "C" void say_hello()
{
    std::printf("Hello from the library!\n");
}
