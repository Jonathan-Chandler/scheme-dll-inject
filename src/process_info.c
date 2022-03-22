#include "debug.h"
#include "process_info.h"
#include <errno.h>
#include <psapi.h>        //MODULEINFO
#include <tlhelp32.h>     // PROCESSENTRY32

int proc_info_get_window_handle(proc_info_t *pProcInfo, const char *pszWindowTitle);
int proc_info_get_process_id(proc_info_t *pProcInfo);
int proc_info_get_process_id_from_exe(proc_info_t *pProcInfo, const char *pszExeName);
int proc_info_get_process_handle(proc_info_t *pProcInfo);
int proc_info_close_process_handle(proc_info_t *pProcInfo);


#if 0
int proc_info_init(proc_info_t **ppProcInfo, const char *pszWindowTitle)
{
  int retval;
  proc_info_t *temp_info;

  if (ppProcInfo == 0)
  {
    debug_error("Null process information return pointer");
    return -EINVAL;
  }
  *ppProcInfo = 0;

  if (pszWindowTitle == 0)
  {
    debug_error("Null window title");
    return -EINVAL;
  }

  if (pszWindowTitle == 0)
  {
    debug_error("Null window title");
    return -EINVAL;
  }

  if (strcmp(pszWindowTitle, "") == 0)
  {
    debug_error("Empty process window title");
    return -EINVAL;
  }

  temp_info = malloc(sizeof(proc_info_t));
  if (temp_info == 0)
  {
    debug_error("Failed to allocate memory for ppProcInfo");
    return -ENOMEM;
  }

  if ( (retval = proc_info_get_window_handle(temp_info, pszWindowTitle)) < 0)
  {
    return retval;
  }

  if ( (retval = proc_info_get_process_id(temp_info)) < 0)
  {
    debug_error("Fail to get window handle");
    return retval;
  }

  if ( (retval = proc_info_get_process_handle(temp_info)) < 0)
  {
    debug_error("Fail to get window handle");
    free(*ppProcInfo);
    return retval;
  }

  *ppProcInfo = temp_info;

#if 0
  printf("%s::%d::%s::ppProcInfo = %08X\n", __FILE__, __LINE__, __func__, (uint32_t)ppProcInfo);
  printf("%s::%d::%s::*ppMgr = %08X\n\n", __FILE__, __LINE__, __func__, (uint32_t)*ppProcInfo);
  //printf("%s::%d::%s::**ppMgr = %08X\n", __FILE__, __LINE__, __func__, (uint32_t)**ppProcInfo);
#endif

  return 0;
}
#endif

int proc_info_init(proc_info_t **ppProcInfo, const char *pszExeName)
{
  int retval;
  proc_info_t *temp_info;

  if (ppProcInfo == 0)
  {
    debug_error("Null process information return pointer");
    return -EINVAL;
  }
  *ppProcInfo = 0;

  if (pszExeName == 0)
  {
    debug_error("Null window title");
    return -EINVAL;
  }

  if (strcmp(pszExeName, "") == 0)
  {
    debug_error("Empty process window title");
    return -EINVAL;
  }

  temp_info = malloc(sizeof(proc_info_t));
  if (temp_info == 0)
  {
    debug_error("Failed to allocate memory for ppProcInfo");
    return -ENOMEM;
  }

#if 0
  // from window name
  if ( (retval = proc_info_get_window_handle(temp_info, pszWindowName)) < 0)
  {
    return retval;
  }

  if ( (retval = proc_info_get_process_id(temp_info)) < 0)
  {
    debug_error("Fail to get process ID");
    return retval;
  }
#endif

  if ( (retval = proc_info_get_process_id_from_exe(temp_info, pszExeName)) < 0)
  {
    debug_error("Fail to get process ID");
    return retval;
  }

  if ( (retval = proc_info_get_process_handle(temp_info)) < 0)
  {
    debug_error("Fail to get process handle");
    free(temp_info);
    return retval;
  }

  *ppProcInfo = temp_info;

#if 0
  debug_verbose("ppProcInfo = %08X\n", __FILE__, __LINE__, __func__, (uint32_t)ppProcInfo);
  debug_verbose("*ppMgr = %08X\n\n", __FILE__, __LINE__, __func__, (uint32_t)*ppProcInfo);
  //debug_verbose("**ppMgr = %08X\n", __FILE__, __LINE__, __func__, (uint32_t)**ppProcInfo);
#endif

  return 0;
}

int proc_info_destroy(proc_info_t **ppProcInfo)
{
  int retval;

  if (ppProcInfo == 0)
  {
    debug_error("Null process information return pointer");
    return -EINVAL;
  }

  if (*ppProcInfo == 0)
  {
    debug_error("Null process information");
    return -EINVAL;
  }

  if ((retval = proc_info_close_process_handle(*ppProcInfo)) < 0)
  {
    debug_error("Fail to close process handle - %d", retval);
  }

  free(*ppProcInfo);
  *ppProcInfo = 0;
  return 0;
}

int proc_info_get_window_handle(proc_info_t *pProcInfo, const char *pszWindowTitle)
{
  if (pProcInfo == NULL)
  {
    debug_error("Null process information");
    return -EINVAL;
  }

  pProcInfo->hWindow = FindWindow(0, pszWindowTitle);

  if (pProcInfo->hWindow == 0)
  {
    debug_error("%s window not found", pszWindowTitle);
    return -EINVAL;
  }

  debug_verbose("Found %s window", pszWindowTitle);
  return 0;
}


int proc_info_get_process_id_from_exe(proc_info_t *pProcInfo, const char *pszExeName)
{
  HANDLE hProcessSnap;
  PROCESSENTRY32 pe32;
  DWORD dwProcessId;

  if (pProcInfo == 0)
  {
    debug_error("Null process info");
    return -EINVAL;
  }

  // get all 32 bit processes
  hProcessSnap = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  if (INVALID_HANDLE_VALUE == hProcessSnap) return(FALSE);

  pe32.dwSize = sizeof(PROCESSENTRY32); // <----- IMPORTANT

  // get first process
  if (!Process32First(hProcessSnap, &pe32))
  {
    CloseHandle(hProcessSnap);          // clean the snapshot object
    debug_error("Failed to read Process32First information");
    return -ENXIO;
  }

  do
  {
    if (0 == strcmp(pszExeName, pe32.szExeFile))
    {
      dwProcessId = pe32.th32ProcessID;
      break;
    }
  } while (Process32Next(hProcessSnap, &pe32));

  CloseHandle(hProcessSnap);

  if (dwProcessId == 0 || 0 != strcmp(pszExeName, pe32.szExeFile))
  {
    debug_error("Process \"%s\" was not found", pszExeName);
    return -ENXIO;
  }
  else
    debug_verbose("Found process ID %u", (uint32_t)dwProcessId);

  pProcInfo->dwProcessId = dwProcessId;
  return 0;
}

int proc_info_get_process_id(proc_info_t *pProcInfo)
{
  if (pProcInfo->hWindow == 0)
  {
    debug_error("Null window handle");
    return -EINVAL;
  }

  GetWindowThreadProcessId(pProcInfo->hWindow, &pProcInfo->dwProcessId);
  if (pProcInfo->dwProcessId == 0)
  {
    debug_error("Could not get process id");
    return -ENXIO;
  }

  debug_verbose("Found process id: %lu", pProcInfo->dwProcessId);
  return 0;
}

int proc_info_get_process_handle(proc_info_t *pProcInfo)
{
  if (pProcInfo->dwProcessId == 0)
  {
    debug_error("Null process ID");
    return -EINVAL;
  }

  pProcInfo->hProcess = OpenProcess(PROCESS_ALL_ACCESS, FALSE, pProcInfo->dwProcessId);

  if (pProcInfo->hProcess == 0)
  {
    debug_error("Failed to get handle for process");
    return -ENXIO;
  }

  debug_verbose("Open process handle: %u", (unsigned int) pProcInfo->hProcess);
  return 0;
}

int32_t proc_info_close_process_handle(proc_info_t *pProcInfo)
{
  if (pProcInfo == 0)
  {
    debug_error("Null process info");
    return -EINVAL;
  }

  if (pProcInfo->hProcess == 0)
  {
    debug_error("Bad process handle");
    return -EINVAL;
  }

  debug_verbose("Closed process handle: %u", (unsigned int) pProcInfo->hProcess);
  CloseHandle(pProcInfo->hProcess);
  pProcInfo->hProcess = 0;

  return 0;
}

uint32_t proc_info_get_remote_function_addr(proc_info_t *pProcInfo, HMODULE hModule, const char *pszSearchedFunctionName)
{
  MODULEINFO RemoteModuleInfo = {0};
  UINT_PTR remote_dll_base = 0;
  IMAGE_DOS_HEADER dll_dos_header = {0};
  DWORD dll_nt_signature = 0;
  IMAGE_FILE_HEADER dll_file_header = {0};
  IMAGE_OPTIONAL_HEADER32 dll_opt_header = {0};
  IMAGE_DATA_DIRECTORY dll_export_dir = {0};
  IMAGE_EXPORT_DIRECTORY dll_export_table = {0};
  UINT_PTR dll_export_function_table_addr = 0;
  UINT_PTR dll_export_name_table_addr = 0;
  UINT_PTR dll_export_ordinal_table_addr = 0;
  DWORD *dll_export_function_table = NULL;
  DWORD *dll_export_name_table = NULL;
  DWORD *dll_export_ordinal_table = NULL; // u16 word
  uint32_t retAddr = 0;

  if (pProcInfo == NULL)
  {
    debug_error("Null process information pointer");
    //return -EINVAL;
    return 0;
  }

  if (pProcInfo->hProcess == 0)
  {
    debug_error("Invalid process handle");
    //return -EINVAL;
    return 0;
  }

  if (!GetModuleInformation(pProcInfo->hProcess, hModule,&RemoteModuleInfo, sizeof(RemoteModuleInfo)))
  {
    debug_error("Fail get module information");
    goto dealloc_exit;
  }

  remote_dll_base	= (UINT_PTR)RemoteModuleInfo.lpBaseOfDll;
  debug_verbose("Found remote DLL base at 0x%08X", remote_dll_base);

  // read dos header of dll
  if (!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)remote_dll_base, &dll_dos_header, sizeof(dll_dos_header), NULL) 
      || dll_dos_header.e_magic != IMAGE_DOS_SIGNATURE)
  {
    debug_error("Fail to get dll dos header");
    goto dealloc_exit;
  }

  // read NT signature of dll
  if (!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)(remote_dll_base + dll_dos_header.e_lfanew), &dll_nt_signature, sizeof(dll_nt_signature), NULL) || dll_nt_signature != IMAGE_NT_SIGNATURE)
  {
    debug_error("Fail to get dll nt signature");
    goto dealloc_exit;
  }

  // read file header of dll
  if (!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)(remote_dll_base + dll_dos_header.e_lfanew + sizeof(dll_nt_signature)), &dll_file_header, sizeof(dll_file_header), NULL))
  {
    debug_error("Fail to get dll file header");
    goto dealloc_exit;
  }

  // read optional header of dll and check magic number
  if (!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)(remote_dll_base + dll_dos_header.e_lfanew + sizeof(dll_nt_signature) + sizeof(dll_file_header)), &dll_opt_header, dll_file_header.SizeOfOptionalHeader, NULL)
      || dll_opt_header.Magic != IMAGE_NT_OPTIONAL_HDR32_MAGIC)
  {
    debug_error("Fail to get dll optional header");
    goto dealloc_exit;
  }

  // if dll module has an export directory then save its address/size
  if (dll_opt_header.NumberOfRvaAndSizes >= IMAGE_DIRECTORY_ENTRY_EXPORT + 1)
  {
    dll_export_dir.VirtualAddress = (dll_opt_header.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT]).VirtualAddress;
    dll_export_dir.Size = (dll_opt_header.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT]).Size;
  }
  else
  {
    debug_error("invalid dll optional header export");
    goto dealloc_exit;
  }

  // Read dll main export table
  if(!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)(remote_dll_base + dll_export_dir.VirtualAddress), &dll_export_table, sizeof(dll_export_table), NULL))
  {
    debug_error("fail to read export dir");
    goto dealloc_exit;
  }

  // save absolute address of tables
  dll_export_function_table_addr = remote_dll_base + dll_export_table.AddressOfFunctions;
  dll_export_name_table_addr = remote_dll_base + dll_export_table.AddressOfNames;
  dll_export_ordinal_table_addr = remote_dll_base + dll_export_table.AddressOfNameOrdinals;
  //printf("remote dll export function table addr 0x%08X\n", dll_export_function_table_addr);
  //printf("remote dll export name table addr 0x%08X\n", dll_export_name_table_addr);
  //printf("remote dll export ordinal table addr 0x%08X\n", dll_export_ordinal_table_addr);

  // Allocate memory for tables
  dll_export_function_table	= malloc(sizeof(DWORD) * dll_export_table.NumberOfFunctions);
  dll_export_name_table		= malloc(sizeof(DWORD) * dll_export_table.NumberOfNames);
  dll_export_ordinal_table	= malloc(sizeof(DWORD) * dll_export_table.NumberOfNames);

  // Check if the allocation failed
  if (dll_export_function_table == NULL || dll_export_name_table == NULL || dll_export_ordinal_table == NULL)
  {
    debug_error("Fail to alloc space for tables");
    goto dealloc_exit;
  }

  // copy function addr table
  if(!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)dll_export_function_table_addr, dll_export_function_table, dll_export_table.NumberOfFunctions * sizeof(DWORD), NULL))
  {
    debug_error("Fail to copy functions");
    goto dealloc_exit;
  }

  // copy function name table
  if(!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)dll_export_name_table_addr,
        dll_export_name_table, dll_export_table.NumberOfNames * sizeof(DWORD), NULL))
  {
    debug_error("Fail to copy names");
    goto dealloc_exit;
  }

  // copy ordinal table
  if(!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)dll_export_ordinal_table_addr,
        dll_export_ordinal_table, dll_export_table.NumberOfNames * sizeof(WORD), NULL))
  {
    debug_error("Fail to copy ordinal table");
    goto dealloc_exit;
  }

  // print function names
  for (uint32_t i = 0; i < dll_export_table.NumberOfNames; i++)
  {
    char function_name_buff[256];

    for (UINT_PTR j = 0; j < 255; j++)
    {
      if(!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)(remote_dll_base + dll_export_name_table[i] + j),
            &function_name_buff[j], sizeof(char), NULL))
      {
        debug_error("Fail while reading function name %u character %u from dll", i, j);
        goto dealloc_exit;
      }
      //else
      //{
      //  printf("%c", function_name_buff[j]);
      //}

      if (j > 0 && function_name_buff[j] == '\0')
      {
        //printf("function[%u] name: %s\n", i, function_name_buff);
        //printf("function[%u] addr: %08X\n", i, (uint32_t)(remote_dll_base + dll_export_function_table[i]));
        break;
      }
    }

    if (strcmp(function_name_buff, pszSearchedFunctionName) == 0)
    {
      retAddr = (uint32_t)(remote_dll_base + dll_export_function_table[i]);
      //printf("Found function\n");
      //printf("function[%u] name: %s\n", i, function_name_buff);
      //printf("function[%u] addr: %08X\n", i, (uint32_t)(remote_dll_base + dll_export_function_table[i]));

      break;
    }
  }

dealloc_exit:
  if (dll_export_function_table)
    free(dll_export_function_table);
  if (dll_export_name_table)
    free(dll_export_name_table);
  if (dll_export_ordinal_table)
    free(dll_export_ordinal_table);

  return retAddr;
}

int32_t proc_info_list_remote_functions(proc_info_t *pProcInfo, HMODULE hModule)
{
  MODULEINFO RemoteModuleInfo = {0};
  UINT_PTR remote_dll_base = 0;
  IMAGE_DOS_HEADER dll_dos_header = {0};
  DWORD dll_nt_signature = 0;
  IMAGE_FILE_HEADER dll_file_header = {0};
  IMAGE_OPTIONAL_HEADER32 dll_opt_header = {0};
  IMAGE_DATA_DIRECTORY dll_export_dir = {0};
  IMAGE_EXPORT_DIRECTORY dll_export_table = {0};
  UINT_PTR dll_export_function_table_addr = 0;
  UINT_PTR dll_export_name_table_addr = 0;
  UINT_PTR dll_export_ordinal_table_addr = 0;
  DWORD *dll_export_function_table = NULL;
  DWORD *dll_export_name_table = NULL;
  DWORD *dll_export_ordinal_table = NULL; // u16 word

  if (pProcInfo == NULL)
  {
    debug_error("Null process information pointer");
    return -EINVAL;
  }

  if (pProcInfo->hProcess == 0)
  {
    debug_error("Invalid process handle");
    return -EINVAL;
  }

  if (!GetModuleInformation(pProcInfo->hProcess, hModule,&RemoteModuleInfo, sizeof(RemoteModuleInfo)))
  {
    debug_error("Fail get module information");
    goto exit_fail;
  }

  remote_dll_base	= (UINT_PTR)RemoteModuleInfo.lpBaseOfDll;
  debug_verbose("Remote dll base 0x%08X", remote_dll_base);

  // read dos header of dll
  if (!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)remote_dll_base, &dll_dos_header, sizeof(dll_dos_header), NULL) 
      || dll_dos_header.e_magic != IMAGE_DOS_SIGNATURE)
  {
    debug_error("Fail to get dll dos header");
    goto exit_fail;
  }

  // read NT signature of dll
  if (!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)(remote_dll_base + dll_dos_header.e_lfanew), &dll_nt_signature, sizeof(dll_nt_signature), NULL) || dll_nt_signature != IMAGE_NT_SIGNATURE)
  {
    debug_error("Fail to get dll nt signature");
    goto exit_fail;
  }

  // read file header of dll
  if (!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)(remote_dll_base + dll_dos_header.e_lfanew + sizeof(dll_nt_signature)), &dll_file_header, sizeof(dll_file_header), NULL))
  {
    debug_error("Fail to get dll file header");
    goto exit_fail;
  }

  // read optional header of dll and check magic number
  if (!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)(remote_dll_base + dll_dos_header.e_lfanew + sizeof(dll_nt_signature) + sizeof(dll_file_header)), &dll_opt_header, dll_file_header.SizeOfOptionalHeader, NULL)
      || dll_opt_header.Magic != IMAGE_NT_OPTIONAL_HDR32_MAGIC)
  {
    debug_error("Fail to get dll optional header");
    goto exit_fail;
  }

  // if dll module has an export directory save its address/size
  if (dll_opt_header.NumberOfRvaAndSizes >= IMAGE_DIRECTORY_ENTRY_EXPORT + 1)
  {
    dll_export_dir.VirtualAddress = (dll_opt_header.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT]).VirtualAddress;
    dll_export_dir.Size = (dll_opt_header.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT]).Size;
  }
  else
  {
    debug_error("invalid dll optional header export");
    goto exit_fail;
  }

  // Read dll main export table
  if(!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)(remote_dll_base + dll_export_dir.VirtualAddress), &dll_export_table, sizeof(dll_export_table), NULL))
  {
    debug_error("fail to read export dir");
    goto exit_fail;
  }

  // save absolute address of tables
  dll_export_function_table_addr = remote_dll_base + dll_export_table.AddressOfFunctions;
  dll_export_name_table_addr = remote_dll_base + dll_export_table.AddressOfNames;
  dll_export_ordinal_table_addr = remote_dll_base + dll_export_table.AddressOfNameOrdinals;
  debug_verbose("remote dll export function table addr 0x%08X", dll_export_function_table_addr);
  debug_verbose("remote dll export name table addr 0x%08X", dll_export_name_table_addr);
  debug_verbose("remote dll export ordinal table addr 0x%08X", dll_export_ordinal_table_addr);

  // Allocate memory for tables
  dll_export_function_table	= malloc(sizeof(DWORD) * dll_export_table.NumberOfFunctions);
  dll_export_name_table		= malloc(sizeof(DWORD) * dll_export_table.NumberOfNames);
  dll_export_ordinal_table	= malloc(sizeof(DWORD) * dll_export_table.NumberOfNames);

  // Check if the allocation failed
  if (dll_export_function_table == NULL || dll_export_name_table == NULL || dll_export_ordinal_table == NULL)
  {
    debug_error("Fail to alloc space for tables");
    goto exit_fail;
  }

  // copy function addr table
  if(!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)dll_export_function_table_addr, dll_export_function_table, dll_export_table.NumberOfFunctions * sizeof(DWORD), NULL))
  {
    debug_error("Fail to copy functions");
    goto exit_fail;
  }

  // copy function name table
  if(!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)dll_export_name_table_addr,
        dll_export_name_table, dll_export_table.NumberOfNames * sizeof(DWORD), NULL))
  {
    debug_error("Fail to copy names");
    goto exit_fail;
  }

  // copy ordinal table
  if(!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)dll_export_ordinal_table_addr,
        dll_export_ordinal_table, dll_export_table.NumberOfNames * sizeof(WORD), NULL))
  {
    debug_error("Fail to copy ordinal table");
    goto exit_fail;
  }

  // print function names
  for (uint32_t i = 0; i < dll_export_table.NumberOfNames; i++)
  {
    char function_name_buff[256];

    for (UINT_PTR j = 0; j < 255; j++)
    {
      if(!ReadProcessMemory(pProcInfo->hProcess, (LPCVOID)(remote_dll_base + dll_export_name_table[i] + j),
            &function_name_buff[j], sizeof(char), NULL))
      {
        debug_error("Fail while reading function name %u character %u from dll", i, j);
        goto exit_fail;
      }
      //else
      //{
      //  printf("%c", function_name_buff[j]);
      //}

      if (j > 0 && function_name_buff[j] == '\0')
      {
        debug_verbose("function[%u] name: %s", i, function_name_buff);
        debug_verbose("function[%u] addr: %08X", i, (uint32_t)(remote_dll_base + dll_export_function_table[i]));
        break;
      }
    }
  }

  if (dll_export_function_table)
    free(dll_export_function_table);
  if (dll_export_name_table)
    free(dll_export_name_table);
  if (dll_export_ordinal_table)
    free(dll_export_ordinal_table);

  return 0;

exit_fail:
  return -1;
}

HANDLE proc_info_inject_dll(proc_info_t *pProcInfo, char *pszDllPath)
{
  HANDLE hDll;
  LPVOID lpAllocatedDllPath;
  HANDLE ret;
  int n;
  LPVOID lpLoadLibAddr;

  if (pProcInfo == NULL)
  {
    debug_error("Null process information pointer");
    //return -EINVAL;
    return NULL;
  }

  if (pProcInfo->hProcess == 0)
  {
    debug_error("Invalid process handle");
    //return -EINVAL;
    return NULL;
  }

  // get addr of load library
  lpLoadLibAddr = (LPVOID)GetProcAddress(GetModuleHandle("kernel32.dll"), "LoadLibraryA");
  if(lpLoadLibAddr == NULL) 
  {
    debug_error("LoadLibraryExA function was not found inside kernel32.dll library");
    return NULL;
  }
  else
  {
    debug_verbose("Found address of kernel32 LoadLibraryA: 0x%08X", (uint32_t)lpLoadLibAddr);
  }

  // allocate foreign memory for dll path
  lpAllocatedDllPath = (LPVOID)VirtualAllocEx(pProcInfo->hProcess, NULL, strlen(pszDllPath), MEM_RESERVE | MEM_COMMIT, PAGE_READWRITE);
  if(lpAllocatedDllPath == NULL) 
  {
    debug_error("Could not allocate foreign process memory");
    return NULL;
  }

  // write path to DLL into foreign memory
  n = WriteProcessMemory(pProcInfo->hProcess, lpAllocatedDllPath, pszDllPath, strlen(pszDllPath), NULL);
  if(n == 0) 
  {
    debug_error("No bytes written to address space");
    return NULL;
  }

  // create LoadLibraryA thread to load dll at allocated path
  ret = CreateRemoteThread(pProcInfo->hProcess, NULL, 0, (LPTHREAD_START_ROUTINE)lpLoadLibAddr, lpAllocatedDllPath, 0, NULL);
  if(ret == NULL) 
  {
    debug_error("Remote thread could not be created");
    return NULL;
  }

  debug_verbose("Wait for remote thread");
  WaitForSingleObject(ret, INFINITE);

  // exit code is retval of LoadLibraryA
  GetExitCodeThread(ret, (DWORD*) &hDll);
  debug_verbose("DLL loaded at addr 0x%08X", (uint32_t)hDll);
  //debug_verbose("Thread return value = 0x%08X", (uint32_t)ret);

  return hDll;
}

