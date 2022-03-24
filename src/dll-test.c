#include "dll-test.h"
#include <stdio.h>
#include <chicken.h>

#define _GNU_SOURCE
#include <stdlib.h>

__declspec(dllexport) __cdecl char* get_pointer(uint32_t pointer)
{
  return (char*) pointer;
}

__declspec(dllexport) __cdecl char get_char_from_pointer(char *pointer)
{
  return *pointer;
}

__declspec(dllexport) __cdecl uint8_t get_uint8_from_pointer(char *pointer)
{
  return *((uint8_t*) pointer);
}

__declspec(dllexport) __cdecl uint16_t get_uint16_from_pointer(char *pointer)
{
  return *((uint16_t*) pointer);
}

__declspec(dllexport) __cdecl uint32_t get_uint32_from_pointer(char *pointer)
{
  return *((uint32_t*) pointer);
}

__declspec(dllexport) __cdecl void print_char_from_pointer(char *pointer)
{
  printf("%c\n", *pointer);
}

__declspec(dllexport) __cdecl void print_uint8_from_pointer(char *pointer)
{
  printf("%hhu\n", *((uint8_t*) pointer));
}

__declspec(dllexport) __cdecl void print_uint16_from_pointer(char *pointer)
{
  printf("%hu\n", *((uint16_t*) pointer));
}

__declspec(dllexport) __cdecl void print_uint32_from_pointer(char *pointer)
{
  printf("%u\n", *((uint32_t*) pointer));
}

__declspec(dllexport) __cdecl void print_hex_bytes(size_t nBytes, uint8_t *pointer)
{
  printf("         ");
  for (size_t x = 0; x < 0x10; x++)
    printf("%02X ", x);
  printf("\n");

  for (size_t i = 0; i < nBytes; i += 0x10)
  {
    printf("%08X ", (uint32_t) pointer + i);
    for (size_t x = 0; x < 0x10 && x+i < nBytes; x++)
      printf("%02X ", pointer[i + x]);
    printf("\n");
  }
}

// __declspec(dllexport) DWORD WINAPI launch_chicken(LPVOID lpThreadParameter)
__declspec(dllexport) DWORD WINAPI launch_chicken(HMODULE hModule)
{
  const char *script_path = "C:\\work\\c\\chicken-sacrifice\\test-foreign-dll\\chicken-server.scm";
  char buffer[256] = {0};
  char line[256] = {0};
  int status;
  FILE *launch_server_script;

#if 0
  // create console window
  AllocConsole();
  freopen("CONIN$", "r", stdin);
  freopen("CONOUT$", "w", stdout);
  freopen("CONOUT$", "w", stderr);
#endif

  launch_server_script = fopen(script_path, "r");
  if (launch_server_script == NULL)
  {
    printf("Fail to open %s\n", script_path);
    line[0] = getchar();
    exit(EXIT_FAILURE);
  }

  // start chicken
  CHICKEN_run(CHICKEN_default_toplevel);

  // read server script
  while (fgets(line, sizeof(line), launch_server_script) != NULL) 
  {
    // skip blank lines
    if ((strcmp("", line) == 0) || (strcmp("\n", line) == 0))
      continue;
    printf("%s", line);

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

  printf("close file\n");
  fclose(launch_server_script);

#if 0
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
#endif

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

