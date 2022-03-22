
#ifndef __PROCESS_INFO_H__
#define __PROCESS_INFO_H__
#include <windows.h>
#include "debug.h"
#include <stdint.h>

typedef struct 
{
  HWND hWindow;
  HANDLE hProcess;
  DWORD dwProcessId;
} proc_info_t;

int32_t proc_info_init(proc_info_t **pProcInfo, const char *pszWindowTitle);
int32_t proc_info_destroy(proc_info_t **pProcInfo);

//MODULEINFO
//{
//  LPVOID lpBaseOfDll;
//  DWORD SizeOfImage;
//  LPVOID EntryPoint;
//};
uint32_t proc_info_get_remote_function_addr(proc_info_t *pProcInfo, HMODULE hModule, const char *pszSearchedFunctionName);

HANDLE proc_info_inject_dll(proc_info_t *pProcInfo, char *pszDllPath);
int32_t proc_info_list_remote_functions(proc_info_t *pProcInfo, HMODULE hModule);


#endif
