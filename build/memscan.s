	.file	"memscan.c"
	.text
Ltext0:
	.file 0 "C:/work/c/chicken-sacrifice/test-foreign-dll" "src/dll/memscan.c"
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
	.ascii "src/dll/memscan.c\0"
LC1:
	.ascii "VERBOSE::%s::%d::%s::\0"
LC2:
	.ascii "VirtualQuery returns 0\0"
LC3:
	.ascii "\12\0"
	.align 4
LC4:
	.ascii "Skip page starting at addr 0x%X\0"
	.align 4
LC5:
	.ascii "Skip page smaller than search len with base addr 0x%X\0"
LC6:
	.ascii "Matched addr 0x%X\0"
LC7:
	.ascii "Get next page start addr 0x%X\0"
	.text
	.globl	_memscan_find_next
	.def	_memscan_find_next;	.scl	2;	.type	32;	.endef
_memscan_find_next:
LFB114:
	.file 2 "src/dll/memscan.c"
	.loc 2 11 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	.loc 2 13 12
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 14 8
	movb	$0, -13(%ebp)
	.loc 2 17 9
	jmp	L4
L22:
	.loc 2 20 9
	movl	-12(%ebp), %eax
	movl	$28, 8(%esp)
	leal	-56(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__VirtualQuery@12, %eax
	call	*%eax
LVL1:
	subl	$12, %esp
	.loc 2 20 8
	testl	%eax, %eax
	jne	L5
	.loc 2 23 7
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L6
	.loc 2 23 7 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$23, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC2, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L6:
	.loc 2 24 14 is_stmt 1
	movl	$0, %eax
	jmp	L23
L5:
	.loc 2 28 18
	movl	-40(%ebp), %eax
	.loc 2 28 25
	andl	$4096, %eax
	.loc 2 28 8
	testl	%eax, %eax
	je	L8
	.loc 2 29 20
	movl	-36(%ebp), %eax
	.loc 2 29 29
	andl	$204, %eax
	.loc 2 29 7
	testl	%eax, %eax
	je	L8
	.loc 2 30 19
	movl	-36(%ebp), %eax
	.loc 2 30 28
	andl	$256, %eax
	.loc 2 30 7
	testl	%eax, %eax
	je	L9
L8:
	.loc 2 32 7
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L24
	.loc 2 32 7 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$32, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 33 7 is_stmt 1 discriminator 1
	jmp	L24
L9:
	.loc 2 37 16
	movl	-44(%ebp), %eax
	.loc 2 37 8
	cmpl	%eax, 16(%ebp)
	jbe	L12
	.loc 2 39 7
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L25
	.loc 2 39 7 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$39, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 40 7 is_stmt 1 discriminator 1
	jmp	L25
L12:
	.loc 2 44 15
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
LBB2:
	.loc 2 45 17
	movl	$0, -20(%ebp)
	.loc 2 45 5
	jmp	L14
L21:
	.loc 2 48 14
	movb	$1, -13(%ebp)
LBB3:
	.loc 2 51 19
	movl	$0, -24(%ebp)
	.loc 2 51 7
	jmp	L15
L18:
	.loc 2 53 24
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	.loc 2 53 42
	movl	-20(%ebp), %ecx
	movl	-24(%ebp), %eax
	addl	%eax, %ecx
	.loc 2 53 40
	movl	-28(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	.loc 2 53 12
	cmpb	%al, %dl
	je	L16
	.loc 2 55 18
	movb	$0, -13(%ebp)
	.loc 2 56 11
	jmp	L17
L16:
	.loc 2 51 43 discriminator 2
	addl	$1, -24(%ebp)
L15:
	.loc 2 51 28 discriminator 1
	movl	-24(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L18
L17:
LBE3:
	.loc 2 61 10
	cmpb	$0, -13(%ebp)
	je	L19
	.loc 2 63 41
	movl	-56(%ebp), %eax
	.loc 2 63 24
	movl	%eax, %edx
	.loc 2 63 22
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 2 64 9
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L20
	.loc 2 64 9 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$64, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L20:
	.loc 2 65 16 is_stmt 1
	movl	-12(%ebp), %eax
	jmp	L23
L19:
	.loc 2 45 64 discriminator 2
	addl	$1, -20(%ebp)
L14:
	.loc 2 45 36 discriminator 1
	movl	-44(%ebp), %eax
	.loc 2 45 48 discriminator 1
	subl	16(%ebp), %eax
	.loc 2 45 26 discriminator 1
	cmpl	%eax, -20(%ebp)
	jb	L21
LBE2:
	.loc 2 70 5
	jmp	L11
L24:
	.loc 2 33 7
	nop
	jmp	L11
L25:
	.loc 2 40 7
	nop
L11:
	.loc 2 71 39
	movl	-56(%ebp), %eax
	.loc 2 71 22
	movl	%eax, %edx
	.loc 2 71 71
	movl	-44(%ebp), %eax
	.loc 2 71 20
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 2 72 7
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L4
	.loc 2 72 7 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$72, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L4:
	.loc 2 17 10 is_stmt 1
	movzbl	-13(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L22
	.loc 2 75 10
	movl	$0, %eax
L23:
	.loc 2 76 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE114:
	.section .rdata,"dr"
	.align 4
___func__.0:
	.ascii "memscan_find_next\0"
	.text
Letext0:
	.file 3 "C:/msys64/mingw32/i686-w64-mingw32/include/vadefs.h"
	.file 4 "C:/msys64/mingw32/i686-w64-mingw32/include/corecrt.h"
	.file 5 "C:/msys64/mingw32/i686-w64-mingw32/include/stdint.h"
	.file 6 "C:/msys64/mingw32/i686-w64-mingw32/include/minwindef.h"
	.file 7 "C:/msys64/mingw32/i686-w64-mingw32/include/basetsd.h"
	.file 8 "C:/msys64/mingw32/i686-w64-mingw32/include/winnt.h"
	.file 9 "inc/debug.h"
	.file 10 "C:/msys64/mingw32/i686-w64-mingw32/include/memoryapi.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x62a
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
	.uleb128 0x2
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
	.uleb128 0xb
	.long	0x7e
	.uleb128 0x2
	.ascii "va_list\0"
	.byte	0x3
	.byte	0x1f
	.byte	0x1a
	.long	0x4f
	.uleb128 0x2
	.ascii "size_t\0"
	.byte	0x4
	.byte	0x25
	.byte	0x16
	.long	0xaa
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
	.uleb128 0x4
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
	.uleb128 0x2
	.ascii "uint8_t\0"
	.byte	0x5
	.byte	0x24
	.byte	0x19
	.long	0x10e
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x2
	.ascii "uint32_t\0"
	.byte	0x5
	.byte	0x28
	.byte	0x14
	.long	0xaa
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
	.long	0x21a
	.uleb128 0x3
	.ascii "_ptr\0"
	.byte	0x25
	.byte	0xb
	.long	0xf4
	.byte	0
	.uleb128 0x3
	.ascii "_cnt\0"
	.byte	0x26
	.byte	0x9
	.long	0xba
	.byte	0x4
	.uleb128 0x3
	.ascii "_base\0"
	.byte	0x27
	.byte	0xb
	.long	0xf4
	.byte	0x8
	.uleb128 0x3
	.ascii "_flag\0"
	.byte	0x28
	.byte	0x9
	.long	0xba
	.byte	0xc
	.uleb128 0x3
	.ascii "_file\0"
	.byte	0x29
	.byte	0x9
	.long	0xba
	.byte	0x10
	.uleb128 0x3
	.ascii "_charbuf\0"
	.byte	0x2a
	.byte	0x9
	.long	0xba
	.byte	0x14
	.uleb128 0x3
	.ascii "_bufsiz\0"
	.byte	0x2b
	.byte	0x9
	.long	0xba
	.byte	0x18
	.uleb128 0x3
	.ascii "_tmpfname\0"
	.byte	0x2c
	.byte	0xb
	.long	0xf4
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.long	0x192
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x2
	.ascii "DWORD\0"
	.byte	0x6
	.byte	0x8d
	.byte	0x1d
	.long	0xf9
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x2
	.ascii "LPCVOID\0"
	.byte	0x6
	.byte	0x9c
	.byte	0x17
	.long	0x250
	.uleb128 0x4
	.long	0x255
	.uleb128 0x14
	.uleb128 0x2
	.ascii "ULONG_PTR\0"
	.byte	0x7
	.byte	0x37
	.byte	0x19
	.long	0xf9
	.uleb128 0x2
	.ascii "SIZE_T\0"
	.byte	0x7
	.byte	0x93
	.byte	0x27
	.long	0x256
	.uleb128 0x9
	.ascii "PVOID\0"
	.word	0x101
	.byte	0x11
	.long	0x227
	.uleb128 0x15
	.ascii "_MEMORY_BASIC_INFORMATION\0"
	.byte	0x1c
	.byte	0x8
	.word	0x1377
	.byte	0x14
	.long	0x334
	.uleb128 0x5
	.ascii "BaseAddress\0"
	.word	0x1378
	.byte	0xd
	.long	0x277
	.byte	0
	.uleb128 0x5
	.ascii "AllocationBase\0"
	.word	0x1379
	.byte	0xd
	.long	0x277
	.byte	0x4
	.uleb128 0x5
	.ascii "AllocationProtect\0"
	.word	0x137a
	.byte	0xd
	.long	0x229
	.byte	0x8
	.uleb128 0x5
	.ascii "RegionSize\0"
	.word	0x137b
	.byte	0xe
	.long	0x268
	.byte	0xc
	.uleb128 0x5
	.ascii "State\0"
	.word	0x137c
	.byte	0xd
	.long	0x229
	.byte	0x10
	.uleb128 0x5
	.ascii "Protect\0"
	.word	0x137d
	.byte	0xd
	.long	0x229
	.byte	0x14
	.uleb128 0x5
	.ascii "Type\0"
	.word	0x137e
	.byte	0xd
	.long	0x229
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.ascii "MEMORY_BASIC_INFORMATION\0"
	.word	0x137f
	.byte	0x7
	.long	0x285
	.uleb128 0x9
	.ascii "PMEMORY_BASIC_INFORMATION\0"
	.word	0x137f
	.byte	0x21
	.long	0x377
	.uleb128 0x4
	.long	0x285
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xaa
	.byte	0x9
	.byte	0x11
	.byte	0x1
	.long	0x3de
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
	.byte	0x9
	.byte	0x17
	.byte	0xc
	.long	0xba
	.uleb128 0xc
	.ascii "__mingw_vfprintf\0"
	.byte	0xc1
	.byte	0xf
	.long	0xba
	.long	0x41e
	.uleb128 0x6
	.long	0x423
	.uleb128 0x6
	.long	0x42d
	.uleb128 0x6
	.long	0x8b
	.byte	0
	.uleb128 0x4
	.long	0x21a
	.uleb128 0xd
	.long	0x41e
	.uleb128 0x4
	.long	0x86
	.uleb128 0xd
	.long	0x428
	.uleb128 0xc
	.ascii "__acrt_iob_func\0"
	.byte	0x5d
	.byte	0x17
	.long	0x41e
	.long	0x453
	.uleb128 0x6
	.long	0xaa
	.byte	0
	.uleb128 0x18
	.ascii "VirtualQuery\0"
	.byte	0xa
	.byte	0x2d
	.byte	0x1c
	.ascii "VirtualQuery@12\0"
	.long	0x268
	.long	0x48c
	.uleb128 0x6
	.long	0x240
	.uleb128 0x6
	.long	0x355
	.uleb128 0x6
	.long	0x268
	.byte	0
	.uleb128 0x19
	.ascii "memscan_find_next\0"
	.byte	0x2
	.byte	0xa
	.byte	0xb
	.long	0x59f
	.long	LFB114
	.long	LFE114-LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x59f
	.uleb128 0xa
	.ascii "start_addr\0"
	.byte	0x26
	.long	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "search_data\0"
	.byte	0x3b
	.long	0x5a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.ascii "search_len\0"
	.byte	0x4f
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.ascii "memInfo\0"
	.byte	0xc
	.byte	0x1c
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.ascii "current_addr\0"
	.byte	0xd
	.byte	0xc
	.long	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.ascii "bFound\0"
	.byte	0xe
	.byte	0x8
	.long	0x5a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x7
	.ascii "page_data\0"
	.byte	0xf
	.byte	0xc
	.long	0x5a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.ascii "__func__\0"
	.long	0x5c2
	.uleb128 0x5
	.byte	0x3
	.long	___func__.0
	.uleb128 0x1b
	.ascii "next_page\0"
	.byte	0x2
	.byte	0x46
	.byte	0x5
	.long	L11
	.uleb128 0x1c
	.long	LBB2
	.long	LBE2-LBB2
	.long	0x595
	.uleb128 0x7
	.ascii "i\0"
	.byte	0x2d
	.byte	0x11
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.long	LBB3
	.long	LBE3-LBB3
	.uleb128 0x7
	.ascii "x\0"
	.byte	0x33
	.byte	0x13
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	LVL1
	.long	0x453
	.byte	0
	.uleb128 0x4
	.long	0x167
	.uleb128 0x4
	.long	0x14a
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.uleb128 0x1e
	.long	0x86
	.long	0x5c2
	.uleb128 0x1f
	.long	0xaa
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.long	0x5b2
	.uleb128 0x20
	.ascii "printf\0"
	.byte	0x1
	.word	0x170
	.byte	0x5
	.long	0xba
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.ascii "__format\0"
	.byte	0x1
	.word	0x170
	.byte	0x19
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.uleb128 0xf
	.ascii "__retval\0"
	.word	0x172
	.byte	0x7
	.long	0xba
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
	.uleb128 0xe
	.long	LVL0
	.long	0x432
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
LASF0:
	.ascii "src/dll/memscan.c\0"
LASF1:
	.ascii "C:\\work\\c\\chicken-sacrifice\\test-foreign-dll\0"
	.ident	"GCC: (Rev8, Built by MSYS2 project) 11.2.0"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
