#ifndef __DLL_TEST_H__
#define __DLL_TEST_H__
#include <windows.h>
#include <stdint.h>

__declspec(dllexport) __cdecl char* get_pointer(uint32_t pointer);

__declspec(dllexport) __cdecl char get_char_from_pointer(char *pointer);
__declspec(dllexport) __cdecl uint8_t get_uint8_from_pointer(char *pointer);
__declspec(dllexport) __cdecl uint16_t get_uint16_from_pointer(char *pointer);
__declspec(dllexport) __cdecl uint32_t get_uint32_from_pointer(char *pointer);

__declspec(dllexport) __cdecl void print_char_from_pointer(char *pointer);
__declspec(dllexport) __cdecl void print_uint8_from_pointer(char *pointer);
__declspec(dllexport) __cdecl void print_uint16_from_pointer(char *pointer);
__declspec(dllexport) __cdecl void print_uint32_from_pointer(char *pointer);
__declspec(dllexport) __cdecl void print_hex_bytes(size_t nBytes, uint8_t *pointer);

__declspec(dllexport) WINAPI DWORD launch_chicken(HMODULE hModule);
__declspec(dllexport) WINAPI BOOL DllMain(HMODULE hModule, DWORD dwReason, LPVOID lpReserved);

#endif /* __DLL_TEST_H__ */

