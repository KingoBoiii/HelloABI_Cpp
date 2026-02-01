# hello_abi_cpp

## Static vs Dynamic (Windows import/export)

Koden bruger én makro i headeren: `HELLOABI_API` (se include/lib.h).

- Static build: `HELLOABI_STATIC` er defineret → `HELLOABI_API` bliver tom.
- DLL build (selve DLL-projektet): `HELLOABI_EXPORTS` er defineret → `HELLOABI_API` bliver `__declspec(dllexport)`.
- DLL consumer (et eksternt program der linker mod DLL'en): definér *ikke* `HELLOABI_EXPORTS` → `HELLOABI_API` bliver `__declspec(dllimport)`.

Premake sætter dette automatisk:
- `HelloABI.StaticLib`: `HELLOABI_STATIC`
- `HelloABI.DynamicLib`: `HELLOABI_EXPORTS`