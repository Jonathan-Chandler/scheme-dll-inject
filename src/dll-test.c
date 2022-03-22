#include "dll-test.h"
#include <stdio.h>
#include <chicken.h>

__declspec(dllexport) __cdecl char* get_pointer(uint32_t pointer)
{
  return (char*) pointer;
}

__declspec(dllexport) __cdecl char get_char_from_pointer(char *pointer)
{
  return *pointer;
}

__declspec(dllexport) __cdecl void print_char_from_pointer(char *pointer)
{
  printf("%c\n", *pointer);
}

// __declspec(dllexport) DWORD WINAPI launch_chicken(LPVOID lpThreadParameter)
__declspec(dllexport) DWORD WINAPI launch_chicken(HMODULE hModule)
{
  char buffer[256];
  char line[256];
  int status;

  // create console window
  AllocConsole();
  freopen("CONIN$", "r", stdin);
  freopen("CONOUT$", "w", stdout);
  freopen("CONOUT$", "w", stderr);

  // start chicken
  CHICKEN_run(CHICKEN_default_toplevel);

  // read commands from console to chicken until empty string
  while (1)
  {
    int i = 0;
    for (;;)
    {
      char c = fgetc(stdin);
      if (c == EOF)
      {
        line[i] = 0;
        break;
      }

      if (c == '\n')
      {
        line[i] = 0;
        break;
      }

      line[i] = c;

      i++;
    }
    if (line[0] == 0)
      break;

    status = CHICKEN_eval_string_to_string(line, buffer, 255);
    if (!status)
    {
      CHICKEN_get_error_message(buffer, 255);
      printf("%s\n", buffer);
    }
    else
    {
      printf("%s\n", buffer);
    }
  }

  return 0;
}

//__declspec(dllexport) BOOL WINAPI DllMain(HMODULE hDLL, DWORD dwReason, LPVOID lpReserved) 
BOOL WINAPI DllMain(HMODULE hModule, DWORD dwReason, LPVOID lpReserved) 
{
  switch(dwReason) 
  {
    case DLL_PROCESS_ATTACH:
      break;
    case DLL_PROCESS_DETACH:
      break;
    case DLL_THREAD_ATTACH:
      break;
    case DLL_THREAD_DETACH:
      break;
    default:
      break;
  }

  return TRUE;
}

