#ifndef __SACRIFICE_H__
#define __SACRIFICE_H__

//enum
//{
//  PLAYER_1_START 0x4C11CC+0x144
//  // base pointer - *(004C11CC + 0x0144)
//};
// Sacrifice.exe+DD5D4
// Sacrifice.exe+DAB10
// Sacrifice.exe+DABB0
// P1 Base - Sacrifice.exe+DAB10 + 144
// P2 Base - Sacrifice.exe+DD5D4

// P1_BASE = *(0x4DABB0)
// P2_BASE = *(0x4DD5D4)
// P3_BASE = *(*(0x4DD5D4) + 0x3CC)
// P4_BASE = *(*(*(0x4DD5D4) + 0x3CC) + 0x3CC)


// P1_BASE = *(0x4DABB0)

enum
{
  PLAYER_LIST_START = 0x4DAB10,
  PLAYER_1_BASE = PLAYER_LIST_START,
  PLAYER_2_BASE = PLAYER_LIST_START + 0x4,
  PLAYER_3_BASE = PLAYER_LIST_START + 0x8,
  PLAYER_4_BASE = PLAYER_LIST_START + 0xC,
  PLAYER_5_BASE = PLAYER_LIST_START + 0x10,
};

// *(PLAYER_N_BASE) == 0x4C11CC
enum
{
  PLAYER_OBJ_SOME_LIST_BASE = 0xC,  // LIST_NODE
  PLAYER_NAME = 0x24,               // char[12]
  PLAYER_MAP_X = 0x104,             // float
  PLAYER_MAP_Y = 0x108,             // float
  PLAYER_MAP_Z = 0x10C,             // float?
  PLAYER_MAP_OBJ_X = 0x130,         // float
  PLAYER_MAP_OBJ_Y = 0x134,         // float
  PLAYER_MAP_OBJ_Z = 0x138,         // float?
  // 0x13C
  // 0x140 // 0x4BFFEC (1B8 X/Y/Z)
  PLAYER_WIZARD_BASE = 0x144,       // *PLAYER_WIZARD 0x4C0930
  // 0x148 // 0x4C0304 (1B8 X/Y/Z)  // altar top
  // 0x14C // 0
  // 0x150 // 0x4C0724 (1B8 X/Y/Z)
  // 0x154 // 0x4BFFEC (1B8 X/Y/Z) // manahoar
  // 0x158 // 0x4BFFEC (1B8 X/Y/Z) // manahoar
};


// *(WIZARD_BASE) == 0x4C0930
enum 
{
  WIZARD_X = 0x01B8,                // float
  WIZARD_Y = 0x01BC,                // float
  WIZARD_Z = 0x01C0,                // float
  WIZARD_CURRENT_HEALTH = 0x08CE,   // int16_t
  WIZARD_MAX_HEALTH = 0x08FE,       // int16_t
  WIZARD_CURRENT_MANA = 0x0B20,     // int16_t
  WIZARD_MAX_MANA = 0x0B24,         // int16_t
  WIZARD_SOULS = 0x0B44,            // int16_t
  WIZARD_NAME = 0x1440,             // char[20]
  WIZARD_STRUCT_SIZE = 0x1454
};

BUILDING_COUNT = 0xF28,
enum
{
  STRUCTURE_TYPE = 0x0,               // uint32_t[6]
  STRUCTURE_SELF = 0x18,              // uint32_t*
  STRUCTURE_X = 0x1B8,                // float
  STRUCTURE_Y = 0x1BC,                // float
  STRUCTURE_Z = 0x1C0,                // float
	STRUCTURE_NEXT = 0x03C4,            // uint32_t*
	STRUCTURE_NEXT_2 = 0x03CC,          // uint32_t*
	STRUCTURE_CURRENT_HEALTH = 0x08CE,  // int16_t
	STRUCTURE_MAX_HEALTH = 0x08FE,      // int16_t
	STRUCTURE_CURRENT_MANA = 0x0B20,    // uint16_t
	STRUCTURE_MAX_MANA = 0x0B24,        // uint16_t
	STRUCTURE_SOULS = 0x0B44,           // uint16_t
	STRUCTURE_SIZE = 0x10C2,            //
};

#endif // __SACRIFICE_H__

