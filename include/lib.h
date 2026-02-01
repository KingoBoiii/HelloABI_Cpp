#ifndef LIB_H
#define LIB_H

#if defined(_WIN32) || defined(__CYGWIN__)
	#if defined(HELLOABI_STATIC)
		#define HELLOABI_API
	#elif defined(HELLOABI_EXPORTS)
		#define HELLOABI_API __declspec(dllexport)
	#else
		#define HELLOABI_API __declspec(dllimport)
	#endif
#else
	#define HELLOABI_API
#endif

extern "C" HELLOABI_API void say_hello();

#endif // LIB_H