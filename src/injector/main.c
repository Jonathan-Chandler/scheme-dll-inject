#include "debug.h"
#include "dll/dll-test.h"
#include "injector/process_info.h"

#include <windows.h>
#include <stdint.h>
#include <stdio.h>

//int debug_level = DEBUG_LOG_VERBOSE;
int debug_level = DEBUG_LOG_ERROR;

int main(void) 
{
  HANDLE hDll;
  char* pcLaunchChickenDllPath = "C:\\work\\c\\chicken-sacrifice\\test-foreign-dll\\dll-test.dll";
  char* pcAppMainDllFunction = "launch_chicken@4"; // name mingling app_main -> app_main@4 (dumpbin /EXPORTS launch_chicken.dll)
  int retval = 0;
  proc_info_t *pProcessInfo = NULL;
  uint32_t pDllFunction;
  int32_t rc;
  //const char *pszExeName = "Sacrifice.exe";
  const char *pszExeName = "Darkstone.exe";

  // open process handle for <pszExeName.exe> process
  if ((rc = proc_info_init(&pProcessInfo, pszExeName)) != 0)
  {
    debug_error("Failed to get process info with error %d", rc);
    return rc;
  }
  
  // inject launch chicken dll
  if ((hDll = proc_info_inject_dll(pProcessInfo, pcLaunchChickenDllPath)) == NULL)
  {
    debug_error("DLL inject failed with null handle\n");
    retval = -1;
    goto close_exit;
  }

  // find foreign function to launch chicken
  if ((pDllFunction = proc_info_get_remote_function_addr(pProcessInfo, hDll, pcAppMainDllFunction)) == 0)
  {
    debug_error("Fail to find function in remote process \"%s\"\n", pcAppMainDllFunction);
    goto close_exit;
  }
  debug_verbose("Found remote address of \"%s\" at 0x%08X", pcAppMainDllFunction, pDllFunction);

  // create thread to launch function in remote process
  CreateRemoteThread(pProcessInfo->hProcess, 0, 0, (LPTHREAD_START_ROUTINE)pDllFunction, hDll, 0, NULL);
  Sleep(2);

close_exit:
  // close if process handle is open
  if (pProcessInfo)
    proc_info_destroy(&pProcessInfo);

  return retval;
}

