	.file	"debug.c"
	.text
Ltext0:
	.file 0 "C:/work/c/chicken-sacrifice/test-foreign-dll" "src/debug.c"
	.def	_printf;	.scl	3;	.type	32;	.endef
_printf:
LFB8:
	.file 1 "C:/msys64/mingw32/i686-w64-mingw32/include/stdio.h"
	.loc 1 369 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	.loc 1 371 35
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 372 14
	movl	-16(%ebp), %ebx
	movl	$1, (%esp)
	movl	__imp____acrt_iob_func, %eax
	call	*%eax
LVL0:
	movl	%ebx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_vfprintf
	movl	%eax, -12(%ebp)
	.loc 1 374 10
	movl	-12(%ebp), %eax
	.loc 1 375 1
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
LC0:
	.ascii "AllocationProtect = 0x%lX\0"
LC1:
	.ascii "State = 0x%lX\12\0"
LC2:
	.ascii "State Flags = \0"
LC3:
	.ascii "MEM_COMMIT \0"
LC4:
	.ascii "MEM_FREE \0"
LC5:
	.ascii "MEM_RESERVE \0"
LC6:
	.ascii "\12\0"
LC7:
	.ascii "Protect = 0x%lX\12\0"
LC8:
	.ascii "Protect Flags = \0"
LC9:
	.ascii "PAGE_NOACCESS \0"
LC10:
	.ascii "PAGE_READONLY \0"
LC11:
	.ascii "PAGE_READWRITE \0"
LC12:
	.ascii "PAGE_WRITECOPY \0"
LC13:
	.ascii "PAGE_TARGETS_INVALID \0"
LC14:
	.ascii "PAGE_GUARD \0"
LC15:
	.ascii "Type = 0x%lX\12\0"
LC16:
	.ascii "Type Flags = \0"
LC17:
	.ascii "MEM_IMAGE \0"
LC18:
	.ascii "MEM_MAPPED \0"
LC19:
	.ascii "MEM_PRIVATE \0"
	.text
	.globl	_debug_print_mem_basic_flags
	.def	_debug_print_mem_basic_flags;	.scl	2;	.type	32;	.endef
_debug_print_mem_basic_flags:
LFB114:
	.file 2 "src/debug.c"
	.loc 2 4 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 2 5 5
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	.loc 2 6 5
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	.loc 2 7 5
	movl	$LC2, (%esp)
	call	_printf
	.loc 2 9 16
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	.loc 2 9 24
	andl	$4096, %eax
	.loc 2 9 8
	testl	%eax, %eax
	je	L4
	.loc 2 10 7
	movl	$LC3, (%esp)
	call	_printf
L4:
	.loc 2 11 16
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	.loc 2 11 24
	andl	$65536, %eax
	.loc 2 11 8
	testl	%eax, %eax
	je	L5
	.loc 2 12 7
	movl	$LC4, (%esp)
	call	_printf
L5:
	.loc 2 13 16
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	.loc 2 13 24
	andl	$8192, %eax
	.loc 2 13 8
	testl	%eax, %eax
	je	L6
	.loc 2 14 7
	movl	$LC5, (%esp)
	call	_printf
L6:
	.loc 2 15 5
	movl	$LC6, (%esp)
	call	_printf
	.loc 2 17 5
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_printf
	.loc 2 18 5
	movl	$LC8, (%esp)
	call	_printf
	.loc 2 19 16
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	.loc 2 19 26
	andl	$1, %eax
	.loc 2 19 8
	testl	%eax, %eax
	je	L7
	.loc 2 20 7
	movl	$LC9, (%esp)
	call	_printf
L7:
	.loc 2 21 16
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	.loc 2 21 26
	andl	$2, %eax
	.loc 2 21 8
	testl	%eax, %eax
	je	L8
	.loc 2 22 7
	movl	$LC10, (%esp)
	call	_printf
L8:
	.loc 2 23 16
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	.loc 2 23 26
	andl	$4, %eax
	.loc 2 23 8
	testl	%eax, %eax
	je	L9
	.loc 2 24 7
	movl	$LC11, (%esp)
	call	_printf
L9:
	.loc 2 25 16
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	.loc 2 25 26
	andl	$8, %eax
	.loc 2 25 8
	testl	%eax, %eax
	je	L10
	.loc 2 26 7
	movl	$LC12, (%esp)
	call	_printf
L10:
	.loc 2 27 16
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	.loc 2 27 26
	andl	$1073741824, %eax
	.loc 2 27 8
	testl	%eax, %eax
	je	L11
	.loc 2 28 7
	movl	$LC13, (%esp)
	call	_printf
L11:
	.loc 2 29 16
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	.loc 2 29 26
	andl	$256, %eax
	.loc 2 29 8
	testl	%eax, %eax
	je	L12
	.loc 2 30 7
	movl	$LC14, (%esp)
	call	_printf
L12:
	.loc 2 31 5
	movl	$LC6, (%esp)
	call	_printf
	.loc 2 33 5
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_printf
	.loc 2 34 5
	movl	$LC16, (%esp)
	call	_printf
	.loc 2 35 16
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	.loc 2 35 23
	andl	$16777216, %eax
	.loc 2 35 8
	testl	%eax, %eax
	je	L13
	.loc 2 36 7
	movl	$LC17, (%esp)
	call	_printf
L13:
	.loc 2 37 16
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	.loc 2 37 23
	andl	$262144, %eax
	.loc 2 37 8
	testl	%eax, %eax
	je	L14
	.loc 2 38 7
	movl	$LC18, (%esp)
	call	_printf
L14:
	.loc 2 39 16
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	.loc 2 39 23
	andl	$131072, %eax
	.loc 2 39 8
	testl	%eax, %eax
	je	L15
	.loc 2 40 7
	movl	$LC19, (%esp)
	call	_printf
L15:
	.loc 2 41 5
	movl	$LC6, (%esp)
	call	_printf
	.loc 2 42 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE114:
	.section .rdata,"dr"
LC20:
	.ascii "src/debug.c\0"
LC21:
	.ascii "ERROR::%s::%d::%s::\0"
LC22:
	.ascii "Windows error: 0x%lX\0"
	.text
	.globl	_debug_print_last_win_error
	.def	_debug_print_last_win_error;	.scl	2;	.type	32;	.endef
_debug_print_last_win_error:
LFB115:
	.loc 2 45 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 47 14
	movl	__imp__GetLastError@0, %eax
	call	*%eax
LVL1:
	movl	%eax, -12(%ebp)
	.loc 2 49 3
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L17
	.loc 2 49 3 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$49, 8(%esp)
	movl	$LC20, 4(%esp)
	movl	$LC21, (%esp)
	call	_printf
	movl	__imp__GetLastError@0, %eax
	call	*%eax
LVL2:
	movl	%eax, 4(%esp)
	movl	$LC22, (%esp)
	call	_printf
	movl	$LC6, (%esp)
	call	_printf
L17:
	.loc 2 50 3 is_stmt 1
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1024, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4864, (%esp)
	movl	__imp__FormatMessageA@28, %eax
	call	*%eax
LVL3:
	subl	$28, %esp
	.loc 2 59 3
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_printf
	.loc 2 60 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE115:
	.section .rdata,"dr"
	.align 4
___func__.0:
	.ascii "debug_print_last_win_error\0"
	.text
Letext0:
	.file 3 "C:/msys64/mingw32/i686-w64-mingw32/include/vadefs.h"
	.file 4 "C:/msys64/mingw32/i686-w64-mingw32/include/minwindef.h"
	.file 5 "C:/msys64/mingw32/i686-w64-mingw32/include/basetsd.h"
	.file 6 "C:/msys64/mingw32/i686-w64-mingw32/include/winnt.h"
	.file 7 "inc/debug.h"
	.file 8 "C:/msys64/mingw32/i686-w64-mingw32/include/winbase.h"
	.file 9 "C:/msys64/mingw32/i686-w64-mingw32/include/errhandlingapi.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x5fa
	.word	0x5
	.byte	0x1
	.byte	0x4
	.secrel32	Ldebug_abbrev0
	.uleb128 0x10
	.ascii "GNU C17 11.2.0 -mtune=generic -march=i686 -g\0"
	.byte	0x1d
	.secrel32	LASF0
	.secrel32	LASF1
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.uleb128 0x3
	.ascii "__gnuc_va_list\0"
	.byte	0x3
	.byte	0x18
	.byte	0x1d
	.long	0x66
	.uleb128 0x11
	.byte	0x4
	.ascii "__builtin_va_list\0"
	.long	0x7e
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0xa
	.long	0x7e
	.uleb128 0x3
	.ascii "va_list\0"
	.byte	0x3
	.byte	0x1f
	.byte	0x1a
	.long	0x4f
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x5
	.long	0x7e
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x1
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.ascii "_Float128\0"
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x12
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.long	0x1ea
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x25
	.byte	0xb
	.long	0xe5
	.byte	0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x26
	.byte	0x9
	.long	0xab
	.byte	0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x27
	.byte	0xb
	.long	0xe5
	.byte	0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x28
	.byte	0x9
	.long	0xab
	.byte	0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x29
	.byte	0x9
	.long	0xab
	.byte	0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2a
	.byte	0x9
	.long	0xab
	.byte	0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2b
	.byte	0x9
	.long	0xab
	.byte	0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2c
	.byte	0xb
	.long	0xe5
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.long	0x162
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.ascii "WORD\0"
	.byte	0x4
	.byte	0x8c
	.byte	0x1a
	.long	0xb2
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x4
	.byte	0x8d
	.byte	0x1d
	.long	0xea
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x3
	.ascii "LPVOID\0"
	.byte	0x4
	.byte	0x99
	.byte	0x11
	.long	0x1f7
	.uleb128 0x3
	.ascii "LPCVOID\0"
	.byte	0x4
	.byte	0x9c
	.byte	0x17
	.long	0x23c
	.uleb128 0x5
	.long	0x241
	.uleb128 0x14
	.uleb128 0x3
	.ascii "ULONG_PTR\0"
	.byte	0x5
	.byte	0x37
	.byte	0x19
	.long	0xea
	.uleb128 0x3
	.ascii "SIZE_T\0"
	.byte	0x5
	.byte	0x93
	.byte	0x27
	.long	0x242
	.uleb128 0x7
	.ascii "PVOID\0"
	.word	0x101
	.byte	0x11
	.long	0x1f7
	.uleb128 0x7
	.ascii "CHAR\0"
	.word	0x11d
	.byte	0x10
	.long	0x7e
	.uleb128 0x5
	.long	0x271
	.uleb128 0x7
	.ascii "LPSTR\0"
	.word	0x150
	.byte	0x18
	.long	0x27e
	.uleb128 0x7
	.ascii "LPTSTR\0"
	.word	0x17b
	.byte	0x17
	.long	0x283
	.uleb128 0x15
	.ascii "_MEMORY_BASIC_INFORMATION\0"
	.byte	0x1c
	.byte	0x6
	.word	0x1377
	.byte	0x14
	.long	0x34f
	.uleb128 0x6
	.ascii "BaseAddress\0"
	.word	0x1378
	.byte	0xd
	.long	0x263
	.byte	0
	.uleb128 0x6
	.ascii "AllocationBase\0"
	.word	0x1379
	.byte	0xd
	.long	0x263
	.byte	0x4
	.uleb128 0x6
	.ascii "AllocationProtect\0"
	.word	0x137a
	.byte	0xd
	.long	0x206
	.byte	0x8
	.uleb128 0x6
	.ascii "RegionSize\0"
	.word	0x137b
	.byte	0xe
	.long	0x254
	.byte	0xc
	.uleb128 0x6
	.ascii "State\0"
	.word	0x137c
	.byte	0xd
	.long	0x206
	.byte	0x10
	.uleb128 0x6
	.ascii "Protect\0"
	.word	0x137d
	.byte	0xd
	.long	0x206
	.byte	0x14
	.uleb128 0x6
	.ascii "Type\0"
	.word	0x137e
	.byte	0xd
	.long	0x206
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.ascii "MEMORY_BASIC_INFORMATION\0"
	.word	0x137f
	.byte	0x7
	.long	0x2a0
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x9b
	.byte	0x7
	.byte	0x11
	.byte	0x1
	.long	0x3d2
	.uleb128 0x8
	.ascii "DEBUG_LOG_NONE\0"
	.byte	0
	.uleb128 0x8
	.ascii "DEBUG_LOG_VERBOSE\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "DEBUG_LOG_ERROR\0"
	.byte	0x2
	.uleb128 0x8
	.ascii "DEBUG_LOG_COUNT\0"
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.ascii "debug_level\0"
	.byte	0x7
	.byte	0x17
	.byte	0xc
	.long	0xab
	.uleb128 0x18
	.ascii "FormatMessageA\0"
	.byte	0x8
	.word	0x568
	.byte	0x1b
	.ascii "FormatMessageA@28\0"
	.long	0x206
	.long	0x438
	.uleb128 0x2
	.long	0x206
	.uleb128 0x2
	.long	0x22c
	.uleb128 0x2
	.long	0x206
	.uleb128 0x2
	.long	0x206
	.uleb128 0x2
	.long	0x283
	.uleb128 0x2
	.long	0x206
	.uleb128 0x2
	.long	0x438
	.byte	0
	.uleb128 0x5
	.long	0x8b
	.uleb128 0x19
	.ascii "GetLastError\0"
	.byte	0x9
	.byte	0x30
	.byte	0x1b
	.ascii "GetLastError@0\0"
	.long	0x206
	.uleb128 0xb
	.ascii "__mingw_vfprintf\0"
	.byte	0xc1
	.byte	0xf
	.long	0xab
	.long	0x48d
	.uleb128 0x2
	.long	0x492
	.uleb128 0x2
	.long	0x49c
	.uleb128 0x2
	.long	0x8b
	.byte	0
	.uleb128 0x5
	.long	0x1ea
	.uleb128 0xc
	.long	0x48d
	.uleb128 0x5
	.long	0x86
	.uleb128 0xc
	.long	0x497
	.uleb128 0xb
	.ascii "__acrt_iob_func\0"
	.byte	0x5d
	.byte	0x17
	.long	0x48d
	.long	0x4c2
	.uleb128 0x2
	.long	0x9b
	.byte	0
	.uleb128 0xd
	.ascii "debug_print_last_win_error\0"
	.byte	0x2c
	.long	LFB115
	.long	LFE115-LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x53d
	.uleb128 0xe
	.ascii "lpMsgBuf\0"
	.byte	0x2e
	.byte	0xa
	.long	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.ascii "dw\0"
	.byte	0x2f
	.byte	0x9
	.long	0x206
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii "__func__\0"
	.long	0x54d
	.uleb128 0x5
	.byte	0x3
	.long	___func__.0
	.uleb128 0x9
	.long	LVL1
	.long	0x43d
	.uleb128 0x9
	.long	LVL2
	.long	0x43d
	.uleb128 0x9
	.long	LVL3
	.long	0x3e6
	.byte	0
	.uleb128 0x1b
	.long	0x86
	.long	0x54d
	.uleb128 0x1c
	.long	0x9b
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.long	0x53d
	.uleb128 0xd
	.ascii "debug_print_mem_basic_flags\0"
	.byte	0x3
	.long	LFB114
	.long	LFE114-LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x592
	.uleb128 0x1d
	.ascii "memInfo\0"
	.byte	0x2
	.byte	0x3
	.byte	0x45
	.long	0x592
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.long	0x34f
	.uleb128 0x1e
	.ascii "printf\0"
	.byte	0x1
	.word	0x170
	.byte	0x5
	.long	0xab
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.ascii "__format\0"
	.byte	0x1
	.word	0x170
	.byte	0x19
	.long	0x497
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.uleb128 0xf
	.ascii "__retval\0"
	.word	0x172
	.byte	0x7
	.long	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.ascii "__local_argv\0"
	.word	0x173
	.byte	0x15
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	LVL0
	.long	0x4a1
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
	.section	.debug_line_str,"dr"
LASF1:
	.ascii "C:\\work\\c\\chicken-sacrifice\\test-foreign-dll\0"
LASF0:
	.ascii "src/debug.c\0"
	.ident	"GCC: (Rev8, Built by MSYS2 project) 11.2.0"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.section .drectve
	.ascii " -export:\"debug_print_last_win_error\""
	.ascii " -export:\"debug_print_mem_basic_flags\""
