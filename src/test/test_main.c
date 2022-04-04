
#include <stdio.h>
#include <stdbool.h>
#include "debug.h"
#include "test/minunit.h"
#include "dll/memscan.h"

int tests_run = 0;
int debug_level = DEBUG_LOG_VERBOSE;

#define SEARCH_DATA_LEN 12
 

char *test_memscan_find_next()
{
  char search_data[SEARCH_DATA_LEN + 1] = "ecewjbrxpfal";
  uint32_t *result = (uint32_t*) 1;

  // continue searching local memory until matched the address of the search data
  while (result != (uint32_t*)search_data && result != NULL)
  {
    result = memscan_find_next(0x0, (uint8_t*)search_data, SEARCH_DATA_LEN);
  }

  mu_assert("Unit Test Error: memscan_find_next fails to find search data", result == (uint32_t*)search_data);

  return 0;
}

char* all_tests() 
{
  char *res;

  if ((res = test_memscan_find_next()) != 0)
    return res;

  return 0;
}

int main(int argc, char **argv)
{
  char *result;

  // disable debug messages for unit tests
  debug_level = DEBUG_LOG_NONE;

  result = all_tests();
  if (result != 0) 
  {
    printf("\n");
    printf("********************************************************************************************************************************************************\n");
    printf("%s\n", result);
    printf("********************************************************************************************************************************************************\n");
    printf("\n");
  }
  else 
  {
    printf("\n");
    printf("********************************************************************************************************************************************************\n");
    printf("ALL TESTS PASSED\n");
    printf("********************************************************************************************************************************************************\n");
    printf("\n");
  }

  printf("Tests run: %d\n", tests_run);
  return result != 0;
}

