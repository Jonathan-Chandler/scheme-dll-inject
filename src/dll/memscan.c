#include "debug.h"
#include "dll/memscan.h"
#include <windows.h>
#include <stdbool.h>

#define MEMINFO_PROTECT_IS_WRITABLE (PAGE_READWRITE | PAGE_WRITECOPY | PAGE_EXECUTE_READWRITE | PAGE_EXECUTE_WRITECOPY)
#define MEMINFO_PROTECT_IS_READABLE (PAGE_READONLY | PAGE_READWRITE | PAGE_EXECUTE_READ | PAGE_EXECUTE_READWRITE)
#define MEMINFO_PROTECT_IS_EXECUTABLE (PAGE_EXECUTE | PAGE_EXECUTE_READ | PAGE_EXECUTE_READWRITE | PAGE_EXECUTE_WRITECOPY)

uint32_t *memscan_find_next(uint32_t start_addr, uint8_t *search_data, size_t search_len)
{
  MEMORY_BASIC_INFORMATION memInfo;
  uint32_t current_addr = start_addr;
  bool bFound = false;
  uint8_t *page_data;

  while (!bFound)
  {
    // get memory page size
    if (VirtualQuery((void*)current_addr, &memInfo, sizeof(memInfo)) == 0)
    {
      // end of pages - return null
      debug_verbose("VirtualQuery returns 0");
      return NULL;
    }

    // skip uncommitted / non-writable / guarded pages
    if (!(memInfo.State & MEM_COMMIT)
      ||  !(memInfo.Protect & MEMINFO_PROTECT_IS_WRITABLE)
      ||  (memInfo.Protect & PAGE_GUARD))
    {
      debug_verbose("Skip page starting at addr 0x%X", (uint32_t)memInfo.BaseAddress);
      goto next_page;
    }

    // can't fit on this page
    if (memInfo.RegionSize < search_len)
    {
      debug_verbose("Skip page smaller than search len with base addr 0x%X", (uint32_t)memInfo.BaseAddress);
      goto next_page;
    }

    // compare each byte on page up until last byte that will fit search_data
    page_data = (uint8_t*)current_addr;
    for (size_t i = 0; i < (memInfo.RegionSize - search_len); i++)
    {
      // set to false when nonmatching character found
      bFound = true;

      // compare each byte from search_data
      for (size_t x = 0; x < search_len; x++)
      {
        if (search_data[x] != page_data[i+x])
        {
          bFound = false;
          break;
        }
      }

      // exit early if search data matched
      if (bFound)
      {
        current_addr = (uint32_t)memInfo.BaseAddress + (uint32_t)i;
        debug_verbose("Matched addr 0x%X", current_addr);
        return current_addr;
      }
    }

    // get next page start addr
    next_page:
      current_addr = (uint32_t)memInfo.BaseAddress + (uint32_t)memInfo.RegionSize;
      debug_verbose("Get next page start addr 0x%X", current_addr);
  }

  return NULL;
}

