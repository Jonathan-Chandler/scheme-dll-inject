#ifndef __MEMSCAN_H__
#define __MEMSCAN_H__
#include <stdint.h>

uint32_t *memscan_find_next(uint32_t start_addr, uint8_t *search_data, size_t search_len);

#endif // __MEMSCAN_H__
